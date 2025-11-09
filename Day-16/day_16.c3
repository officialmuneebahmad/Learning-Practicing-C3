// Day 16 of 30 Learning & Practicing C3
import std::io;
// Error Handling: try() & catch()

// defer try runs only when a function returns successfully 
// (with a result value, not an error).
fn int add(uint x, uint y){
    uint z = x + y;
    if (z != 0)
    {
        defer try io::printfn("✅ %d Success!",z);
        return 0;
    }else
    {
        defer try io::printfn("❌ Error: Please write a valid value!");
        return -1;
        
    }
}

// defer catch runs only when a function exits with an error
// (Optional Excuse).
fn int? money_transfer(int amount){
    if (amount <= 0)
    {
        defer (catch err){
            io::printfn("❌ Error Occured: %s ",err);
        }
            return io::INVALID_ARGUMENT?;
    }
    else {
        defer try io::printfn("✅ You have successfully transfered $%d ",amount);
        return 0;
    }
}

fn int main(){
    if (catch err = money_transfer(50)) {
        io::printfn("Transfer failed!");
    }
    add(0, 1);
    return 0;
}