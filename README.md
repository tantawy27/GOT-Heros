# **Game Of Thrones Characters App** 🚀

A modern, high-performance mobile application built with **Flutter** that fetches and displays data from the [Game Of Thrones API](https://thronesapi.com/api/v2/).
This project focuses on implementing industry-standard software engineering practices, specifically **State Management** and **Clean Architecture**.


## 📱 **App Preview**
<img width="459" height="962" alt="image" src="https://github.com/user-attachments/assets/37f38436-d5d6-4bc4-9359-7270a192a505" />
<img width="465" height="964" alt="image" src="https://github.com/user-attachments/assets/84ccd34e-a5ab-4290-b3ec-5a9ed9960d5e" />
<img width="472" height="980" alt="image" src="https://github.com/user-attachments/assets/760d6d7e-bb1b-4aaf-9404-dcde1c2fff5e" />






## ✨ **Key Features**
*   **Dynamic Data Fetching:** Seamlessly integrates with a RESTful API to retrieve character data.
*   **Advanced Navigation:** Uses **Named Routes** with an `onGenerateRoute` logic for decoupled navigation.
*   **Data Passing:** Efficiently passes complex data objects between screens using **Route Arguments**.
*   **State Handling:** Management of different UI states: `Loading`, `Success`, and `Error` (with custom error handling).
*   **Search Functionality:** Real-time character filtering by name.
*   **Responsive UI:** A polished **Grid Layout** that adapts to various screen sizes.

## 🛠️ **Tech Stack & Architecture**

### **Frameworks & Libraries**
*   **Flutter & Dart:** The core framework and language.
*   **Flutter Bloc / Cubit:** For robust and predictable state management.
*   **Dio:** A powerful HTTP client for handling API requests and interceptors.
*   **Get_it:** Used as a **Service Locator** for Dependency Injection (DI).


### **Software Engineering Principles**
*   **Clean Architecture:** Separation of concerns into **Presentation**, **Business Logic**, and **Data** layers.
*   **SOLID Principles:** Written with maintainability and scalability in mind.
*   **Object-Oriented Programming (OOP):** Utilizing models and classes for clean data parsing.



## 📁 **Project Structure (Highlights)**
```text
lib/
 ├── business_logic/  # Cubits & States
 ├── data/            # Models, Repositories & Web Services (APIs)
 ├── presentation/    # Screens & Widgets (UI)
 ├── constants/       # App strings, colors, and routes
 └── app_router.dart  # Centralized Navigation Logic


