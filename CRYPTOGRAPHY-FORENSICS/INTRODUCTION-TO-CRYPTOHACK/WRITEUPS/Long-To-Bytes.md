# 🔢 Bytes and Big Integers

### Logic (What I did)
I focused on converting large integers back into readable messages. Since RSA and other cryptosystems perform math on massive numbers, I used the `long_to_bytes()` method to transform a base-10 "Long" integer back into a bytes object. This process essentially reverses the concatenation of hexadecimal ordinals, allowing the numerical data to be interpreted as a string again.

### What I learned
I learned that messages must be converted into large integers for mathematical operations to work. I also learned how to manage external dependencies on macOS by installing the **PyCryptodome** library. I've added `from Crypto.Util.number import bytes_to_long, long_to_bytes` to my arsenal, which are the industry-standard tools for bridging the gap between Python integers and raw bytes.

---

![image alt](https://github.com/qaeley/CYBERSECURITY/blob/89f30e37eb57e5d6b3eb0c45a37efbc7fd6a8e21/CRYPTOGRAPHY-FORENSICS/Uploaded%20Pics/Screenshot%202026-02-23%20at%2012.07.04%20PM.png)
