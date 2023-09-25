#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <math.h>

int *dropEveryOther(int *list, int num){
  int newNum = ceil(num/2.0);
  int *result = (int*)malloc(newNum * sizeof(int));
  for (int i = 0, j = 0; i < num ; i=i+2, j++){
    result[j] = list[i];
  }
  return result;
}

void printList(int *list, int num){
  if (num == 0) {
    printf("[]\n");
    return;
  }
  printf("[%d", list[0]);
  int i = 1;
  while (i < num){
    printf(", %d", list[i]);
    i++;
  }
  printf("]\n");
}

int main(){
  int list[30];
  int getValue = 0;
  int index = 0;
  printf("Enter a list, terminate the list with a negative number.\n");
  while (true){
    printf("Enter the next list element (negative value to terminate):");
    scanf("%d", &getValue);
    if (getValue < 0) break;
    list[index] = getValue;
    index++;
  }
  printList(list, index);
  int *res = dropEveryOther(list, index);
  printList(res, ceil(index/2.0));
  return 0;
}
