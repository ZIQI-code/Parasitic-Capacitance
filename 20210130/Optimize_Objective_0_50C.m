function vals = Optimize_Objective_0_50C(p, model, L_C_xx_A, x, Rlist, freq, C_xx_CT_exp)
    Cc = p(1).Value
    Cs = p(2).Value

    F_C_xx_sim = [0, 0, 0, 0, 0, 0, 0];
    for i = 1:7
        sdo.setValueInModel(model(i), 'Cc', Cc);
        sdo.setValueInModel(model(i), 'Cs', Cs);
        sdo.setValueInModel(model(i), 'L', L_C_xx_A(i) / x(i));
        sdo.setValueInModel(model(i), 'R', Rlist(i));
        z_data = power_zmeter(model(i), freq'); 
        [~,I] = max(real(z_data.Z));
        F_C_xx_sim(i) = freq(I);
    end
    C_xx_CT_sim = ((2 .* pi .* F_C_xx_sim) .^ (-2)) ./ L_C_xx_A;
    
    error = 0;
    for i = 2:6
        error = error + abs(C_xx_CT_sim(i) - C_xx_CT_exp(i)) ^ 2;
    end
    
    error = sqrt(error);
    vals.F = error
end
