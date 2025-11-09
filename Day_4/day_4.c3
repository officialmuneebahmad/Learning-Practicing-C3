import std::io;

fn void main(){
    // Character & Booleans
    char a = 'A';
    char b = 65;
    Char32 star = '\u2605';
    bool flag = false;
    io::printfn("%c %d %c %d", a, b, star, flag); 

    if (flag)
    {
        io::printf("flag is true!");   
    }
    else if (!flag)
    {
        io::printf("flag is false");
    }

}