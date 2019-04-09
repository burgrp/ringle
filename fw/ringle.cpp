const int dataPin = 5;
const int ledCount = 3;

void inline shortWait() {
}

WS2812B leds;

void initApplication()
{   

    // run on 48MHz
    target::RCC.CFGR.setPLLMUL(10); // HSI/2 * 12x
    target::RCC.CR.setPLLON(1);   
    target::RCC.CFGR.setSW(2);
    while (target::RCC.CFGR.getSWS() != 2);

    target::RCC.AHBENR.setIOPAEN(1);

    leds.init(&target::GPIOA, 5);

    unsigned char grbData[ledCount * 3];
    for (int c = 0; c < ledCount * 3; c++) {
        grbData[c] = 0x28;
    }

    leds.set(grbData, ledCount);

}