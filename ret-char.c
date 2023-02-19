#include <stdio.h>
#include <string.h>

typedef struct {
    char data[10];
} String;

String get_str() {
    String result;
    strcpy(result.data, "abcdefghi");
    return result;
}

String reverse_str(String str) {
    int n = strlen(str.data);
    for (int i=0, j=n-1; i<j; i++, j--)
    {
        char ch = str.data[i];
        str.data[i] = str.data[j];
        str.data[j] = ch;
    }

    return str;
}

int main(void) {
    String str = get_str();
    str = reverse_str(str);
    printf("%s\n", str.data );
}
