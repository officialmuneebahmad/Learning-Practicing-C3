// Day 15 of 30 Learning & Practicing C3
import std::io;
// Defer + Early Exit + LIFO
fn void? process_batch(int batch_size) {
    int processed = 0;
    int failed = 0;
    
    io::printfn("Starting batch of %d items...", batch_size);
    
    defer io::printfn("📊 Final Stats: Processed=%d, Failed=%d", processed, failed);
    
    // Process items
    for (int i = 0; i < batch_size; i++) {
        io::printfn("Processing item %d...", i + 1);
        processed++;
        
        // Simulate an error on item 5
        if (i == 4) {
            failed++;
            io::printn("❌ Error encountered!");
            return io::FILE_NOT_FOUND?;  // Early exit!
        }
    }
    
    io::printn("✅ Batch completed successfully!");
    return;
}

fn void main() {
    io::printn("=== Test 1: Small batch ===");
    (void)process_batch(3);
    
    io::printn("\n=== Test 2: Batch with error ===");
    (void)process_batch(10);
}