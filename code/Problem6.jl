using Pkg
Pkg.add("XLSX")
import XLSX
xf = XLSX.readxlsx("Data/libor_rates_input_022819.xlsx")
sheetnames = XLSX.sheetnames(xf);
Table = xf[sheetnames[1]];
data = Table[:];