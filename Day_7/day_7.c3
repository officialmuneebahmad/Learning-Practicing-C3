import std::io;

fn int add(int num) {
    return num += 10;
}

fn void main() {
    int a = 5;
    int* ptr = &a;         // pointer to a
    int** pptr = &ptr;     // pointer to pointer 

    io::printfn("a = %d", a);
    io::printfn("*ptr = %d", *ptr);     // Outputs the value
    io::printfn("*ptr = %p", &ptr);     // Outputs the mem address
    io::printfn("**pptr = %d", **pptr);

    *ptr = 20;
    io::printfn("Updated 'a' via pointer = %d", a);

    add(a);  // pass by reference
    io::printfn("After function = %d", a);
}
