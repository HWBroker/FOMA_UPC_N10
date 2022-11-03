% NoMoreHomework

% ESCRIU NOM I COGNOMS
% NOM     = 
% COGNOMS = 
%interval inicial i funció
a=0;
b=1;
f= @(x) exp(x) - 3*x; 

% càlcul n mínim
cotaerror=5e-9;       % per assegurar d=8 decimals exactes
L=1;
n2=log2(L/cotaerror); % n calculat usant el log2, surt amb decimals 
n=28;                 % el mínim nombre de biseccions per obtenir el zero amb d decimals

% comprovem-ho
format long g           % posem format doble precisió per la sortida per pantalla
n=28;                   % nombre de biseccions
alpha=biseccio(f, a, b, n); % fa n passos de bisecció i guarda zero en la variable alpha
alpha_aprox=0.61906128   % amb els decimals exactes
