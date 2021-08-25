function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

possible_C = [0.01 0.03 0.1 0.3 1 3 10 30]' ; 
possible_sigma = [0.01 0.03 0.1 0.3 1 3 10 30]' ; 
current_error = Inf ; 
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

for i = 1 : size(possible_C , 1 ) 
    for j = 1 : size(possible_sigma , 1 )
        model = model= svmTrain(X, y, possible_C(i , 1 ), @(x1, x2) gaussianKernel(x1, x2, possible_sigma(j,1)));
        predictions =  svmPredict( model , Xval ) ; 
        if( mean(double(predictions~=yval)) < current_error )
            current_error =  mean(double(predictions~=yval))
            C = possible_C(i,1) ; 
            sigma = possible_sigma(j,1) ; 
        end
    end
end 







% =========================================================================

end
