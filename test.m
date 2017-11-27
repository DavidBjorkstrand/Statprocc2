
S_0 = 100;
sigma = 0.1;
r = 0.04;
W = @(t) normrnd(0, sqrt(t));
S = @(t) S_0*exp((r - (sigma^2 / 2))*t + sigma*W(t));

Y = zeros(1000, 1);
X = zeros(1000, 1);

i = 1
for t = 0:0.001:10
    X(i) = t;
    Y(i) = S(t);
    i = i + 1;
end

plot(X,Y);