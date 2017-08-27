% Felipe Alves Araujo - felipeaaraujoo@gmail.com

% This task implements an struct populated with the first names of all 
% students followed by the complete name and your registration number

data = load('Atividade4.mat');

S = [];
aux = [];

% gets all students, splits by blank space and adds in a structs
for i = 1:size(data.alunos, 1)
    aux = strsplit(data.alunos{i}, ' ');
    aux{1} = clear_str({aux{1}});
    S.(char(aux{1})) = struct('nome', {data.alunos{i}}, 'matricula',...
                              {data.matricula{i}});
end