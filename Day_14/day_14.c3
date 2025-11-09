import std::io;

fn int? get_number(bool fail) {
    if (fail) return io::INVALID_FORMAT?;
    return 42;
}

fn String? get_name(bool fail) {
    if (fail) return io::INVALID_FORMAT?;
    return "Alice";
}

fn void? print_info(bool num_fails, bool name_fails) {
    int num = get_number(num_fails)!;
    String name = get_name(name_fails)!;
    io::printfn("Name: %s\nBadge No: %d", name, num);
}

// Wrapper that returns a result you can store
fn bool? try_print_info(bool num_fails, bool name_fails) {
    print_info(num_fails, name_fails)!;  // Propagate errors
    return true;  // Success
}

fn void main() {
    // Now we can store the result!

    // If fail/false is true, it returns an error
    bool? result = try_print_info(false, false); 
    
    if (catch err = result) {
        io::printfn("Failed: %s", err);
    } else {
        io::printn("Operation succeeded!");
    }
}