// ============================================
// C3 STRUCTS & COMPOSITION - COMPLETE GUIDE
// ============================================

import std::io;
import std::math;


// ============================================
// PART 1: BASIC STRUCTS
// ============================================

// Simple struct definition
struct Point {
    int x;
    int y;
}

// Struct with different types
struct Person {
    String name;
    int age;
    float height;
    bool is_student;
}

fn void basic_structs_demo() {
    io::printn("\n=== BASIC STRUCTS ===");
    
    // Method 1: Initialize with named fields
    Point p1 = { .x = 10, .y = 20 };
    io::printfn("Point 1: (%d, %d)", p1.x, p1.y);
    
    // Method 2: Initialize in order (less clear)
    Point p2 = { 5, 15 };
    io::printfn("Point 2: (%d, %d)", p2.x, p2.y);
    
    // Method 3: Default initialization (zeros)
    Point p3;
    io::printfn("Point 3: (%d, %d)", p3.x, p3.y);
    
    // Struct with strings
    Person alice = {
        .name = "Alice",
        .age = 25,
        .height = 1.65,
        .is_student = true
    };
    io::printfn("%s is %d years old", alice.name, alice.age);
}

// ============================================
// PART 2: STRUCT METHODS
// ============================================

struct Rectangle {
    float width;
    float height;
}

// Method syntax: fn ReturnType StructName.method_name(...)
fn float Rectangle.area(&self) {
    return self.width * self.height;
}

fn float Rectangle.perimeter(&self) {
    return 2.0 * ((double)self.width + (double)self.height);
}

fn void Rectangle.scale(&self, float factor) {
    self.width *= factor;
    self.height *= factor;
}

fn bool Rectangle.is_square(&self) {
    return self.width == self.height;
}

fn void struct_methods_demo() {
    io::printn("\n=== STRUCT METHODS ===");
    
    Rectangle rect = { .width = 10.0, .height = 5.0 };
    
    // Call methods on the struct
    io::printfn("Area: %.2f", rect.area());
    io::printfn("Perimeter: %.2f", rect.perimeter());
    io::printfn("Is square? %s", rect.is_square() ? "Yes" : "No");
    
    // Modify the struct
    rect.scale(2.0);
    io::printfn("After scaling: %.2f x %.2f", rect.width, rect.height);
}

// ============================================
// PART 3: STRUCT COMPOSITION (HAS-A)
// ============================================

struct Address {
    String street;
    String city;
    String country;
}

fn void Address.print(&self) {
    io::printfn("%s, %s, %s", self.street, self.city, self.country);
}

struct Employee {
    String name;
    int id;
    Address address;  // Employee HAS-A Address
    float salary;
}

fn void Employee.print(&self) {
    io::printfn("Employee: %s (ID: %d)", self.name, self.id);
    io::print("Address: ");
    self.address.print();
    io::printfn("Salary: $%.2f", self.salary);
}

fn void composition_demo() {
    io::printn("\n=== STRUCT COMPOSITION ===");
    
    Employee emp = {
        .name = "Bob Smith",
        .id = 1001,
        .address = {
            .street = "123 Main St",
            .city = "New York",
            .country = "USA"
        },
        .salary = 75000.0
    };
    
    emp.print();
}

// ============================================
// PART 4: STRUCT SUBTYPING (IS-A)
// ============================================

// Base struct
struct Vehicle {
    String brand;
    int year;
    float price;
}

fn void Vehicle.print_info(&self) {
    io::printfn("%s (%d) - $%.2f", self.brand, self.year, self.price);
}

// Subtype: Car IS-A Vehicle (with additional fields)
struct Car {
    inline Vehicle vehicle;  // Embed Vehicle fields
    int doors;
    String fuel_type;
}

fn void Car.print_details(&self) {
    io::print("Car: ");
    self.vehicle.print_info();  // Access base methods
    io::printfn("Doors: %d, Fuel: %s", self.doors, self.fuel_type);
}

// Another subtype
struct Motorcycle {
    inline Vehicle vehicle;
    bool has_sidecar;
    int engine_cc;
}

fn void subtyping_demo() {
    io::printn("\n=== STRUCT SUBTYPING ===");
    
    Car my_car = {
        .vehicle = {
            .brand = "Toyota",
            .year = 2023,
            .price = 35000.0
        },
        .doors = 4,
        .fuel_type = "Hybrid"
    };
    
    // Access inline fields directly
    io::printfn("Brand: %s", my_car.brand);  // Direct access!
    io::printfn("Year: %d", my_car.year);
    
    my_car.print_details();
    
    Motorcycle bike = {
        .vehicle = {
            .brand = "Harley",
            .year = 2022,
            .price = 18000.0
        },
        .has_sidecar = false,
        .engine_cc = 1200
    };
    
    io::printfn("\nMotorcycle: %s - %dcc", bike.brand, bike.engine_cc);
}

// ============================================
// PART 5: NESTED STRUCTS & COMPLEX COMPOSITION
// ============================================

struct Color {
    char red;
    char green;
    char blue;
}

