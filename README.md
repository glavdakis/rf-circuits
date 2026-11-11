# RF Circuits

This repository contains exercises completed for the **RF Circuits** course at the **Department of Electrical and Computer Engineering (ECE), Aristotle University of Thessaloniki (AUTH)** during the **2023–2024 academic year**.

## 📋 Contents

### 📁 Project A (Set 1): Transmission Lines & Matching Networks
* **1.1 Smith Chart Analysis**: Graphical calculation on the Smith chart of the input reflection coefficient $|\Gamma|$ and SWR of a TEM transmission-line circuit (series capacitor and open-circuited stub), at $f_0 = 1\text{ GHz}$ and at $4f_0/3$ (where the electrical lengths change but the physical lengths stay the same). Also discusses the extra information needed for a non-TEM line: the dispersion relation $\beta(f)$.
* **1.2 Frequency Response of Transmission-Line Circuits**:
  * (a) Analytical calculation of $|\Gamma|$ (linear and in dB) from $0$ to $4f_0$ for the circuit of 1.1, verifying the Smith chart results.
  * (b) $|\Gamma|$ (dB) and SWR from 0 to 3 GHz for a microstrip filter with $\lambda/8$ open-circuited stubs, identified as a low-pass filter.
  * (c) The same for a stepped-impedance microstrip filter ($Z_H = 150\ \Omega$, $Z_L = 20\ \Omega$) from 0 to 2 GHz, also a low-pass filter.
* **1.3 Conjugate Matching**: Conjugate matching of $Z_L = 10+j15\ \Omega$ to a generator with $Z_g = 50-j40\ \Omega$ at 1 GHz, using a line of suitable length and a capacitor in parallel or in series, at the input or at the load. Line lengths and capacitances come from the Smith chart; the series capacitor at the load (iv) has no solution. The maximum load power (5 mW) is calculated, and load power vs. frequency (0–2 GHz) is plotted for the valid solutions. The parallel capacitor at the load (ii) gives the widest bandwidth.
* **1.4 Triple Stub Optimization with a Genetic Algorithm**: The 6 parameters ($d_1, d_2, d_3, l_1, l_2, l_3$) of a triple open-circuited stub matching network are optimized with MATLAB's genetic algorithm (`optimtool`) to minimize the mean $|\Gamma|$:
  * over $0.5f_0$–$1.5f_0$ for $Z_L = 120+j60\ \Omega$ (b, c);
  * over the wider band $0.01f_0$–$2f_0$ (d);
  * repeated for $Z_L = 20+j30\ \Omega$ and $Z_L = 180-j200\ \Omega$ (e).

### 📁 Project B (Set 2): Waveguides, Antennas, Matching & Resonators
* **2.1 Dielectric Measurement with a Waveguide**: Calculating the relative permittivity $\epsilon_r$ and loss tangent $\tan\delta$ of a material placed against the short circuit of a rectangular waveguide (TE₁₀ mode, 10 GHz) from measured input impedances.
  * With two samples of thickness $d$ and $2d$, the $\tanh$ double-angle identity gives a closed-form solution.
  * With only one measurement, the transcendental equation $\tan x / x = y$ is solved with `fsolve`.
  * Both give $\epsilon_r = 4.4$, $\tan\delta \approx 0.968$.
* **2.2 Antenna Array Field**: Horizontal, vertical and 3D radiation patterns of an $N=8$ array of vertical $\lambda/2$ dipoles for spacings $d = \lambda/4, \lambda/2, 3\lambda/4$, found by superposition of the dipole fields. Directivity is calculated with a double Riemann sum and compared with the broadside formula $D = 2Nd/\lambda$. Also covers a $\lambda/2$ dipole in front of a $90°$ corner reflector, analyzed with image theory: it finds the distances $h_x, h_y$ that put the maximum along the bisector ($\phi = 45°$), and gives horizontal and 3D patterns for three cases.
* **2.3 Double Parallel Stub Matching**:
  * (a) Analytical expressions for the stub lengths of a double open-circuited parallel stub.
  * (b) Matching $20-j30\ \Omega$ to a $50\ \Omega$ line at 5 GHz with stubs $\lambda/8$ apart. Both solutions (short and long stubs) are found on the Smith chart, and $|\Gamma|$ is plotted from 0 to 10 GHz to compare bandwidth (SWR ≤ 2).
  * (c) Shows on the Smith chart that matching with two series capacitors instead of stubs is impossible.
* **2.4 Microstrip Resonator Coupled to a Transmission Line**:
  * (a) Design of a gap-coupled, open-circuited $\lambda/2$ microstrip resonator on FR4 ($\epsilon_r = 4.4$, 1.6 mm, $Q = 25$): width $W = 3.058\text{ mm}$, length $\approx 32.88\text{ mm}$, and the gap capacitance for critical coupling, found by solving the transcendental resonance equation with `fzero`. The coupled resonant frequency drops to $\approx 2.498\text{ GHz}$.
  * (b) An approximate solution on the Smith chart.
  * (c) Iterative rescaling of the resonator length so the coupled resonator resonates at 2.5 GHz.
