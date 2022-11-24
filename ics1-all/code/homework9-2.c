#include <stdio.h>
int main()
{
    static char char_table[3][13] = {
        {'d', 'o', 32, 'y', 'o', 'u', 32, 'w', 'a', 'n', 't', 32, 'a'}, {32, 109, 105, 100, 116, 101, 114, 109, 32, 101, 120, 97, 109}, {0}};
    static char ans[] = "abcdefghijklmnopqrstuvwxyyz";
    printf("%s?\n", char_table);
    printf("%c%c%c!\n", (char)(((char *)ans)[6]), (char)(((char *)ans)[4]), (char)(ans[18]));
    return 0;
}