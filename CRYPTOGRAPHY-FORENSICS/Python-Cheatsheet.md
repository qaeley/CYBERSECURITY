# 🐍 Python Core Fundamentals

This document contains essential Python concepts, syntax rules, and data structures for cybersecurity and general programming.

---

## 1. Variables and Data Assignment
**Core Idea:** Variables are named storage locations for data used to manipulate information.

* **Assignment:** Use the `=` operator (e.g., `item = "banana"`).
* **Strings:** Text data must be enclosed in single or double quotation marks.
* **Case Sensitivity:** Variable names are distinct; `item` and `Item` are different.
* **Naming Convention:** Use **underscores** for multi-word names (e.g., `item_name`).
* **Output:** Use the `print()` function to display values.
* **Concatenation:** Join strings using the `+` operator (e.g., `"hello " + name`).

---

## 2. Fundamental Data Types
**Core Idea:** Python categorizes data into types with specific properties.

| Type | Name | Example |
| :--- | :--- | :--- |
| **Integer** | `int` | Whole numbers like `10` or `-5` |
| **String** | `str` | Text data like `"apple"` |
| **Boolean** | `bool` | Truth values: `True` or `False` |
| **List** | `list` | Ordered collection `["apple", 10, True]` |

### Type Conversion
Crucial for combining different types:
* **To String:** `str(variable)` — Allows printing numbers with text.
* **To Integer:** `int(variable)` — Useful for converting user input into math-ready numbers.

---

## 3. Basic Math Operations
Python uses intuitive symbols for arithmetic:

* `+` Addition | `-` Subtraction
* `*` Multiplication | `/` Division
* `**` Exponential Power (e.g., `2 ** 3` is 8)

---

## 4. Conditional Logic (If/Else)
**Core Idea:** Allows the program to make decisions based on conditions.



```python
if age > 21:
    print("Old")
elif age == 18:
    print("Getting old")
else:
    print("Young")
```

## Loops for Repetition
**Core Idea:** Loops enable the execution of a block of code multiple times, either for a fixed count or until a condition is met.

### 1. For Loop
* **Iterates over a sequence:** Used for lists, strings, or a `range()`.
* **Range function:** `for i in range(n):` loops $n$ times, with $i$ taking values from $0$ to $n-1$.
* **Zero-based indexing:** In programming, counting almost always begins from zero.
* **Direct iteration:** You can iterate directly over list elements: `for name in name_list: print(name)`.

### 2. While Loop
* **Conditional execution:** Continues running as long as a specified condition remains `True`.
* **Infinite Loops:** Occur if the `while` condition never becomes `False` (e.g., `while True:`).
* **Break Statement:** Immediately terminates the current loop, allowing the program to continue with the code following the loop.



---

## 🏗️ Functions for Code Reusability
**Core Idea:** Functions are blocks of organized, reusable code that perform a specific
