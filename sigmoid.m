function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

g = zeros(size(z));



[m n] = size(z);

    for  row = 1 : m
        for col = 1 : n
            g(row,col) = 1 / ( 1 + exp(-z(row,col)));
        end
    end


% =============================================================

end
