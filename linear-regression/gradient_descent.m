function [Theta] = gradient_descent(FeatureMatrix, Y, n, m, alpha, iter)
  % FeatureMatrix -> the matrix with all training examples
  % Y -> the vector with all actual values
  % n -> the number of predictors
  % m -> the number of trainings
  % alpha -> the learning rate
  % iter -> the number of iterations

  % Theta -> the vector of weights

  % TODO: gradient_descent implementation
  % am calculat Theta cu ajutorul formulei gradientului descendent
  
  Theta = zeros(n, 1);
  for i = 1:iter
    H = FeatureMatrix * Theta;
    Error = H - Y;
    gradient = (1/m) * FeatureMatrix' * Error;
    Theta = Theta - alpha * gradient;
  endfor
  Theta = [0; Theta];

endfunction