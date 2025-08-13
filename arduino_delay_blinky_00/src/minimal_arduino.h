
#ifndef _MINIMAL_ARDUINO_H_
#define _MINIMAL_ARDUINO_H_

#include <stdint.h>

// avalaible pins, let's assume our arduino has only 2 gpio pins
#define LED_RED    14   // PD14
#define PUSH_BTN   0    // PA0

// Digital level values
enum
{
    LOW = 0,
    HIGH,
};

// Pin Mode
enum
{
    INPUT = 0,
    OUTPUT,
};

// functions for gpio config
void initGpio(void);
void pinMode(uint8_t pin, uint8_t mode);
uint8_t digitalRead(uint8_t pin);
void digitalWrite(uint8_t pin, uint8_t value);
void delay(uint32_t ms);

// the arduino setup and loop function prototypes
void setup(void);
void loop(void);

#endif /* _MINIMAL_ARDUINO_H_ */
