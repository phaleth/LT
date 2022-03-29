//#include <string.h>

extern void numLog(int n);

extern void strLog(char *offset, int length);

int strLen(char *s) {
    int i = 0;
    while (s[i] != '\0') i++;
    return i;
}

int main() {
    return 42;
}

void greet() {
    char *msg = "Ahoj z C !";

    strLog(msg, strLen(msg));
}

void getDoubleNumber(int x) {
    numLog(x * 2);
}
