% Felipe Alves Araujo - felipeaaraujoo@gmail.com

%function for remove all special characters from names using regex
function s = clear_str(str)
    rm = {'ã', 'í', 'ú', 'é', 'Á', 'á'};
    rep = {'a', 'i', 'u', 'e', 'A', 'a'};
    for i = 1:size(rm, 2)
        str{1} = regexprep(str{1}, rm{i}, rep{i});
    end
    s = str{1};
end