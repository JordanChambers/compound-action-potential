%%% Simulate a CAP, which is made up of multiple single axon models

%%% CAPs are run multiple times with different parameters, finally
%%% a figure is produced showing the membrane trace for the different
%%% parameters
%jval = 1;
%base1 = jaxon04(jval, 1, 0, 1, 1, 0, 750, 0.5);
%base2 = jaxon04(jval, 1, 0, 1, 1, 0, 750, 1);
%base3 = jaxon04(jval, 1, 0, 1, 1, 0, 750, 1.5);
%jata1  = [base1; base2; base3];
%figure;
%plot(jata1');

%jval = 1;
%base1 = jaxon04(jval, 1, 0, 1, 1, 0, 250);
%base2 = jaxon04(jval, 1, 0, 1, 1, 0, 500);
%base3 = jaxon04(jval, 1, 0, 1, 1, 0, 750);
%jata1  = [base1; base2; base3];
%figure;
%plot(jata1');

%Figure 6a
% jval = 1;
% base = jaxon03(jval, 1, 0, 1, 1, 0, 750, 1);
% basef1 = jaxon03(jval, 1, 0, 1, 1.03, 0, 750, 1);
% basef2 = jaxon03(jval, 1, 399, 1, 1, 1, 750, 1); % 399 is dependent on the number of axons in the CAP
% basef3 = jaxon03(jval, 1, 399, 1, 1, 2, 750, 1); % 399 is dependent on the number of axons in the CAP
% basef4 = jaxon03(jval, 1, 0, 1, 1.05, 0, 750, 1);
% basef5 = jaxon03(jval, 1, 0, 1, 1.1, 0, 750, 1);

%Figure 6c
% base = jaxon03(1, 1, 0, 1, 1, 0, 750, 1);
% basef1 = jaxon03(0.9, 1, 0, 1, 1, 0, 750, 1);
% basef2 = jaxon03(0.75, 1, 0, 1, 1, 0, 750, 1);
% basef3 = jaxon03(1, 1.1, 0, 1, 1, 0, 750, 1);
% basef4 = jaxon03(1, 1, 0, 1.1, 1, 0, 750, 1);
% basef5 = jaxon03(1, 1, 0, 1, 1.1, 0, 750, 1);

%Figure 6D
% base = jaxon03(1, 1, 1, 1, 1, 0, 750, 1);
% basef1 = jaxon03(1, 1, 20, 1, 1, 3, 750, 1);
% basef2 = jaxon03(1, 1, 40, 1, 1, 2, 750, 1);
% basef3 = jaxon03(1, 1, 40, 1, 1, 3, 750, 1);
% basef4 = jaxon03(1, 1, 80, 1, 1, 2, 750, 1);
% basef5 = jaxon03(1, 1, 80, 1, 1, 3, 750, 1);


% jata1  = [base; basef1; basef2; basef3; basef4; basef5];
% figure;
% plot(jata1');

%Figure 6e
jval = 1;
base = jaxon03(jval, 1, 0, 1, 1, 0, 750, 1);
basef1 = jaxon03(jval, 1, 0, 1, 1.03, 0, 750, 1);
jata1  = [base; basef1];
figure;
plot(jata1');

%Figure 6b
% jval = 1;
% base = jaxon03nv(jval, 1, 0, 1, 1, 0, 750, 1);
% basef1 = jaxon03nv(jval, 1, 0, 1.03, 1, 0, 750, 1);
% basef2 = jaxon03nv(jval, 1, 399, 1, 1, 1, 750, 1); % 399 is dependent on the number of axons in the CAP
% basef3 = jaxon03nv(jval, 1, 399, 1, 1, 2, 750, 1); % 399 is dependent on the number of axons in the CAP
% jata1  = [base; basef1; basef2; basef3];
% figure;
% plot(jata1');

%% FINAL RESUTLS
%% Figure 6a
% mean results: velocity 1.37268, g-ratio 0.704054, number of lamellae 5.4075, periaxonal space 5.45677, peak time 591.7 msec, half-width 497.3 msec, 0 axons without AP
% mean results: velocity 1.33953, g-ratio 0.72444, number of lamellae 4.9225, periaxonal space 5.45677, peak time 600 msec, half-width 501.9 msec, 0 axons without AP
% mean results: velocity 1.29719, g-ratio 0.751698, number of lamellae 4.41, periaxonal space 5.45677, peak time 632.2 msec, half-width 536.7 msec, 0 axons without AP
% mean results: velocity 1.19563, g-ratio 0.807249, number of lamellae 3.4125, periaxonal space 5.45677, peak time 653.7 msec, half-width 589.1 msec, 1 axons without AP
% mean results: velocity 1.31566, g-ratio 0.739272, number of lamellae 4.6, periaxonal space 5.45677, peak time 625.7 msec, half-width 510.2 msec, 0 axons without AP
% mean results: velocity 1.25214, g-ratio 0.774, number of lamellae 3.865, periaxonal space 5.45677, peak time 644.7 msec, half-width 529 msec, 0 axons without AP

%% Figure 6b
% mean results: velocity 1.34773, g-ratio 0.719281, number of lamellae 5, periaxonal space 5.5, peak time 537.3 msec, half-width 231.8 msec, 0 axons without AP
% mean results: velocity 1.3508, g-ratio 0.719281, number of lamellae 5, periaxonal space 5.5, peak time 551.9 msec, half-width 231.8 msec, 0 axons without AP
% mean results: velocity 1.27078, g-ratio 0.765143, number of lamellae 4, periaxonal space 5.5, peak time 569.7 msec, half-width 235.4 msec, 0 axons without AP
% mean results: velocity 1.16902, g-ratio 0.817253, number of lamellae 3, periaxonal space 5.5, peak time 619.1 msec, half-width 241.4 msec, 0 axons without AP

%% Figure 6c
% mean results: velocity 1.37268, g-ratio 0.704054, number of lamellae 5.4075, periaxonal space 5.45677, peak time 591.7 msec, half-width 497.3 msec, 0 axons without AP
% mean results: velocity 1.25237, g-ratio 0.703106, number of lamellae 4.9225, periaxonal space 5.45677, peak time 653 msec, half-width 542.3 msec, 1 axons without AP
% mean results: velocity 1.06104, g-ratio 0.702899, number of lamellae 4.1575, periaxonal space 5.45677, peak time 763 msec, half-width 659.4 msec, 6 axons without AP
% mean results: velocity 1.42925, g-ratio 0.704054, number of lamellae 5.4075, periaxonal space 5.45677, peak time 572.3 msec, half-width 469.8 msec, 0 axons without AP
% mean results: velocity 1.39759, g-ratio 0.704054, number of lamellae 5.4075, periaxonal space 5.45677, peak time 568 msec, half-width 513 msec, 0 axons without AP
% mean results: velocity 1.25214, g-ratio 0.774, number of lamellae 3.865, periaxonal space 5.45677, peak time 644.7 msec, half-width 529 msec, 0 axons without AP

%% Figure 6d
% mean results: velocity 1.37268, g-ratio 0.704054, number of lamellae 5.4075, periaxonal space 5.45677, peak time 591.7 msec, half-width 497.3 msec, 0 axons without AP
% mean results: velocity 1.36167, g-ratio 0.708636, number of lamellae 5.2575, periaxonal space 5.45677, peak time 591.2 msec, half-width 492.6 msec, 0 axons without AP
% mean results: velocity 1.35865, g-ratio 0.710244, number of lamellae 5.2075, periaxonal space 5.45677, peak time 591 msec, half-width 491 msec, 0 axons without AP
% mean results: velocity 1.34903, g-ratio 0.713777, number of lamellae 5.1075, periaxonal space 5.45677, peak time 591 msec, half-width 484.4 msec, 0 axons without AP
% mean results: velocity 1.34429, g-ratio 0.717448, number of lamellae 5.0075, periaxonal space 5.45677, peak time 593.1 msec, half-width 481.6 msec, 0 axons without AP
% mean results: velocity 1.32441, g-ratio 0.725172, number of lamellae 4.8075, periaxonal space 5.45677, peak time 592.7 msec, half-width 471 msec, 0 axons without AP

%% Figure 6e
% mean results: velocity 1.37268, g-ratio 0.704054, number of lamellae 5.4075, periaxonal space 5.45677, peak time 591.7 msec, half-width 497.3 msec, 0 axons without AP
% mean results: velocity 1.33953, g-ratio 0.72444, number of lamellae 4.9225, periaxonal space 5.45677, peak time 600 msec, half-width 501.9 msec, 0 axons without AP
