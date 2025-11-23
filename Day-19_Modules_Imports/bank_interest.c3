module bank;

import std::io;

// @local - only used for interest calculations in THIS file
fn double calculate_compound_rate(double rate, int years) @local {
    double result = 1.0;
    for (int i = 0; i < years; i++) {
        result *= (1.0 + rate);
    }
    return result;
}

// PUBLIC - customers can use
fn void apply_interest(Account* acc, double rate) {
    double interest = acc.balance * rate;
    
    if (validate_amount(interest)) {  // ✓ Works - @private
        acc.balance += interest;
        log_transaction("INTEREST", interest);  // ✓ Works - @private
        io::printfn("✓ Applied $%.2f interest", interest);
    }
}