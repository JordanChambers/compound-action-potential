function mjp = jaxon03(jfac1b, jfac2b, jfac3b, jfac4b, jfac5b, jfac6b, jfacDis, jfacpas)
%%% jaxon - Simulates a CAP
%%% returns mjp - a vector describing the CAP potential, which is the mean
%%% of all single axon models
%%% Input - jfac1b - describes node and internode diameter
%%%       - jfac2b - describes node length
%%%       - jfac3b - reduce the number of lamellae above this axon diameter
%%%       - jfac4b - describes internode length
%%%       - jfac5b - describes g-ratio
%%%       - jfac6b - reduce the number of lamellae by this many
    jreps = 400; % Number of single axons in the CAP model
    rng(3);
    
    %To produce Figure 6B, the random distributions below need to be
    %removed (for jfac1, jfac2, ..., jfac7).
    jfac1 = jfac1b + 0*randn(1,jreps);%node diameter and internode diameter %% 0.61 + 0.37 (using 0.25)
    jfac2 = jfac2b + 0*randn(1,jreps);%node length %% using 1+0.1
    jfac3 = jfac3b + 0*randn(1,jreps);
    jfac4 = jfac4b + 0*randn(1,jreps);%internode length %% using 1+0.1
    jfac5 = jfac5b + 0*randn(1,jreps);%g-ratio %% 0.7025 + 0.0356; 0.7266 + 0.0240
    jfac7 = 1 + 0*randn(1,jreps);%0.1
    jfacpasv = jfacpas + 0*randn(1,jreps);%0.25
    jfacpasv(jfacpasv<0.3) = 0.3;
    

    jabc = sort(jfac1);
    jfac3(:) = jabc(end-jfac3b) - 0.001;
    jcntfac = 0;
    for i = 1:jreps
        if jfac1(i) > jfac3(i)
            jcntfac = jcntfac + 1;
        end
    end
    %fprintf('jcntfac is %d\n', jcntfac);
    jtm = 4;
    t = 1 + jtm/(0.1*1e-3);
    jdata = zeros(t, jreps);
    jvels = zeros(jreps,1);
    jvals = zeros(jreps,1);
    jlams = zeros(jreps,1);
    jlpas = zeros(jreps,1);
    %parpool(4); %% For running in parallel
    parfor i=1:jreps %% For running in parallel
    %for i = 1:jreps %% For running in serial
        %naxon = jCreateAxon03OpticNerveAxon(jfac1(i),jfac2(i),jfac3(i),jfac4(i),jfac5(i),5000);
        %naxon = jCreateAxon03CorpusCallosum(jtm, jfac1(i),jfac2(i),jfac3(i),jfac4(i),jfac5(i),750, jfac6b);
        naxon = jCreateAxon03CorpusCallosum(jtm, jfac1(i),jfac2(i),jfac3(i),jfac4(i),jfac5(i),jfacDis, jfac6b, jfacpasv(i));
        [a02, b02, t02] = Model(naxon, [], 0);
        %jvel = velocities(a02, b02, t02(2)-t02(1), [10 naxon.geo.nnode-10], 'max', -40);
        jvel = velocities(a02, b02, t02(2)-t02(1), [1 naxon.geo.nnode], 'max', -40);
        jvels(i) = jvel;
        g = simunits(naxon.intn.seg.geo.diam.units) * naxon.intn.seg.geo.diam.value.vec ./ ((2 * simunits(naxon.myel.geo.width.units) * naxon.myel.geo.width.value.vec + 2 * simunits(naxon.myel.geo.peri.units) * naxon.myel.geo.peri.value.vec + simunits(naxon.intn.seg.geo.diam.units) * naxon.intn.seg.geo.diam.value.vec));
        jvals(i) = mean(g(:));
        jlpas(i) = mean(naxon.myel.geo.peri.value.vec(:));
        jlams(i) = mean(naxon.myel.geo.numlamellae.value.vec(:));
        jdata(:,i) = jfac7(i)*a02(:,naxon.geo.nnode);
    end
    %plot individual axon data
    figure;
    plot(jdata);
    %plot CAP (mean of all individual axons
    figure;
    mjp = mean(jdata');
    plot(mjp);
    ja = max(jdata);
    jp = find(ja<-40);
    js = size(jp);
    [jax,ijax] = max(mjp);
    [jin,ijin] = min(mjp);
    jh = 0.5*(jax-jin) + jin;
    [x,y] = find(mjp>jh);
    %fprintf(1, 'mean results: velocity %g, g-ratio %g, number of lamellae %g, peak time %g msec, half-width %g msec, %d axons without AP\n', mean(jvels(:)), mean(jvals(:)), mean(jlams(:)), ijax/10, (y(end)-y(1))/10, js(2));
    fprintf(1, 'mean results: velocity %g, g-ratio %g, number of lamellae %g, periaxonal space %g, peak time %g msec, half-width %g msec, %d axons without AP\n', mean(jvels(:)), mean(jvals(:)), mean(jlams(:)), mean(jlpas(:)), ijax/10, (y(end)-y(1))/10, js(2));
end
