
#include "hello_pierre.h"

struct gigi {
    int a;
    int b;
    unsigned long * sa;
    unsigned long * sb;
};

//__attribute__((address_space(256))) //256 is GS relative -- we can modify 
struct gigi la_trottola;


long simple (int *e, unsigned long f) {
    int simple = *e;
    long ret = simple + f;

    __asm__ volatile ("nop\n");
    void* ref = &simple;
    return ret;
}


int bar (int *c, unsigned long *d) {
    *c = 9876;
    *d = 123456789;
    return 1;
}


int foo (int *a, int *b) {
    unsigned long ula = *a;
    int *aa = b;
    struct gigi *sgigi = (void *)&la_trottola;

    unsigned long pierino = -1;
    bar (a, &pierino);
    
    //*a = 42;
    *b = 20;
    __asm__ volatile ("nop\n");
    *aa = 1234;
    __asm__ volatile ("nop\n");
    aa = (int *) sgigi->sa;
    sgigi->sa = &pierino; // this is a reference to the stack -- unsafe

    ula = simple(aa, pierino);
    
    return *a;
}
