%%% Simulate a CAP, which is made up of multiple single axon models

%%% CAPs are run multiple times with different parameters, finally
%%% a figure is produced showing the membrane trace for the different
%%% parameters

%Figure 6c => Adding in the variation for individual parameters
jval = 1;
basenv = jaxon03nv(jval, 1, 399, 1, 1, 0);
basenv2 = jaxon03nv(jval, 1, 399, 1, 1, 1);
basead = jaxon03ad(jval, 1, 399, 1, 1, 0);
basead2 = jaxon03ad(jval, 1, 399, 1, 1, 1);
basegr = jaxon03gr(jval, 1, 399, 1, 1, 0);
basegr2 = jaxon03gr(jval, 1, 399, 1, 1, 1);
baseadgr = jaxon03adgr(jval, 1, 399, 1, 1, 0);
baseadgr2 = jaxon03adgr(jval, 1, 399, 1, 1, 1);

jata1  = [basenv; basenv2; basead; basead2; basegr; basegr2; baseadgr; baseadgr2];
figure;
plot(jata1');

%% Results
%mean results: velocity 2.63682, g-ratio 0.707965, number of lamellae 6, peak time 274.7 msec, half-width 207.4 msec, 0 axons without AP
%mean results: velocity 2.41033, g-ratio 0.747664, number of lamellae 5, peak time 300.4 msec, half-width 210.4 msec, 0 axons without AP
%mean results: velocity 2.64805, g-ratio 0.70174, number of lamellae 6.155, peak time 332.2 msec, half-width 294.2 msec, 0 axons without AP
%mean results: velocity 2.42786, g-ratio 0.744255, number of lamellae 5.155, peak time 367.6 msec, half-width 319.6 msec, 0 axons without AP
%mean results: velocity 2.65653, g-ratio 0.703273, number of lamellae 6.3, peak time 318.5 msec, half-width 253.8 msec, 0 axons without AP
%mean results: velocity 2.42752, g-ratio 0.742823, number of lamellae 5.3, peak time 324.1 msec, half-width 286.3 msec, 0 axons without AP
%mean results: velocity 2.64303, g-ratio 0.702441, number of lamellae 6.3475, peak time 334.6 msec, half-width 314.6 msec, 0 axons without AP
%mean results: velocity 2.41619, g-ratio 0.745503, number of lamellae 5.3475, peak time 349.1 msec, half-width 342.8 msec, 0 axons without AP
