data = load('training_set.txt');
X = data(:, 1:2);
y = data(:, 3);
alpha = 0.003;
num_iters = 1500;
theta = zeros(size(X, 2), 1);
[theta, J_history] = gradient_descent(X, y, theta, alpha, num_iters);
plot(num_iters, J_history, 'r');

fprintf('Please, enter the parameters of your house:\n');
size = input('Size (feet squared): ');
bedrooms = input('Number of bedrooms:  ');
