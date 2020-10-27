#include <iostream>

using namespace std;

int main()
{
    double a, b;
    char k;
    while (1)
    {
        cin >> a >> k >> b;
        switch (k)
        {
        case '+':
            a += b;
            break;
        case '-':
            a -= b;
            break;
        case '/':
            a /= b;
            break;
        case '*':
            a *= b;
            break;
        default:
            break;
        }

        cout << a << endl << endl;
    }
}
