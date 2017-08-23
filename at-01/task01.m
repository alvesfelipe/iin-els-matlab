% Felipe Alves Araujo - felipeaaraujoo@gmail.com

% This task implements an example of data types, like: structs, cells,
% int8, logical, double etc.

% read image file
M=imread('fig.jpg');
% imshow(M)

% define structs and set (for test)
header = struct('info', {{1,2,3,4,5,6}}, 'date', {datetime(2017,08,22)});
mri = struct('imagem', {M}, 'header', {header});
exams = struct('MRI', {mri}, 'rates', {{'taxasCell'}});
measures = struct('hemograma', {{3,4,2}}, 'urine', {double(100.20)});
datas = struct('name', {'felipe'}, 'genre', {logical(true)},...
               'age', {int8(10)}, 'weight', {double(10.55)});

% define 5 structs, one for each patient
patient = struct('p1', {struct('datas', {datas}, 'exams', {exams}, 'measures', {measures})},...
                 'p2', {struct('datas', {datas}, 'exams', {exams}, 'measures', {measures})},...
                 'p3', {struct('datas', {datas}, 'exams', {exams}, 'measures', {measures})},...
                 'p4', {struct('datas', {datas}, 'exams', {exams}, 'measures', {measures})},...
                 'p5', {struct('datas', {datas}, 'exams', {exams}, 'measures', {measures})});

% get fields and display example
disp(patient.p1.exams.rates);
disp(patient.p2.exams.MRI.header.date);