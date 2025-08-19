#include <stdio.h>
#include <string.h>

int main() {
        // create a string
    char firstName[] = "anon";
    // Ask the user to enter some text
    printf("Enter your name: \n");
    // get and save the text
    scanf("%s", firstName);
    // output text
    printf("Hello %s.", firstName);
}