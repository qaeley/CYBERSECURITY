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

## Functions for Code Reusability
**Core Idea:** Functions are blocks of organized, reusable code that perform a specific task, promoting efficiency and modularity.

### 1. Defining a Function (`def`)
* **Syntax:** Use the `def` keyword followed by the function name and parentheses for parameters.
* **Reusability:** The primary purpose is to run the same code multiple times without rewriting the logic.
* **Example:** Calling `say_hello("Mario")` and `say_hello("Luigi")` uses the same function to produce different results based on the input.


### 2. The `pass` Keyword 
* **Null Operation:** This is a command that does literally nothing when executed.
* **Placeholder:** It is used in function definitions when you haven't implemented the logic yet.
* **Preventing Errors:** Using `pass` prevents Python from throwing a "Syntax Error" for having an empty function.

```python
# Function Definition Example
def get_internet():
    # Logic not written yet
    pass 

def say_hello(name):
    print("Hello " + name)

# Calling the function
say_hello("Mario")
```
## 🛠️ Data Transformation Functions
**Core Idea:** Essential functions for converting between human-readable text and computer-readable numbers.

| Function | Input | Output | Purpose |
| :--- | :--- | :--- | :--- |
| `len(x)` | List / String | Integer | Returns the total count of items/characters. |
| `ord("a")` | Character | Integer | Converts a character to its **ASCII number** (97). |
| `chr(97)` | Integer | Character | Converts an **ASCII number** back to a character ("a"). |

---
* **For Loop:** Automatically iterates through a list. No need to define the variable first.
  ```python
  for n in number_list:
      print(chr(n)) # Converts each number in the list
  ```

## Hex & Bytes Conversion
**Core Idea:** Essential for moving between Hexadecimal strings (common in CTFs) and raw bytes (needed for XOR and crypto math).

* **Hex to Bytes:** Use `bytes.fromhex("string")`.
* **Bytes to Hex:** Use the `.hex()` method on a byte object.

```python
# From Hex String to Bytes
raw_bytes = bytes.fromhex("68656c6c6f") 
# Result: b'hello'

# From Bytes back to Hex String
hex_string = raw_bytes.hex()
# Result: "68656c6c6f"
```
## 📦 Base64 Encoding
**Core Idea:** Converting binary data into a 64-character alphabet string for web-safe transmission.

* **Requirement:** Must include `import base64` at the top of `.py` file.
* **The Workflow:** Most challenges gives a **Hex string** that must be converted to **Bytes** before you can encode it to **Base64**.



### Example Implementation:
```python
import base64

# 1. Start with a hex string
hex_data = "726f743133"

# 2. Convert Hex to Bytes (Crucial Step!)
binary_data = bytes.fromhex(hex_data)

# 3. Encode to Base64
b64_data = base64.b64encode(binary_data)

print(b64_data) # Output: b'cm90MTM='
```
### 🔄 Base64 Decoding
**Core Idea:** Converting a Base64 encoded string back into its original raw bytes.

* **Usage:** Use `base64.b64decode()` when given a Base64 string and need to retrieve the original data.
* **The Workflow:** Base64 String -> `base64.b64decode()` -> Raw Bytes -> `.hex()` or `chr()` (depending on target format).

#### Example Implementation:
```python
import base64

# 1. Start with a Base64 string
b64_string = "cm90MTM="

# 2. Decode back to bytes
decoded_bytes = base64.b64decode(b64_string)

print(decoded_bytes) # Output: b'rot13'

# 3. Optional: Convert to a regular string
readable_text = decoded_bytes.decode()
print(readable_text) # Output: rot13
```

## 🔢 Large Number Conversion (PyCryptodome)
**Core Idea:** Converting between raw bytes and large integers for mathematical operations.

* **Requirement:** Install library via `pip install pycryptodome` (cmd prompt or terminal) and import:
  `from Crypto.Util.number import *`

```python
from Crypto.Util.number import bytes_to_long, long_to_bytes

# Convert Bytes to Large Integer (Base-10)
data = b'hello'
long_val = bytes_to_long(data) 
# Result: 448378203247

# Convert Large Integer back to Bytes
original_bytes = long_to_bytes(long_val)
# Result: b'hello'
```
## 🔧 Library Management (Pip)
**Core Idea:** Installing and managing external packages like `PyCryptodome`.


| Task | macOS / Linux (ZSH/Bash) | Windows (PowerShell/CMD) |
| :--- | :--- | :--- |
| **Install Library** | `pip3 install pycryptodome` | `pip install pycryptodome` |
| **Safe Install** | `python3 -m pip install pycryptodome` | `python -m pip install pycryptodome` |
| **List Packages** | `pip3 list` | `pip list` |
| **Search Package** | `pip3 list | grep Crypto` | `pip list | findstr Crypto` |

