%%% Run a single axon model

%%% single axons are run multiple times with different parameters, finally
%%% a figure is produced showing the membrane trace for the different
%%% parameters

neuronlist = {@jCreateAxon03CorpusCallosum, @jCreateAxon03OpticNerveAxon};
diamlist = {1, 2,0.5};
jtm = 4; % The length of time to run the simulation (in milliseconds)

for neuronp = 1:length(neuronlist)
    jvd = zeros(3,4);
    for diamp = 1:length(diamlist)
        fprintf(1, 'Starting %d %d\n', neuronp, diamp);
        naxon1 = neuronlist{neuronp}(jtm, diamlist{diamp}, 1, 1, 1, 1, 750, 0, 1);
        [a01, b01, t01] = Model(naxon1, [], 0);
        jvel01 = velocities(a01, b01, t01(2)-t01(1), [1 naxon1.geo.nnode], 'max', -40);
        fprintf('01: vel %g; diam %g; g-ratio %g; number of lamellae %d, periaxonal space %g\n', jvel01, naxon1.node.geo.diam.value.ref, mean(naxon1.myel.geo.gratio.value.vec(:)), mean(naxon1.myel.geo.numlamellae.value.vec(:)), mean(naxon1.myel.geo.peri.value.vec(:)));
        
        naxon5 = neuronlist{neuronp}(jtm, diamlist{diamp}, 1, 0, 1, 1,750, 1, 1);
        [a05, b05, t05] = Model(naxon5, [], 0);
        jvel05 = velocities(a05, b05, t05(2)-t05(1), [1 naxon5.geo.nnode], 'max', -40);
        fprintf('05: vel %g; diam %g; g-ratio %g; number of lamellae %d, periaxonal space %g\n', jvel05, naxon5.node.geo.diam.value.ref, mean(naxon5.myel.geo.gratio.value.vec(:)), mean(naxon5.myel.geo.numlamellae.value.vec(:)), mean(naxon5.myel.geo.peri.value.vec(:)));

        naxon6 = neuronlist{neuronp}(jtm, diamlist{diamp}, 1, 0, 1, 1,750, 2, 1);
        [a06, b06, t06] = Model(naxon6, [], 0);
        jvel06 = velocities(a06, b06, t06(2)-t06(1), [1 naxon6.geo.nnode], 'max', -40);
        fprintf('06: vel %g; diam %g; g-ratio %g; number of lamellae %d, periaxonal space %g\n', jvel06, naxon6.node.geo.diam.value.ref, mean(naxon6.myel.geo.gratio.value.vec(:)), mean(naxon6.myel.geo.numlamellae.value.vec(:)), mean(naxon6.myel.geo.peri.value.vec(:)));

        naxon7 = neuronlist{neuronp}(jtm, diamlist{diamp}, 1, 0, 1, 1,750, 3, 1);
        [a07, b07, t07] = Model(naxon7, [], 0);
        jvel07 = velocities(a07, b07, t07(2)-t07(1), [1 naxon7.geo.nnode], 'max', -40);
        fprintf('07: vel %g; diam %g; g-ratio %g; number of lamellae %d, periaxonal space %g\n', jvel07, naxon7.node.geo.diam.value.ref, mean(naxon7.myel.geo.gratio.value.vec(:)), mean(naxon7.myel.geo.numlamellae.value.vec(:)), mean(naxon7.myel.geo.peri.value.vec(:)));
        jvd(diamp,:) = [jvel01 jvel05 jvel06 jvel07];
        %fprintf(1, '%g\t%g\n%g\t%g\n%g\t%g\n%g\t%g\n%g\t%g\n%g\t%g\n%g\t%g\n', jvel01, jvel01/jvel01, jvel02, jvel02/jvel01, jvel03, jvel03/jvel01, jvel04, jvel04/jvel01, jvel05, jvel05/jvel01, jvel06, jvel06/jvel01, jvel07, jvel07/jvel01);
        fprintf(1, 'Table for %d %d:\n%g\t%g\t%g\t%g\t%g\t%g\n%g\t%g\t%g\t%g\t%g\t%g\n%g\t%g\t%g\t%g\t%g\t%g\n%g\t%g\t%g\t%g\t%g\t%g\n', neuronp, diamp, ...
        jvel01, jvel01/jvel01, naxon1.node.geo.diam.value.ref, naxon1.myel.geo.gratio.value.ref, mean(naxon1.myel.geo.gratio.value.vec(:)), mean(naxon1.myel.geo.numlamellae.value.vec(:)), ...
        jvel05, jvel05/jvel01, naxon1.node.geo.diam.value.ref, naxon5.myel.geo.gratio.value.ref, mean(naxon5.myel.geo.gratio.value.vec(:)), mean(naxon5.myel.geo.numlamellae.value.vec(:)), ...
        jvel06, jvel06/jvel01, naxon1.node.geo.diam.value.ref, naxon6.myel.geo.gratio.value.ref, mean(naxon6.myel.geo.gratio.value.vec(:)), mean(naxon6.myel.geo.numlamellae.value.vec(:)), ...
        jvel07, jvel07/jvel01, naxon1.node.geo.diam.value.ref, naxon7.myel.geo.gratio.value.ref, mean(naxon7.myel.geo.gratio.value.vec(:)), mean(naxon7.myel.geo.numlamellae.value.vec(:)));
