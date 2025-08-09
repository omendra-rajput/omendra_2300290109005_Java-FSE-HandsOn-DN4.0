# Let's create a README file that documents the JUnit5 and Mockito exercises.

readme_content = """
# TDD using JUnit5 and Mockito - Exercises

This repository contains a series of exercises to help you get started with Test-Driven Development (TDD) using **JUnit5** and **Mockito**.

---

## 🧪 1. JUnit_Basic Testing Exercises

### 📂 Files
- `CalculatorTest.java`
- `StringUtilsTest.java`
- `BankAccount.java`
- `BankAccountTest.java`

### 🔹 Exercise 1: Setting Up JUnit
Basic setup and test case using JUnit.

### 🔹 Exercise 3: Assertions in JUnit
Practice JUnit assertions such as `assertEquals`, `assertTrue`, `assertNull`, etc.

### 🔹 Exercise 4: AAA Pattern, Setup/Teardown
- Understand the Arrange-Act-Assert pattern
- Use `@BeforeEach` and `@AfterEach` annotations
- Test fixture example using a simple bank account.

---

## 🎭 2. Mockito Exercises

### 📂 Files
- `UserServiceTest.java`
- `NotificationServiceTest.java`

### 🔹 Exercise 1: Mocking and Stubbing
Learn to mock dependencies and stub method calls.

### 🔹 Exercise 2: Verifying Interactions
Verify if mock methods were called with expected arguments.

---

## 🛠️ Requirements

- Java 8+
- Maven
- JUnit5
- Mockito

## 📦 How to Run

```bash
mvn test
