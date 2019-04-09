/*
* Make sure MCU runs on 48MHz to achieve proper timing.
*/

class WS2812B
{
    static void inline waitLong()
    {
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
    }

    void inline waitShort()
    {
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
    }

    target::gpio_a::Peripheral *port;
    int pin;

  public:
    void init(target::gpio_a::Peripheral *port, int pin)
    {
        this->port = port;
        this->pin = pin;
        port->MODER.setMODER(pin, 1);
    }

    void set(unsigned char *grbData, int ledCount)
    {

        for (int c = 0; c < ledCount * 3 * 8; c++)
        {
            if ((grbData[c >> 3] >> (~c & 0x07)) & 1)
            {
                port->BSRR = 1 << pin;
                waitLong();
                port->BSRR = 0x10000 << pin;
                waitShort();
            }
            else
            {
                port->BSRR = 1 << pin;
                waitShort();
                port->BSRR = 0x10000 << pin;
                waitLong();
            }
        }
    }
};
