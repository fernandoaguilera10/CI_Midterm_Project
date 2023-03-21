%% Simulations of Cochlear Implant Signal Processing
% BME 511 - Biomedical Signal Processing
% Authors: Fernando Aguilera de Alba & Aikya Chirra
% Date: 24 March 2023
%% PART A - INTRO TO CI SIGNAL PROCESSING
%% A) Filter banks
clc;
Nb = [1 2 4 8 16];      % number of frequency bands
Fmin = 0;	% lower frequency of filterbank in Hz
Fmax = 4000;	% upper frequency of filterbank in Hz
Fco = [];
for nb = Nb
    % determine band cutoffs equally spaced on basilar membrane
    Fco = equal_xbm_bands(Fmin, Fmax, nb);
end

name1 = 'Mt10.wav';
name2 = 'Mt190.wav';
make_band_chimeras(name1, 'noise', Nb, 1, 1);
%% PART B - FREQUENCY MODULATION (FM) TO IMPROVE CI SIGNAL PROCESSING