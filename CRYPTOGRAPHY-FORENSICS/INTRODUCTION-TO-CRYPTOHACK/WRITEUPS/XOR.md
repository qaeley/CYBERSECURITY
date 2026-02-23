# ⚡ XOR Starter

### Logic (What I did)
I implemented a manual XOR pipeline by iterating through each character of a string and converting it to its Unicode ordinal using `ord()`. I then applied the bitwise XOR operator (`^`) against the integer 13. To collect the results, I initialized an empty list and used `.append()` to store each new character after converting the XORed integer back with `chr()`. Finally, I used `"".join()` to merge the list into a string and formatted the output using an f-string with escaped double-braces to match the required flag format.

### What I learned
I learned that XOR is a bitwise operation that compares binary bits, and in Python, the `^` operator handles this at the integer level. This challenge taught me the "Manual XOR Pattern": **String → Ordinal → XOR → Character → List → Join**. I also learned that when external libraries like `pwntools` fail to install, I can replicate their core functionality using Python’s built-in methods.
