function [w,y,x,d] = main()
    neuronas = 784;
    
    numIteraciones = 10000;
    dim = sqrt(neuronas);
    
    S0 = dim;
    T1 = 1000/log(S0);
    N0 = 0.1;
    limN = 0.01;
    limS = 1;
    T2 = 1000;
    
    w = rand(neuronas, neuronas);
    [filas, columnas] = meshgrid(1:dim);
    wx = zeros(1,neuronas);
    wy = zeros(1,neuronas);
    wx(1,1:neuronas) = filas(1:neuronas);    
    wy(1,1:neuronas) = columnas(1:neuronas);
    
    imagenes = loadMNISTImages('fot');
    etiquetas = loadMNISTLabels('etiq')';
    
    valores = 1:10;
    for i=1:63
        valores(etiquetas(i)+1) = i;
    end
    
    disp(valores);
    
    for i=1:numIteraciones
        disp(i);
        imActual = imagenes(:,i);
        imActual = repmat(imActual,1,neuronas);

        dist=(sum((w-imActual).^2).^0.5); 
        [~,BMU] = min(dist);
        S = S0*exp(-1*(i/T1));
        N = N0*exp(-1*(i/T2));
        distp2 = (( wx - wx(1,BMU) ).^2) + (( wy - wy(1,BMU) ).^2);
        dif(:,1:neuronas) =  imActual(:,1:neuronas) - w(:,1:neuronas);
        h = exp(-1 * ( distp2 ./ (2*S*S) ) );
        h_rep = repmat(h,neuronas,1);
        w(:,1:neuronas) = w(:,1:neuronas) + N.*h_rep.*dif(:,1:neuronas);
        drawnow();
        muestra(w, imagenes, valores, wx, wy);
        end
     end
end