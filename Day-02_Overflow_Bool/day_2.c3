import std::io;

fn void main(){
    // Overflow & Boolean in C3

    char c = 255;  // Max value 
    bool t = true;
    bool f = false;
    short s = 32767;
          
    c += 1;                 // Overflow
    io::printfn("%c",c);

    s += 1;                 // Overflow
    io::printfn("%d", s);

    io::printf("%d",f);    // Bool Value : 1 = true, 0 = false
}