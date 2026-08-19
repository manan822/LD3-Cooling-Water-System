# LD3 Cooling Water System — Methodology

## 1. Objective

The objective of this project is to develop a modular engineering simulation framework for analysing the hydraulic and thermal performance of an LD3 cooling-water system associated with BOF operations.

The model uses process inputs to perform mass-balance, energy-balance, pump, pressure-drop, heat-transfer, and system-performance calculations.

---

## 2. Overall Workflow

Process Inputs
        ↓
Mass Balance
        ↓
Energy Balance
        ↓
Pump Hydraulic Model
        ↓
Pressure-Drop Model
        ↓
Heat Exchanger Model
        ↓
Performance Evaluation
        ↓
Engineering Outputs

---

## 3. Mass Balance

Volumetric flow rates are converted into mass flow rates using:

m_dot = rho × Q

where:

- m_dot = mass flow rate
- rho = fluid density
- Q = volumetric flow rate

The model calculates total mass flow and individual cooling flows for the hood, lance, and cooling-ring circuits.

---

## 4. Energy Balance

The heat removed from each cooling circuit is calculated using:

Q = m_dot × Cp × DeltaT

where:

- Q = heat removed
- m_dot = mass flow rate
- Cp = specific heat capacity
- DeltaT = cooling-water temperature difference

The total calculated heat removal is obtained by summing the individual circuit contributions.

---

## 5. Pump Hydraulic Model

Pump pressure is converted from bar to Pa and pump head is calculated using:

H = P / (rho × g)

The model also calculates hydraulic/pump power based on the flow rate, pump head, and assumed pump efficiency.

---

## 6. Pressure-Drop Analysis

The model calculates pipe velocity from volumetric flow rate and pipe cross-sectional area.

Reynolds number is calculated as:

Re = (rho × V × D) / mu

Pressure loss is estimated using the Darcy–Weisbach relationship:

DeltaP = f × (L/D) × (rho × V²/2)

The calculated pressure loss is reported in bar.

---

## 7. Heat Exchanger Analysis

The heat exchanger module calculates the two terminal temperature differences and the logarithmic mean temperature difference (LMTD).

For unequal terminal temperature differences:

LMTD = (DeltaT1 - DeltaT2) / ln(DeltaT1 / DeltaT2)

Heat transfer is then estimated using:

Q = U × A × LMTD

where:

- U = overall heat-transfer coefficient
- A = heat-transfer area

---

## 8. Performance Indicator

The project defines a Cooling System Performance Index (CSPI):

CSPI = Heat Removed (MW) / Pump Power (MW)

CSPI is a project-defined dimensionless indicator intended for comparative analysis within the model.

It is not presented as an industry-standard efficiency metric.

The project classifies the calculated value into four categories:

- EXCELLENT
- GOOD
- ACCEPTABLE
- POOR

---

## 9. Software Architecture

The computational model is implemented as modular MATLAB functions.

| Module | Function |
|---|---|
| MassBalance.m | Mass-flow calculations |
| EnergyBalance.m | Cooling-circuit heat removal |
| PumpModel.m | Pump head and power calculations |
| PressureDrop.m | Velocity, Reynolds number and pressure loss |
| HeatExchanger.m | LMTD and heat-transfer calculations |
| CSPI.m | Performance indicator and classification |
| RunSimulation.m | Integration of all engineering modules |
| Graphs.m | Result visualization |
| main.m | Overall simulation execution |

---

## 10. Public Dataset

The public repository uses an illustrative/sanitized dataset.

The values in `data.m` are intended only for portfolio demonstration and do not represent Tata Steel plant operating data.

Actual plant-derived HMI values, screenshots, internal documents, and proprietary information are excluded from this public repository.

---

## 11. Limitations

The model represents selected hydraulic and thermal relationships and is intended for engineering analysis and academic demonstration.

It is not a complete plant control, safety, or operational decision-making system.

Model outputs depend on the specified input conditions, engineering assumptions, and parameter values.

---

## 12. Future Improvements

Potential extensions include:

- Expanded branch-wise hydraulic modelling
- Automated sensitivity analysis
- Dynamic simulation
- Additional equipment-performance models
- Automated reporting
- Extended trend visualization
