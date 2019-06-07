# Script for 3D plot
t = 0:pi/50:10*pi;
    x = sin(t); y = cos(t); z = t;
    plot3(x, y, z,'ro');
    xlabel('Sine')
    ylabel('Cosine')
    zlabel('Value')
    title('3D Plot')
    grid on
    view(3) % default view point
#    view([10 15 45]) % change angle view point
    legend('Line')
print('plot_3D.jpg','-djpg','-r300')
