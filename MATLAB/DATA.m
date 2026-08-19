%% =========================================================
% LD3 Cooling Water System - Public Demo Dataset
%
% IMPORTANT:
% This file contains illustrative/sanitized engineering values
% for portfolio demonstration only.
% It does NOT contain Tata Steel plant data.
% Replace these values with your own authorized dataset when
% running the model in a permitted/private environment.
% ==========================================================

%% Flow Rates (m3/hr)
Q_total  = 1200;
Q_return = 1000;

Q_hood  = 160;
Q_lance = 30;
Q_ring  = 40;

%% Temperatures (degC)
T_supply = 30.0;
T_return = 35.0;

%% Pump Pressure (bar)
PumpPressure = 8.0;

%% Engineering Constants
rho = 998;          % kg/m3
Cp  = 4180;         % J/kg.K
g   = 9.81;         % m/s2
eta = 0.85;         % pump efficiency

% Dynamic viscosity used for the illustrative water model
mu = 0.0008;        % Pa.s

%% Pipe Data
D = 0.25;           % m
L = 50;             % m
f = 0.018;          % Darcy friction factor

%% Heat Exchanger Parameters
U = 900;            % W/m2.K
A = 40;             % m2

% Illustrative hot-side temperatures
HotIn  = 60.0;      % degC
HotOut = 45.0;      % degC

%% =========================================================
% Public-repository note:
% The values above are synthetic/illustrative and are not
% intended to represent actual plant operating conditions.
% =========================================================
