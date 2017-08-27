% Felipe Alves Araujo - felipeaaraujoo@gmail.com

% This task implements an example of struct array, cell, cell array and
% matrix manipulations.


%% sec01
% create a random matrix A with values from 20 to 80 and 40x40 elements
A = 20 + (80-20).*rand(40,40);

%% sec02
% create 4 sub matricies populated with values from A

B = A(1:size(A,1)/2, 1:size(A,2)/2);
C = A(1:size(A,1)/2, (size(A,2)/2)+1:end);
D = A((size(A,2)/2)+1:end, 1:size(A,2)/2);
E = A((size(A,2)/2)+1:end, (size(A,2)/2)+1:end);

%% sec03
% put the values of the matricies B, C, D, E into each position of a cell

Cl{1,1} = B; Cl{1,2} = C; Cl{2,1} = D; Cl{2,2} = E;
clear B C D E

%% sec04
% subsample the matrx C contained in the cell

F = Cl{1,2}(1:size(Cl{1,2},1)/2, 1:size(Cl{1,2},2)/2);
G = Cl{1,2}(1:size(Cl{1,2},1)/2, (size(Cl{1,2},2)/2)+1:end);
H = Cl{1,2}((size(Cl{1,2},2)/2)+1:end, 1:size(Cl{1,2},2)/2);
I = Cl{1,2}((size(Cl{1,2},2)/2)+1:end, (size(Cl{1,2},2)/2)+1:end);

%% sec05
% create a struct with the matricies and cell elements
subcellC = struct('F', {F}, 'G', {G}, 'H', {H}, 'I', {I});
cellsubA = struct('cell', {Cl}, 'subcellC', {subcellC});
subA = struct('B', {Cl{1,1}}, 'C', {Cl{1,2}}, 'D', {Cl{2,1}}, ...
              'E', {Cl{2,2}}, 'cellsubA', cellsubA);
S = struct('A', {A}, 'subA', struct(subA));