%%% Run a single axon model

%%% single axons are run multiple times with different parameters, finally
%%% a figure is produced showing the membrane trace for the different
%%% parameters
jtm = 4; % The length of time to run the simulation (in milliseconds)

jdiam = 2; % The diameter of the single axon. 1 = average diameter, 0.5 = small diamter, 2 = large diameter

%naxon = jCreateAxon03CorpusCallosum(jtm, jdiam, 1, 0, 1, 1,750, 0, 1);
naxon = jCreateAxon03OpticNerveAxon(jtm, jdiam, 1, 1, 1, 1,750, 0, 1);
[a01, b01, t01] = Model(naxon, [], 0);
jvel01 = velocities(a01, b01, t01(2)-t01(1), [1 naxon.geo.nnode], 'max', -40);
fprintf('01: vel %g; diam %g; g-ratio %g; number of lamellae %d, periaxonal space %g\n', jvel01, naxon.node.geo.diam.value.ref, naxon.myel.geo.gratio.value.ref, mean(naxon.myel.geo.numlamellae.value.vec(:)), mean(naxon.myel.geo.peri.value.vec(:)));

%naxon = jCreateAxon03CorpusCallosum(jtm, jdiam, 1, 1, 1, 1.025,750, 0, 1);
naxon = jCreateAxon03OpticNerveAxon(jtm, jdiam, 1, 1, 1, 1.025,750, 0, 1);
[a02, b02, t02] = Model(naxon, [], 0);
jvel02 = velocities(a02, b02, t02(2)-t02(1), [1 naxon.geo.nnode], 'max', -40);
fprintf('01: vel %g; diam %g; g-ratio %g; number of lamellae %d, periaxonal space %g\n', jvel02, naxon.node.geo.diam.value.ref, naxon.myel.geo.gratio.value.ref, mean(naxon.myel.geo.numlamellae.value.vec(:)), mean(naxon.myel.geo.peri.value.vec(:)));

%naxon = jCreateAxon03CorpusCallosum(jtm, jdiam, 1, 1, 1, 1.05,750, 0, 1);
naxon = jCreateAxon03OpticNerveAxon(jtm, jdiam, 1, 1, 1, 1.05,750, 0, 1);
[a03, b03, t03] = Model(naxon, [], 0);
jvel03 = velocities(a03, b03, t03(2)-t03(1), [1 naxon.geo.nnode], 'max', -40);
fprintf('01: vel %g; diam %g; g-ratio %g; number of lamellae %d, periaxonal space %g\n', jvel03, naxon.node.geo.diam.value.ref, naxon.myel.geo.gratio.value.ref, mean(naxon.myel.geo.numlamellae.value.vec(:)), mean(naxon.myel.geo.peri.value.vec(:)));

%naxon = jCreateAxon03CorpusCallosum(jtm, jdiam, 1, 1, 1, 1.1,750, 0, 1);
naxon = jCreateAxon03OpticNerveAxon(jtm, jdiam, 1, 1, 1, 1.1,750, 0, 1);
[a04, b04, t04] = Model(naxon, [], 0);
jvel04 = velocities(a04, b04, t04(2)-t04(1), [1 naxon.geo.nnode], 'max', -40);
fprintf('01: vel %g; diam %g; g-ratio %g; number of lamellae %d, periaxonal space %g\n', jvel04, naxon.node.geo.diam.value.ref, naxon.myel.geo.gratio.value.ref, mean(naxon.myel.geo.numlamellae.value.vec(:)), mean(naxon.myel.geo.peri.value.vec(:)));

%naxon = jCreateAxon03CorpusCallosum(jtm, jdiam, 1, 0, 1, 1,750, 1, 1);
naxon = jCreateAxon03OpticNerveAxon(jtm, jdiam, 1, 0, 1, 1,750, 1, 1);
[a05, b05, t05] = Model(naxon, [], 0);
jvel05 = velocities(a05, b05, t05(2)-t05(1), [1 naxon.geo.nnode], 'max', -40);
fprintf('01: vel %g; diam %g; g-ratio %g; number of lamellae %d, periaxonal space %g\n', jvel05, naxon.node.geo.diam.value.ref, naxon.myel.geo.gratio.value.ref, mean(naxon.myel.geo.numlamellae.value.vec(:)), mean(naxon.myel.geo.peri.value.vec(:)));

%naxon = jCreateAxon03CorpusCallosum(jtm, jdiam, 1, 0, 1, 1,750, 2, 1);
naxon = jCreateAxon03OpticNerveAxon(jtm, jdiam, 1, 0, 1, 1,750, 2, 1);
[a06, b06, t06] = Model(naxon, [], 0);
jvel06 = velocities(a06, b06, t06(2)-t06(1), [1 naxon.geo.nnode], 'max', -40);
fprintf('01: vel %g; diam %g; g-ratio %g; number of lamellae %d, periaxonal space %g\n', jvel06, naxon.node.geo.diam.value.ref, naxon.myel.geo.gratio.value.ref, mean(naxon.myel.geo.numlamellae.value.vec(:)), mean(naxon.myel.geo.peri.value.vec(:)));

%naxon = jCreateAxon03CorpusCallosum(jtm, jdiam, 1, 0, 1, 1,750, 3, 1);
naxon = jCreateAxon03OpticNerveAxon(jtm, jdiam, 1, 0, 1, 1,750, 3, 1);
[a07, b07, t07] = Model(naxon, [], 0);
jvel07 = velocities(a07, b07, t07(2)-t07(1), [1 naxon.geo.nnode], 'max', -40);
fprintf('01: vel %g; diam %g; g-ratio %g; number of lamellae %d, periaxonal space %g\n', jvel07, naxon.node.geo.diam.value.ref, naxon.myel.geo.gratio.value.ref, mean(naxon.myel.geo.numlamellae.value.vec(:)), mean(naxon.myel.geo.peri.value.vec(:)));

fprintf(1, '%g %g %g %g %g %g %g\n', jvel01, jvel02, jvel03, jvel04, jvel05, jvel06, jvel07);
fprintf(1, '%g %g %g %g %g %g\n', jvel02/jvel01, jvel03/jvel01, jvel04/jvel01, jvel05/jvel01, jvel06/jvel01, jvel07/jvel01);
fprintf(1, '%g\t%g\n%g\t%g\n%g\t%g\n%g\t%g\n%g\t%g\n%g\t%g\n%g\t%g\n', jvel01, jvel01/jvel01, jvel02, jvel02/jvel01, jvel03, jvel03/jvel01, jvel04, jvel04/jvel01, jvel05, jvel05/jvel01, jvel06, jvel06/jvel01, jvel07, jvel07/jvel01);
figure;
jv = size(a01);
jp = zeros(jv(1),4);
jp(:,1) = a01(:,naxon.geo.nnode);
jp(:,2) = a02(:,naxon.geo.nnode);
jp(:,3) = a03(:,naxon.geo.nnode);
jp(:,4) = a04(:,naxon.geo.nnode);
plot(jp);
