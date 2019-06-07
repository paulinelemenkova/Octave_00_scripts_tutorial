# Script for plotting six subplots of surfaces
figure
x = 2:0.2:4; % Define the x- and y- coordinates
y = 1:0.2:3; % of the grid lines
[X,Y] = meshgrid(x, y); %Make the grid
Z=(X-3).^2 - (Y-2).^2;
subplot(3,2,1)
surf(X,Y,Z)
    grid on
    title({'Octave surf: 3D surface meshplot' ; 'Z=(X-3).^2 - (Y-2).^2'},
      'FontSize', 10, 'Color', 'black', 'FontWeight', 'bold', 'FontName', 'Monaco')
    CMAP = colormap (jet)
    xlabel('X')
    ylabel('Y')
    zlabel('Z')
subplot(3,2,2)
    surface(X,Y,Z)
    grid on
    title({'Octave surface' ; 'graphic object given matrices X Y Z'},
          'FontSize', 10, 'Color', 'black', 'FontWeight', 'bold', 'FontName', 'Monaco')
    xlabel('X')
    ylabel('Y')
    zlabel('Z')
subplot(3,2,3)
    mesh(X,Y,Z)
    grid on
    shading(interp)
    title({'Octave mesh' ; 'wireframe meshgrid plotted using rectangles'},
          'FontSize', 10, 'Color', 'black', 'FontWeight', 'bold', 'FontName', 'Monaco')
    xlabel('X')
    ylabel('Y')
    zlabel('Z')
subplot(3,2,4)
    contour(X,Y,Z)
    grid on
    title({'Octave contour' ; 'level curve lines of the matrix Z'},
          'FontSize', 10, 'Color', 'black', 'FontWeight', 'bold', 'FontName', 'Monaco')
    xlabel('X')
    ylabel('Y')
    zlabel('Z')
subplot(3,2,5)
    meshz(X,Y,Z)
    grid on
    title({'Octave meshz: wireframe 3Dmesh' ; 'plotted using rectangles'},
          'FontSize', 10, 'Color', 'black', 'FontWeight', 'bold', 'FontName', 'Monaco')
    xlabel('X')
    ylabel('Y')
    zlabel('Z')
subplot(3,2,6)
    waterfall(X,Y,Z)
    grid on
    title({'Octave waterfall' ; 'waterfall plot'},
          'FontSize', 10, 'Color', 'black', 'FontWeight', 'bold', 'FontName', 'Monaco')
    xlabel('X')
    ylabel('Y')
    zlabel('Z')
print('plot_6subplots.jpg','-djpg','-r300')
