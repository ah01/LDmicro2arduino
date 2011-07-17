#include "ladder.h"

/* Plc cycle interval, set this according to LDmicro settings. (micro sec.) */ 
#define PLC_INTERVAL 10000

void setup()
{
    PlcSetup();
}

void loop()
{
    if (IsPlcInterval())
    {
        PlcCycle();
    }
}

/* Plc Cycle timing function. */
boolean IsPlcInterval()
{
    static unsigned long last_run;
    
    if (micros() - last_run >= PLC_INTERVAL)
    {
        last_run = micros();
        return true;
    }
    return false;
}
