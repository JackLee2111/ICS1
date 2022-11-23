#include <iostream>
using namespace std;
void swap(int &a, int &b)
{
    a = a ^ b;
    b = a ^ b;
    a = a ^ b;
}
int main()
{
    int a, b;
    cin >> a >> b;
    swap(a, b);
    cout << a << std::endl;
    cout << b << std::endl;
    return 0;
}