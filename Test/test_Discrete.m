addpath('..\causal_explorer');

%Load Data
load ..\Data\alarm_h;
load ..\Data\alarm_h_dc;

targetVar=5;

%---------------------------
%   Markov Blankets
%---------------------------
mb_GS=Causal_Explorer('GS', data, targetVar, domain_counts, 'g2', 0.05);
mb_IAMB=Causal_Explorer('IAMB', data, targetVar, domain_counts, 'mi', 0.04);
mb_IAMBnPC=Causal_Explorer('IAMBnPC', data, targetVar, domain_counts, 'mi', 0.01);

%---------------------------
%   Adjacency matrix
%---------------------------
a_TPDA=Causal_Explorer('TPDA', data, domain_counts, 'g2', 0.01, 0, 1);
a_PC=Causal_Explorer('PC', data, domain_counts, 'mi',  0.01, 2);
[a_SCA,stats_SCA,bs_SCA]=Causal_Explorer('SCA', data, domain_counts, 5, 10, 'BDeu', 'ms');

options.threshold = 0.05;
options.epc = 10;
options.maxK = 10;
options.use_card_lim = 0;
options.max_card = 0;
[a_MMHC,score_MMHC,stats_MMHC,time_MMHC,cps_MMHC] = Causal_Explorer('MMHC',data,domain_counts,'MMHC',options,10,'BDeu');

%-----------------------------
%   MMPC
%-----------------------------
options.threshold = 0.05;
options.epc = 5;
options.maxK = 5;
options.use_card_lim = 0;
options.max_card = 0;
[pc_MMPC_op, stats_MMPC_op] = Causal_Explorer('MMPC', data, targetVar, domain_counts, 'MMPC', options);

%-----------------------------
%   HITON
%-----------------------------
pc_Hiton=Causal_Explorer('HITON_PC', data, targetVar, domain_counts, 'g2', 0.05, 3);
mb_Hiton=Causal_Explorer('HITON_MB', data, targetVar, domain_counts, 'g2', 0.05, 3);
