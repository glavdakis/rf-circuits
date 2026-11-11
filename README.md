# RF Circuits

This repository contains the assignments for the **RF Circuits** course at the ECE AUTH during the 2023–2024 academic year.

## 📋 Contents

### 📁 Project A (Set 1): Transmission Lines & Matching Networks
* **1.1 Smith Chart Analysis**: $|\Gamma|$ and SWR of a TEM line circuit at $f_0$ and $4f_0/3$, found on the Smith chart.
* **1.2 Frequency Response**: $|\Gamma|$ vs. frequency in MATLAB for the circuit of 1.1 (verifying the Smith chart results) and for two microstrip filters (stub and stepped-impedance), both found to be low-pass.
* **1.3 Conjugate Matching**: Line length and capacitor value for the four capacitor placements on the Smith chart, maximum load power, and a bandwidth comparison of the valid solutions.
* **1.4 Triple Stub Optimization**: The stub positions and lengths optimized with MATLAB's genetic algorithm to minimize the mean $|\Gamma|$, over a narrow and a wide band and for three different loads.

### 📁 Project B (Set 2): Waveguides, Antennas, Matching & Resonators
* **2.1 Dielectric Measurement**: $\epsilon_r$ and $\tan\delta$ of a material in a short-circuited rectangular waveguide, from two measurements (closed form) and from one (`fsolve`).
* **2.2 Antenna Array Field**: Horizontal, vertical and 3D radiation patterns and directivity of an 8-dipole array, plus a dipole in front of a corner reflector analyzed with image theory.
* **2.3 Double Stub Matching**: Analytical stub lengths, the two Smith chart solutions with their bandwidth compared, and why two series capacitors cannot achieve a match.
* **2.4 Coupled Microstrip Resonator**: Design of a gap-coupled $\lambda/2$ resonator on FR4 for critical coupling (with `fzero` and on the Smith chart), then redesigned to resonate at 2.5 GHz.
