#include <iostream>
#include <stdio.h>
using namespace std;
 
int main() {
char x	= 0x66; char y =		0x39; char x_bit_not = ~x; char x_not = !x;
char x_bit_and_y = x & y; char x_and_y = x && y; char x_bit_or_y = x | y; char x_or_y = x || y;


char x1 = 0xB0; char y1 = 0x8c;
char sum_x1_y1 = x1 + y1; char diff_x1_y1 = x1 - y1; char diff_y1_x1 = y1 - x1;

unsigned char x2 = 0xB0; unsigned char y2 = 0x8c;
unsigned char sum_x2_y2 = x2 + y2; unsigned char diff_x2_y2	= x2 - y2; unsigned char diff_y2_x2	= y2 - x2;
cout<<x1<<endl;
printf("%d ",x1);
}

