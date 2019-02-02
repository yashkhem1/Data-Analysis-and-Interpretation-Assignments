function newMean = UpdateMean (OldMean, NewDataValue, n)
sum = OldMean*n;
newSum = sum + NewDataValue;
newMean = newSum/(n+1);
end