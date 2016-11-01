# side-channel-noise
Quantification of side-channel leakage under noisy observations.

This is a collection of octave scripts for computing and visualizing side channel information leakage under noisy observations.

Basic functionality outputs a table of observations and corresponding leaked information with expected information leakage summarized at the end.

More advanced usage produces a visualization of the conditional entropy computation.

Requires an installation of Octave. On Ubuntu:
apt-get install octave

# Input Format



	# Created by Octave 3.8.1, Mon Jul 11 00:21:31 2016 PDT <lucas@hellyeah>
	# name: data
	# type: matrix
	# rows: 1002
	# columns: 4
	 0 1 2 3
	 0.75 0.1875 0.046875 0.015625
	 0.08476805686950684 0.1006350517272949 0.1691451072692871 0.2064101696014404
	 0.0738990306854248 0.1213130950927734 0.1603310108184814 0.203639030456543
	 0.06299209594726562 0.1218612194061279 0.1622838973999023 0.2065389156341553
	 0.08266305923461914 0.1234049797058105 0.1639530658721924 0.2007169723510742


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

# Visualization

Inside src directroy, from within an Octave session, run detailedPasswordExample to see how the visualization works.


	$ octave
	octave >> detailedPasswordExample

This produces 

1. Plot of the raw data (top left).
2. Vertical distribution plot of the raw data (top left).
3. Distribution overlay for each observable (middle left).
4. Normalized log distributions for each observable (bottom left).
5. Animated conditional probability bar chart (middle right).
6. Leakage vs Observation plot (bottom right). 


![Alt text](visual-leak.png?raw=true "Leakage Visualization.")