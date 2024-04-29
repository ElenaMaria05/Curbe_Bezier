function Bezier_grad_4(t,b)
B04=(1-t).^4;
B14=4.*(1-t).^3.*t;
B24=6.*(1-t).^2.*t.^2;
B34=4.*(1-t).*t.^3;
B44=t.^4;

f = B04.*b(:,1) + B14.*b(:,2) + B24.*b(:,3) + B34.*b(:,4) + B44.*b(:,5);

plot(f(1,:),f(2,:),'k',LineWidth=1)
end