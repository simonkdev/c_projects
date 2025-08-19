#include <stdio.h>

int main() {
  enum week {Mon = 2, Tue = 9, Wed = 4, Thu};
  typedef enum week weekday;
  weekday day;
  scanf("%d", &day);
  printf("day = %d\n", day);

  switch(day) {
    case Mon: puts("Monday"); break;
    case Tue: puts("Tuesday"); break;
    case Wed: puts("Wednesday"); break;
    case Thu: puts("Thursday"); break;
    default: puts("Error!");
  };
}