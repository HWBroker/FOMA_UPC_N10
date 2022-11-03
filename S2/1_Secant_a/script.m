% NoMoreHomework

% ESCRIU NOM I COGNOMS
% NOM     = 
% COGNOMS = 
%interval inicial i funció
a=-1;
b=3;
f= @(x) exp(1/exp(x^2+1)) - 0.5*x;  %la funció definida 'inline' on x és un vector
%ULL amb les operacions entre vectors ja que cal posar un . davant de *,^,/

% gràfica
fplot(f,[a b],'-b','LineWidth',2)
grid on    %afegim una malla
hold on    %sobreposem una línea a l'interval
plot([a b],[0 0],'-g','LineWidth',2) 
hold off
