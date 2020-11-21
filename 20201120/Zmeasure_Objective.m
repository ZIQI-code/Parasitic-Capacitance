function vals = Zmeasure_Objective(p, freq, data_real, data_imag)
    sdo.setValueInModel('RC_Circuit_2', 'R1', p(1).Value);
    sdo.setValueInModel('RC_Circuit_2', 'C1', p(2).Value);

    z_data = power_zmeter('RC_Circuit_2', freq');

    low = 60;
    high = 130;

    error = sum((real(z_data.Z(low:high)) - data_real(low:high)) .^ 2);
    error = error + sum((imag(z_data.Z(low:high)) - data_imag(low:high)) .^ 2);
    error = error / (high - low + 1);

    vals.F = error;
end
