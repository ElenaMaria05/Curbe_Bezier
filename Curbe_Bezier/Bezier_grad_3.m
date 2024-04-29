function Bezier_grad_3(t,b)
B03=(1-t).^3;
B13=t.*3.*(1-t).^2;
B23=3*(1-t).*t.^2;
B33=t.^3; 

f = B03.*b(:,1) + B13.*b(:,2) + B23.*b(:,3) + B33.*b(:,4);

plot(f(1,:),f(2,:),'k',LineWidth=1)
end