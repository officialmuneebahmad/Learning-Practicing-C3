// Day 11 of 30 Learning C3
import std::io;
import std::math;

fn int main(){
    // Vectors - Part 1
    float[<3>] v1 = { 2.7, 2.0, 4.0 };
    float[<3>] v2 = { 7.3, 8.0, 4.0 };

    // Methods
    /*
    | Function           | Description                    |
    | ------------------ | ------------------------------ |
    | `.sum()`           | Adds all elements              |
    | `.product()`       | Multiplies all elements        |
    | `.max()`           | Returns largest element        |
    | `.min()`           | Returns smallest element       |
    | `.dot(other)`      | Dot product                    |
    | `.length()`        | Square root of dot product     |
    | `.distance(other)` | Length of difference           |
    | `.normalize()`     | Returns normalized vector      |
    | `.comp_eq(other)`  | Component-wise `==` comparison |
    | `.comp_lt(other)`  | Component-wise `<`             |
    | `.comp_gt(other)`  | Component-wise `>`             |
    | `.comp_ne(other)`  | Component-wise `!=`            |

    */

    // Calculating 
    float sum = v1.sum();           // Simple Addition
    float prod = v1.product();      // Simple Product
    float max = v2.max();           // Maximum Number from array
    float min = v1.min();           // Minimum Number from array
    float dot = v1.dot(v2);         // Multiply & then add
    float len = v1.length();        // sqrt(2.7² + 2.0² + 4.0²) = 5.22
    float dis = v1.distance(v2);    // sqrt((7.3-2.7)² + (8.0-2.0)² + (6.0-4.0)²) = 7.82
    
    // Normalize = v1 / v1.length() => 2.7 / 5.22 = 0.52
    float[<3>] norm = v1.normalize(); 

    // Components Comparisons
    bool[<3>] eq = v1.comp_eq(v2);
    bool[<3>] lt = v1.comp_lt(v2);   
    bool[<3>] gt = v1.comp_gt(v2);
    bool[<3>] ne = v1.comp_ne(v2); 


    // Printing Press
    io::printfn("SUM of v1: %.2f",sum);
    io::printfn("PRODUCT OF v1: %.2f",prod);
    io::printfn("MAX NUM: %.2f",max);
    io::printfn("MIN NUM: %.2f",min);
    io::printfn("DOT METHOD: %.2f",dot);
    io::printfn("LENGTH: %.2f",len);
    io::printfn("DISTANCE: %.2f",dis);
    io::printfn("Normalized: { %.2f, %.2f, %.2f }",norm[0], norm[1], norm[2]);
    io::printfn("Components Equal-to: { %d, %d, %d }",eq[0], eq[1], eq[2]);
    io::printfn("Components Less-than: { %d, %d, %d }",lt[0], lt[1], lt[2]);
    io::printfn("Components Greater-than: { %d, %d, %d }",gt[0], gt[1], gt[2]);
    io::printfn("Components Not-Equal-to: { %d, %d, %d }",ne[0], ne[1], ne[2]);

    return 0;
}