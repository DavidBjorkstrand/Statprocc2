function X = m_normal()

f = @(x) (1 / (sqrt(2*pi))) * exp(-x^2 / 2);
g = @(x) (1 / pi) * (1 / (1 + x^2));

%c = 0.9177;
c = 1.533;
y = m_cauchy();
u = rand();

while u > (f(y) / (c*g(y)))
    y = m_cauchy();
    u = rand();
end

X = y;


end

