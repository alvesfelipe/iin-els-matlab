% structure = [];
% namelist = {'first', 'second', 'third'};
% for i = 1:length(namelist)
%     for j = 1:10
%         structure.(namelist{i})='works';
%     end
% end
function s = clear_str(str)
    names = {'João'};
    str = {'Á', 'É', 'Í', 'Ó', 'Ú', 'á', 'é', 'í', 'ó', 'ú', 'ã', 'õ'};
    strreplace = {'A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u', 'a', 'o'};
%     for j = 1:length(names)
        for i = 1:numel(str)
            names{1} = regexprep(names{1}, str{i}, strreplace{i});
            s = names{1};
        end
%     end
    disp(s)
end