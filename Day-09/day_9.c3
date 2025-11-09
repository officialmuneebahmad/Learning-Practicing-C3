//  Day 9 of 30: Learning C3.
import std::io;
import std::core::string;

fn void main(){
    // Learning & Practicing replace & format methods
    // replace method
    String s = "Java is old, Java is slow, Java is boring";
    String rp_1 = s.replace(mem, "Java", "C3");
    String rp_2 = rp_1.treplace("old", "new");
    String rp_3 = rp_2.treplace("slow", "fast");
    String rp_4 = rp_3.replace(mem, "boring", "interesting!");

    // Combining
    String combo = s.treplace("Java", "C3").treplace("old", "new").treplace("slow", "fast").treplace("boring", "getting more interesting!");

    // format method
    String name = "Muneeb Ahmad";
    int marks = 90;

    String str_temp = string::tformat("My name is %s and I got %d marks in C Programming", name, marks);  
    String str_heap = string::format(mem, "My name is %s and I got %d marks in C Programming", name, marks);

    // Printing Press
    io::printfn("1) %s",rp_1);
    io::printfn("2) %s",rp_2);
    io::printfn("3) %s",rp_3);
    io::printfn("4) %s",rp_4);
    io::printfn("Combined: %s",combo);
    io::printfn("Temp Formatted: %s",str_temp);
    io::printfn("Heap Formatted: %s",str_heap);
    

    // mem release
    rp_1.free(mem);
    rp_4.free(mem);
    str_heap.free(mem);
}