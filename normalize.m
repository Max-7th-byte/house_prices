function [X_norm, mu. sigma] = normalize(X, mu, sigma)
  X_norm = X;
  mu = mean(X_norm);
  sigma = std(X_norm);
  for i=1:size(X_norm, 2)
    X_norm(:, i) = (X_norm(:, i) - mu(i))./sigma(i);
  end
end
