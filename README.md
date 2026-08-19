# LD3 Cooling Water System — Engineering Simulation & Performance Analysis

## Overview

This project presents an engineering simulation and performance-analysis framework for an LD3 cooling-water system associated with Basic Oxygen Furnace (BOF) operations.

The model combines process data inputs with fundamental chemical and mechanical engineering calculations to evaluate hydraulic and thermal behaviour of the cooling system.

The computational framework was developed in MATLAB, with a MATLAB App Designer interface for operator-defined inputs and engineering outputs.

## Engineering Objectives

- Analyse cooling-water flow and mass balance
- Evaluate thermal performance using energy-balance calculations
- Calculate pump head and hydraulic power
- Estimate pressure losses using the Darcy–Weisbach equation
- Determine flow regime using Reynolds number
- Evaluate heat-transfer behaviour using LMTD
- Provide system-level performance indicators
- Present engineering results through an interactive MATLAB interface

## Model Architecture

The computational workflow is organised into modular engineering functions:

Process Inputs
        ↓
Mass Balance
        ↓
Energy Balance
        ↓
Pump Hydraulics
        ↓
Pressure Drop
        ↓
Heat Exchanger Analysis
        ↓
Performance Evaluation
        ↓
Engineering Results

## MATLAB Modules

| Module | Purpose |
|---|---|
| `MassBalance.m` | Calculates total and branch-wise mass flow rates |
| `EnergyBalance.m` | Evaluates heat removal from cooling branches |
| `PumpModel.m` | Calculates pressure conversion, pump head and hydraulic power |
| `PressureDrop.m` | Calculates velocity, Reynolds number and Darcy–Weisbach pressure loss |
| `HeatExchanger.m` | Calculates LMTD and heat-transfer performance |
| `CSPI.m` | Calculates the project-defined cooling-system performance indicator |
| `RunSimulation.m` | Integrates the individual engineering modules |
| `Graphs.m` | Generates engineering performance plots |
| `main.m` | Runs the overall simulation workflow |
| `data.m` | Contains the public demonstration input dataset |

## MATLAB App

The project includes a MATLAB App Designer interface that provides:

- 6 operator-editable process inputs
- 7 engineering outputs
- Input validation
- Simulation status indication
- Error handling
- Hydraulic and thermal performance plots

The application is intended to provide a simple interface between process inputs and the underlying engineering calculations.

## Engineering Methods

The model applies:

- Mass balance
- Energy balance
- Pump hydraulic calculations
- Darcy–Weisbach pressure-drop analysis
- Reynolds-number calculation
- LMTD-based heat-transfer analysis
- System performance classification

## Public Dataset

The `data.m` file included in this repository contains **illustrative/sanitized values for portfolio demonstration only**.

It does not contain Tata Steel plant operating data.

Actual plant-derived values, HMI screenshots, internal documents and other proprietary information are intentionally excluded from this public repository.

## Repository Structure

```text
LD3-Cooling-Water-System/
│
├── App/
│   └── LD3_Cooling_Water_System_App.mlapp
│
├── Documentation/
│
├── MATLAB/
│   ├── main.m
│   ├── data.m
│   ├── RunSimulation.m
│   ├── MassBalance.m
│   ├── EnergyBalance.m
│   ├── PumpModel.m
│   ├── PressureDrop.m
│   ├── HeatExchanger.m
│   ├── CSPI.m
│   └── Graphs.m
│
├── Results/
│
└── README.md
