% NoMoreHomework

% ESCRIU NOM I COGNOMS
% NOM     = 
% COGNOMS = 
%interval inicial i funcions g i h per calcular punts d'intersecció
a = -1;
b = 1;
g = @(x) sin(x);   %g definida inline
h = @(x) x.^2;   %h definida inline

% fem la gràfica de g i h per comprovar els punt d'intersecció
 % representa g en blau i amplada línia 2
fplot(g, [a b], '-b', 'LineWidth', 2)
 
grid on    %afegim una malla
hold on
fplot(h,[a b],':g','LineWidth',2)
legend('g(x)','h(x)','Location','northeast')
hold off
%No facis cas d'aquestes instruccions 
gr=gca;
if length(gr.Children) < 2
    % no s'ha fet la gràfica
    color = NaN;
    line = NaN;
    Xinterval = NaN;
else
    g2=gr.Children(2);
    color=g2.Color;
    line=g2.LineWidth;
    Xinterval=gr.XLim;
end

% Punt d'intersecció A, es veu directe de la gràfica
A = 0;

% Punt d'intersecció B per Newton
f = @(x) sin(x) - x.^2;   % f definida inline per calcular el zero B 
df = @(x) cos(x) - 2*x;   % f' definida inline
x0 = 0.5;                 % iterat inicial
n = 6;                    % escull un nombre d'iterats mínim de manera que t'asseguri d=2
B = newton(f, df, x0, n); % crida newton per calcular B
error_en_B = 9.84e-04;    % error a l'iterat n 
