function[cost,material]=RetainingCost(Nt,Ns)
Nt=7;
Ns=4;
Ct= 1500*Nt;

Cs=2000*Ns+5000;

if Ct>Cs 
    cost=Cs;
    material= 'timber';
else
    cost=Ct;
    material= 'steel';
end