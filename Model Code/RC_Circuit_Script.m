% clear

% open_system('sdoRCCircuit')

load sdoRCCircuit_ExperimentData

Exp = sdo.Experiment('RC_Circuit');

Voltage = Simulink.SimulationData.Signal;
Voltage.Name = 'Voltage';
Voltage.BlockPath = 'RC_Circuit/PS-Simulink Converter';
Voltage.PortType = 'outport';
Voltage.PortIndex = 1;
Voltage.Values = timeseries(data, time);

Exp.OutputData = Voltage;

Simulator = createSimulator(Exp);
Simulator = sim(Simulator);

SimLog = find(Simulator.LoggedData,get_param('RC_Circuit','SignalLoggingName'))
Voltage = find(SimLog,'Voltage');

plot(time,data,'ro',Voltage.Values.Time,Voltage.Values.Data,'b')
title('Simulated and Measured Responses Before Estimation')
legend('Measured Voltage','Simulated Voltage')

p = sdo.getParameterFromModel('RC_Circuit','C1');
p.Value = 460e-6;
p.Minimum = 0;
