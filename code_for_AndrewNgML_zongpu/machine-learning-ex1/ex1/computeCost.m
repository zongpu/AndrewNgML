function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% for i=1:m
%     J=J+(X(i,:)*theta-y(i,:))^2/(2*m);
% end

% J=sum((X*theta-y).^2)/(2*m);%此处用.^2对每个值求平方,然后用sum()函数求和
%利用sunm()函数
J=((X*theta-y)'*(X*theta-y))/(2*m);%向量相乘亦可得到同样的和值

% =========================================================================

end
