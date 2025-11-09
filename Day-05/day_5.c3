import std::io;
extern fn int puts(char* s);

fn void main(){
    // Strings in C3

    String normal = "C3 is Awesome!";
    String raw_string = `This is a Raw
String in C3 programming language.
You can add "qoutes" `;
    String concat = "Learning " "C3";
    String unicode = "I 👍 C3️⃣ \nYou can also add unicode like \u2665";
    ZString z = (ZString)"Calling it differently! \0"; // \0 is ZERO

    // Printing
    io::printfn("%s",normal);
    io::printfn("%s",raw_string);
    io::printfn("%s",concat);
    io::printfn("%s",unicode);
    puts("Hello from C puts!");
    io::printfn("Also from C3: %s", "Hello Every One");

}