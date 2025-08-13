#include <stdint.h>
#include "minimal_arduino.h"

// arduino setup function
void setup(void)
{
    pinMode(PUSH_BTN, INPUT);
    pinMode(LED_RED, OUTPUT);
}

// arduino loop function
void loop(void)
{
    if (HIGH == digitalRead(PUSH_BTN))
    {
        digitalWrite(LED_RED, HIGH);
    }
    else
    {
        digitalWrite(LED_RED, LOW);
    }
}

// arduino's main function looks something similar to below.
// just that it stays hidden in main.cpp file separate from the 
// .ino sketch file
int main(void)
{
    // initialize the required clocks
    initGpio();

    // setup is called only once
    setup();

    while (1)
    {
        // loop is called infinitely
        loop();
    }
    
    return 0;
}
