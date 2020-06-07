clear ; close all; clc

fprintf('Loading data ...\n');

data = load('training_set.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);
fprintf('Normalizing parameters ...\n');
[X mu sigma] = normalize(X);
X = [ones(m, 1) X];

theta = zeros(size(X, 2), 1);
alpha = 0.003;
num_iters = 2500;

fprintf('Running gradient descent ...\n');
[theta, J_history] = gradient_descent(X, y, theta, alpha, num_iters);
fprintf('Theta vector is: \n');
theta
fprintf('Program paused. Press enter to continue.\n');
pause;
u_ans = input('Do you want to see the graph of cost function?(1 for yes/0 for no) ');
if u_ans == 1
  figure(1);
  plot(1:numel(J_history), J_history, '-r', 'LineWidth', 2);
end

fprintf('Please, enter the parameters of your house:\n');
size = input('Size (feet squared): ');
bedrooms = input('Number of bedrooms:  ');
params = [1 size bedrooms];
for i=2:3
  params(i) = (params(i) - mu(i-1))*(1/sigma(i-1));
end

price = params * theta;
fprintf(['Predicted price of the house ' ...
         ':\n $%f\n'], ceil(price));
