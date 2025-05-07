# 📚 Library Database Project

This project defines and sets up a simple **Library Management System** using MySQL. It models the core elements required for managing books, patrons, and the lending process in a library setting. The database schema includes tables for books, patrons, copies of books, and checkouts, along with sample data.

---

## 🛠️ Getting Started

To set up the database:

1. Open your MySQL client (e.g., MySQL Workbench, phpMyAdmin, or terminal).
2. Run the SQL script provided to:
   - Create the database and switch to it.
   - Create all necessary tables.
   - Insert sample data into the tables.

---

## 🗃️ Database Schema Overview

### 🧾 `books` Table
Stores all books available in the library (regardless of physical copies).

| Column   | Type         | Description                   |
|----------|--------------|-------------------------------|
| `id`     | INT, PK      | Unique identifier for the book (auto-increment). |
| `title`  | VARCHAR(255) | Title of the book.            |
| `author` | VARCHAR(255) | Name of the book's author.    |
| `year`   | INT          | Year the book was published.  |

---

### 👤 `patrons` Table
Holds information about the library members.

| Column        | Type         | Description                           |
|---------------|--------------|---------------------------------------|
| `id`          | INT, PK      | Unique ID for the patron (auto-increment). |
| `name`        | VARCHAR(255) | Full name of the patron.              |
| `email`       | VARCHAR(255) | Patron's email address.               |
| `phone_number`| VARCHAR(255) | Patron's phone number.                |

---

### 📦 `copies` Table
Represents physical copies of each book.

| Column    | Type    | Description                                  |
|-----------|---------|----------------------------------------------|
| `id`      | INT, PK | Unique ID for each book copy (auto-increment). |
| `book_id` | INT, FK | References `books(id)` to indicate which book this is a copy of. |

---

### 📖 `checkouts` Table
Tracks borrowing activity of book copies.

| Column         | Type    | Description                                               |
|----------------|---------|-----------------------------------------------------------|
| `id`           | INT, PK | Unique checkout ID (auto-increment).                     |
| `copy_id`      | INT, FK | References `copies(id)` — the specific copy being borrowed. |
| `patron_id`    | INT, FK | References `patrons(id)` — who is borrowing the book.     |
| `checkout_date`| DATE    | Date the book was checked out.                           |
| `return_date`  | DATE    | Date the book was returned (can be NULL if not returned). |

---

## 📥 Sample Data Included

### 📚 Books
- *To Kill a Mockingbird* by Harper Lee (1960)
- *Animal Farm* by George Orwell (1949)
- *The Great Gatsby* by F. Scott Fitzgerald (1925)

### 👥 Patrons
- John Doe  
- Jane Smith

### 📄 Checkouts
- John Doe borrowed *To Kill a Mockingbird* and returned it.
- Jane Smith borrowed *Animal Farm* and has not yet returned it.

---

## 🔄 Relationships Summary

- Each book can have **many physical copies** (`books` → `copies`).
- Each copy can be **checked out multiple times** (`copies` → `checkouts`).
- Each patron can **check out multiple copies** (`patrons` → `checkouts`).
- Foreign keys enforce referential integrity between related tables.

---

## 🚀 Future Improvements

- Add `genres`, `publishers`, and `staff` tables.
- Track fines for overdue books.
- Add support for book reservations.
- Introduce stored procedures for automated check-in/check-out operations.

---

## 📄 License

This project is intended for educational and practice purposes. Feel free to modify and expand it to fit your needs.

