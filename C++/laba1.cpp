#include <iostream>
using namespace std;

float opir(float u1,float u2,float i1,float i2)
{
	return((u1-u2)/(i2/1000-i1/1000));
}

int main()
{
	float u1,u2,u3,i1,i2,i3;
	cin>>u1>>u2>>u3>>i1>>i2>>i3;
	cout<<opir(u1,u2,i1,i2)<<endl;
	cout<<opir(u2,u3,i2,i3)<<endl;
	cout<<opir(u3,u1,i3,i1)<<endl;
	return 0;	
}
