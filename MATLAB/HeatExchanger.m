function [DeltaT1,...
          DeltaT2,...
          LMTD,...
          HeatTransfer,...
          HeatTransferKW] = ...
HeatExchanger(...
HotIn,...
HotOut,...
T_supply,...
T_return,...
U,...
A)

%==========================================================
% Heat Exchanger Model
% LD3 Cooling Water System
%==========================================================

%% Temperature Differences

DeltaT1 = HotIn - T_return;

DeltaT2 = HotOut - T_supply;

%% LMTD

if abs(DeltaT1 - DeltaT2) < 1e-6
    LMTD = DeltaT1;
else
    LMTD = (DeltaT1 - DeltaT2) / log(DeltaT1 / DeltaT2);
end

%% Heat Transfer

HeatTransfer = U * A * LMTD;

%% Convert to kW

HeatTransferKW = HeatTransfer / 1000;

end