function [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix)
  % Theta -> the vector of weights
  % Y -> the vector with all actual values
  % FeatureMatrix -> the matrix with all training examples

  % Error -> the error of the regularized cost function

  % TODO: linear_regression_cost_function implementation
  %aplicam formula regresiei liniare, dupa ce luam lungimea lui Y
  m = length(Y);
  H = FeatureMatrix * Theta(2:end);
  S = sum((H - Y) .^ 2);
  Error = S / (2*m);
  
endfunction