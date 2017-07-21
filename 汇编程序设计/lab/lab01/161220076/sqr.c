#include <stdio.h>
int main()
{
  int i;
  unsigned int j;
  i=40000;
  j=i*i; 
  printf("The 40000*40000 is %d\n", j);
  i=50000;
  j=i*i;
  printf("The 50000*50000 is %u\n", j);
  return 0;
}
