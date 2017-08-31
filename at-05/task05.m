% Felipe Alves Araujo - felipeaaraujoo@gmail.com

% This task implements two functions that returns a cell contain a vector with
% mean, std, median, quartile, max value and min value of an array.

% array test
v = [6, 47, 49, 15, 42, 41, 7, 39, 43, 40, 36];

test_global = f_global(v);
test_local = f_local(v);

clear v

disp(test_global)
disp(test_local)