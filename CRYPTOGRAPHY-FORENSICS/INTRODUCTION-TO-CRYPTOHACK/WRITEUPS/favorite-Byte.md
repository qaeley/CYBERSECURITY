# 🕵️‍♂️ Challenge: XORing with a Secret Single Byte

### Logic (What I did)
I approached this challenge by recognizing that a single-byte key limits the total search space to only 256 possibilities ($0$ to $255$). Since the secret byte was applied to every character in the hex string, I implemented a **Brute Force** script to systematically test every potential key.

**Initial Struggles:**
I initially struggled with the transition from a C-programming mindset to Python's high-level syntax. I was confused by the `for b in given_byte` structure, specifically why `b` was automatically becoming an integer without any assignment or type declaration. I also found the order of operations in the List Comprehension—putting the XOR math *before* the loop—to be counter-intuitive compared to standard C loops. Through research, I found that the `in` keyword could act as both a loop engine and a "search engine" (membership operator), which allowed me to replace complex `strstr` logic with the simple `if b"crypto" in checker:` filter.



### What I learned
I learned the "skeleton key" nature of single-byte XOR and how to transition my C-programming logic into Pythonic shorthand. Key technical takeaways included:

* **Automatic Integer Extraction**: I discovered that looping over a `bytes` object automatically pulls out the 8-bit integer value, making it immediately ready for bitwise math without manual casting.
* **List Comprehension**: I mastered the `[operation for item in list]` syntax, which provides a high-speed way to perform a "Broadcast XOR" across an entire string by defining the outcome first.
* **Membership Operator (`in`)**: I learned that `in` is a versatile tool; in an `if` statement, it performs a high-level search to find a needle in a haystack.
* **The `b"..."` Prefix**: I realized that when working with raw data, I must compare bytes to bytes using the `b` prefix for literals to avoid the "Apples vs. Oranges" comparison error.
