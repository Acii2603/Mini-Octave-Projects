function [Labyrinth] = parse_labyrinth(file_path)
	% file_path -> the relative path to a file that needs to
  %              be loaded_graphics_toolkits
  
  % Labyrinth -> the matrix of all encodings for the labyrinth's walls
  
  % TODO: parse_labyrinth implementation

  fid = fopen(file_path, 'r');
  M = fscanf(fid, "%d", 1);
  N = fscanf(fid, "%d", 1);
  Labyrinth = fscanf(fid, '%d', N * M);
  Labyrinth = reshape(Labyrinth(1:end), N, M).';
  
endfunction
