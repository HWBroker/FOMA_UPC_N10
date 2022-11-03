% NoMoreHomework

% ESCRIU NOM I COGNOMS
% NOM     = 
% COGNOMS = 
%interval inicial i funció
a=0;
b=1;
f= @(x) exp(x) - 3*x; 

% càlcul n mínim
cotaerror= 5e-5;      % per assegurar d=4 decimals exactes
L=1;
n2=log2(L/cotaerror); % n calculat usant el log2 (surt decimal)
n=15                  % el nombre mínim de biseccions per tenir d decimals exactes (ha de ser natural)

% comprovem-ho
format long g         % posem format doble precisió per la sortida per pantalla
n=15;                 % nombre de biseccions
alpha=biseccio(f, a, b, n) % fa n passos de bisecció i guarda zero en la variable alpha
