
% v(1) = x
% v(2) = y
% v(4) = z

t = linspace(0,2000);
f = @(t,v) [tau*v(2) - beta*v(1) - d1*v(1) - (beta1*v(1)*v(3))/(v(3)+k1*v(1)+k2*v(2)) ;
    beta*v(1) - d2*v(2) - alpha*v(2)^2 - (beta2*v(2)*v(3))/(v(3)+k1*v(1)+k2*v(2));
    (mu*beta1*v(1)*v(3))/(v(3)+k1*v(1)+k2*v(2)) + (mu1*beta2*v(2)*v(3))/(v(3)+k1*v(1)+k2*v(2)) - d3*v(3) - eta*v(2)*v(3) ];
[t,v]=ode45(f,t,[0,0,0]);
plot(t,v)



