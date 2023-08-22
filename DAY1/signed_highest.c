#include<stdio.h>
#include<math.h>

int main()
{
	long long int max = (int) (pow(2,63) -1);
	long long int min = (int) (pow(2,63)*-1);
	printf("This highest number represented by long long int is %d",max);
	printf("This lowest number represented by long long int is %d",min);
	return 0;
}
