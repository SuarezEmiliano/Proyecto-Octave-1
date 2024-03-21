% La funcion calcula la convolucion discreta entre dos señales
% Parametros:
% x: Funcion de entrada al sistema LTI
% h: Rta al impulso unitario del sistema LTI
% Valores de retorno:
% y: Convolucion = x * h
function y = Ceballos_Moreno_Suarez_3k1_Function (x, h)
  
  % Se resuelve utilizando la matriz de convolucion
  % Se define a la matriz de convolucion A de la siguiente manera:
  %     [h1  h2  h3  ... hn  0   ... ... ... 0  ]
  %     [0   h1  h2  h3  ... hn  0   ... ... 0  ]
  % A = [0   0   h1  h2  h3  ... hn  0   ... 0  ]
  %     [                        .              ]
  %     [                          .            ]
  %     [                            .          ]
  %     [0   ... ... ... 0   h1  h2  h2  ... hn ]
  % Si x tiene m elementos, h tiene n elementos 
  % entonces A tiene m filas, m + n - 1 columnas
  % Existe un teorema que dice y = x * h = xA
  % Es decir la convolucion x * h es igual al producto matricial xA
  
  % Declaro la matriz de convolucion con todos ceros
  m = length(x);
  n = length(h);
  matriz_convolucion = zeros(m, m+n-1);
  % Bucle para recorrer las filas
  for i = 1 : m
    % Bucle para recorrer las columnas
    for j = 1 : m+n-1
      % Debemos colocar los valores de h en los elementos correspondientes
      % Hay dos casos en los que tenemos ceros:
      % - Ceros del triangulo inferior izquierdo: i > j 
      % - Ceros del triangulo superior derecho: j >= n + i
      if !(i > j | j >= n + i)
        % Cuando no se de ninguno de estos casos
        % debemos colocar en la matriz el valor correspondiente de h
        matriz_convolucion(i,j) = h(j-i+1);
      endif
    endfor
  endfor

  % Retornar el producto matricial
  y = x * matriz_convolucion;
endfunction
