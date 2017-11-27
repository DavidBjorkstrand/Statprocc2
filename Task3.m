
S_homogen = homogen_poisson(10);
S_non_homogen = non_homogen_poisson(10);
S_total = sort([S_homogen S_non_homogen]);

figure;
stairs(S_homogen, 1:length(S_homogen));

figure;
stairs(S_non_homogen, 1:length(S_non_homogen));

figure;
stairs(S_total, 1:length(S_total));

length(S_total)

