function S = non_homogen_poisson( T , lambda)
%NON_HOMOGEN_POISSON Summary of this function goes here
%   Detailed explanation goes here

lambda_max = 2.5;

t = 0;
I = 0;
S = [];
lambda = @(t) (t*(10-t)) / 10;

while t <= T
    u = rand();
    X = -(1 / lambda_max)*log(u);
    t = t + X;
    
    u = rand();
    if u <= (lambda(t) / lambda_max)
       I = I + 1;
       S(I) = t;
    end
end

end

