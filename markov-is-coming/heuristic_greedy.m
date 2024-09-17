function [path] = heuristic_greedy (start_position, probabilities, Adj)
	% start_position -> the starting point in the labyrinth
	% probabilities -> vector of associated probabilities: including WIN and LOSE
	% Adj -> adjacency matrix
	
	% path -> the states chosen by the algorithm
  
  % TODO: heuristic_greedy implementation
  % Am implementat algoritmul prezentat in enunt
  path =  [start_position];
  visited = zeros(size(probabilities)(1));
  visited(start_position) = 1;
  while path
    position = path(end)
    
      if position == size(Adj)(1) - 1
        return;
      endif
      
      max = 0;
      neigh = 0;
      
      for i = 1 : size(Adj)(1)
        if visited(i) == 0 && Adj(position, i) == 1 && ...
          max <= probabilities(i)
          
          max = probabilities(i);
          neigh = i;
        endif
      
    endfor
    
      if neigh == 0
        path(end) = [];
      else
        visited(neigh) = 1;
        path = [path; neigh];
      endif
      
  endwhile
  
endfunction
