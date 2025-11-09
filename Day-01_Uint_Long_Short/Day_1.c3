
// Day 1 of 30: Learning C3.

import std::io;

fn void main() {
    // a signed 16-bit integer for -12345
    short a = -12345;                       // short is 16-bit
    // an unsigned 16-bit integer for 255
    ushort b = 255;                         // ushort is a unsigned 16-bit  
    // a 64-bit integer cast from a uint
    uint c = 123;                           // from uint
    long d = (long)c;                       // 64-bit integer casted
    // a suffix
    uint e = 5u;

    io::printfn("%d %d %d %d", a, b, d, e);

}
