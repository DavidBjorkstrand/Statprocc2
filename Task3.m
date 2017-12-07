S_total_total = 0;

for i = 1:1000
    S_homogen = homogen_poisson(10);
    S_non_homogen = non_homogen_poisson(10);
    S_total = sort([S_homogen S_non_homogen]);
    
    S_total_total = S_total_total + length(S_total);
end


figure;
stairs(S_homogen, 1:length(S_homogen));

figure;
stairs(S_non_homogen, 1:length(S_non_homogen));

figure;
stairs(S_total, 1:length(S_total));

S_total_total = S_total_total / 1000

