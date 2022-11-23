#include <bits/stdc++.h>

int n;
int q;
int ans;
std::vector<int> v;

int ReadInt()
{
    int x = 0;
    char ch = getchar();
    while (!isdigit(ch))
        ch = getchar();
    while (isdigit(ch))
    {
        x = x * 10 + ch - '0';
        ch = getchar();
    }
    return x;
}

int main()
{
    n = ReadInt();
    std::cout << n << std::endl;
    q = ReadInt();
    std::cout << q << std::endl;
}
