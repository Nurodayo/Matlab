function m=pivot_l1_g2(Aug)
[n, ~] = size(Aug);
x = zeros(n,1);
Aug;
for j = 1:n-1
    [maxi, max_pos] = max(abs(Aug(j:n,j)));
    C = Aug(j,:);
    Aug(j,:) = Aug(max_pos+j-1,:);
    Aug(max_pos+j-1,:) = C;
    

end

m = Aug;
end

