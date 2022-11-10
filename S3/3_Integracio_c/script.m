% NoMoreHomework

% ESCRIU NOM I COGNOMS
% NOM     = 
% COGNOMS = 
% funcions g i h i f

g = @(x) sin(x);       % g definida inline
h = @(x) x.^2;         % h definida inline
f = @(x) sin(x) - x.^2 % f definida inline per calcular el zero B 

%interval d'integració
A = 0;    % Punt d'intersecció A
B = 0.88; % Punt d'intersecció B amb 2 decimals

% Càlcul de T200 pel mètode de Simpson
format long
n = 200;
x = linspace(A, B, n+1); % n+1 punts equiespaiats entre A i B
y = f(x);                % els valors de f en x
S200=simpson(x,y)        % usant la funció simpson

% Càlcul cota error truncament  de S200
h = (B-A)/n              % Pas h

% càlculs previs per trobar M
M = max(sin(0.88))       % càlcul de M, directe usant max
cotaerror = 0;           % cota error de truncament Simpson
dmin = 11;               % decimals exactes que com a mínim té S200, a partir cotaerror

% Càlcul error exacte
tol=5e-15;                           % doble precissió, 15 decimals exactes
I = integral(f, A, B, 'AbsTol', tol) % valor exacte I calculat usant integral
error = abs(S200-I);                 % error de truncament en valor absolut quan es calcula S200
d = 11;                              % decimals exactes de S200
