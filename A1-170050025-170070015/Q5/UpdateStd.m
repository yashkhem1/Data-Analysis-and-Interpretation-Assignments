function newStd = UpdateStd (OldMean, OldStd, NewMean, NewDataValue, n)
squareSum = OldStd^2*(n-1) +n*(OldMean)^2;
newVariance = (squareSum + NewDataValue^2 - (n+1)*(NewMean)^2)/n;
newStd = newVariance^0.5;
end