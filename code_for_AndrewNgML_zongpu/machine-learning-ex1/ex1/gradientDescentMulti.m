function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
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
    %       of the cost function (computeCostMulti) and gradient here.
    %
   

%  theta = theta - alpha / m * X' * (X * theta - y);
    x1=X(:,2);%�õ�������x1
    x2=X(:,3);
    theta0=theta(1);%�õ���ֵ��
    theta1=theta(2);
    theta2=theta(3);
    theta0=theta0-(alpha/m)*sum((X*theta-y));%x0Ϊȫ1��������������д��
    theta1=theta1-(alpha/m)*sum((X*theta-y).*x1);%ʹ�õ��.*ֱ�ӵõ�ÿ��������˽��
    theta2=theta2-(alpha/m)*sum((X*theta-y).*x2);
    theta=[theta0;
               theta1;
               theta2];%theta��size(3,1)�ľ��󣬶���ʱtheta = zeros(2, 1)����theta0��theta1֮��Ӧ���÷ֺŸ�������ʾ����
           


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
