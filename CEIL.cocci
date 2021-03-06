// empty.iso is used because there is an iso that converts sizeof(E) to
// sizeof E, which causes a double match in an expression, and thus a
// double modification

@ rule1 using "empty.iso" @
expression E, E1;
@@

- (((E) + (E1) - 1) / (E1))
+ CEIL_DIV(E, E1)
