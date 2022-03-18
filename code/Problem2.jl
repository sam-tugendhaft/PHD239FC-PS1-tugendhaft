# Part a
spot = [.05,.06,.07];
Z = 1 ./ (1 .+ spot).^(1:3);
f = zeros(3,);
f[1] = spot[1];
for t in 2:3
    f[t] = Z_bond_price[t-1]/Z_bond_price[t] - 1;
end

# Part b 
X = 1000*Z[1]
num_3yr_bonds = X/Z[3]
1000*(1+f[2])*(1+f[3]) == num_3yr_bonds # Sanity check