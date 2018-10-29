function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

%寻找数据中的正例、负例
pos=find(y==1);%得到y值为1的data值的序号(所在行)，形成向量，如pos=[4,5,7,8,9,10,...]
neg=find(y==0);%得到y值为0的data值的序号(所在行)，形成向量，如pos=[1,2,3,6,...]

%plot examples
plot(X(pos,1), X(pos,2), 'k+', 'LineWidth', 2 , 'MarkerSize', 7 );%X(pos,1)意味着取出pos包含的行的第1列的值。类似X(1:100,1), 通过一个向量操作矩阵的某些元素
plot(X(neg,1), X(neg,2), 'ko', 'MarkerFaceColor', 'y' , 'MarkerSize', 7 )








% =========================================================================



hold off;

end
