function [x, err, steps] = perform_iterative (G, c, x0, tol, max_steps)
	% G -> iteration matrix
	% c -> iteration vector
	% x0 -> initial solution
	% tol -> accepted tolerance (norm of the difference between two solutions)
	% max_steps -> the maximum number of iterations
	
	% x -> final solution
	% err -> last calculated difference (as an euclidean norm)
	% steps -> actual number of steps performed

   % TODO: perform_iterative implementation
   %Aplicam metoda Jacobi prezentata atat la curs cat si la laborator
  [n n]=size(G);
  err = 0;
  steps=max_steps;

  while max_steps > 0
    max_steps--;

    x = G*x0+c;
    if norm(x-x0)<tol
      err = norm(x - x0);
    break;
    endif
    x0 = x;
  endwhile
  steps = steps - max_steps;

endfunction
