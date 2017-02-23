function [] = muestra(w, imagenes, valores, wx, wy)
    

    cero = win(w,imagenes(:,valores(1)));
    uno = win(w,imagenes(:,valores(2)));
    dos = win(w,imagenes(:,valores(3)));
    tres = win(w,imagenes(:,valores(4)));
    cuatro = win(w,imagenes(:,valores(5)));
    cinco = win(w,imagenes(:,valores(6)));
    seis = win(w,imagenes(:,valores(7)));
    siete = win(w,imagenes(:,valores(8)));
    ocho = win(w,imagenes(:,valores(9)));
    nueve = win(w,imagenes(:,valores(10)));
    
    cla;
    neighborhood(wx,wy,28,28);

    axis([0,29,0,29]);

    hold on;

    text(wx(cero),wy(cero),'cero');
    text(wx(uno),wy(uno),'uno');
    text(wx(dos),wy(dos),'dos');
    text(wx(tres),wy(tres),'tres');
    text(wx(cuatro),wy(cuatro),'cuatro');
    text(wx(cinco),wy(cinco),'cinco');
    text(wx(seis),wy(seis),'seis');
    text(wx(siete),wy(siete),'siete');
    text(wx(ocho),wy(ocho),'ocho');
    text(wx(nueve),wy(nueve),'nueve');

end