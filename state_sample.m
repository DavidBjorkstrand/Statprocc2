function X = state_sample(p)
%STATE_SAMPLE Summary of this function goes here
%   Detailed explanation goes here


u = rand();

if u < p(1)
    X = 1;
elseif u < (p(2) + p(1))
     X = 2;
else
    X = 3;
    

end

