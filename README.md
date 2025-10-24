# 🔐 Secret Vault

**SecretVault** is a simple Node.js web app for securely **registering, logging in, and storing personal secrets**.  
It uses **Passport.js** for authentication, **bcrypt** for password hashing, and **sessions with cookies** to keep users logged in for 24 hours.  
Users can also log in using **Google OAuth 2.0** (if configured with their own credentials).

---

## 🚀 Features

- 🧍‍♂️ User registration & login  
- 🔑 Password hashing with bcrypt  
- 🍪 Persistent sessions using cookies  
- 🔐 View and update a personal secret  
- 🌐 Optional Google OAuth login  
- 🧾 Prevents duplicate users and invalid inputs  

---

## ⚙️ Setup

1. **Clone the repo:**
   ```bash
   git clone https://github.com/yourusername/secretvault.git
   cd secretvault
