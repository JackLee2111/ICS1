#include <stdio.h>
int get_min(int *num);

int main()
{
    int a[10];
    int min;
    for (int i = 0; i < 10; i++)
        scanf("%d", &a[i]);
    printf("%d", get_min(a));
}