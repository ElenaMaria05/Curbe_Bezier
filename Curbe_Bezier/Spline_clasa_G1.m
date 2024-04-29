function Spline_clasa_G1(t,b)
hold on;
    B0 = (1-t).^4;
    B1 = 4*t.*(1-t).^3;
    B2 = 6*t.^2.*(1-t).^2;
    B3 = 4*t.^3.*(1-t);
    B4 = t.^4;
    B = [B0; B1; B2; B3; B4];
for i = 1:2:length(b)-3% o curbă spline cubică necesită patru puncte de control pentru a fi definită
    b0 = b(:, i);
    b1 = b(:, i) + (b(:, i+1) - b(:, i))/3; %este calculat astfel încât să fie deplasat cu o treime din direcția spre al doilea punct de control b(:, i+1). Acest punct asigură continuitatea pantei la capătul din stânga al segmentului de curbă.
    b2 = b(:, i) + (b(:, i+1) - b(:, i))/3 + (b(:, i+1) - b(:, i))/3;
    b3 = b(:, i+1) - (b(:, i+1) - b(:, i))/3 + (b(:, i+2) - b(:, i+1))/3;
    b4 = b(:, i+2);
    f = [b0, b1, b2, b3, b4] * B;
    plot(f(1, :), f(2, :), 'k',LineWidth=1);

end
end