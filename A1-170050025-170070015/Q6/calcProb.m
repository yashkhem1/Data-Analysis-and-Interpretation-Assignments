function probability=calcProb(n)
proba=1;
for i=1:n
   proba=proba*(365-i+1)/365;
end
probability=1-proba;
end
