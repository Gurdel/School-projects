#include <iostream>

using namespace std;

int main()
{
    int a = 12;
    cout<<a<<endl;
    {
        int a = 9;
        cout<<a<<endl;
    }
    cout<<a<<endl;
}
