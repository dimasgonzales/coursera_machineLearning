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

% My way
m = length(y);

X_pos = [];
X_neg = [];

for i=1:m,
    if y(i) == 1
        X_pos = [X_pos; X(i,1)  X(i, 2)];
    else
        X_neg = [X_neg; X(i,1)  X(i, 2)];
    end
end

plot(X_neg(:,1), X_neg(:,2), 'ko', 'MarkerFaceColor', 'y');
plot(X_pos(:,1), X_pos(:,2), 'k+', 'LineWidth', 2);



% Sample Code
% pos = find(y==1); neg = find(y==0);
% plot(X(pos,1), X(pos,2), 'k+', 'LineWidth', 2);
% plot(X(neg,1), X(neg,2), 'ko', 'MarkerFaceColor', 'y');



% =========================================================================



hold off;

end
