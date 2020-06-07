function [theta J_history] = gradient_descent(X, y, theta, alpha, num_iters)
  m = length(y);
  J_history = zeros(num_iters, 1);
  for i=1:num_iters
    theta = theta - (alpha * 1/m) * (X'*(X*theta - y));
    J_history(i) = compute_cost(X, y, theta);
  end
end

%340226.493097
%108315.753421
%-4335.255126
