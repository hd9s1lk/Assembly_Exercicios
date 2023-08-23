#include <stdio.h>
#include "asswap2.S"




int main(){
int a = 41 , b = 23;

printf("No C antes da troca: a= %d e b=%d\n" a , b);
reverse_asm(&a,&b)
printf("No C depois da troca: a = %d e b=%d\n" a, b);

return 0;





}