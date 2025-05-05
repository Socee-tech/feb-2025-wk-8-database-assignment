# Student Portal API

## 📌 Project Title
Student Portal API using FastAPI and MySQL

## 📌 Description
This project is a **Student Portal API** developed using **FastAPI** that connects to a **MySQL** database. The API handles CRUD operations for student information, class data, and the relationship between students and classes. It allows users to:

- Create, read, update, and delete student records.
- Create, read, update, and delete class records.
- Assign students to classes and view their enrollment details.

The API is designed for use in a school management system, allowing easy management of student and class data.

## 📌 How to Run/Setup the Project

### Prerequisites
Before setting up the project, make sure you have the following installed on your system:
- Python 3.7+
- MySQL Database Server
- pip (Python package installer)

### Setup

1. **Clone the repository**:
git clone https://github.com/Socee-tech/feb-2025-wk-8-database-assignment.git
cd feb-2025-wk-8-database-assignment


2. **Install required dependencies**:
Install the necessary Python libraries using `pip`:


3. **Setup MySQL Database**:
- Ensure that MySQL is running on your system.
- Create a database in MySQL (you can name it `school` or any preferred name):
- CREATE DATABASE school;


4. **Configure the database connection**:
- In the project folder, open main.py and set up your MySQL database connection. Replace the placeholder values with your database credentials:
DATABASE_URL = "mysql+pymysql://user:password@localhost/student_portal"


5. **Run the fast api application**
- If yo are using vscode under the student portal folder, right click the file named main.py and open it in intergrated terminal and run the following command.
uvicorn main:app --reload
