% Felipe Alves Araujo - felipeaaraujoo@gmail.com

function out = func02(m)

    if size(m, 1) > 1 && size(m, 2) > 1
        out = std(std(m));
    else
        disp('The input need to be bidimensional a matrix')
    end