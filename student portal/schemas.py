from pydantic import BaseModel
from typing import Optional, List

class StudentBase(BaseModel):
    first_name: str
    last_name: str
    age: int
    gender: str

class StudentCreate(StudentBase):
    pass

class Student(StudentBase):
    id: int
    class Config:
        from_attributes = True

class ClassBase(BaseModel):
    name: str
    teacher: str

class ClassCreate(ClassBase):
    pass

class Class(ClassBase):
    id: int
    class Config:
        from_attributes = True

class StudentClassBase(BaseModel):
    student_id: int
    class_id: int

class StudentClassCreate(StudentClassBase):
    pass

class StudentClass(StudentClassBase):
    id: int
    class Config:
        from_attributes = True
