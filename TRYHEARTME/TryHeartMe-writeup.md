# Love at First Breach: TryHeartMe
---
# CTF Write-up: Purchasing the Valenflag

## The Goal
The objective was to "purchase" a specific item called the **Valenflag** from the online store. However, the flag was either hidden or restricted, and my account didn't have enough credits to buy it.

## Step 1: Investigating the "Cookie"
Every time we stay logged into a website, the browser saves a small piece of data called a **Cookie**. 
- I opened the browser's **Developer Tools** (Inspect) and went to the **Storage** tab.
- I found a cookie that contained a long, encoded string (a JWT). This string is like a digital ID card that tells the website who I am and how much money I have.



## Step 2: Modifying My Identity
I used a tool called **jwt.io** to "read" the ID card. I realized the card had sections for `role` and `credits`.
- **What I changed:** I manually edited my credits from `0` to a very high number (like `9999`).
- **Why I did this:** I wanted to see if the website would believe I was rich just because my ID card said so. 

## Step 3: Injecting the Fake ID
Once I edited the info on **jwt.io**, it gave me a new, modified encoded string.
1. I went back to the **Storage** tab in my browser.
2. I cleared the old cookie and **pasted** the new, edited one in its place.
3. I refreshed the page.


## Step 4: Finding the Valenflag
Even with the money, the "Valenflag" wasn't showing up in the search results normally.
- Based on the walkthrough logic, I navigated to the specific URL for the item or the admin section where the flag was listed.
- Because my "ID card" (the cookie) now said I had the permissions and the credits, the website allowed the transaction to go through!

**Flag Captured!!: https://tryhackme.com/room/lafb2026e5?utm_campaign=social_share&utm_medium=social&utm_content=share-completed-room&utm_source=copy&sharerId=698ad8d244efc8fda47d7f7f**

## What I Learned
I learned that websites shouldn't trust the information stored in a user's browser. If a user can find their "ID card" (cookie) and edit it to give themselves more money or higher access, the website is vulnerable. This is called **Insecure Authentication**.
