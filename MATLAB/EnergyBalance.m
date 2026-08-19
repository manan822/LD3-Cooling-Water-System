function [Qhood,Qlance,Qring,Qtotal,DeltaT] = EnergyBalance(...
    HoodFlow,...
    LanceFlow,...
    RingFlow,...
    Cp,...
    T_supply,...
    T_return)

%==========================================================
% Energy Balance Model
% Calculates heat removed by each cooling circuit
%==========================================================

% Temperature difference

DeltaT = T_return - T_supply;

% Heat removed by hood

Qhood = HoodFlow * Cp * DeltaT;

% Heat removed by lance

Qlance = LanceFlow * Cp * DeltaT;

% Heat removed by cooling ring

Qring = RingFlow * Cp * DeltaT;

% Total heat removed

Qtotal = Qhood + Qlance + Qring;

end