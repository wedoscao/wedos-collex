# wEdoS Collex

A robust and efficient collection of data structures implemented in **C++**. This project is built for educational purposes and a personal challenge to provide clean, well-documented, and tested implementations.

---

## Features

`wEdoS Collex` provides the following data structures:

* **Linear Structures:**
    * `Vector` (Dynamic Array)
    * `LinkedList` (Singly & Doubly)
    * `Stack`
    * `Queue`
    * `Deque`
* **Associative Containers:**
    * `HashTable` (with Chaining / Open Addressing)
    * `Map`
* **Trees:**
    * `BinarySearchTree`
    * `AVLTree` (Self-Balancing)
    * `Trie` (Prefix Tree)
* **Heaps:**
    * `MinHeap`
    * `MaxHeap`
* **Graphs:**
    * `Graph` (Adjacency List / Matrix implementation)

---

## Installation

Clone the repository:

```bash
git clone https://github.com/wedoscao/wedos-collex.git
```

Build the static library by using:
```bash 
make build
```

Move the static library file and include directory into your project:
```bash 
mv build/lib/libwedoscollex.a <YOUR-PROJECT-PATH> && mv src/include <YOUR-PROJECT-PATH>
```

## 💻 Usage & API

### Compiling Your Project

After following the **Installation** steps, your project directory should contain the `libwedoscollex.a` file and the `include` directory.

To compile your own `main.cpp` file, you need to tell the `g++` compiler where to find the header files (`-Iinclude`) and how to link the static library (`-L.` for the current directory, and `-lwedoscollex` to link the library).

**Compile Command:**
```bash
g++ -Iinclude -L. -lwedoscollex <YOUR-SRC-FILES> -o <YOUR-PROGRAM>
```

## License
The project is MIT licensed.
