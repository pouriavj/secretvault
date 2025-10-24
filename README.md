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
   CREATE DATABASE secretvault;
   \c secretvault
   
   CREATE TABLE users(
	   id SERIAL PRIMARY KEY,
	   email VARCHAR(100) UNIQUE NOT NULL CHECK (length(btrim(email)) > 0),
	   password VARCHAR(100) NOT NULL CHECK (length(btrim(password)) > 0),
       secret TEXT
   );
      
   ```
4. **Create a `.env` file:**
   ```env
	
    SESSION_SECRET="your_session_secret"
	PG_USER="your_pg_user"
	PG_HOST="localhost"
	PG_DATABASE="secretvault"
	PG_PASSWORD="your_pg_password"
	PG_PORT="5432"
	GOOGLE_CLIENT_ID="your_google_client_id"
	GOOGLE_CLIENT_SECRET="your_google_client_secret"

   ```
5. **Run the app:**
   ```bash
   node index.js

   ```
   or
   ```bash
   nodemon index.js

   ```
6. **Open:**
   ```bash
   http://localhost:3000

   ```

   ---

## 🌐 Google OAuth Setup

To enable Google login in **SecretVault**, follow these steps:

1. Go to the [Google Cloud Console](https://console.cloud.google.com/).  
2. Create a **new project** (or use an existing one).  
3. Navigate to **APIs & Services → Credentials**.  
4. Click **Create Credentials → OAuth 2.0 Client ID**.  
5. Choose **Web Application** as the application type.  
6. Under **Authorized redirect URIs**, add:
	```bash
	http://localhost:3000/auth/google/secrets
	```
7. After creating it, copy your **Client ID** and **Client Secret**.  
8. Add them to your `.env` file like this:
```env
GOOGLE_CLIENT_ID=your_google_client_id
GOOGLE_CLIENT_SECRET=your_google_client_secret
```

