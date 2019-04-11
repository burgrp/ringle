const int dataPin = 10;
const int ledCount = 30;

class Ringle : public Alert
{

    WS2812B leds;

    Encoder encLevel;
    Encoder encColor;
    Encoder encSector;

    int level = 125;      // 0..255
    bool sectorCenterMode = false;
    int sectorCenter = 0; // 0..ledCount - 1
    int sectorExt = 3;    // 0..ledCount / 2
    bool colorMode = false;
    int color = 7;   // 0..255 red->red
    int white = 0; // -10 (warm white)..+10 (cold white)

  public:
    void updateLeds()
    {
        unsigned char grbData[ledCount * 3];

        for (int c = 0; c < ledCount * 3; c++)
        {
            grbData[c] = 0;
        }

        HsvColor hsv;
        if (colorMode)
        {
            hsv.h = color;
            hsv.s = 255;
            hsv.v = level;
        }
        else
        {
            hsv.h = (white < 0 ? 30 : 210) * 255 / 360;
            hsv.s = (white < 0 ? -white * 22 : white * 5);
            hsv.v = level;
        }

        RgbColor rgb = HsvToRgb(hsv);
        ;

        for (int s = sectorCenter - sectorExt; s <= sectorCenter + sectorExt; s++)
        {
            int led = s;
            if (led < 0)
            {
                led += ledCount;
            }
            if (led >= ledCount)
            {
                led -= ledCount;
            }
            grbData[led * 3 + 0] = rgb.g;
            grbData[led * 3 + 1] = rgb.r;
            grbData[led * 3 + 2] = rgb.b;
        }
        leds.set(grbData, ledCount);
    }

    int limit(int current, int encPosition, int min, int max)
    {
        int v = current + encPosition;
        if (v < min)
        {
            v = min;
        }
        if (v > max)
        {
            v = max;
        }
        return v;
    }

    int wrap(int current, int encPosition, int min, int max)
    {
        int v = current + encPosition;
        if (v < min)
        {
            v += max - min + 1;
        }
        if (v > max)
        {
            v -= max - min + 1;
        }
        return v;
    }

    void alert()
    {
        level = limit(level, encLevel.readPosition() * 5, 0, 255);
        if (colorMode)
        {
            color = wrap(color, encColor.readPosition() * 5, 0, 255);
        }
        else
        {
            white = limit(white, encColor.readPosition(), -10, 10);            
        }
        if (sectorCenterMode) {
            sectorCenter = wrap(sectorCenter, encSector.readPosition(), 0, ledCount - 1);
        } else {
            sectorExt = limit(sectorExt, encSector.readPosition(), 0, ledCount / 2);
        }        
        updateLeds();
    }

    void handleExternalInterrupt()
    {
        encLevel.handleInterrupt();
        encColor.handleInterrupt();
        encSector.handleInterrupt();
    }

    void init()
    {
        // run on 48MHz
        target::RCC.CFGR.setPLLMUL(10); // HSI/2 * 12x
        target::RCC.CR.setPLLON(1);
        target::RCC.CFGR.setSW(2);
        while (target::RCC.CFGR.getSWS() != 2)
            ;

        target::RCC.AHBENR.setIOPAEN(1);

        leds.init(&target::GPIOA, dataPin);

        // target::SYSCFG.EXTICR1.setEXTI(0, 0);
        // target::SYSCFG.EXTICR1.setEXTI(2, 0);
        target::NVIC.ISER.setSETENA(1 << target::interrupts::External::EXTI0_1);
        target::NVIC.ISER.setSETENA(1 << target::interrupts::External::EXTI2_3);
        target::NVIC.ISER.setSETENA(1 << target::interrupts::External::EXTI4_15);

        encLevel.init(&target::GPIOA, 0, 1, this);
        encColor.init(&target::GPIOA, 3, 4, this);
        encSector.init(&target::GPIOA, 6, 7, this);

        updateLeds();
    }
};

Ringle ringle;

void interruptHandlerEXTI0_1()
{
    ringle.handleExternalInterrupt();
}

void interruptHandlerEXTI2_3()
{
    ringle.handleExternalInterrupt();
}

void interruptHandlerEXTI4_15()
{
    ringle.handleExternalInterrupt();
}

void initApplication()
{
    ringle.init();
}