
function [probabilidad_actual, probabilidades_parciales] = calcular_probabilidad_realizar_disparo (dni, epsilon)
  
  probabilidad_anterior=0;
  probabilidad_actual=1;
  casos_favorables=0;
  total_pedidos=0;
  probabilidades_parciales=[];
  resultado1=0;
  resultado2=0;
  
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_pedidos)
    
    probabilidad_anterior=probabilidad_actual;
    resultado1= my_mex_service(dni);
    resultado2= my_mex_service(dni);
    total_pedidos=total_pedidos+2;
    if((resultado1==0) && (resultado2==0))
      casos_favorables=casos_favorables+1;
    end
  
  probabilidad_actual=casos_favorables/total_pedidos;  
  probabilidades_parciales = cat(1, probabilidades_parciales, probabilidad_actual);
  
  end
  
end
