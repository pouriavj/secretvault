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

   	Inside the project’s root directory, create a file named `.env` and add the following variables:

	```env
	PG_USER="your_postgres_username"
	PG_HOST="localhost"
	PG_DATABASE="your_database_name"
	PG_PASSWORD="your_postgres_password"
	PG_PORT="5432"
	
	SESSION_SECRET="your_random_secret_key"
	
	GOOGLE_CLIENT_ID="your_google_client_id"
	GOOGLE_CLIENT_SECRET="your_google_client_secret"
	```
 ---
 
   > \[!IMPORTANT\]
   > Keep this `.env` file **private** — never upload it to GitHub.   
   > `.env` is already listed in `.gitignore`, so it won’t be pushed accidentally.
   > Replace placeholder values with your own database credentials and Google OAuth keys.

---

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
GOOGLE_CLIENT_ID="your_google_client_id"
GOOGLE_CLIENT_SECRET="your_google_client_secret"
```
9. Restart the app and you’ll see the “Login with Google” option working.
This allows users to authenticate with their Google account — no password required.

---

## 🧰 Tech Stack

<table>
  <tr>
    <td><b>Node.js</b></td>
    <td><b>Express.js</b></td>
  </tr>
  <tr>
    <td><b>EJS</b></td>
    <td><b>PostgreSQL</b></td>
  </tr>
  <tr>
    <td><b>Passport.js</b></td>
    <td><b>bcrypt</b></td>
  </tr>
  <tr>
    <td><b>Express-Session</b></td>
    <td><b>Google OAuth 2.0</b></td>
  </tr>
  <tr>
    <td><b>HTML</b></td>
    <td><b>CSS</b></td>
  </tr>
</table>

---

## 📜 License

This project is open-source and available under the **MIT License**.  

