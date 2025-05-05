from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship
from database import Base

class Student(Base):
    __tablename__ = 'students'
    id = Column(Integer, primary_key=True, index=True)
    first_name = Column(String(255), nullable=False)
    last_name = Column(String(255), nullable=False)
    age = Column(Integer, nullable=False)
    gender = Column(String(255), nullable=False)
    classes = relationship("StudentClass", back_populates="student")

class Class(Base):
    __tablename__ = 'classes'
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(255), nullable=False)
    teacher = Column(String(255), nullable=False)
    students = relationship("StudentClass", back_populates="class_")

class StudentClass(Base):
    __tablename__ = 'student_classes'
    id = Column(Integer, primary_key=True, index=True)
    student_id = Column(Integer, ForeignKey("students.id"), nullable=False)
    class_id = Column(Integer, ForeignKey("classes.id"), nullable=False)
    student = relationship("Student", back_populates="classes")
    class_ = relationship("Class", back_populates="students")
