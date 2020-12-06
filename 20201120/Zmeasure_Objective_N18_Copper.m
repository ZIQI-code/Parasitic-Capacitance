function vals = Zmeasure_Objective_N18_Copper(p, freq, data_real, data_imag)
    sdo.setValueInModel('RC_Circuit_N18', 'Cs', p(1).Value);
   


    z_data = power_zmeter('RC_Circuit_N18_Copper', freq');

    low = 1;
    high = 60;
    N = (high - low + 1);
    error = sum(abs(real(z_data.Z(low:high)) - data_real(low:high)) .^ 2 + ...
    abs(imag(z_data.Z(low:high)) - data_imag(low:high)) .^ 2)./N;
    vals.F = error;
end
