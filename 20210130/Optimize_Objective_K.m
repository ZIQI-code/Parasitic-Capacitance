function vals = Optimize_Objective_K(p, model, L_K_xx_A, x, Rlist, freq, K_xx_CT_exp)
    Cp = p(1).Value
    Cc = p(2).Value
    Cs = p(3).Value

    F_K_xx_sim = [0, 0, 0, 0, 0, 0, 0];
    for i = 1:7
        sdo.setValueInModel(model(i), 'Cp', Cp);
        sdo.setValueInModel(model(i), 'Cc', Cc);
        sdo.setValueInModel(model(i), 'Cs', Cs);
        sdo.setValueInModel(model(i), 'L', L_K_xx_A(i) / x(i));
        sdo.setValueInModel(model(i), 'R', Rlist(i));
        z_data = power_zmeter(model(i), freq'); 
        [~,I] = max(real(z_data.Z));
        F_K_xx_sim(i) = freq(I);
    end
    K_xx_CT_sim = ((2 .* pi .* F_K_xx_sim) .^ (-2)) ./ L_K_xx_A;
    
    error = 0;
    for i = 1:7
        error = error + abs(K_xx_CT_sim(i) - K_xx_CT_exp(i)) ^ 2;
    end
    
    error = sqrt(error);
    vals.F = error
end
