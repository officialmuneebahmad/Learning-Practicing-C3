// Day 10 of 30 Learning C3
import std::io;
import std::collections;

// Define aliases at module level (outside functions)
alias ListStr = List {String};
alias IntArr = List {int};

fn void main(){
    // Fixed & Dynamic Arrays
    
    /*  🔨 Fixed Array:
        Fast, static, and memory-safe 
       — but can’t grow dynamically. 
    */

    String[5] criminals = {"John", "Jim", "Jack", "Jane", "Jakob"};
    int[5] gem_count = {1, 2, 3, 4, 5};

    io::printfn("It was %s who stole the gem(s)!",criminals[2]);
    io::printfn("There were total of %d gem(s)!",gem_count[4]);
    
    /*  🔧 Dynamic Array
        Great for flexible lists.
        — you can resize, pass them around, etc. 

        C3 uses List for dynamic arrays 
        (similar to vectors in other languages):
    */

    // Now use the alias inside functions
    ListStr theif_name;
    IntArr total_gems;

    // Memory Init
    theif_name.init(mem);
    total_gems.init(mem);
    
    theif_name.push("Jack");
    total_gems.push(5);
    
    foreach (str : theif_name)
    {
        io::printfn("Thief Name: %s",str);
    }

    foreach (count : total_gems)
    {
        io::printfn("Total Gems: %d",count);
    }
    
    theif_name.free();
    total_gems.free();  
    
}