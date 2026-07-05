# RF Circuits

This repository contains exercises completed for the **RF Circuits** course at the **Department of Electrical and Computer Engineering (ECE), Aristotle University of Thessaloniki (AUTH)** during the **2023–2024 academic year**.

## 📋 Contents

The repository is organized into two primary project directories based on course sets:

### 📁 Project 1: Transmission Lines & Matching Networks
* **1.1 Smith Chart Analysis**: Analytical evaluation of the reflection coefficient $|\Gamma|$ and Standing Wave Ratio (SWR) under varying frequencies ($f_0$ and $4f_0/3$) on TEM and non-TEM lines.
* **1.2 Frequency Response of Filters**: Frequency sweeps evaluating the input reflection coefficient in absolute values and decibels (dB), alongside microstrip filter structures (stubbed and stepped-impedance topologies).
* **1.3 Conjugate Matching**: Implementation and bandwidth evaluation of matching networks using series/parallel capacitive elements placed at the load or input side.
* **1.4 Multiple Stub Optimization**: Advanced metaheuristic optimization (Genetic Algorithms from MATLAB's optimtool) utilized to optimize $6$ geometric parameters ($d_1, d_2, d_3, l_1, l_2, l_3$) of a triple open-circuited stub matching network.

### 📁 Project 2: Waveguides, Antennas and Resonators
* **2.1 Dielectric Property Measurement**: Extracting the complex relative permittivity ($\epsilon_r$) and loss tangent ($\tan\delta$) of a material embedded inside an rectangular waveguide using dual-thickness ($d$ and $2d$) analytical transcendental equations solved with MATLAB's `fsolve`.
* **2.2 Antenna Array Fields**: Horizontal, vertical, and 3D radiation patterns along with directivity estimations (via double Riemann summation) for an $N=8$ half-wavelength ($\lambda/2$) vertical dipole linear array. Includes corner reflector analysis using the principle of superposition.
* **2.3 Double Parallel Stub Matching**: Analytical closed-form solving of double open-circuited parallel stub systems spaced at $\lambda/8$, comparing bandwidth profiles against series-capacitive solutions.
* **2.4 Microstrip Resonator Coupled to Transmission Line**: Design and tuning of a half-wavelength ($\lambda/2$) microstrip resonator on an FR4 substrate ($\epsilon_r = 4.4$, thickness $= 1.6\text{ mm}$) to achieve critical coupling across a gap capacitance $C$.