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
%     x=X(:,2);%�õ�������x1
%     theta0=theta(1);%�õ���ֵ��
%     theta1=theta(2);
%     theta0=theta0-(alpha/m)*sum((X*theta-y));%x0Ϊȫ1��������������д��
%     theta1=theta1-(alpha/m)*sum((X*theta-y).*x);%ʹ�õ��.*ֱ�ӵõ�ÿ��������˽��
%     theta=[theta0;
%                theta1];%theta��size(2,1)�ľ��󣬶���ʱtheta = zeros(2, 1)����theta0��theta1֮��Ӧ���÷ֺŸ�������ʾ����
           


 theta = theta - alpha / m * X' * (X * theta - y);%���������ÿ��theta������д�ɾ�����ʽ




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
