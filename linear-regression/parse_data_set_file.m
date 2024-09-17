function [Y, InitialMatrix] = parse_data_set_file(file_path)
  % path -> a relative path to the .txt file

  % Y -> the vector with all actual values
  % InitialMatrix -> the matrix that must be transformed
  
  % TODO: parse_data_set_file implementation
  % Citesc toate datele pe rand din fisierul dat ca parametru, nimic special :)
  % Maxim de mentionat ca am declarat matricea cu cell
  fid = fopen(file_path, 'r');
  M = fscanf(fid, "%d", 1);
  N = fscanf(fid, "%d", 1);
  InitialMatrix = cell(M, N);
  Y = zeros(M);
  for i = 1 : M
    Y(i) = fscanf(fid, "%d", 1);
    for j = 1 : N
      InitialMatrix(i, j) = fscanf(fid, "%s ", 1);
    endfor
  endfor
endfunction