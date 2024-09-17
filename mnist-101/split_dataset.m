function [X_train, y_train, X_test, y_test] = split_dataset(X, y, percent)
  % X -> the loaded dataset with all training examples
  % y -> the corresponding labels
  % percent -> fraction of training examples to be put in training dataset
  
  % X_[train|test] -> the datasets for training and test respectively
  % y_[train|test] -> the corresponding labels
  
  % Example: [X, y] has 1000 training examples with labels and percent = 0.85
  %           -> X_train will have 850 examples
  %           -> X_test will have the other 150 examples

  % TODO: split_dataset implementation
  % Aceasta functie creaza random o ordine a elementelor, dupa care aranjem elem
  % dupa aceasta ordine, calculam cate elemente vor fi in matricea si vectorul
  % de training si punem numarul respectiv de valori in ele, iar ce ramane, in 
  % cele de test
  P = randperm(size(X, 1));
  X = X(P, :);
  y = y(P);
  percent = floor(percent * size(X, 1));
  X_train = X(1:percent, :);
  y_train = y(1:percent);
  X_test = X(percent + 1 : end, :);
  y_test = y(percent + 1 : end);
endfunction
