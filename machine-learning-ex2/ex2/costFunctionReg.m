function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

hypothesis = sigmoid(X * theta ) ; 
error = hypothesis - y ; 
J = (-1/m) * sum(y.*log(hypothesis) + (1-y).*log(1-hypothesis)) ;
J = J + (lambda/(2*m))*(sum(theta.^2)) ; 

J = J - (lambda/(2*m))*(theta(1)^2) ;

for cnt = 1 : m 
    grad = grad + (hypothesis(cnt)-y(cnt))*(X( cnt , : )') ; 
end 

grad = (1/m)*grad ; 

for j = 2 : length(theta)
    grad(j) = grad(j) + (lambda/m)*theta(j) ; 
end

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
