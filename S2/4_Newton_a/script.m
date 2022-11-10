% NoMoreHomework

% ESCRIU NOM I COGNOMS
% NOM     = 
% COGNOMS = 
%interval inicial i funció
a = -0.5;
b = 3.5;
f = @(x) exp(1./(x.^2+1)) - 0.5*x;  %la funció definida 'inline' on x és un vector
%ULL amb les operacions entre vectors ja que cal posar un . davant de *,^,/

% Fes la gràfica de f tal com et demanen
fplot(f, [a b], '-r', 'LineWidth', 3)

grid on    %afegim una malla
hold on    %sobreposem una línea a l'interval
plot([a b],[0 0],'-g','LineWidth', 3) 
hold off
%No facis cas d'aquestes instruccions 
g=gca;
if length(g.Children) < 2
    % no s'ha fet la gràfica
    color = NaN;
    line = NaN;
    Xinterval = NaN;
else
    g2=g.Children(2);
    color=g2.Color;
    line=g2.LineWidth;
    Xinterval=g.XLim;
end
