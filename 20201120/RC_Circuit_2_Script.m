clear

% open_system('sdoRCCircuit')

L_N10_LE_C_R_1 = csvread('L_N10_LE_00_C.CSV',3,1,[3,1,201,1]);
L_N10_LE_C_I_1 = csvread('L_N10_LE_00_C.CSV',3,2,[3,2,201,2]);

Exp = sdo.Experiment('RC_Circuit_2');

Voltage = Simulink.SimulationData.Signal;
Voltage.Name = 'Voltage';
Voltage.BlockPath = 'RC_Circuit_2/PS-Simulink Converter';
Voltage.PortType = 'outport';
Voltage.PortIndex = 1;
Voltage.Values = timeseries(data, time);

Exp.OutputData = Voltage;

Simulator = createSimulator(Exp);
Simulator = sim(Simulator);

SimLog = find(Simulator.LoggedData,get_param('RC_Circuit_2','SignalLoggingName'))
Voltage = find(SimLog,'Voltage');

plot(time,data,'ro',Voltage.Values.Time,Voltage.Values.Data,'b')
title('Simulated and Measured Responses Before Estimation')
legend('Measured Voltage','Simulated Voltage')

p = sdo.getParameterFromModel('RC_Circuit_2','C1');
p.Value = 460e-6;
p.Minimum = 0;

estFcn = @(v) RC_Circuit_2_Objective(v,Simulator,Exp);

opt = sdo.OptimizeOptions;
opt.Method = 'lsqnonlin';

pOpt = sdo.optimize(estFcn,p,opt)

Exp = setEstimatedValues(Exp,pOpt);

Simulator = createSimulator(Exp,Simulator);
Simulator = sim(Simulator);

SimLog  = find(Simulator.LoggedData,get_param('RC_Circuit_2','SignalLoggingName'));
Voltage = find(SimLog,'Voltage');

plot(time,data,'ro',Voltage.Values.Time,Voltage.Values.Data,'b')
title('Simulated and Measured Responses After Estimation')
legend('Measured Voltage','Simulated Voltage')

Exp.InitialStates = sdo.getStateFromModel('RC_Circuit_2','C1');
Exp.InitialStates.Value = 1;

estFcn = @(v) RC_Circuit_2_Objective(v,Simulator,Exp);

v = getValuesToEstimate(Exp);

vOpt = sdo.optimize(estFcn,v,opt)

Exp = setEstimatedValues(Exp,vOpt);

Simulator = createSimulator(Exp,Simulator);
Simulator = sim(Simulator);
SimLog    = find(Simulator.LoggedData,get_param('RC_Circuit_2_2','SignalLoggingName'));
Voltage   = find(SimLog,'Voltage');

plot(time,data,'ro',Voltage.Values.Time,Voltage.Values.Data,'b')
title('Simulated and Measured Responses After Initial State and Model Parameter Estimation')
legend('Measured Voltage','Simulated Voltage')

sdo.setValueInModel('RC_Circuit_2',vOpt(2));

bdclose('RC_Circuit_2')