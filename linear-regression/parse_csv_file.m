function [Y, InitialMatrix] = parse_csv_file(file_path)
  % path -> a relative path to the .csv file
  
  % Y -> the vector with all actual values
  % InitialMatrix -> the matrix that must be transformed

  % TODO: parse_csv_file implementation
  
  % well aici, nu mai zici ca nu e nimic special ca mi-a dat destule batai de 
  % cap :), intai citesc intr-o matrice preventiva tot fisierul, dupa care prima
  % coloana o pun in vectorul coloana Y dupa care o convertesc catre double, iar
  % restul matricii il pun in InitialMatrix
  fid = fopen(file_path, 'r');
  Matrix = textscan(fid, "%s","HeaderLines", 1 , "Delimiter", ","){1, 1};
  Matrix = reshape(Matrix(1:end), 13 ,[]).';
  Y = Matrix(:, 1);
  Y = str2double(Y);
  InitialMatrix = Matrix(:, 2 : end);
endfunction