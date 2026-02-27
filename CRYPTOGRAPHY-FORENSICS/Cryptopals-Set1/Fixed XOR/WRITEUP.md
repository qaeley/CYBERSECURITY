# 🛠️ Cryptopals Set 1: Challenge 2 - Fixed XOR

## 🏆 Challenge Status
* **Challenge**: XOR two equal-length hex-encoded buffers.
* **Status**: Completed ✅

---

## 🧠 Logic & Thought Process
The goal was to perform a bitwise XOR operation between two hex strings. Since `pwntools` is not currently compatible with **Python 3.14** due to the `unicorn` build error, I developed a custom XOR implementation to maintain progress.

### ⚙️ Implementation Strategy
1.  **Data Initialization**: I assigned the challenge-provided hex strings to clear variables (`target_XOR`, `XOR_against`, and `string_data`).
2.  **The Custom XOR Function**: I built a function using `zip()` and a list comprehension. This takes two byte arrays and XORs each pair of bytes together:
    ```python
    def XOR(b1, b2):
        return bytes([a ^ b for a, b in zip(b1, b2)])
    ```
3.  **Type Transformation**: I used `bytes.fromhex()` to transform the input strings into a raw byte format that the CPU can perform math on.
4.  **Verification**: After performing the XOR, I converted the result back into a hex string using `.hex()` and compared it to the target solution using an `if/else` check.



---
