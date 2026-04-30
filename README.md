# **Game Of Thrones Characters App** 🚀

A modern, high-performance mobile application built with **Flutter** that fetches and displays data from the [Game Of Thrones API](https://thronesapi.com/api/v2/),and[Vercel Quotes API](https://motivational-spark-api.vercel.app/api/quotes)
This project focuses on implementing industry-standard software engineering practices, specifically **State Management** and **Clean Architecture**.


## 📱 **App Preview**
<img width="399" height="833" alt="image" src="https://github.com/user-attachments/assets/4ad8b55f-8c1a-4f1a-a9b0-7bda463d0c56" />
<img width="399" height="833" alt="image" src="https://github.com/user-attachments/assets/07a58e33-6cd4-413a-81e0-7f508bc3f7a5" />
<img width="402" height="829" alt="image" src="https://github.com/user-attachments/assets/9042822b-532c-4d73-87fb-e30910391896" />
<img width="402" height="834" alt="image" src="https://github.com/user-attachments/assets/7170c42f-6465-45aa-8aeb-4201a2a687ae" />




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


