function vals = Zmeasure_Objective_A(p, freq, data_r, data_i, name)
    sdo.setValueInModel(name, 'Cs', p(1).Value);
    sdo.setValueInModel(name, 'R', p(2).Value);
    sdo.setValueInModel(name, 'L', p(3).Value);
    z_data = power_zmeter(name, freq');
    [M,B] = max(data_r);
    
    low = B-59;
    high = B;
    N = (high - low + 1);
    error = sum(abs(real(z_data.Z(low:high)) - data_r(low:high)) .^ 2 + ...
    abs(imag(z_data.Z(low:high)) - data_i(low:high)) .^ 2)./N;
    vals.F = error;
end
