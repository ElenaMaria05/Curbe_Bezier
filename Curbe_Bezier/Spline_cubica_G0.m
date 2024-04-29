function Spline_cubica_G0(t,e)
n=length(e);
E03=(1-t).^3;
E13=t.*3.*(1-t).^2;
E23=3*(1-t).*t.^2;
E33=t.^3; 
E=[E03;E13;E23;E33];

portiuni=(n-1)/3;%pentru a determina numarul de portiuni de pe curba . Acest lucru se datorează faptului că spline-urile cubice necesită patru puncte de control
i=1;
segment=1;
while segment<=portiuni
hold on;
h=e(:, i:i+3)*E; % extragem cele 4 puncte de control din curba curenta si realizam matricea curbei
plot(h(1, :), h(2, :),'k',LineWidth=1);
segment=segment+1; % trecem la următoarea porțiune
i=i+3; % trecem la următorul set de 4 puncte
end
end