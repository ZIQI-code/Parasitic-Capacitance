$begin 'Profile'
	$begin 'ProfileGroup'
		StartInfo='Time:  01/03/2021 22:40:01; Host: DESKTOP-IALB3JK; Processor: 12; OS: NT 6.2; HFSS 2017.1.0'
		TotalInfo='Time:  01/03/2021 22:45:31, Status: Normal Completion'
		ProfileTask('', 0, 0, 0, 0, 0, 'Executing from C:\\Program Files\\AnsysEM\\AnsysEM18.1\\Win64\\HFSSCOMENGINE.exe', false, true)
		ProfileTask('RAM Limit', 0, 0, 0, 0, 0, 'DESKTOP-IALB3JK = 90.000000%', false, true)
		ProfileTask('', 0, 0, 0, 0, 0, 'Solution Basis Order: 1', false, true)
		ProfileTask('  Mesh TAU', 160, 0, 160, 0, 80000, 'TAU failed in regular meshing process, will fall back to the backup meshing process.', true, true)
		ProfileTask('  Mesh TAU', 108, 0, 107, 0, 127000, '50894 tetrahedra', true, true)
		ProfileTask('  Mesh TAU (Coarsening)', 1, 0, 1, 0, 127000, '43240 tetrahedra', true, true)
		ProfileTask('  Mesh Post', 3, 0, 2, 0, 130352, '43240 tetrahedra', true, true)
		ProfileTask('Mesh Refinement', 0, 0, 0, 0, 0, 'Lambda Based', false, true)
		ProfileTask('  Mesh (lambda based)', 3, 0, 3, 0, 61192, '43237 tetrahedra', true, true)
		ProfileTask('Simulation Setup', 3, 0, 3, 0, 88552, 'Disk = 0 KBytes', true, true)
		ProfileTask('Port Adaptation', 14, 0, 13, 0, 112764, 'Disk = 80 KBytes, 23116 tetrahedra ', true, true)
		ProfileTask('  Mesh (port based)', 3, 0, 3, 0, 62164, '44376 tetrahedra', true, true)
		ProfileTask('', 0, 0, 0, 0, 0, '', false, true)
		ProfileTask('Adaptive Pass 1', 0, 0, 0, 0, 0, 'Frequency:  10MHz', false, true)
		ProfileTask(' ', 0, 0, 0, 0, 0, '', false, true)
		ProfileTask('Adaptive Meshing Frequency: 10MHz on DESKTOP-IALB3JK', 0, 0, 0, 0, 0, '', false, true)
		ProfileTask('Simulation Setup ', 3, 0, 3, 0, 89416, 'Disk = 0 KBytes', true, true)
		ProfileTask('Matrix Assembly', 4, 0, 4, 0, 130896, 'Disk = 0 KBytes, 24198 tetrahedra , 1 lumped port(s) ', true, true)
		ProfileTask('Solver DCS1', 2, 0, 2, 0, 453564, 'Disk = 0 KBytes, matrix size 116463 , matrix bandwidth  14.9 ', true, true)
		ProfileTask('Field Recovery', 0, 0, 0, 0, 453564, 'Disk = 9007 KBytes, 1 excitations ', true, true)
		ProfileTask('Data Transfer', 0, 0, 0, 0, 56324, 'Adaptive Pass 1', true, true)
		ProfileTask('', 0, 0, 0, 0, 0, '', false, true)
		ProfileTask('Adaptive Pass 2', 0, 0, 0, 0, 0, 'Frequency:  10MHz', false, true)
		ProfileTask('  Mesh (volume, adaptive)', 5, 0, 5, 0, 73564, '51637 tetrahedra', true, true)
		ProfileTask(' ', 0, 0, 0, 0, 0, '', false, true)
		ProfileTask('Adaptive Meshing Frequency: 10MHz on DESKTOP-IALB3JK', 0, 0, 0, 0, 0, '', false, true)
		ProfileTask('Simulation Setup ', 3, 0, 3, 0, 99092, 'Disk = 0 KBytes', true, true)
		ProfileTask('Matrix Assembly', 4, 0, 4, 0, 160252, 'Disk = 0 KBytes, 31081 tetrahedra , 1 lumped port(s) ', true, true)
		ProfileTask('Solver DCS1', 5, 0, 5, 0, 847852, 'Disk = 0 KBytes, matrix size 159501 , matrix bandwidth  16.6 ', true, true)
		ProfileTask('Field Recovery', 0, 0, 0, 0, 847852, 'Disk = 8960 KBytes, 1 excitations ', true, true)
		ProfileTask('Data Transfer', 0, 0, 0, 0, 57492, 'Adaptive Pass 2', true, true)
		ProfileTask('', 0, 0, 0, 0, 0, 'Adaptive Passes converged', false, true)
		ProfileTask('', 0, 0, 0, 0, 0, '', false, true)
		ProfileTask('Adaptive Process', 0, 0, 0, 0, 0, 'Elapsed time : 00:05:30 , Hfss ComEngine Memory : 56.4 M', false, true)
	$end 'ProfileGroup'
	$begin 'ProfileGroup'
		StartInfo='Time:  01/03/2021 22:45:31; Host: DESKTOP-IALB3JK; Processor: 12; OS: NT 6.2; HFSS 2017.1.0'
		TotalInfo='Time:  01/03/2021 22:49:52, Status: Engine Detected Error'
		ProfileTask('', 0, 0, 0, 0, 0, 'Executing from C:\\Program Files\\AnsysEM\\AnsysEM18.1\\Win64\\HFSSCOMENGINE.exe', false, true)
		ProfileTask('RAM Limit', 0, 0, 0, 0, 0, 'DESKTOP-IALB3JK = 90.000000%', false, true)
		ProfileTask('', 0, 0, 0, 0, 0, 'Solution Basis Order: 1', false, true)
		ProfileTask('', 0, 0, 0, 0, 0, '', false, true)
		ProfileTask('Solution Sweep', 0, 0, 0, 0, 0, 'Fast Sweep', false, true)
		ProfileTask('', 0, 0, 0, 0, 0, 'From 0.0001 GHz to 0.2 GHz, 200 Steps', false, true)
		ProfileTask('Simulation Setup', 3, 0, 3, 0, 98792, 'Disk = 0 KBytes', true, true)
		ProfileTask('Matrix Assembly', 3, 0, 3, 0, 281804, 'Disk = 0 KBytes, 31081 tetrahedra , 1 lumped port(s) ', true, true)
		ProfileTask('', 0, 0, 0, 0, 0, 'Failed to solve port 1, solving at too low frequency is a possible cause', false, true)
		ProfileTask('', 0, 0, 0, 0, 0, '', false, true)
		ProfileTask('Solution Process', 0, 0, 0, 0, 0, 'Elapsed time : 00:04:20 , Hfss ComEngine Memory : 56.4 M', false, true)
		ProfileTask('', 0, 0, 0, 0, 0, '***Failed to solve port 1, solving at too low frequency is a possible cause', false, true)
	$end 'ProfileGroup'
$end 'Profile'