fn void Color.print(&self) {
    io::printfn("RGB(%d, %d, %d)", self.red, self.green, self.blue);
}

struct Circle {
    Point center;
    float radius;
    Color color;
}

fn float Circle.area(&self) {
    const float PI = 3.14159;
    return PI * self.radius * self.radius;
}

fn void Circle.describe(&self) {
    io::printfn("Circle at (%d, %d) with radius %.2f", 
                self.center.x, self.center.y, self.radius);
    io::print("Color: ");
    self.color.print();
    io::printfn("Area: %.2f", self.area());
}

fn void nested_structs_demo() {
    io::printn("\n=== NESTED STRUCTS ===");
    
    Circle my_circle = {
        .center = { .x = 100, .y = 150 },
        .radius = 50.0,
        .color = { .red = 255, .green = 0, .blue = 0 }
    };
    
    my_circle.describe();
}

// ============================================
// PART 6: PRACTICAL EXAMPLE - GAME ENTITY
// ============================================

struct Position {
    float x;
    float y;
}

fn void Position.move(&self, float dx, float dy) {
    self.x += dx;
    self.y += dy;
}

fn float Position.distance_to(&self, Position* other) {
    float dx = self.x - other.x;
    float dy = self.y - other.y;
    return $$sqrt(dx * dx + dy * dy);
}

struct Health {
    int current;
    int maximum;
}

fn void Health.damage(&self, int amount) {
    self.current -= amount;
    if (self.current < 0) self.current = 0;
}

fn void Health.heal(&self, int amount) {
    self.current += amount;
    if (self.current > self.maximum) self.current = self.maximum;
}

fn bool Health.is_alive(&self) {
    return self.current > 0;
}

struct GameEntity {
    String name;
    Position pos;
    Health health;
    float speed;
}

fn void GameEntity.print_status(&self) {
    io::printfn("%s at (%.1f, %.1f) - HP: %d/%d", 
                self.name, self.pos.x, self.pos.y, 
                self.health.current, self.health.maximum);
}

fn void GameEntity.move_towards(&self, Position* target, float distance) {
    float dx = target.x - self.pos.x;
    float dy = target.y - self.pos.y;
    float current_distance = self.pos.distance_to(target);
    
    if (current_distance > 0) {
        float ratio = distance / current_distance;
        self.pos.move(dx * ratio, dy * ratio);
    }
}

fn void game_example_demo() {
    io::printn("\n=== GAME ENTITY EXAMPLE ===");
    
    GameEntity player = {
        .name = "Hero",
        .pos = { .x = 0.0, .y = 0.0 },
        .health = { .current = 100, .maximum = 100 },
        .speed = 5.0
    };
    
    GameEntity enemy = {
        .name = "Goblin",
        .pos = { .x = 50.0, .y = 50.0 },
        .health = { .current = 50, .maximum = 50 },
        .speed = 3.0
    };
    
    player.print_status();
    enemy.print_status();
    
    // Simulate combat
    io::printn("\n--- Combat! ---");
    player.health.damage(20);
    enemy.health.damage(30);
    
    player.print_status();
    enemy.print_status();
    
    // Move player towards enemy
    io::printn("\n--- Movement ---");
    Position target = enemy.pos;
    player.move_towards(&target, player.speed);
    
    player.print_status();
    
    float distance = player.pos.distance_to(&enemy.pos);
    io::printfn("Distance to enemy: %.2f", distance);
}

// ============================================
// PART 7: CONSTRUCTORS PATTERN
// ============================================

struct BankAccount {
    String owner;
    long account_number;
    double balance;
}

// Constructor-like function
fn BankAccount new_bank_account(String owner, long account_number) {
    return {
        .owner = owner,
        .account_number = account_number,
        .balance = 0.0
    };
}

fn void BankAccount.deposit(&self, double amount) {
    if (amount > 0) {
        self.balance += amount;
        io::printfn("Deposited $%.2f. New balance: $%.2f", 
                    amount, self.balance);
    }
}

fn bool BankAccount.withdraw(&self, double amount) {
    if (amount > 0 && amount <= self.balance) {
        self.balance -= amount;
        io::printfn("Withdrew $%.2f. New balance: $%.2f", 
                    amount, self.balance);
        return true;
    }
    io::printn("Insufficient funds!");
    return false;
}

fn void constructor_demo() {
    io::printn("\n=== CONSTRUCTOR PATTERN ===");
    
    BankAccount account = new_bank_account("Alice Johnson", 123456789);
    
    account.deposit(900.0);
    account.withdraw(300.0);
    account.withdraw(800.0);  // Should fail
}

// ============================================
// MAIN FUNCTION - RUN ALL DEMOS
// ============================================

fn void main() {
    io::printn("===========================================");
    io::printn("  C3 STRUCTS & COMPOSITION GUIDE");
    io::printn("===========================================");
    
    basic_structs_demo();
    struct_methods_demo();
    composition_demo();
    subtyping_demo();
    nested_structs_demo();
    game_example_demo();
    constructor_demo();
    
    io::printn("\n===========================================");
    io::printn("  END OF DEMONSTRATION");
    io::printn("===========================================");
}