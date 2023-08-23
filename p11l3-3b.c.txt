#include <stdio.h>
//#pragma align(4)

#define SIZE	5

typedef struct _point2D {

  int xcoord;
  int ycoord;
} point2D;

void sumcoord_point_asm(point2D *, int, int *, int *);

int main() {
  int i, sum_x, sum_y;
  point2D p[] = {{3, 8}, {2, 4}, {1, 1}, {4, 1}, {-4, -4}};

  for( i = 0; i < SIZE; i++)
    printf("p[%d] = [%d, %d]\n", i, p[i].xcoord, p[i].ycoord);

  sumcoord_point_asm(p, SIZE, &sum_x, &sum_y);
  printf("sum_x = %d, sum_y = %d\n", sum_x, sum_y);

  return 0;
}