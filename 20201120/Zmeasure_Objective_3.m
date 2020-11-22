function vals = Zmeasure_Objective_3(p, freq, data_real, data_imag)
    sdo.setValueInModel('RC_Circuit_3', 'Cs', opt_result(1).Value);
    sdo.setValueInModel('RC_Circuit_3', 'Cp', opt_result(2).Value);
    sdo.setValueInModel('RC_Circuit_3', 'Lm', opt_result(3).Value);

    z_data = power_zmeter('RC_Circuit_3', freq');

    low = 57;
    high = 144;
    N = (high - low + 1);
    error = sum(abs(real(z_data.Z(low:high)) - data_real(low:high)) .^ 2 + ...
    abs(imag(z_data.Z(low:high)) - data_imag(low:high)) .^ 2)./N;
    vals.F = error;
end
