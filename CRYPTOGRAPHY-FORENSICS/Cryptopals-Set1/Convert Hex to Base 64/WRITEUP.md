# 🛠️ Cryptopals Set 1: Challenge 1 - Convert Hex to Base64

## 🏆 Challenge Status
* **Challenge**: Convert a hex string into a Base64 encoded string.
* **Status**: Completed ✅

---

## 🧠 Logic (What I Did)
The goal was to transform a raw hexadecimal string into a Base64 representation. My workflow followed these three stages:

1.  **Hex to Bytes**: I used `bytes.fromhex()` to convert the raw hex string into a bytes object. This is a critical step because encoding libraries like `base64` require raw bytes as input, not a literal string of hex characters.
2.  **Base64 Encoding**: I utilized the `base64.b64encode()` method to transform the byte data into Base64 format.
3.  **Verification Logic**: Since the output of `b64encode` is a bytes object (e.g., `b'SSdt...'`), I used the `.decode()` method to convert it into a standard string. I then implemented an `if` statement to compare my result against the `target_data` provided in the challenge.
