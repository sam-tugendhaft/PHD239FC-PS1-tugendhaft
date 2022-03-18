## Part a
FV = 1000000;
r = .0525;
r = r/12;
T = 360;

C = FV*r/(1-1/(1+r)^T);

## Part b
T_new = T-100;
P = C/r * (1-1/(1+r)^T_new);

# Part c 
interest = zeros(T,1);
Principal = FV;
for t in 1:T
    interest[t] = Principal*r;
    Principal = Principal - C + interest[t];
end

Total_interest_year10 = sum(interest[109:120]);