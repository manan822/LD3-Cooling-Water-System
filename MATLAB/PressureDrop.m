function [Velocity, Area, Reynolds, DeltaP, PressureDropBar] = ...
PressureDrop(...
Q_total,...
rho,...
mu,...
D,...
L,...
f)

%==========================================================
% Pressure Drop Model
%==========================================================

%% Convert Flow

FlowRate = Q_total/3600;

%% Pipe Area

Area = pi*D^2/4;

%% Velocity

Velocity = FlowRate/Area;

%% Reynolds Number

Reynolds = (rho*Velocity*D)/mu;

%% Pressure Drop (Pa)

DeltaP = f*(L/D)*(rho*Velocity^2/2);

%% Convert to bar

PressureDropBar = DeltaP/100000;

end