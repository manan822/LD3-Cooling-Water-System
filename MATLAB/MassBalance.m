function [MassFlow, HoodFlow, LanceFlow, RingFlow] = MassBalance(Q_total, Q_hood, Q_lance, Q_ring, rho)

%==========================================================
% Mass Balance Model
% Converts volumetric flow rate into mass flow rate
%==========================================================

% Convert total flow rate

Q_total_sec = Q_total / 3600;

% Calculate total mass flow

MassFlow = rho * Q_total_sec;

% Hood cooling

HoodFlow = rho * (Q_hood / 3600);

% Lance cooling

LanceFlow = rho * (Q_lance / 3600);

% Cooling ring

RingFlow = rho * (Q_ring / 3600);

end