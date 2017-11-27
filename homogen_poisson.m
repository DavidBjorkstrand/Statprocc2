function S = homogen_poisson(T)
%HOMOGEN_POISSON Summary of this function goes here
%   Detailed explanation goes here

t = 0;
I = 1;
lambda = 3;
S = [];
while t <= T
    S(I) = t;
    u = rand();
    X = -(1/lambda)*log(u);
    t = t + X;
    I = I + 1;
end

end

