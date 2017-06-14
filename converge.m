function convergio = converge(probabilidad_anterior, probabilidad_actual, epsilon, total_pedidos)
  
  if total_pedidos > 140 
    if (abs(probabilidad_anterior - probabilidad_actual) < epsilon) 
      convergio = true;
    else
      convergio = false;
    end
  else
      convergio = false;
  end

end
