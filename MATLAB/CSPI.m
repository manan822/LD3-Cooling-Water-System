function [CSPIValue, Status, Recommendation] = ...
CSPI(Qtotal, PumpPowerMW)

%==========================================================
% Cooling System Performance Index
% LD3 Cooling Water System
%==========================================================

% Convert Heat Removed to MW

HeatRemovedMW = Qtotal / 1e6;

% Calculate CSPI

CSPIValue = HeatRemovedMW / PumpPowerMW;

%----------------------------------------------------------
% Performance Classification
%----------------------------------------------------------

if CSPIValue >= 1.20

    Status = "EXCELLENT";
    Recommendation = "Cooling system operating efficiently.";

elseif CSPIValue >= 1.00

    Status = "GOOD";
    Recommendation = "System performance is satisfactory.";

elseif CSPIValue >= 0.80

    Status = "ACCEPTABLE";
    Recommendation = "Monitor pump and cooling circuits.";

else

    Status = "POOR";
    Recommendation = "Immediate inspection recommended.";

end