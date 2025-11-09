# Learning & Practicing C3

[![C3 Language](https://img.shields.io/badge/Language-C3-blue.svg)](https://c3-lang.org/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

> **C3 is an evolution, not a revolution: the C-like for programmers who like C.**

A personal repository documenting my journey learning and practicing the C3 programming language - a modern systems programming language that aims to improve upon C while maintaining its philosophy and compatibility.

## 📖 About C3

C3 is a system programming language based on C. It is an evolution of C rather than a revolution, designed to:
- Stay close to C - only changing what's really necessary
- Maintain full C ABI compatibility for seamless integration
- Provide a "get things done" procedural approach
- Introduce higher-level conveniences where the value is significant
- Keep the learning curve minimal for C programmers

### Key Features
- ✅ Full C ABI compatibility
- ✅ Excellent C integration (mix C and C3 code)
- ✅ Zero-cost abstractions
- ✅ Semantic macros
- ✅ Compile-time reflection
- ✅ Generic modules
- ✅ Methods on types
- ✅ Error handling improvements
- ✅ Built-in dynamic arrays and strings

## 🚀 Getting Started

### Prerequisites
- **C3 Compiler**: Install from [official releases](https://github.com/c3lang/c3c/releases)
- Basic knowledge of C programming

### Installation

#### Windows
```powershell
# Using PowerShell (admin)
iwr -useb https://raw.githubusercontent.com/c3lang/c3c/refs/heads/master/install/install.ps1 | iex
```

#### Linux/MacOS
```bash
# Download and extract the latest release
# Follow platform-specific instructions at https://c3-lang.org
```

### Verify Installation
```bash
c3c --version
```

## 📚 Repository Structure

```
Learning-Practicing-C3/
├── basics/              # Basic syntax and concepts
├── data-structures/     # Common data structures in C3
├── algorithms/          # Algorithm implementations
├── examples/            # Practical examples and demos
├── exercises/           # Practice problems and solutions
└── projects/            # Mini projects and applications
```

## 🎯 Learning Path

### Phase 1: Fundamentals

### Phase 2: Intermediate Concepts

### Phase 3: Keep Learning & Keep Building...

## 💡 Example Code

Here's a simple "Hello, World!" in C3:

```c3
module hello_world;
import std::io;

fn void main()
{
    io::printn("Hello, World!");
}
```

### Generic Stack Example

```c3
module stack(<Type>);

struct Stack
{
    Type* elements;
    usz count;
    usz capacity;
}

fn void Stack.push(&self, Type element) { ... }
fn Type Stack.pop(&self) { ... }

// Usage:
import stack;

alias IntStack = Stack(<int>);
alias DoubleStack = Stack(<double>);

fn void main()
{
    IntStack int_stack;
    int_stack.push(42);
    int value = int_stack.pop();
}
```

## 🔧 Building and Running

### Compile a single file
```bash
c3c compile myfile.c3
```

### Run directly
```bash
c3c run myfile.c3
```

### Build a project
```bash
c3c build
```

## 📖 Resources

### Official Resources
- [C3 Official Website](https://c3-lang.org/)
- [C3 Language Documentation](https://c3-lang.org/language-overview/)
- [C3 Compiler GitHub](https://github.com/c3lang/c3c)
- [C3 Discord Community](https://discord.gg/qN76R87)
- [Interactive C3 Tutorial](https://learn-c3.org/)

### Additional Learning
- [C3 Examples](https://c3-lang.org/language-overview/examples/)
- [Awesome C3](https://github.com/tonis2/Awesome.c3) - Curated list of C3 resources
- [C3 IntelliJ Plugin](https://github.com/c3lang/c3intellij)

## 🤝 Contributing

This is a personal learning repository, but suggestions and discussions are welcome! Feel free to:
- Open issues for questions or discussions
- Submit pull requests with improvements or corrections
- Share your own learning experiences

## 📝 Notes

This repository contains:
- Personal notes and comments
- Practice exercises with solutions
- Experimental code and snippets
- Real-world problem implementations in C3

## 🎓 Learning Goals

- Master C3 syntax and idioms
- Understand C3's improvements over C
- Build practical applications
- Contribute to the C3 ecosystem
- Share knowledge with the community

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- The C3 development team for creating this amazing language
- The C3 community for support and resources
- All contributors to C3 documentation and examples

---

**Note**: C3 is still in active development. Some features may change as the language evolves.

*Learning is a journey, not a destination. Happy coding! 🚀*
***Written BY Muneeb Ahmad ❤️ from [![Made in Pakistan](https://uxwing.com/wp-content/themes/uxwing/download/flags-landmarks/pakistan-flag-icon.png)](https://github.com/officialmuneebahmad)***
