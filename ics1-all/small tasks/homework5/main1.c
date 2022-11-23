#include <stdio.h>
int get_min(int *num)
{
    int min = num[0];
    for (int i = 1; i < 10; i++)
    {
        if (min > num[i])
            min = num[i];
    }
    return min;
}

int main()
{
    int a[10];
    int min;
    for (int i = 0; i < 10; i++)
        scanf("%d", &a[i]);
    printf("%d", get_min(a));
}