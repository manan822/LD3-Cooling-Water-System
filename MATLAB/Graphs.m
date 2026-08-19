function Graphs(...
MassFlow,...
HoodFlow,...
LanceFlow,...
RingFlow,...
Qhood,...
Qlance,...
Qring,...
PumpHead,...
PressureDropBar,...
CSPIValue)

%%=========================================================
% Graph 1 : Flow Distribution
%==========================================================

OtherFlow = MassFlow - HoodFlow - LanceFlow - RingFlow;

figure;

pie([HoodFlow LanceFlow RingFlow OtherFlow]);

title('LD3 Cooling Water Flow Distribution');

legend('Hood','Lance','Ring','Others',...
    'Location','bestoutside');

%%=========================================================
% Graph 2 : Heat Removed
%==========================================================

figure;

bar([Qhood Qlance Qring]/1e6);

grid on;

title('Heat Removed by Cooling Circuits');

ylabel('Heat Removed (MW)');

xticklabels({'Hood','Lance','Ring'});

%%=========================================================
% Graph 3 : Hydraulic Performance
%==========================================================

figure;

values = [PumpHead PressureDropBar*100];

bar(values);

grid on;

xticklabels({'Pump Head (m)','Pressure Drop (m equivalent)'});

ylabel('Magnitude');

title('Hydraulic Performance');
%%=========================================================
% Graph 4 : CSPI Indicator
%==========================================================

figure;

bar(CSPIValue);

ylim([0 2]);

grid on;

title('Cooling System Performance Index');

ylabel('CSPI');

