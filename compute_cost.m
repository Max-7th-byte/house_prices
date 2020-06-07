function J = ccompute_cost(X, y theta)
  m = length(y);
  J = 0;
  J = sum(sum((X*theta - y).^2)/(2*m));
