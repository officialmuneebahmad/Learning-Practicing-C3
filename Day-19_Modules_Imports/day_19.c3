module main;
// module math_utils;

import math_utils; // Now add math_utils prefix
import std::io;

fn void main() {
    io::printn("=== >>> Module <<< ===");
    
    // Call public functions with module prefix
    int sum = math_utils::add(10, 5);
    io::printfn("10 + 5 = %d", sum);
    
    int product = math_utils::multiply(6, 7);
    io::printfn("6 x 7 = %d", product);
    
    demo();
    
    // ❌ This would ERROR - secret_calculation is @private:
    // math_utils::secret_calculation();

    // Key Takeaways from Official Docs
    /* 
       1) Imports are RECURSIVE - import math also imports math::basic, math::advanced, etc.
        Types vs Functions:

       2) Types: No prefix needed (unless ambiguous)
        Functions: Always need module prefix


       3) Visibility Levels:

        Default: PUBLIC (visible to all)
        @private: Visible within the module (all files)
        @local: Visible within the file only


        4) Multiple Files, Same Module:

        Multiple .c3 files can declare the same module
        They share the same namespace


        5) Implicit Imports:

        std::core is always imported
        Sibling modules are auto-imported


        6) Compilation:

        Must compile all files together: c3c compile file1.c3 file2.c3
        For NOW!
    */
   
}