% NoMoreHomework

% ESCRIU NOM I COGNOMS
% NOM     =
% COGNOMS =
% interval inicial i funcions g i h per calcular punts d'intersecció
% funcions g i h i f

g = @(x) sin(x);         % g definida inline
h = @(x) x.^2;           % h definida inline
f = @(x) sin(x) - x.^2;  % f definida inline per calcular el zero B 

%interval d'integració
A = 0;                   % Punt d'intersecció A
B = 0.88;                % Punt d'intersecció B amb 2 decimals

% Càlcul de T200 pel mètode dels Trapecis
format long g
n = 200;
x = linspace(A, B, n+1); % n+1 punts equiespaiats entre A i B
y = f(x);                % els valors de f en x
T200 = trapz(x, y)       % usant la funció de Matlab trapz

% Càlcul cota error de T200
h = (B-A)/n % Pas h

f2=@(x) abs(-sin(x)-2);              % abs(f'') inline
y2=f2(x);                            % abs(f''(x))
fplot(f2,[A B],'-b','LineWidth',2)   % gràfica abs(f'') per calcular M
M = max(y2)                          % càlcul de M, directe usant max
cotaerror = ((B-A)*h^2)*(M/12)       % cota error Trapecis  
dmin = 5                             % decimals exactes que com a mínim té T200, a partir cotaerror

% Càlcul solució exacta i error exacte
tol=5e-15;                           % doble precissió, 15 decimals exactes
I = integral(f, A, B, 'AbsTol', tol) % valor exacte I calculat usant integral
error = T200 - I                     %error de truncament en valor absolut quan es calcula T200
d = 5                                %decimals exactes de T200
