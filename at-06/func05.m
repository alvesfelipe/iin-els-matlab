% Felipe Alves Araujo - felipeaaraujoo@gmail.com

function func05()

% load the matricies
[file, path] = uigetfile('*.txt','Select the .txt file', '-ascii');
example = importdata(strcat(path, file), '\n');
fprintf('This is the mean: %f \nThis is the standard deviation: %f \n', example(1), example(2));