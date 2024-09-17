function [G, c] = get_Jacobi_parameters (Link)
	% Link -> the link matrix (edge with probabilities matrix)
	
  % G -> iteration matrix
	% c -> iteration vector
	
  % TODO: get_Jacobi_parameters
  %creeaza matricea si vectorul de iteratie ce vor fi folosite in 
  %perform_iterative
  N = (size(Link))(1) - 2;
  M = (size(Link))(2) - 2;
  G = Link(1 : N, 1 : M);
  c = Link(1 : M, N + 1);
  G = sparse(G);
  c = sparse(c);
endfunction
