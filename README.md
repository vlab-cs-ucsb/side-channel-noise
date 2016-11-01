# side-channel-noise
Quantification of side-channel leakage under noisy observations.

This is a collection of octave scripts for computing and visualizing side channel information leakage under noisy observations.

Basic functionality outputs a table of observations and corresponding leaked information with expected information leakage summarized at the end.




More advanced usage produces a visualization of 

Requires an installation of Octave. On Ubuntu:
apt-get install octave 

# Basic usage (leakage computation)

    octave leakage data/passwordData_length_3_overlap
	   Obs        Leakage
	   0.051602   2.000000
	   0.052309   2.000000
	   0.053016   2.000000
	   .
	   .
	   .
	   0.064330   1.277752
	   0.065037   1.456128
	   0.065744   1.408011
	   .
	   .
	   .	
	   0.120193   2.000000
	   0.120900   2.000000
	   0.121607   2.000000

	Expected Leakage = 1.5013
