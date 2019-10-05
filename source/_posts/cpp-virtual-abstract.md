---
title: Insight into advanced C++ OOP
date: 2019-09-29 17:29:39
tags:
    - Cpp
---

# Source and Header
The reasons to separate are:

- To improve build times. Faster recompiles: If your implementation is split up into separate compilation units, you only need to recompile the ones that change when making edits.
- To link against code without having the source for the definitions.
- To avoid marking everything "inline".

# Polymorphism in C++
## Compile time polymorphism
### Function/Operator Overloading

## Runtime polymorphism
### Function overriding on the other hand occurs when a derived class has a definition for one of the member functions of the base class.

- To avoid ambiguity error when multiple inheritence.

- Virtual functions are functions that can be overridden in derived class with the same signature.

- Virtual functions enable run-time polymorphism in a inheritance hierarchy.

- If a function is 'virtual' in the base class, the most-derived class's implementation of the function is called according to the actual type of the object referred to, regardless of the declared type of the pointer or reference. In non-virtual functions, the functions are called according to the type of reference or pointer.

- Static functions are class specific and may not be called on objects. Virtual functions are called according to the pointed or referred object.

- Virtual function has a VPTR that poccesses some memory.

- A member function can be virtual even if we have not uses virtual keyword with it. When a class has a virtual function, functions with same signature in all descendant classes automatically become virtual. We don't need to use virtual keyword in declaration of fun() in B and C. They are anyways virtual.

- A base class function can be accessed with scope resolution operator even if the function is virtual.