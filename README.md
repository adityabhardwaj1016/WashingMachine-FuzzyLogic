# Washing Machine Fuzzy Logic System

## 📌 Objective
The objective of this project is to design and implement a fuzzy logic-based system to determine the optimal washing machine cycle time based on two parameters: dirt level and load size. The system aims to simulate human-like decision-making for efficient washing.

---

## 🧠 Introduction
Traditional washing machines operate on fixed timers, which may not always provide efficient cleaning. Fuzzy logic offers a smart alternative by handling uncertainty and making decisions based on approximate reasoning.

This project uses fuzzy logic to dynamically adjust washing time depending on how dirty the clothes are and how large the load is.

---

## ⚙️ Inputs and Outputs

### 🔹 Input Variables
1. **Dirt Level (0–10)**
   - Low
   - Medium
   - High

2. **Load Size (0–10)**
   - Small
   - Medium
   - Large

### 🔹 Output Variable
1. **Wash Time (0–60 minutes)**
   - Short
   - Medium
   - Long

---

## 📊 Membership Functions

Triangular membership functions are used for simplicity and efficiency.

- Dirt Level → Low, Medium, High  
- Load Size → Small, Medium, Large  
- Wash Time → Short, Medium, Long  

---

## 📜 Fuzzy Rule Base

A total of **9 fuzzy rules** are defined based on logical relationships:

- IF Dirt is Low AND Load is Small → Time is Short  
- IF Dirt is Low AND Load is Medium → Time is Short  
- IF Dirt is Low AND Load is Large → Time is Medium  

- IF Dirt is Medium AND Load is Small → Time is Medium  
- IF Dirt is Medium AND Load is Medium → Time is Medium  
- IF Dirt is Medium AND Load is Large → Time is Long  

- IF Dirt is High AND Load is Small → Time is Long  
- IF Dirt is High AND Load is Medium → Time is Long  
- IF Dirt is High AND Load is Large → Time is Long  

---

## 🔄 Working Process

The fuzzy logic system follows these steps:

1. **Fuzzification** – Converts crisp inputs into fuzzy values  
2. **Rule Evaluation** – Applies fuzzy IF-THEN rules  
3. **Aggregation** – Combines outputs of all rules  
4. **Defuzzification** – Converts fuzzy output to crisp value (Centroid method)

---

## 💻 Implementation

The system is implemented using:
- MATLAB
- Fuzzy Logic Toolbox
- Mamdani Fuzzy Inference System

---

## 📈 Results

The system successfully generates:

- Membership Function plots  
- Rule Viewer visualization  
- Output wash time (example: ~41 minutes)  
- 3D Surface Plot showing relationship between inputs and output  

---

## 🌐 Surface Analysis

The surface plot shows that:

- Wash time increases with higher dirt level  
- Wash time increases with larger load size  
- The system behaves logically and smoothly  

---

## 📁 Files Included

- `washing_machine_fis.m` → MATLAB implementation  
- `WashingMachine.fis` → Fuzzy system file  
- `mf_dirt_level.png` → Membership functions (dirt)  
- `mf_load_size.png` → Membership functions (load)  
- `mf_wash_time.png` → Membership functions (output)  
- `rule_viewer.png` → Rule viewer output  
- `output_result.png` → Final output  
- `surface_plot.png` → 3D surface plot  

---

## 🎯 Conclusion

This project demonstrates how fuzzy logic can be used to design intelligent systems that handle uncertainty effectively. The washing machine system adapts dynamically to input conditions, making it more efficient than traditional fixed-time systems.

---

## 👨‍💻 Author

**Aditya Bhardwaj**  
Manipal University Jaipur
