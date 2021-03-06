function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples


J = 0;
grad = zeros(size(theta));


grad(1) = (1/m)* sum( (sigmoid(X*theta) - y).*X(:,1) );
for i = 2 : size(theta,1)
    grad(i) = (1/m)* sum( (sigmoid(X*theta) - y).*X(:,i) ) + (lambda/m)*theta(i);
end

    J = (1/m)*sum(-y.*log(sigmoid(X*theta)) - (1-y).*log(1-sigmoid(X*theta))) + ...
        (lambda/(2*m))*(sum(theta.^2) - theta(1).^2);

end
