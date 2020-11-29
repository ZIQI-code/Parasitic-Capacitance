function vals = Zmeasure_Objective(p, freq, data_real, data_imag)
    sdo.setValueInModel('RC_Circuit_2', 'R1', p(1).Value);
    sdo.setValueInModel('RC_Circuit_2', 'C1', p(2).Value);
%     sdo.setValueInModel('RC_Circuit_2', 'L1', p(2).Value);
%     sdo.setValueInModel('RC_Circuit_2', 'C1', p(1).Value);
%     sdo.setValueInModel('RC_Circuit_2', 'R1', p(2).Value);
    z_data = power_zmeter('RC_Circuit_2', freq');

%     low = 60;
%     high = 150;
%     low = 1;
%     high = 199;
    low = 60;
    high = 180;

%Knitted wire
%     low = 50;
%     high = 140;
    
    N = (high - low + 1);
    error = sum(abs(real(z_data.Z(low:high)) - data_real(low:high)) .^ 2 + ...
    abs(imag(z_data.Z(low:high)) - data_imag(low:high)) .^ 2)./N;
    
   

    vals.F = error;
end
