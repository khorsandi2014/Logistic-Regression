function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples


J = 0;
grad = zeros(size(theta));

size_theta = size(theta,1);
for j = 1:size_theta
    
    grad(j) = (1/m) * sum( (sigmoid(X*theta) - y).*X(:,j));

end


J = (1/m) * sum( -y.*log(sigmoid(X*theta)) - (1- y).*log(1-sigmoid(X*theta)) );


end
