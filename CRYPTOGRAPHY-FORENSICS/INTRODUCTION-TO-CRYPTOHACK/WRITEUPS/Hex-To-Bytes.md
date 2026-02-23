# 🔍 Hexadecimal Decoding

### Logic 
I took the provided hexadecimal string and used the Python built-in method `bytes.fromhex()` to convert the base-16 representation back into raw data. By passing the hex string through this function, Python automatically grouped the characters into pairs and mapped them to their corresponding byte values, which I then printed to reveal the ASCII flag.

### What I learned
I learned that hexadecimal is a standard way to represent "non-printable" bytes in a portable, human-readable format. Technically, I learned how to create a **Bytes Object** using `bytes.fromhex()` and that the inverse operation can be done using the `.hex()` method. This taught me that bytes are the fundamental "middle ground" between a hex string and a readable ASCII string.

---
![image alt](https://github.com/qaeley/CYBERSECURITY/blob/3397c740897d875f4a3360fdb0c67a87f6ff8a0d/CRYPTOGRAPHY-FORENSICS/Uploaded%20Pics/Screenshot%202026-02-23%20at%2012.02.44%20PM.png)
