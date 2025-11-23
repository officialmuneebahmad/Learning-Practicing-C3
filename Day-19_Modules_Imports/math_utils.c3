module math_utils;

import std::io;

// PUBLIC by default - can be used by other modules
fn int add(int a, int b) {
    return a + b;
}

fn int multiply(int a, int b) {
    return a * b;
}

// PRIVATE - only visible inside math_utils module
fn int secret_calculation() @private {
    return 25;
}

fn void demo() {
    io::printn("Math utils module loaded!");
}