% NoMoreHomework

% ESCRIU NOM I COGNOMS
% NOM     = 
% COGNOMS = 
%iterat inicial i funció i derivada inline
x0 = 1.5;
f = @(x) exp(1./(x.^2+1)) - 0.5*x;  %f(x)
df = @(x) exp(1./(x.^2+1)).*(-2*x./(x.^2+1).^2) - 0.5; %f'(x)

% Càlcul del zero per Newton
format long g           % posem format doble precisió per la sortida per pantalla
n = 10;                 % nombre d'iteracions
alpha= newton(f,df,x0,n)% fa n iterats de newton i guarda zero en la variable alpha 

% Observant la sortida de Newton omple:
nmin = 6;          % Escriu el nombre mínim iterats per tenir d=13 decimals exactes    
error = 3.52e-16;  % Escriu l'error a l'iterat nmin
fxnmin= -2.22e-16; % Escriu el valor de la funció a l'iterat nmin
%Convergència quadràtica
d_n3 = 2           % Escriu el decimals exactes que es pot assegurar a n=3
d_n4 = 5           % Escriu el decimals exactes que es pot assegurar a n=4
d_n5 = 12          % Escriu el decimals exactes que es pot assegurar a n=5
c = 1              % escriu 1 si hi ha convergència o 0 si no n'hi ha
