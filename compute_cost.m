function J = compute_cost(X, y, theta)
  m = length(y);
  J = sum(sum((X*theta - y).^2)/(2*m));
end
