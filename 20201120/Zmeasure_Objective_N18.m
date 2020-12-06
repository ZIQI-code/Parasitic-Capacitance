function vals = Zmeasure_Objective_N18(p, freq, data_real, data_imag)
    sdo.setValueInModel('RC_Circuit_N18', 'Cs', p(1).Value);
    sdo.setValueInModel('RC_Circuit_N18', 'Cp', p(2).Value);


    z_data = power_zmeter('RC_Circuit_N18', freq');

    low = 1;
    high = 58;
    N = (high - low + 1);
    error = sum(abs(real(z_data.Z(low:high)) - data_real(low:high)) .^ 2 + ...
    abs(imag(z_data.Z(low:high)) - data_imag(low:high)) .^ 2)./N;
    vals.F = error;
end
