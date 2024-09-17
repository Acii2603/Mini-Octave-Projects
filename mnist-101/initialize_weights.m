function [matrix] = initialize_weights(L_prev, L_next)
  % L_prev -> the number of units in the previous layer
  % L_next -> the number of units in the next layer

  % matrix -> the matrix with random values
  
  % TODO: initialize_weights implementation
  %am creat o matrice cu elemente random intre 0 si 1 dupa care am calculat e0
  %conform formulei din enunt si am inmultit fiecare element al matricei cu val
  %random cu e0
  matrix = rand(L_prev + 1, L_next);
  e0 = sqrt(6) / sqrt(L_prev + L_next);
  matrix = matrix .* e0;
endfunction
