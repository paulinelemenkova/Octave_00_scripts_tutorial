# Script for plotting surfaces
figure
x = 2:0.2:4; % Define the x- and y- coordinates
y = 1:0.2:3; % of the grid lines
[X,Y] = meshgrid(x, y); %Make the grid
Z=(X-3).^2 - (Y-2).^2;
subplot(1,1,1)
surf(X,Y,Z)
    grid on
    box off
    title({'Octave meshplot: 3D surface of function';'Z=(X-3).^2 - (Y-2).^2'},
          'FontSize', 12, 'Color', 'black', 'FontWeight', 'bold', 'FontName', 'Monaco')
    xlabel('X')
    ylabel('Y')
    zlabel('Z')
print('plot_surf_meshplot.jpg','-djpg','-r300')
