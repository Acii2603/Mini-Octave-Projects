function [Theta] = normal_equation(FeatureMatrix, Y, tol, iter)
  % FeatureMatrix -> the matrix with all training examples
  % Y -> the vector with all actual values
  % tol -> the learning rate
  % iter -> the number of iterations
  % tol -> the tolerance level for convergence of the conjugate gradient method

  % Theta -> the vector of weights
  
  % TODO: normal_equation implementation
  
  %am implementat algoritmul gradientului conjugat prezentat in enunt
  Y = FeatureMatrix' * Y;
  FeatureMatrix = FeatureMatrix' * FeatureMatrix;
  Theta = zeros(size(FeatureMatrix)(2), 1);
  
  eigF = eig(FeatureMatrix);
  if all(eigF > 0)
    else
    Theta = [0 ; Theta];
    return;
  endif
  
  r = Y - FeatureMatrix*Theta;
  v = r;
  tolsquared = tol^2;
  k = 1;
  while k <= iter && norm(r)^2 > tolsquared
    t = (r'*r)/(v'*FeatureMatrix*v);
    Theta += t*v;
    r1 = r - t * FeatureMatrix * v;
    s = (r1' * r1)/(r' * r);
    v = r1 + s * v;
    r = r1;
    k++;
  endwhile
  
  Theta = [0 ; Theta];
  
    
endfunction