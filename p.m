function p 

in = (1:20)';
X = [in*0+1 in in.^2];
y = in+(in.^2)+5+0.000001*in.^3;

t = (X'*X)^-1*X'*y



close all

subplot(1,4,1);hold on
plot(in, y - X(:,2)*t(2) - X(:,3)*t(3))
plot(in, X(:,1)*t(1),'r')

subplot(1,4,2);hold on
plot(X(:,2), y - X(:,1)*t(1) - X(:,3)*t(3))
plot(X(:,2), X(:,2)*t(2),'r')

subplot(1,4,3);hold on
plot(X(:,3), y - X(:,1)*t(1) - X(:,2)*t(2))
plot(X(:,3), X(:,3)*t(3),'r')

subplot(1,4,4);hold on
plot(in, y)
plot(in, X*t, 'pr')



endfunction

