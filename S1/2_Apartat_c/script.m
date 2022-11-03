% NoMoreHomework

% ESCRIU NOM I COGNOMS
% NOM     = 
% COGNOMS = 
%interval inicial i funció
a= 0
b= 1
f= @(x) exp(x) - 3*x         %la funció definida 'inline'

			     % càlcul del zero per bisecció
format long g                % posem format doble precisió per la sortida per pantalla
n = 6                        % nombre de biseccions
alpha = biseccio(f, a, b, n) % crida a la biseccio que fa n passos  i guarda zero en la variable alpha

% L és la longitud inicial
L = 1
% La cotaerror al fer n=6 biseccions és
cotaerror = 0.015625
% d és el nombre de decimals exactes
d = 1
