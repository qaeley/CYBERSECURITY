# 🗝️ XOR Properties Challenge

### Logic (What I did)
Initially, I struggled with how to systematically XOR long strings of data because Python doesn't allow direct bitwise operations on `bytes` objects like C arrays. I was confused about how to handle the data without manually managing memory or using `for` loops with index counters. 

Through research, I discovered the `zip()` function, which acts as a "safe" way to pair bytes from two different sources without risking out-of-bounds errors. I combined this with a **List Comprehension** to create a one-liner XOR function. By applying the **Self-Inverse** property ($A \oplus A = 0$), I was able to "peel back" the layers of encryption. I XORed $KEY1$ with the first result to get $KEY2$, then used those components to create a "mask" that canceled out all three keys in the final ciphertext, leaving only the flag.

### What I learned
I learned that XOR is its own inverse and that the order of operations doesn't matter (Commutative/Associative). More importantly, I transitioned my "C-programming brain" to Python by learning:
* **`zip()`**: A tool to pair up sequences safely.
* **List Comprehensions**: How `[a ^ b for a, b in ...]` creates a new list in memory on the fly.
* **Type Casting**: Using `bytes()` to convert an integer list back into a raw data object so it can be printed as a flag.

---
![image alt](https://github.com/qaeley/CYBERSECURITY/blob/b07fad30471ebf535b057c2aab461b3164b5f973/CRYPTOGRAPHY-FORENSICS/Uploaded%20Pics/Screenshot%202026-02-23%20at%202.20.03%20PM.png)
