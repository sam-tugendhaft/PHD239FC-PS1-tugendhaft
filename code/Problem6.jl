using Pkg
Pkg.add("XLSX")
import XLSX
using Dates
xf = XLSX.readxlsx("Data/libor_rates_input_022819.xlsx")
sheetnames = XLSX.sheetnames(xf);
Table = xf[sheetnames[1]];
data = Table[:];

settlement_date = Date(2019,3,4);
N = size(data);
date =  Vector{DateTime}(N[1])
for i in 2:N[1]
    if data[i,2] == "MO"
       date[i-1] = settlement_date + Month(data[i,1]);
    elseif data[i,2] == "ACTDATE"
        date[i-1] = Date(string(data[i,1]),"yyyymmdd");
    else
        date[i-1] = settlement_date + Year(data[i,1]);
    end
end