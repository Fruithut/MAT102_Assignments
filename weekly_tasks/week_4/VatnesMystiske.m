function [ y ] = VatnesMystiske( x )
%VatnesMystiske er en funksjon vi ikke kan behandle analytisk
%   Vi skal bruke funksjonen som eksempel flere ganger, i forbindelse
%   med plotting, derivasjon, integrasjon
%   Skrevet av Jon Eivind Vatne, januar 2013

y = 10000*besselj(6,abs(cos(x))).*(-x);

end

