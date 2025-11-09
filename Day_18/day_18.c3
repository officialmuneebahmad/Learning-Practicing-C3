// Day 18 0f 30 Learning & Practicing C3
import std::io;
// Structs & Composition

// 1: BASIC STRUCTS
// Simple struct definition
struct Point {
    int x;
    int y;
}

// Struct with different types
struct Person {
    String name;
    int age;
    float height;
    bool is_student;
}

fn void basic_structs() {
    io::printn("\n=== BASIC STRUCTS ===");
    
    // Method 1: Initialize with named fields
    Point p1 = { .x = 10, .y = 20 };
    io::printfn("Point 1: (%d, %d)", p1.x, p1.y);
    
    // Method 2: Initialize in order (less clear)
    Point p2 = { 5, 15 };
    io::printfn("Point 2: (%d, %d)", p2.x, p2.y);
    
    // Method 3: Default initialization (zeros)
    Point p3;
    io::printfn("Point 3: (%d, %d)", p3.x, p3.y);
    
    // Struct with strings
    Person alice = {
        .name = "Alice",
        .age = 25,
        .height = 1.65,
        .is_student = true
    };
    io::printfn("%s is %d years old", alice.name, alice.age);
}

// 2: STRUCT METHODS

struct Rectangle {
    float width;  // 10
    float height; // 5
}

// The &self parameter (like this in other languages)
// Method syntax: fn ReturnType StructName.method_name(...)
fn float Rectangle.area(&self) {
    return self.width * self.height; // 10 x 5 = 50
}

fn float Rectangle.perimeter(&self) {
    // 2.0 x 15 = 30.0
    return 2.0 * ((double)self.width + (double)self.height); 
}

fn void Rectangle.scale(&self, float factor) {
    self.width *= factor;  // 10 * 2 = 20
    self.height *= factor; // 5 * 2 = 10
 }

fn bool Rectangle.is_square(&self) {
    return self.width == self.height;
}

fn void struct_methods() {
    io::printn("\n=== STRUCT METHODS ===");
    
    Rectangle rect = { .width = 10.0, .height = 5.0 };
    
    // Call methods on the struct
    io::printfn("Area: %.2f", rect.area());
    io::printfn("Perimeter: %.2f", rect.perimeter());
    io::printfn("Is square? %s", rect.is_square() ? "Yes" : "No");
    
    // Modify the struct
    rect.scale(2.0);
    io::printfn("After scaling: %.2f x %.2f", rect.width, rect.height);
}

// MAIN FUNCTION - RUN ALL

fn void main() {
    
    basic_structs();
    struct_methods();

}