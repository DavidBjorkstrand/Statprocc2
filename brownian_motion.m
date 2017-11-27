function X = brownian_motion(delta_t, t)
%BROWNIAN_MOTION Summary of this function goes here
%   Detailed explanation goes here

k = int16(t / delta_t);
X = zeros(k, 1);

for i = 1:k
    X(i) = normrnd(0, sqrt(delta_t));

end

