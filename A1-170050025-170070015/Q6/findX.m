function x = findX(probPercent)
c = 1;
prob = probPercent/100;
if prob == 1 
    x = 366;
else
    while 1
        if calcProb(c)>prob
            break
        else 
            c = c+1;
        end
    end
    x = c;
end
    
    
    

end

