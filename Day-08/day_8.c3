import std::io;

fn void main() {
    // Strings Member Functions

    // trim
    String s1 = " My name is Muneeb Ahmad  ";                      
    String trimmed = s1.trim(" ");                        // Removes leading/trailing spaces
    
    // strip
    String s2 = "Hello, World";
    String stripped_ = s2.strip_end("World");                // Removes specific substring from end
    String stripped = s2.strip("Hello");                     // Removes specific substring from start

    // tsplit (temporary memory), split (heap memory)
    String s3 = "c,c++,c#,objc";
    String[] splitting = s3.tsplit(",");

    // tcopy (temporary copy), copy (heap copy)
    String copy_str = " C3 is Great! ";
    String copied = copy_str.tcopy();                         // Independent copy

    // tconcat (temporary memory), concat (heap memory)
    String fname = "Hello, ";
    String lname = "World!"; 
    String full_name = fname.tconcat(lname);


    // Printing Press
    io::printfn("Trimmed: '%s'", trimmed);
    io::printfn("Stripped End: '%s'", stripped_);
    io::printfn("Stripped Start: '%s'", stripped);
    io::printfn("Splitting: '%s'", splitting);
    io::printfn("Copied Text Printed: '%s'", copied);
    io::printfn("Concatenation: %s", full_name);
}
