function gj = gauss_jordan_l1_g2(g)
[n, ~] = size(g);

for i=n:-1:1
    for j=i-1:-1:1
        g(j, :)=g(j, :)-g(j, i)*g(i, :);
    end
end
gj = g;