% Felipe Alves Araujo - felipeaaraujoo@gmail.com

fig = get_figure();

%% subplot 1=R, 2=G, 3=B, 4=True color

figure

subplot(2,2,1)
figR = fig;
figR(:, :, 2) = 0;
figR(:,:,3)= 0;
image(figR)
title('Figure channel: R')

subplot(2,2,2)
figG = fig;
figG(:, :, 1) = 0;
figG(:,:,3)= 0;
image(figG)
title('Figure channel: G')

subplot(2,2,3)
figB = fig;
figB(:, :, 1) = 0;
figB(:,:,2)= 0;
image(figB)
title('Figure channel: B')

subplot(2,2,4)
image(fig)
title('Figure True')

% save first subplot as image
print(gcf, '-dpng', 'subplotImage1');

%% subplot BRG, GBR figures

figure

subplot(1,2,1)
figBRG = fig;
figBRG(:, :, 1) = fig(:, :, 3);
figBRG(:, :, 2) = fig(:, :, 1);
figBRG(:, :, 3) = fig(:, :, 2);
image(figBRG)
title('Figure BRG')

subplot(1,2,2)
figGBR = fig;
figGBR(:, :, 1) = fig(:, :, 2);
figGBR(:, :, 2) = fig(:, :, 3);
figGBR(:, :, 3) = fig(:, :, 1);
image(figGBR)
title('Figure GBR')

%% subplot(3,2) RG1, RG0, R1B, R0B, 1GB, 0GB

figure

subplot(3,2,1)
figRG1 = fig;
figRG1(:, :, 3) = 0;
image(figRG1)
title('Figure RG0')

subplot(3,2,2)
figRG0 = fig;
figRG0(:, :, 3) = 255;
image(figRG0)
title('Figure RG1')

subplot(3,2,3)
figR1B = fig;
figR1B(:, :, 2) = 0;
image(figR1B)
title('Figure R0B')

subplot(3,2,4)
figR0B = fig;
figR0B(:, :, 2) = 255;
image(figR0B)
title('Figure R1B')

subplot(3,2,5)
fig0GB = fig;
fig0GB(:, :, 1) = 0;
image(fig0GB)
title('Figure 0GB')

subplot(3,2,6)
fig1GB = fig;
fig1GB(:, :, 1) = 255;
image(fig1GB)
title('Figure 1GB')

clear all