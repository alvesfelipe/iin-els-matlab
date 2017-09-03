function func03(input1, input2, msg)

% specify the name of the .m file for save
[file,path] = uiputfile('*.txt','func03 save inputs');

% save function inputs in the .m file specified
save(strcat(path, file), 'input1', 'input2', '-ascii');

