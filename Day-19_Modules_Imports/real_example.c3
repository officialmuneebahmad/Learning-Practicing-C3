module main;

import bank;
import std::io;

fn void main() {
    io::printn("=== Banking System ===\n");
    
    // ✓ Can use public functions
    Account acc = bank::create_account("Alice", 123456);
    
    bank::deposit(&acc, 1000.0);
    bank::withdraw(&acc, 300.0);
    bank::apply_interest(&acc, 0.05);
    
    io::printfn("\nFinal balance: $%.2f", acc.balance);
    
    // ✗ CANNOT use private functions
    // bank::validate_amount(100.0);        // ERROR: @private
    // bank::log_transaction("TEST", 50.0); // ERROR: @private
    // bank::check_fraud(&acc, 100.0);      // ERROR: @private
    
    // ✗ CANNOT use local functions (not even visible!)
    // bank::calculate_compound_rate(0.05, 2);  // ERROR: @local
}