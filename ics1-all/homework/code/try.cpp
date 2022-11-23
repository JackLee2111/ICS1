#include <iostream>
using namespace std;

int D(double dx, double dy, double dz)
{
    return (dx * dy) * dz == dx * (dy * dz);
}
int main()
{
    int x;
    int y;
    int z;
    scanf("%x", &x);
    scanf("%x", &y);
    scanf("%x", &z);
    double dx = (double)x;
    double dy = (double)y;
    double dz = (double)z;
    cout << D(dx, dy, dz) << endl;
    return 0;
}