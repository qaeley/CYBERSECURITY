
string_data = "label"
xor_result = []

for letter in string_data:
    ascii_number = ord(letter)
    result_number = ascii_number ^ 13
    xor_result.append(chr(result_number))

flag = "".join(xor_result)
print(f"crypto{{{flag}}}")

"""
ALTERNATIVE CODE:
# The string they gave you
string = "label"

# Step 1: Convert the string to a list of its ASCII numbers (ordinals)
# Step 2: XOR each number with 13
# Step 3: Convert the new numbers back into characters (chr)
new_string = "".join(chr(ord(c) ^ 13) for c in string)

# Step 4: Wrap it in the flag format
print(f"crypto{{{new_string}}}")
"""