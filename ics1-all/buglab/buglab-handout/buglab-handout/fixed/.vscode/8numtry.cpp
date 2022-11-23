#include <iostream>
#include <stack>
using namespace std;
int main()
{
    stack<int> t;
    t.push(1);
    t.push(2);
    t.push(3);
    t.push(4);
    t.push(5);

    int *p = &t.top();
    cout << *p << endl;
    t.pop();
    cout << *p << endl;
    t.push(6);
    cout << *p << endl;
    return 0;
}