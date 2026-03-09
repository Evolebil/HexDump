#include <stdio.h>
#include <stdlib.h>

int main() {
    int capacity = 1;
    int size = 0;
    unsigned char *str = malloc(capacity * sizeof(unsigned char));
    int ch;

    if (str == NULL) return 0;
    while ((ch = getchar()) != EOF) {
        if (size + 1 >= capacity) {
            capacity += 1; 
            str = realloc(str, capacity * sizeof(char));
        }
        str[size++] = ch;
    }

    str[size] = '\0';
    
    for (int i = 0; i < size; i+=16)
    {
        for(int bite=28; bite>=0; bite-=4){
            putchar("0123456789abcdef" [(i >> bite) & 0xF]);
        }
        printf("  ");
        for(int d=0; d<9; d+=8){
            for (int j = 0; j < 8; j++){
            if (i + j + d < size) {
                putchar("0123456789abcdef"[str[i+j+d] >> 4]);
                putchar("0123456789abcdef"[str[i+j+d] & 0xF]);
                printf(" "); //просто пробел
            } else {
                printf("   ");
            }
            }
            printf(" ");
        }
        
        printf("  |");
        for (int j = 0; j < 16; j++)
        {
            if (i + j < size) {
                if (str[i+j] >= 32 && str[i+j] <= 126) 
                    putchar(str[i+j]);
                else 
                    putchar('.');
            }
        }
        printf("|\n");
    }

    for(int bite=28; bite>=0; bite-=4){
        putchar("0123456789abcdef"[(size >> bite) & 0xF]);
    }
    
    printf("\n");
    free(str);
    return 0;
}