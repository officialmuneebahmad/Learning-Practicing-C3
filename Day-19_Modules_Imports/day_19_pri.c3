module main;
module math_utils;

// import math_utils;
import std::io;

fn void main() {
    io::printn("=== >>> Module <<< ===");
    
    // Call public functions without module prefix
    int sum = add(10, 5);
    io::printfn("10 + 5 = %d", sum);
    
    int product = multiply(6, 7);
    io::printfn("6 x 7 = %d", product);
    
    demo();

    // Now it will RUN
    int sec = secret_calculation();
    io::printfn("%d",sec);

}