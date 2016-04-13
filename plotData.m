function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;



pos = find(y==1);
neg = find(y==0);

plot(X(pos,1), X(pos,2), 'k+','LineWidth',2,'MarkerFaceColor','b');
plot(X(neg,1), X(neg,2), 'ko','LineWidth',2,'MarkerFaceColor','y');
%xlabel('Exam 1 score');
%ylabel('Exam 2 score');

hold off;

end
