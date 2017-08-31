% Felipe Alves Araujo - felipeaaraujoo@gmail.com

% This task implements an struct populated with the first names of all 
% students followed by the complete name and your registration number

data = load('Atividade4.mat');

S = [];
aux = cell(1, size(data.alunos, 1));

% gets all students, splits by blank space and adds in a structs
for i = 1:size(data.alunos, 1)
    aux{i} = cell(strsplit(data.alunos{i}, ' '));
    aux{i}{1} = clear_str({aux{i}{1}});
    % search by repeated names
    for j = 1:i-1
        % edit repeated names before put in the struct
        if strcmp(aux{i}{1}, aux{j}{1})
            aux{i}{1} = strcat(aux{i}{1}, num2str(i));
        end
        S.(char(aux{i}{1})) = struct('nome', {data.alunos{i}}, 'matricula',...
                          {data.matricula{i}});
    end
end
clear aux i j data