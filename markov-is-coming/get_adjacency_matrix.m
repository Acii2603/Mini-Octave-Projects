function [Adj] = get_adjacency_matrix (Labyrinth)
	% Labyrinth -> the matrix of all encodings
  
  % Adj -> the adjacency matrix associated to the given labyrinth
  
  % TODO: get_adjacency_matrix implementation
  %stocam marimile matricei date
  N = (size(Labyrinth))(1);
  M = (size(Labyrinth))(2);
  %cream matricea adjuncta drept matrice rara
  Adj = sparse(N * M + 2, N * M + 2);
  for i = 1 : N
    for j = 1 : M
      
      aux = Labyrinth(i, j);
      o = 1;
      %transformam fiecare valoare a matricei date in binar, stocand bitii
      %intr-un vector
      Aux = bitget(aux, 4:-1:1);
      %conform codificarii din enunt, verific daca bitii sunt 0, in caz 
      %afirmativ creez legatura in matricea de adiacenta intre elementul
      %curent si vecinii lui prin intermediul valorii 1
      if Aux(4) == 0
        if j > 1
          Adj( ((i - 1) * M) + j, ((i - 1) * M) + j - 1) = 1 ;
      else
        Adj( ((i - 1) * M) + j, N * M + 2) = 1 ;
        endif
      endif
      
      if Aux(3) == 0
        if j < M
          Adj( ((i - 1) * M)  +  j, ((i - 1) * M) + j + 1) = 1;
        else
          Adj( ((i - 1) * M)  +  j, N * M + 2) = 1;
        endif
      endif
      
      if Aux(2) == 0
        if i < N
          Adj( ((i - 1) * M)  +  j, ((i - 1) * M) + j + M) = 1;
        else
          Adj( ((i - 1) * M)  +  j, N * M + 1) = 1;
        endif
      endif
      
      if Aux(1) == 0
        if i > 1
          Adj( ((i - 1) * M)  +  j, ((i - 1) * M) +  j - M) = 1;
        else
          Adj( ((i - 1) * M)  +  j, N * M + 1) = 1;
        endif
      endif
      
    endfor
  endfor
  Adj( N * M + 1, N * M + 1) = 1;
  Adj( N * M + 2, N * M + 2) = 1;
endfunction
