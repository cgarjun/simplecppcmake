#include <iostream>
#include "log.h"

float add(float a, float b)
{
    float result = a+b;
    return result;
}
int main()
{
    Log("Hellow world from function");
    std::cout<<add(4,6)<<std::endl;
}