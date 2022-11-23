#include <iostream>
using namespace std;
int func()
{
    int i = 3;
    int b = 2;
    int c = 1;
    while (i <= 5)
    {
        int d = c;
        c = b;
        b += d;
        i++;
    }
    return b;
}
int main()
{
    func();
    return 0;
}
