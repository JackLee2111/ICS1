#include <bits/stdc++.h>

const int MAXN = 1e5 + 10;

char s[MAXN];

int main()
{
    std::cin.getline(s, MAXN - 8);
    int j = strlen(s);
    for (int i = 0; i < j; ++i)
    {
        if (std::isalpha(s[i]))
            s[i] ^= 1 << 5;
    }
    printf("%s\n", s);
    return 0;
}
