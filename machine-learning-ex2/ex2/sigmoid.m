function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

for r = 1 : size(z,1) 
    for c = 1 : size( z, 2 ) 
        g(r,c) = (1/(1+exp(-z(r,c)))) ; 
    end
end
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).





% =============================================================

end
