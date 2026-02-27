# 🛠️ Cryptopals Set 1: Challenge 3 - Single-Byte XOR Cipher

## 🏆 Challenge Status
* **Challenge**: Decrypt a hex string that has been XORed against a single character key.
* **Status**: Completed ✅
* **Secret Key**: `X` (ASCII: 88)
* **Plaintext**: `Cooking MC's like a pound of bacon`

---

## 🧠 Logic & Thought Process
The core of this challenge was realizing that a single-byte key limits the total "keyspace" to only **256 possibilities** (0-255). 

### ⚙️ Implementation Strategy
1.  **Brute Force Loop**: Since the key is only one byte, I used a `for` loop to iterate through every possible value from `range(256)`.
2.  **XOR Transformation**: For every key, I iterated through the bytes of the ciphertext and performed a bitwise XOR. I used a list comprehension to build the resulting byte array:
