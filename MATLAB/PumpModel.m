function [PressurePa, PumpHead, HydraulicPower, PumpPowerMW] = ...
PumpModel(PumpPressure, Q_total, rho, g, eta)

%==========================================================
% Pump Hydraulic Model
% LD3 Cooling Water System
%==========================================================

% Convert flow rate from m3/hr to m3/s

FlowRate = Q_total / 3600;

% Convert pressure from bar to Pascal

PressurePa = PumpPressure * 100000;

% Calculate Pump Head

PumpHead = PressurePa / (rho * g);

% Calculate Hydraulic Power

HydraulicPower = (rho * g * FlowRate * PumpHead) / eta;

% Convert to MW

PumpPowerMW = HydraulicPower / 1e6;

end