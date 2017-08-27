% Felipe Alves Araujo - felipeaaraujoo@gmail.com

% This task implements an example of conditional commands (if, else,
% elseif) and looping (for).

% Create a vector of 1000 elements
v = randi([-5,5],5,1);

% Create a cell for store informations about the vector 'v' elements
c = cell(4, 1);

% find even, odd, positive and negative numbers of 'v'
for i = 1:size(v)
   % stores even numbers in the first position of the cell
   if mod(v(i), 2) == 0
       c{1} = [c{1}; v(i)];
   % stores odd numbers in the second position of the cell
   elseif mod(v(i), 2) == 1
       c{2} = [c{2}; v(i)];      
   end
   
   % stores positive numbers in the third position of the cell
   if v(i) >= 0
       c{3} = [c{3}; v(i)];
   % stores negative numbers in the third position of the cell
   else
       c{4} = [c{4}; v(i)];
   end
end

% print informations of all fields of the cell 'c'
fprintf('The vector have, %d even numbers, %d odd numbers, %d positive numbers and %d negative numbers\n', ...
    size(c{1},1), size(c{2},1), size(c{3},1), size(c{4},1));

% create a struct with all cell elements
S = struct('even', {c{1}}, 'odd', {c{2}}, 'positive',...
           {c{3}}, 'negative', {c{4}});