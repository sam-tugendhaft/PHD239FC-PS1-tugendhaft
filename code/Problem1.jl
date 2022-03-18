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
Period = 10; # year of interest ;)
N = 12; # Number of payments per year.

interest = zeros(T,1);
global Princ = FV;
for t in 1:T
    interest[t] = Princ*r;
    global Princ = Princ - C + interest[t];
end

Total_interest_year10 = sum(interest[(Period-1)*N+1:Period*N]);