# 📦 Base64 Encoding

### Logic (What I did)
I converted the initial hexadecimal string into a bytes object to get the raw binary data. Once I had the data in byte format, I used the `base64` module to re-encode those bytes into a Base64 string. This required a two-step transformation: first decoding the representation (Hex), then encoding it into the new format (Base64).

### What I learned
I learned that Base64 is more efficient than Hex for representing data because it uses a larger alphabet (64 characters vs 16), allowing it to pack 6 bits of data into each character instead of just 4. I added `import base64` and the `base64.b64encode()` method to my arsenal, noting that it specifically operates on bytes objects.
