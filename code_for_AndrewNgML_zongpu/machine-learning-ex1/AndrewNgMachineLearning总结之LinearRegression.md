---
title: AndrewNg Machine Learning 总结之Linear regression
---

# Linear regression

## 	线性回归模型：

$$
h_\theta(x)=\theta^Tx
$$

## 	代价函数：

$$
J(\theta)={(1/2m)}{\sum_{i=1}^{m}{(h_\theta(x^{(i)})-y^{(i)})^2}}
$$

```matlab
function J = computeCost(X, y, theta)
m = length(y);% number of training examples
方法1：
 for i=1:m
     J=J+(X(i,:)*theta-y(i,:))^2/(2*m);
 end
方法2：
J=sum((X*theta-y).^2)/(2*m);%此处用.^2对每个值求平方,然后用sum()函数求和利用sunm()函数

方法3：（通用于单变量、多变量回归）
J=((X*theta-y)'*(X*theta-y))/(2*m);%向量相乘亦可得到同样的和值
end
```

## 	梯度下降法更新theta：

$$
\theta_j:=\theta_j-\alpha(1/m){\sum_{i=1}^{m}{(h_\theta(x^{(i)})-y^{(i)}){x_j^{(i)}}}}
$$

```matlab
function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
m = length(y); 
J_history = zeros(num_iters, 1);
for iter = 1:num_iters
%     x=X(:,2);%得到列向量x1
%     theta0=theta(1);%得到初值，
%     theta1=theta(2);
%     theta0=theta0-(alpha/m)*sum((X*theta-y));%x0为全1的列向量，不必写出
%     theta1=theta1-(alpha/m)*sum((X*theta-y).*x);%使用点乘.*直接得到每组数据相乘结果
%     theta=[theta0;
%                theta1];%theta是size(2,1)的矩阵，定义时theta = zeros(2, 1)这里theta0与theta1之间应该用分号隔开，表示两行
           
 theta = theta - alpha / m * X' * (X * theta - y);%整合上面对每个theta操作，写成矩阵形式
 %为了绘制出J(theta)曲线

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end
end
```

## 正规方程法直接得到theta解析解：

$$
\theta=(X^TX)^{-1}{X^T}y
$$

```matlab
function [theta] = normalEqn(X, y)
theta = zeros(size(X, 2), 1);
% theta=((X'*X)^-1)*X'*y;
theta = pinv(X' * X) * X' * y;
end

```

## 特征归一化：

$$
x:=(x^i-mu)/s^i
$$



```matlab
function [X_norm, mu, sigma] = featureNormalize(X)
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));    
m = length(X(:,1));

%for i=1:size(X, 2)
%mu(i)=sum(X(:,i))/m;
%sigma(i)=std(X(:,i));%std(X(:,1)) computes the standard deviation
%x=(X(:,i)-mu(i))./sigma(i);%X(:,i)-mu(i))表示每列的每个元素减去均值，./表示点除
%X_norm(:,i)=x;
%end

 mu=mean(X);
 sigma=std(X);
 for i = 1:size(X,2),
     X_norm(:,i) = (X(:,i) - mu(i)) / sigma(i);
 end
end

```



