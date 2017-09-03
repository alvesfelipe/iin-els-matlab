function fig = get_figure()

[file, path] = uigetfile('fig.jpg','Select the Figure', '-ascii');
fig = imread(strcat(path, file));