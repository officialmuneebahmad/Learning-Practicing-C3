module bank;

import std::io;

struct Account {
    String owner;
    long account_number;
    double balance;
}

// PUBLIC - customers can use this
fn Account create_account(String owner, long account_number) {
    return {
        .owner = owner,
        .account_number = account_number,
        .balance = 0.0
    };
}

// PUBLIC - customers can deposit
fn void deposit(Account* acc, double amount) {
    if (validate_amount(amount)) {  // Uses @private
        acc.balance += amount;
        log_transaction("DEPOSIT", amount);  // Uses @private
        io::printfn("✓ Deposited $%.2f", amount);
    }
}

// PUBLIC - customers can withdraw
fn bool withdraw(Account* acc, double amount) {
    if (!validate_amount(amount)) return false;
    
    if (acc.balance >= amount) {
        acc.balance -= amount;
        log_transaction("WITHDRAW", amount);  // Uses @private
        io::printfn("✓ Withdrew $%.2f", amount);
        return true;
    }
    
    io::printn("✗ Insufficient funds!");
    return false;
}

// @private - internal validation (all bank files can use)
fn bool validate_amount(double amount) @private {
    return amount > 0.0 && amount < 1000000.0;
}

// @private - internal logging (all bank files can use)
fn void log_transaction(String type, double amount) @private {
    io::printfn("[LOG] %s: $%.2f", type, amount);
}

// @private - fraud detection (all bank files can use)
fn bool check_fraud(Account* acc, double amount) @private {
    return amount < acc.balance * 10.0;
}