%         figure;
%         jv = size(a01);
%         jp = zeros(jv(1),4);
%         jp(:,1) = a01(:,naxon.geo.nnode);
%         jp(:,2) = a02(:,naxon.geo.nnode);
%         jp(:,3) = a03(:,naxon.geo.nnode);
%         jp(:,4) = a04(:,naxon.geo.nnode);
%         plot(jp);
    end
    figure;
    bar(jvd);
    xticklabels({'Average diameter', 'Large diameter', 'Small diameter'});
    ylabel('Velocity (m/s)');
    %legend('Baseline', 'Increased g-ratio by 1.025', 'Increased g-ratio by 1.05', 'Increased g-ratio by 1.1', 'Decreased lamellae by 1', 'Decreased lamellae by 2', 'Decreased lamellae by 3');
    legend('Baseline', 'Decreased lamellae by 1', 'Decreased lamellae by 2', 'Decreased lamellae by 3');
end


% jSNrunFULL2
% Starting 1 1
% 01: vel 1.49372; diam 0.6; g-ratio 0.719281; number of lamellae 5, periaxonal space 5.5
% 05: vel 1.4036; diam 0.6; g-ratio 0.765143; number of lamellae 4, periaxonal space 5.5
% 06: vel 1.28413; diam 0.6; g-ratio 0.817253; number of lamellae 3, periaxonal space 5.5
% 07: vel 1.11809; diam 0.6; g-ratio 0.876979; number of lamellae 2, periaxonal space 5.5
% Table for 1 1:
% 1.49372	1	0.6	0.7025	0.719281	5
% 1.4036	0.939665	0.6	0.765143	0.765143	4
% 1.28413	0.859687	0.6	0.817253	0.817253	3
% 1.11809	0.748527	0.6	0.876979	0.876979	2
% Starting 1 2
% 01: vel 2.67199; diam 1.2; g-ratio 0.712519; number of lamellae 10, periaxonal space 5.5
% 05: vel 2.61199; diam 1.2; g-ratio 0.734319; number of lamellae 9, periaxonal space 5.5
% 06: vel 2.54112; diam 1.2; g-ratio 0.757496; number of lamellae 8, periaxonal space 5.5
% 07: vel 2.45798; diam 1.2; g-ratio 0.782184; number of lamellae 7, periaxonal space 5.5
% Table for 1 2:
% 2.67199	1	1.2	0.7025	0.712519	10
% 2.61199	0.977544	1.2	0.734319	0.734319	9
% 2.54112	0.951022	1.2	0.757496	0.757496	8
% 2.45798	0.919905	1.2	0.782184	0.782184	7
% Starting 1 3
% 01: vel 0.803532; diam 0.3; g-ratio 0.690979; number of lamellae 3, periaxonal space 5.5
% 05: vel 0.711564; diam 0.3; g-ratio 0.780911; number of lamellae 2, periaxonal space 5.5
% 06: vel 0.564959; diam 0.3; g-ratio 0.897756; number of lamellae 1, periaxonal space 5.5
% 07: vel 0.257819; diam 0.3; g-ratio 1.05572; number of lamellae 0, periaxonal space 5.5
% Table for 1 3:
% 0.803532	1	0.3	0.7025	0.690979	3
% 0.711564	0.885545	0.3	0.780911	0.780911	2
% 0.564959	0.703094	0.3	0.897756	0.897756	1
% 0.257819	0.320857	0.3	1.05572	1.05572	0
% Starting 2 1
% 01: vel 3.46884; diam 1; g-ratio 0.786739; number of lamellae 6, periaxonal space 14.5457
% 05: vel 3.09943; diam 1; g-ratio 0.81495; number of lamellae 5, periaxonal space 14.5457
% 06: vel 2.69148; diam 1; g-ratio 0.84526; number of lamellae 4, periaxonal space 14.5457
% 07: vel 2.23875; diam 1; g-ratio 0.877911; number of lamellae 3, periaxonal space 14.5457
% Table for 2 1:
% 3.46884	1	1	0.79	0.786739	6
% 3.09943	0.893504	1	0.81495	0.81495	5
% 2.69148	0.775902	1	0.84526	0.84526	4
% 2.23875	0.645388	1	0.877911	0.877911	3
% Starting 2 2
% 01: vel 7.5016; diam 2; g-ratio 0.788929; number of lamellae 12, periaxonal space 14.5457
% 05: vel 7.12805; diam 2; g-ratio 0.802864; number of lamellae 11, periaxonal space 14.5457
% 06: vel 6.72483; diam 2; g-ratio 0.8173; number of lamellae 10, periaxonal space 14.5457
% 07: vel 6.30755; diam 2; g-ratio 0.832265; number of lamellae 9, periaxonal space 14.5457
% Table for 2 2:
% 7.5016	1	2	0.79	0.788929	12
% 7.12805	0.950203	2	0.802864	0.802864	11
% 6.72483	0.896453	2	0.8173	0.8173	10
% 6.30755	0.840827	2	0.832265	0.832265	9
% Starting 2 3
% 01: vel 1.50032; diam 0.5; g-ratio 0.782414; number of lamellae 3, periaxonal space 14.5457
% 05: vel 1.15704; diam 0.5; g-ratio 0.840273; number of lamellae 2, periaxonal space 14.5457
% 06: vel 0.73445; diam 0.5; g-ratio 0.907374; number of lamellae 1, periaxonal space 14.5457
% 07: vel 0.252066; diam 0.5; g-ratio 0.986123; number of lamellae 0, periaxonal space 14.5457
% Table for 2 3:
% 1.50032	1	0.5	0.79	0.782414	3
% 1.15704	0.771198	0.5	0.840273	0.840273	2
% 0.73445	0.489529	0.5	0.907374	0.907374	1
% 0.252066	0.168008	0.5	0.986123	0.986123	0