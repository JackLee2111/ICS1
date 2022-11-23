#include <iostream>
#include <stdio.h>

typedef unsigned char *byte_pointer;
void show_bytes(byte_pointer start, int len)
{
    int i;
    for (i = 0; i < len; i++)
    {
        printf("%.2x", start[i]);
    }
}
using namespace std;

int main()
{
    int val = 0x140A0233;
    byte_pointer valp = (byte_pointer)&val;
    show_bytes(valp, 4);
    return 0;
}