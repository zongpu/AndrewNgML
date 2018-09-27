function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
%     x=X(:,2);%得到列向量x1
%     theta0=theta(1);%得到初值，
%     theta1=theta(2);
%     theta0=theta0-(alpha/m)*sum((X*theta-y));%x0为全1的列向量，不必写出
%     theta1=theta1-(alpha/m)*sum((X*theta-y).*x);%使用点乘.*直接得到每组数据相乘结果
%     theta=[theta0;
%                theta1];%theta是size(2,1)的矩阵，定义时theta = zeros(2, 1)这里theta0与theta1之间应该用分号隔开，表示两行
           


 theta = theta - alpha / m * X' * (X * theta - y);%整合上面对每个theta操作，写成矩阵形式




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
