opBasic = function(a,b){
  print("Suma 1")
  print(paste(sprintf('%i + %i = ',a,b),a+b))
  print("Suma 2")
  print(paste(sprintf('%i + %i = ',b,a),b+a))
  print("Resta")
  print(paste(sprintf("%i - %i = ",a,b),a-b))
  print(paste(sprintf("%i - %i = ",b,a),b-a))
  print("Producto")
  print(paste(sprintf('%i * %i = ',a,b),a*b))
  print("Cociente de la división entera")
  print(paste(sprintf("%i : %i = ",a,b),a%/%b))
  print(paste("con resto ",a%%b))
  print("Cociente de la división entera")
  print(paste(sprintf("%i : %i = ",b,a),b%/%a))
  print(paste("con resto ",b%%a))
}

