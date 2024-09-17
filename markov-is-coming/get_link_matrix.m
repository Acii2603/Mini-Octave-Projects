function [Link] = get_link_matrix (Labyrinth)
	% Labyrinth -> the matrix of all encodings
  
  % Link -> the link matrix associated to the given labyrinth
  
  % TODO: get_link_matrix implementation
  
  %stocam marimile matricei
  N = (size(Labyrinth))(1);
  M = (size(Labyrinth))(2);
  %cream matricea Link ca matrice rara
  Link = sparse(N * M + 2, N * M + 2);
  for i = 1 : N
    for j = 1 : M
      aux = Labyrinth(i, j);
      o = 1;
      Aux = bitget(aux, 4:-1:1);
      count = 0;
      
      %aceasta sectiune este singura diferenta dintre aceasta functie si 
      %get_adjacency_matrix deoarece aici numaram cati vecini avem si punem
      %sansa de a trece de o stare la alta in functie de acest numar
      for k = 1 : 4
        if Aux(k) == 0
          count = count + 1;
        endif
      endfor
      
      if count == 0
        count = 1;
      endif
      
      if Aux(4) == 0
        if j > 1
          Link( ((i - 1) * M) + j, ((i - 1) * M) + j - 1) = 1.00 / count;
      else
        Link( ((i - 1) * M) + j, N * M + 2) = 1.00 / count;
        endif
      endif
      
      if Aux(3) == 0
        if j < M
          Link( ((i - 1) * M)  +  j, ((i - 1) * M) + j + 1) = 1.00 / count;
        else
          Link( ((i - 1) * M)  +  j, N * M + 2) = 1.00 / count;
        endif
      endif
      
      if Aux(2) == 0
        if i < N
          Link( ((i - 1) * M)  +  j, ((i - 1) * M) + j + M) = 1.00 / count;
        else
          Link( ((i - 1) * M)  +  j, N * M + 1) = 1.00 / count;
        endif
      endif
      
      if Aux(1) == 0
        if i > 1
          Link( ((i - 1) * M)  +  j, ((i - 1) * M) +  j - M) = 1.00 / count;
        else
          Link( ((i - 1) * M)  +  j, N * M + 1) = 1.00 / count;
        endif
      endif
    endfor
  endfor
  Link( N * M + 1, N * M + 1) = 1.00;
  Link( N * M + 2, N * M + 2) = 1.00;
  
endfunction

