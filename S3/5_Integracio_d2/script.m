% ESCRIU NOM I COGNOMS
% NOM     =
% COGNOMS =

%funcions g i h i f
g = @(x) sin(x);    % g definida inline
h = @(x) x.^2;      % h definida inline
f = @(x) g(x)-h(x); % f definida inline per calcular l'àrea

%interval d'integració
A = 0;              % Punt d'intersecció A
B = 0.88;           % Punt d'intersecció B amb 2 decimals

% Càlcul de n que garanteixi  tenir d=10 decimals exactes
% ho farem usant la cota de l'error de truncament de Simpson
format long g
M= 0.77;                               % M de l'apartat (c)
cotaerror = 5e-11;                     % cota per garantir d=10 decimals exactes
n2 = ((B-A)^5*M/(180*cotaerror))^(1/4) % pronostic n amb decimals

% Càlcul Sn 
n = floor(n2) + 1;                     % el nombre natural per sobre n2
x = linspace(A, B, n+1);               % n+1 punts equiespaiats entre A i B
y = f(x);                              % els valors de f en x
Sn = simpson(x,y)                      % usant la funció Simpson 

% Comprovació que Sn té 10 decimals exactes
% Càlcul error exacte
tol=5e-15;                             % doble precissió, 15 decimals exactes
I = integral(f, A, B, 'AbsTol', tol)   % valor exacte I calculat usant Integral amb 15 decimals exactes
error = abs(Sn-I);                     % error de truncament en valor absolut quan es calcula Sn
