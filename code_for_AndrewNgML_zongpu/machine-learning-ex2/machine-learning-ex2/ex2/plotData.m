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

%Ѱ�������е�����������
pos=find(y==1);%�õ�yֵΪ1��dataֵ�����(������)���γ���������pos=[4,5,7,8,9,10,...]
neg=find(y==0);%�õ�yֵΪ0��dataֵ�����(������)���γ���������pos=[1,2,3,6,...]

%plot examples
plot(X(pos,1), X(pos,2), 'k+', 'LineWidth', 2 , 'MarkerSize', 7 );%X(pos,1)��ζ��ȡ��pos�������еĵ�1�е�ֵ������X(1:100,1), ͨ��һ���������������ĳЩԪ��
plot(X(neg,1), X(neg,2), 'ko', 'MarkerFaceColor', 'y' , 'MarkerSize', 7 )








% =========================================================================



hold off;

end
