
y = zeros(160,8);
j = 1;

for i = 1 : 160
    y(i , j ) = 1;
    if ~(mod(i, 20) > 0)
        j = j + 1;
    end;    
end

save('y.mat','y')
