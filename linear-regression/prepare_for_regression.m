function [FeatureMatrix] = prepare_for_regression(InitialMatrix)
  % InitialMatrix -> the matrix that must be transformed

  % FeatureMatrix -> the matrix with all training examples
  
  % TODO: prepare_for_regression implementation
  
  % Aici codficiam toate datele conform enuntului, singura chestie ce mi se pare
  % ca merita sa fie mentionata este faptul ca am luat un contor k pentru ca 
  % datele sunt intercalate, astfel in momentul in care dam de codificarea 
  % "furnished", ..., avem o decalare de o pozitie. Deci k merge in paralel cu j
  % pana la intalnirea acelui text, dupa care avem o decalare de 1
  N = size(InitialMatrix)(1);
  M = size(InitialMatrix)(2);
  FeatureMatrix = zeros(N, M + 1);
  for i = 1 : N
    k = 1;
    for j = 1 : M
      
      if strcmp(InitialMatrix(i , j), "yes") == 1
        FeatureMatrix(i, k) = 1;
        
      elseif strcmp(InitialMatrix(i , j), "no") == 1
        FeatureMatrix(i, k) = 0;
        
      elseif strcmp(InitialMatrix(i , j), "furnished") == 1
        FeatureMatrix(i, k) = 0;
        FeatureMatrix(i, ++k) = 0;
        
      elseif strcmp(InitialMatrix(i , j), "semi-furnished") == 1
        FeatureMatrix(i, k) = 1;
        FeatureMatrix(i, ++k) = 0;
        
      elseif strcmp(InitialMatrix(i , j), "unfurnished") == 1
        FeatureMatrix(i, k) = 0;
        FeatureMatrix(i, ++k) = 1;
      else
        FeatureMatrix(i, k) = str2double(InitialMatrix(i, j));
      endif
      
      k++;
    endfor
    
    
  endfor
endfunction