function [theta J_history] = gradient_descent(X, y, theta, alpha, num_iters)
  m = length(y);
  J_history = zeros(num_iters, 1);
  for i=1:num_iters
    theta -= (alpha * 1/m) * (X'*(X*theta - y));
  end
end
