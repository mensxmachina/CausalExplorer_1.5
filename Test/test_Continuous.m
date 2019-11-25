addpath('..\causal_explorer');

%Load Data
load ..\Data\random_data_1;

targetVar=3;

%---------------------------
%   Markov Blankets
%---------------------------
mb_GS=Causal_Explorer('GS', data, targetVar, [], 'z', 0.05);
mb_IAMB=Causal_Explorer('IAMB', data, targetVar, [], 'z', 0.05);
mb_interIAMB=Causal_Explorer('interIAMB', data, targetVar, [], 'z', 0.05);
mb_interIAMBnPC=Causal_Explorer('interIAMBnPC', data, targetVar, [], 'z', 0.05);

%---------------------------
%   Adjacency matrix
%---------------------------
a_TPDA=Causal_Explorer('TPDA', data, [], 'z', 0.05, 1, 1);
a_PC=Causal_Explorer('PC', data, [], 'z', 0.05, 1, 1);


