function [Error] = lasso_regression_cost_function(Theta, Y, FeatureMatrix, lambda)
  % Theta -> the vector of weights
  % Y -> the vector with all actual values
  % FeatureMatrix -> the matrix with all training examples
  % lambda -> regularization parameter that controls the amount of 
  %           shrinkage applied to the regression coefficients

  % Error -> the error of the regularized cost function

  % TODO: lasso_regression_cost_function implementation
  % e linear_regression_cost_function doar ca am adaugat si lambda * norma 1
  % a vectorului Theta
  m = length(Y);
  H = FeatureMatrix*Theta(2:end);
  S = sum((H - Y) .^ 2);
  Error = S / m;
  norma = 0;
  for i = 2 : length(Theta)
    norma += abs(Theta(i));
  endfor
  Error += lambda * norma;
endfunction