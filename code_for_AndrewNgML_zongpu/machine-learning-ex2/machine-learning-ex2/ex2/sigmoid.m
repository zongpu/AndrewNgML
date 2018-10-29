function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% g=1/(1+exp(-z));%针对标量数据可直接写表达式
%对矩阵数据z
e=exp(1);
g=1./(1.+(e.^(-z)));%运用点乘、除实现对多维数据的操作


% =============================================================

end
