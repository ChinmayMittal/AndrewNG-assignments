function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta)); 

grad = (lambda/m) * ( theta ) ; 

grad(1) = 0 ; 

temp = (1/m)*(X*theta - y ) ; 

grad = grad + (X' * temp ) ; 


J = sum( (X*theta-y).^2 ) * (1/(2*m)) + (sum(theta.^2) - theta(1)^2)*(lambda*(1/(2*m))) ; 

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
