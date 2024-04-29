function Bezier_grad_2(t,b)
B02=(1-t).^2;
B12=2*(1-t).*t;
B22=t.^2;

f = B02.*b(:,1) + B12.*b(:,2) + B22.*b(:,3);

plot(f(1,:),f(2,:),'k',LineWidth=1)
end