import std::io;

fn void main() {
    // FLoating Types, Precision and Literals

    float x = 5.75f;
    double y = 10.123456;
    double result = x + y;
    io::printfn("%f",x);  
    io::printfn("%f",y);  
    io::printfn("%f", result);


    float z = 5 + 0.2;
    io::printfn("%f", z);       // int + float = float
    int i = (int)z;             // casting to get int
    io::printfn("%d", i);       // Rounded off and we get int 

}
