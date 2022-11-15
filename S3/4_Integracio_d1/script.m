% ESCRIU NOM I COGNOMS
% NOM     = 
% COGNOMS = 
% funcions g i h i f
g= @(x) sin(x);    % g definida inline
h= @(x) x.^2;      % h definida inline
f= @(x) g(x)-h(x); % f definida inline per calcular l'àrea

%interval d'integració
A=0;               % Punt d'intersecció A
B=0.88;            % Punt d'intersecció B amb 2 decimals

% Càlcul de n que garanteixi  tenir d=10 decimals exactes
% ho farem usant la cota de l'error
format long g
M= 2.77;                          % La M cota |f''|
cotaerror = 5e-11;                % cota per garantir d=10 decimals exactes
n2 = sqrt((B-A)^3*M/12/cotaerror) % pronostic n amb decimals 

% Càlcul Tn 
n = floor(n2) + 1;                % el nombre natural per sobre n2
x = linspace(A, B, n+1);          % n+1 punts equiespaiats entre A i B
y=f(x);                           % els valors de f en x
Tn = trapz(x, y)                  % usant la funció trapz de Matlab

% Comprovació que Tn té 10 decimals exactes
%   Càlcul error exacte
tol=5e-15;                           % doble precissió, 15 decimals exactes
I = integral(f, A, B, 'AbsTol', tol) % valor exacte I calculat usant Integral
error = I - Tn                       % error de truncament en valor absolut quan es calcula Tn
