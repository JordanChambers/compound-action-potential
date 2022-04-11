%%% Simulate a CAP, which is made up of multiple single axon models

%%% CAPs are run multiple times with different parameters, finally
%%% a figure is produced showing the membrane trace for the different
%%% parameters

%Figure 6a
fprintf(1,"Figure 6a\n");
jval = 1;
base = jaxon03(jval, 1, 0, 1, 1, 0, 750, 1);
basef1 = jaxon03(jval, 1, 399, 1, 1, 3, 750, 1);
basef2 = jaxon03(jval, 1, 399, 1, 1, 1, 750, 1);
jata1  = [base; basef1; basef2];
figure;
plot(jata1', 'linewidth',3);
xlim([0 2e4]);
xticklabels({'0', '5', '10', '15', '20'});
legend('Model WT', 'Model KO', 'Model WT - lamellae');
 
%Figure 6b
fprintf(1,"Figure 6b\n");
jval = 1;
base = jaxon03nv(jval, 1, 0, 1, 1, 0, 750, 1);
basef1 = jaxon03nv(jval, 1, 399, 1, 1, 1, 750, 1);
basef2 = jaxon03nv(jval, 1, 399, 1, 1, 2, 750, 1); % 399 is dependent on the number of axons in the CAP
basef3 = jaxon03nv(jval, 1, 399, 1, 1, 3, 750, 1); % 399 is dependent on the number of axons in the CAP
jata1  = [base; basef1; basef2; basef3];
figure;
plot(jata1', 'linewidth',3);
xlim([0 2e4]);
xticklabels({'0', '5', '10', '15', '20'});
legend('Baseline', 'Decrease lamellae by 1', 'Decrease lamellae by 2', 'Decrease lamellae by 3');

%Figure 6c
fprintf(1,"Figure 6c\n");
base = jaxon03(1, 1, 0, 1, 1, 0, 750, 1);
basef1 = jaxon03(0.9, 1, 0, 1, 1, 0, 750, 1);
basef2 = jaxon03(0.75, 1, 0, 1, 1, 0, 750, 1);
basef3 = jaxon03(1, 1.1, 0, 1, 1, 0, 750, 1);
basef4 = jaxon03(1, 1, 0, 1.1, 1, 0, 750, 1);
basef5 = jaxon03(1, 1, 0, 1, 1.1, 0, 750, 1);
basef6 = jaxon03(1, 1, 0, 1, 1, 0, 750, 1.1);
basef7 = jaxon03(1, 1, 0, 1, 1, 0, 750, 1.25);
jata1  = [base; basef1; basef2; basef3; basef4; basef5; basef6; basef7];
figure;
plot(jata1', 'linewidth',3);
xlim([0 2e4]);
xticklabels({'0', '5', '10', '15', '20'});
legend('Baseline', 'Decreased diameter by 0.9', 'Decreased diameter by 0.75', 'Increased node length by 1.1', 'Increased internode length by 1.1', 'Increased g-ratio by 1.1', 'Increased periaxonal space by 1.1', 'Increased periaxonal space by 1.25');

%Figure 6D
fprintf(1,"Figure 6d\n");
base = jaxon03(1, 1, 1, 1, 1, 0, 750, 1);
basef1 = jaxon03(1, 1, 80, 1, 1, 3, 750, 1);
basef2 = jaxon03(1, 1, 20, 1, 1, 3, 750, 1);
jata1  = [base; basef1; basef2];
figure;
plot(jata1', 'linewidth',3);
xlim([0 2e4]);
xticklabels({'0', '5', '10', '15', '20'});
legend('Baseline', '20% of axons reduced lamellae by 3', '5% of axons reduced lamellae by 3');

