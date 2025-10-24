# 🔐 SecretVault

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
   git clone https://github.com/pouriavj/secretvault.git
   cd secretvault
   ```
2. **Install dependencies:**
   ```bash
   npm install

   ```
3. **Create database and table:**
   ```sql
   CREATE TABLE users(
	   id SERIAL PRIMARY KEY,
	   email VARCHAR(100) UNIQUE NOT NULL CHECK (length(btrim(email)) > 0),
	   password VARCHAR(100) NOT NULL CHECK (length(btrim(password)) > 0),
       secret TEXT
   );
      
   ```
4. **Create a `.env` file:**
   ```env
	
    SESSION_SECRET=your_session_secret
	PG_USER=your_pg_user
	PG_HOST=localhost
	PG_DATABASE=secretvault
	PG_PASSWORD=your_pg_password
	PG_PORT=5432
	GOOGLE_CLIENT_ID=your_google_client_id
	GOOGLE_CLIENT_SECRET=your_google_client_secret

   ```
5. **Clone the repo:**
   ```bash
   git clone https://github.com/yourusername/secretvault.git
   cd secretvault
   ```
