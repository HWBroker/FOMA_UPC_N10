% NoMoreHomework

% ESCRIU NOM I COGNOMS
% NOM     =
% COGNOMS =
%iterats inicials i funció
x0=1;
x1=2;
f= @(x) exp(1./(x.^2+1)) - 0.5*x; %definida inline

% càlcul del zero per secant
format long g               % posem format doble precisió per la sortida per pantalla
n=12;                       % nombre d'iteracions
alpha=secant(f, x0, x1, n); % fa n iterats de secant i guarda zero en la variable alpha
nmin=4;                     % mínim nombre iteracions per tenir almenys d=2 decimals exactes
error=4.40e-03              % escriu la precisió o cota de l'error a l'iterat nmin
alpha_aprox=2.34            % escriu el zero amb 2 decimals exactes
