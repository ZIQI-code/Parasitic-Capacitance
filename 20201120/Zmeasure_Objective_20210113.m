function vals = Zmeasure_Objective_20210113(p, model, L_C_32_A, x, Rlist, freq, C_32_CT_exp)
    Cc = p(1).Value
    Cs = p(2).Value

    F_C_32_sim = [0, 0, 0, 0, 0, 0, 0];
    for i = 1:7
%     open(model(i))
        sdo.setValueInModel(model(i), 'Cc', Cc);
        sdo.setValueInModel(model(i), 'Cs', Cs);
        sdo.setValueInModel(model(i), 'L', L_C_32_A(i) / x(i));
        sdo.setValueInModel(model(i), 'R', Rlist(i));
        z_data = power_zmeter(model(i), freq'); 
        [~,I] = max(real(z_data.Z));
        F_C_32_sim(i) = freq(I);
    end
    C_32_CT_sim = ((2 .* pi .* F_C_32_sim) .^ (-2)) ./ L_C_32_A;
    
    error = 0;
    for i = 1:7
        error = error + abs(C_32_CT_sim(i) - C_32_CT_exp(i)) ^ 2;
    end
   
    vals.F = error;
end
