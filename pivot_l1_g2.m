function m=pivot_l1_g2(Aug)
% Get the length of b
[n, ~] = size(Aug);
% Initialize x with zeros
x = zeros(n,1);
% Create the augmented matrix
%Aug = [A,b];
%Display
%A
%b
Aug;
% Loop for partial pivoting and echelon form
for j = 1:n-1
    % partial pivoting
    % Find the maximum value and its position for partial pivoting
    [maxi, max_pos] = max(abs(Aug(j:n,j)));
    % Swap the rows for partial pivoting
    C = Aug(j,:);
    Aug(j,:) = Aug(max_pos+j-1,:);
    Aug(max_pos+j-1,:) = C;
    

end

% Separate A and b from the augmented matrix
m = Aug;
%A = Aug(:,1:end-1 );
%b = Aug(:,end);
end

% encontrado https://la.mathworks.com/matlabcentral/answers/1665174-pivot-matrix-function-help