### ⚠️ Critical Rules
1. **Terminal Only:** Commands must be run in the VS Code terminal, not inside the `.py` script.
2. **Naming Difference:** * Package name (to install): `pycryptodome`
   * Module name (to import): `Crypto`
3. **Interpreter Mismatch:** If `ModuleNotFoundError` persists after install, check the **Python Interpreter** in the bottom-right corner of VS Code to ensure it matches the version where you ran `pip3`.
## ➕ List Building with `.append()`
**Purpose:** Adds a single item to the end of an existing list. Essential for building a result set one-by-one inside a loop.

* **Logic:** `list.append(item)`
* **Behavior:** Modifies the list "in-place" (it doesn't create a new list, it changes the current one).

### 🛠️ Example: Building an XOR result
```python
numbers = [1, 2, 3, 4]
results = []  # Start with an empty list

for n in numbers:
    results.append(n ^ 13)  # Add the XORed result to the end

print(results)  # Output: [12, 15, 14, 9]
```
## 🧵 String Merging with `.join()`
**Purpose:** Converts a list of individual characters or strings back into a single, continuous string.

* **Syntax:** `"separator".join(list_variable)`
* **The "Separator":** Whatever is inside the first set of quotes is what Python puts *between* each item.

### 🛠️ Common Use Cases

| Separator | Code Example | Output |
| :--- | :--- | :--- |
| **Empty** | `"".join(['f', 'l', 'a', 'g'])` | `flag` |
| **Space** | `" ".join(['Hello', 'World'])` | `Hello World` |
| **Dash** | `"-".join(['a', 'b', 'c'])` | `a-b-c` |

### 🔍 Practical Crypto Example
When you process data through a loop and collect characters in a list, use `.join()` to create the final flag string.

```python
# 1. Your list of processed characters
result_list = ['y', 'x', 'i', 'z', 'i']

# 2. Join them with NO space to make the string
final_string = "".join(result_list)

# 3. Use an f-string to wrap it in the flag format
print(f"crypto{{{final_string}}}") 
# Output: crypto{yxizi}
```
## 📝 String Formatting (f-strings)
**Purpose:** To easily insert variables or logic directly into strings.

* **Syntax:** `f"Text {variable} text"`
* **Escaping Braces:** If you need to print a literal `{` inside an f-string, you must double it: `{{`.

### 🛠️ Example: Flag Formatting
```python
flag = "abc_123"

# Standard way
print(f"crypto{{{flag}}}") 
# Output: crypto{abc_123}

# Doing math inside f-strings
print(f"The result is {10 + 3}") 
# Output: The result is 13
```
## ⚡ XORing Two Byte Strings
**Purpose:** Systematically XORing long sequences of data.

* **The Logic:** You must XOR each byte index-by-index.
* **The Tools:** `zip()` to pair them, `^` to XOR, and `bytes()` to wrap it back up.

### 🛠️ The "One-Liner" XOR
```python
# Convert hex to bytes first
b1 = bytes.fromhex("a6c8...")
b2 = bytes.fromhex("37dc...")

# Systematically XOR both
result = bytes([x ^ y for x, y in zip(b1, b2)])
print(result.hex())
```
## 🐍 Python vs C: List Comprehension
**Purpose:** Performing operations on every item in a list without manual index counters.

| Feature | C Approach | Python "One-Liner" |
| :--- | :--- | :--- |
| **Looping** | `for(int i=0; i<len; i++)` | `for x in list` |
| **Pairing** | `list1[i], list2[i]` | `zip(list1, list2)` |
| **Storage** | `result[i] = x ^ y` | `[x ^ y for x, y in ...]` |

### 🛠️ Example: Byte XOR
```python
# The "C-Style" manual way in Python:
res = []
for i in range(len(b1)):
    res.append(b1[i] ^ b2[i])

# The "Pythonic" way:
res = bytes([x ^ y for x, y in zip(b1, b2)])
```
## 🛡️ The Safety of `zip()`
**Concept:** Prevents "Index Out of Bounds" errors common in C.

* **Behavior:** If two lists are different lengths, `zip()` stops at the **shortest** one.
* **Unpacking:** The syntax `for a, b in zip(list1, list2)` assigns the first item of list1 to `a` and the first of list2 to `b` simultaneously.

### 🛠️ Visualizing the pairing:
```python
keys = [1, 2, 3]
data = [10, 20, 30, 40, 50]

# result will only have 3 items!
result = [a ^ b for a, b in zip(keys, data)]
# Output: [11, 22, 25]
```
## 🧬 1. The Anatomy of List Comprehension
In Python, we tell the computer *what* we want first, then *where* to get it. 

**The Syntax:**
`[result_expression for item in iterable]`

**My Initial Struggle:**
Coming from C, I expected a standard `for` loop body. In Python, the math/operation happens **before** the `for` keyword.

**Example (The "Broadcast" XOR):**
```python
# XOR every byte in a string with a single secret key
result = [b ^ 13 for b in data]
```
---

## 🔄 1. The Byte-to-Integer Pipeline
In Python, `bytes` objects and `integers` are deeply connected. Coming from C, the "hidden" conversion is the most important part to remember.

* **Automatic Extraction**: When you loop over a `bytes` object (e.g., `for b in given_byte:`), the loop variable `b` automatically becomes an **Integer** (0-255). 
* **The XOR Math**: Python handles bitwise operators (`^`, `&`, `|`, `<<`, `>>`) on integers by treating them as binary. Since `b` is pulled out as an int, you can XOR it directly with another int (the key).


---

## 🎭 2. The Two Faces of "in" (The Search Engine)
The `in` keyword is a "context-shifter." It replaces complex C logic like `strstr()`.

| Usage | Context | Purpose (The C Equivalent) |
| :--- | :--- | :--- |
| `for b in data:` | **Looping** | `for (int i=0; i < len; i++) { b = data[i]; }` |
| `if b"word" in data:` | **Searching** | `if (strstr(data, "word") != NULL)` |

**The "In-Loop" Search:**
Inside a Brute Force loop, `if b"crypto" in checker:` acts as a hidden loop that scans the entire `checker` buffer for the flag pattern.

> **⚠️ Crucial Rule:** You must search for **Bytes in Bytes**. Always use the `b` prefix: `if b"crypto" in result:`.



---

## 🧬3. The Anatomy of List Comprehension
In Python, we tell the computer *what* we want first, then *where* to get it. 

**The Syntax:**
`[result_expression for item in iterable]`

**Example (The "Broadcast" XOR):**
```python
# XOR every byte in a string with a single secret key
result = [b ^ 13 for b in data]
# Example
ciphertext = bytes.fromhex("736269...")

for key in range(256):
    # Perform XOR on every integer 'b' and pack into a bytes object
    checker = bytes([b ^ key for b in ciphertext])
    
    # Use the 'in' search engine to find the 'signal'
    if b"crypto" in checker:
        print(f"Key Found: {key}")
        print(f"Flag: {checker.decode()}")
        break
```
It is easily the most useful math trick in cryptography. Here is a clean, GitHub-style Markdown snippet for your cheatsheet.

Markdown
# The Modulo Operator (%)

In cryptography, we use the **Modulo Operator** to create a "Circular Loop." This is essential for **Repeating-key XOR**, where the key is shorter than the message.

### 🛠️ The Core Logic
When looping through a message with index `i`, we use `i % len(key)` to ensure the key resets to the beginning once we hit the end.

| Index (i) | Key Length | `i % 3` (Result) | Action |
| :--- | :--- | :--- | :--- |
| 0 | 3 | **0** | Use key[0] |
| 1 | 3 | **1** | Use key[1] |
| 2 | 3 | **2** | Use key[2] |
| 3 | 3 | **0** | **RESET** to key[0] |

---

### 💻 Python Implementation (Repeating XOR)

```python
def repeating_xor(data, key):
    # i % len(key) ensures the key wraps around infinitely
    return bytes([data[i] ^ key[i % len(key)] for i in range(len(data))])

# Example:
# Data: [H, E, L, L, O] (Length 5)
# Key:  [A, B]       (Length 2)
# Loop: (H^A), (E^B), (L^A), (L^B), (O^A)
```
### (`array[start:stop]`)

Slicing allows you to access specific chunks of data. In Crypto challenges, this is used to verify headers or process data in blocks.

| Syntax | Meaning | Result for `b"crypto{flag}"` |
| :--- | :--- | :--- |
| `data[:3]` | **First 3** elements | `b"cry"` |
| `data[3:]` | **Everything after** index 3 | `b"pto{flag}"` |
| `data[-4:]` | **Last 4** elements | `b"flag"` |
| `data[1:4]` | From index 1 **up to (not including)** 4 | `b"ryp"` |
| `data[:]` | **Copy** the whole array | `b"crypto{flag}"` |



---

### 💡 Pro Tip: Using Slices for Flag Validation
When brute-forcing XOR, you can use a slice in your `if` statement to check if you've found the flag without checking the whole string:

```python
# Check if the first 7 characters are the flag header
if result[:7] == b"crypto{":
    print("Found it!")
```
# 📂 Python File Handling Cheatsheet

In Cryptography challenges (like Cryptopals #4), you often get a `.txt` file containing many hex strings. You need to loop through each line to find the hidden flag.

### 🛠️ The "With" Statement (Best Practice)
Always use the `with` keyword. It automatically closes the file for you, even if your script crashes.

```python
# 'r' means Read mode
with open("challenge_data.txt", "r") as f:
    # .readlines() turns the file into a list of strings
    lines = f.readlines()

for line in lines:
    # Use .strip() to remove the hidden newline (\n) at the end of each line
    clean_line = line.strip()
    
    # Process your hex data
    data = bytes.fromhex(clean_line)
    
    # ... your XOR logic here ...
