
r = 0.04;
sigma = 0.1;
delta_t = 0.001;

S = @(t, S) S*exp((r - (sigma^2 / 2))*t + sigma*normrnd(0, sqrt(t)));

N = 1000;
profit = zeros(N, 1);
sell_before_t10 = zeros(N, 1);
for it = 1:N
    S_0 = 100;
    sold = false;
    for t = 0:delta_t:10
        price = S(delta_t, S_0);
        S_0 = price;
        if price >= 150
            profit(it) = 50;
            sell_before_t10(it) = 1;
            sold = true;
            break;
        end
    end
    
    if ~sold
        profit(it) = (price - S_0);
    end
  
end

prob_sell_before_t10 = sum(sell_before_t10) / N

mean_profit = mean(profit)
stderr = sqrt((1 / (N - 1))*sum((profit - mean_profit).^2)) / sqrt(N);
CI_l = mean_profit - 1.96*stderr
CI_u = mean_profit + 1.96*stderr