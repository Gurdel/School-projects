#include <iostream>
#include <string>

using namespace std;

void fnTest(int*);
void fnTest(int&);

int main()
{
    int nVar = 5;
    int* pnVar = &nVar;
    cout << nVar << " " << pnVar << endl;;
    *pnVar = 32;
    cout << nVar << " " << pnVar << endl;
    fnTest(pnVar);
    cout << nVar << " " << pnVar << endl;
    fnTest(nVar);
    cout << nVar << " " << pnVar << endl;
    char szVar[128];
    cin.getline(szVar,128);
    cout <<  szVar;
    return (0);
}

void fnTest(int* fnVar)
{
   *fnVar = 49;
}

void fnTest(int& fnVar)
{
    fnVar = 65;
}
