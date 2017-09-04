% Felipe Alves Araujo - felipeaaraujoo@gmail.com

x = (-10:10);
y = (-10: 10);
z = x(:).^2 + y(:).^2;

figure

subplot(1,3,1)
plot3(x(:), y(:), -z(:));
hold on
plot3(x(:), -y(:), -z(:));

[meshX, meshY] = meshgrid(x, y);
Z = meshX(:, :).^2 + meshY(:, :).^2;

subplot(1,3,2)
mesh(-Z)

subplot(1,3,3)
surf(-Z)

figure

surf(-Z)
hold on 
plot3(x, y, -Z());