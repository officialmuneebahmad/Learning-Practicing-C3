// Day 17 of 30 Learning & Practicing C3
import std::io;
// Enumeration & Unions
enum HireDetective {
    COLDCASE,
    CYBERCRIME,
    FORENSIC,
    FRAUD,
    FAMILY,
    HOMICIDE,
    NARCOTICS,
    PRIVATE
}

union Number {
    int i;
    float f;
}

fn void call_detective(HireDetective detective) {
    switch (detective) {
        case COLDCASE:
            io::printn("Call Ben, Its an old case");
        case CYBERCRIME:
            io::printn("Call David, Its a tech-savvy crime");
        case FORENSIC:
            io::printn("Call Sandy, We found a DNA!");
        case FRAUD:
            io::printn("Call Bob, I've been scammed!");
        case FAMILY:
            io::printn("Call Alan, Its a abuse case!");
        case HOMICIDE:
            io::printn("Call John, There is a witness!");
        case NARCOTICS:
            io::printn("Call Jim, They found a packet!");
        case PRIVATE:
            io::printn("Call Amelia, They need a private investigato!");
        default:
            io::printn("CALL ANYONE WHO IS AVAILABLE! JI JUST NEED MY CASE SOLVED!");
    }
}

fn void main() {
    HireDetective murderCase = HOMICIDE;
    call_detective(murderCase);

    Number num;
    
    // Store an integer
    num.i = 42;
    io::printfn("As int: %d", num.i);
    
    // Now store a float (overwrites the int!)
    num.f = 3.14;
    io::printfn("As float: %f", num.f);
    // num.i is now garbage - don't use it!
}