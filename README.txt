This is the code used in all simulations for Blades et al. 2022. The code simulates a single axon model and a compound action potential. This code can reproduce Figures 5 and 6 in the paper. Any use of this code should cite the following reference:

Blades F, Chambers JD, Aumann TD, Nguyen CTO, Wong VHY, Aprico A, Nwoke EC, Bui BV, Grayden DB, Kilpatrick TJ, Binder MD (in press) White matter tract conductivity is resistant to wide variations in paranodal structure and myelin thickness accompanying the loss of Tyro3: An experimental and simulated analysis, Brain Structure and Function, accepted 25 March 2022.

The original single axon model was downloaded from https://github.com/AttwellLab/MyelinatedAxonModel. That model was based on previously published models (Arancibia-Cárcamo et al., 2017; Bakiri et al., 2011; Richardson et al., 2000).

Usage:
1. Unzip the folder contents.
2. Open matlab and change directories to folder with the unzipped content.
3. Execute the script jSNrun or jCAPrun by typing the name at the matlab command prompt.

The script jSNrunFULL will run the single axon model multiple times to produce the results in Figure 5. Alternatively, jSNrun can be called mulitple times multiple times with the appropriate parameters and functions (see comments in script) to produce all results in Figure 5.

The script jCAPrunFULL will run the compound action potential model multiple times to produce the results in Figure 6. Alternatively, jCAPrun can be called multiple times with the appropriate parameters to produce Figure 6A, C and D (see comments in script). To produce Figure 6B, see comments in file jaxon03.m.
Note, that jaxon03 can be altered to use parallel programming to speed up the stimulations. Please change lines 43 and 44 to use parpool with appropriate settings for your system.
