%NoMoreHomework

% ESCRIU NOM I COGNOMS
% NOM     = 
% COGNOMS = 
%interval inicial i funció
a = 0
b = 1
f = @(x) exp(x) - 3*x %la funció definida 'inline'

% gràfica
fplot(f,[a b],'-b','LineWidth',2)
grid on    %afegim una malla
hold on    %sobreposem una línea a l'interval
plot([a b],[0 0],'-g','LineWidth',2) 
hold off
