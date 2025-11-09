// Day 12 of 30, Learning & Practicing C3
import std::io;

fn int main(){
    // Vectors - Part 2 : Swizzling & Array Operations
    // AGENT CODE NAME
    int[<3>] agent = { 45, 46, 47 };
    int[<3>] res = agent.xyz;

    // AREA SECRET
    double[<2>] area = { 37.760958377786274, -122.42657189486502 };
    double[<2>] meet_at = area.xy; 

    // COLOR SECRET
    char[<3>] shirt = { 0x0, 0x0, 0x0 };
    char[<3>] pant = { 0x10, 0x10, 0x10 };
    shirt.rb = (shirt.rb + pant.rb) / 2;
    shirt.rb += { 3, 25 };

    // SLICING
    float[<5>] arrive = { 5.0, 10.0, 15.0, 20.0, 25.0 };
    float[] data = arrive[1..3]; 


    // Printing Press
    io::printfn("AGENT CODE: %d %d %d",agent[0], agent[1], agent[2]);
    io::printfn("MEET AREA SECRET: { %.15f, %.15f }",meet_at[0], meet_at[1]);
    io::printfn("DRESS COLOR SECRET: { %d, %d }",shirt.r, shirt.b);
    io::printfn("ARRIVE AT:");
    foreach (val : data) io::printf("%.1f ", val);

    return 0;
}