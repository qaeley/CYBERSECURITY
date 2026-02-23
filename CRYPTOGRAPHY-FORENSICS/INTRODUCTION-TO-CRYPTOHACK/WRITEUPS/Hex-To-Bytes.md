# 🔍 Hexadecimal Decoding

### Logic (What I did)
I took the provided hexadecimal string and used the Python built-in method `bytes.fromhex()` to convert the base-16 representation back into raw data. By passing the hex string through this function, Python automatically grouped the characters into pairs and mapped them to their corresponding byte values, which I then printed to reveal the ASCII flag.

### What I learned
I learned that hexadecimal is a standard way to represent "non-printable" bytes in a portable, human-readable format. Technically, I learned how to create a **Bytes Object** using `bytes.fromhex()` and that the inverse operation can be done using the `.hex()` method. This taught me that bytes are the fundamental "middle ground" between a hex string and a readable ASCII string.

---
