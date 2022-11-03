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
n=6;                        % nombre d'iteracions
alpha=secant(f, x0, x1, n); % fa n iterats de secant i guarda zero en la variable alpha
x6=2.3352231374445624;      % escriu l'iterat x6 (després de veure els resultats de la secant)
fx6=f(x6);                  % escriu quan val f(x6) (idem)
error_x6=0;                 % escriu la precisió o error de x6
d=7;                       % escriu els decimals exactes que té x6 (després de veure l'error)
