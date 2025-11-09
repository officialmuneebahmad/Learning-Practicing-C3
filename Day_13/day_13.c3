import std::io;
// Error Handling : Optionals 
fn int? safe_divide(int a, int b) {
    if (b == 0) {
        return io::INVALID_FORMAT?;
    }
    return a / b;
}

fn int? safe_add(int x, int y) {
    if (x == 0 || y == 0) {
        return io::INVALID_FORMAT?;
    }
    return x + y;
}

fn void main() {
    //  1
    int? result = safe_divide(4, 8);
    
    if (catch excuse = result) {
        io::printfn("Error dividing: %s", excuse);
    } else {
        io::printfn("Division result: %d", result);
    }

    //  2
    int? sum_result = safe_add(2, 8);
    
    if (catch err = sum_result) {
        io::printfn("Error adding: %s", err);
        return;  // Exit
    }
    
    int sum = sum_result;  // Now safe to unwrap
    io::printfn("SUM: %d", sum);

}