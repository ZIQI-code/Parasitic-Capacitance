function vals = Zmeasure_Objective_A(p, freq,C,D)
    name = ["RC_Circuit_N8C_1","RC_Circuit_N10C_1","RC_Circuit_N12C_1","RC_Circuit_N14C_1","RC_Circuit_N16C_1","RC_Circuit_N18C_1","RC_Circuit_N20C_1"];
    
    error = 0;
    
    for i = 1:7
%         open(name(i))

        sdo.setValueInModel(name(i), 'Cs', p(1).Value);
        sdo.setValueInModel(name(i), 'Cc', p(2).Value);
        sdo.setValueInModel(name(i), 'R', p(3).Value);
        z_data = power_zmeter(name(i), freq');
        [A,B] = max(real(z_data.Z));
    
%         low = B-100;
%         high = B;
%         N = (high - low + 1);
%         error = sum(abs(real(z_data.Z(low:high)) - data_r(low:high)) .^ 2 + ...
%         abs(imag(z_data.Z(low:high)) - data_i(low:high)) .^ 2)./N;

        error = error + sum(1e10*(freq(D(i))-freq(B))^2 + 1e10*(A-C(i))^2);
        
    end 
    vals.F = error;
end
