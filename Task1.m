P = [0.5 0.2 0.3;
     0.4 0.4 0.2;
     0.4 0.1 0.5];
 
 visits = zeros(3, 1);
 
 for it = 1:1000
    current_state = round(rand()*2)+1;
    
    for day = 1:365
       visits(current_state) = visits(current_state) + 1;
       current_state_transation = P(current_state, :);
       current_state = state_sample(current_state_transation);
    end
 end
 
 visits = visits ./ sum(visits);
 
 visits
 
 [V, D] = eig(P');
 
 theory_visits = V(:, 1) ./ sum(V(:, 1))