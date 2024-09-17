function [Error] = ridge_regression_cost_function(Theta, Y, FeatureMatrix, lambda)
  % Theta -> the vector of weights
  % Y -> the vector with all actual values
  % FeatureMatrix -> the matrix with all training examples
  % lambda -> regularization parameter that controls the amount of 
  %           shrinkage applied to the regression coefficients

  % Error -> the error of the regularized cost function

  % TODO: ridge_regression_cost_function implementation
  % e linear_regression_cost_function doar ca am calculat si lambda * suma 
  % patratelor valorilor theta
  m = length(Y);
  H = FeatureMatrix*Theta(2:end);
  S = sum((H - Y) .^ 2);
  Error = S / (2*m);
  Theta = Theta.^2;
  Error += lambda * sum(Theta(2: end));
endfunction