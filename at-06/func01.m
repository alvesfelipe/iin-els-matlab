% Felipe Alves Araujo - felipeaaraujoo@gmail.com

function out = func01(m)

    if size(m, 1) > 1 && size(m, 2) > 1
        out = mean(mean(m));
    else
        disp('The input need to be bidimensional a matrix')
    end