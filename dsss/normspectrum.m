function [f, mag] = normspectrum(test, Fs)
L = length(test);
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(test,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);
mag = 2*abs(Y(1:NFFT/2+1));%./norm(Y(1:NFFT/2+1));
end