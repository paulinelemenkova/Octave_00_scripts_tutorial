# Script to plot sine and cosine
#cd /Users/pauline/Documents/Octave
angles=linspace(0,2*pi,100)
y=sin(angles)
figure
clf;
subplot(2,2,1)
stairs(angles,y,'m','MarkerSize',5, angles,cos(angles),'r','MarkerSize',5);
    title({'Octave stairs plot' ; 'Graph of y=sin(x)'},
      'FontSize', 10, 'Color', 'b', 'FontWeight', 'normal', 'FontName', 'Monaco')
    xlabel('Angle');
    ylabel('Value');
    legend ({'Sine', 'Cosine'}, 'location', 'northeastoutside');
    text(3,0.5,'sin(\phi)');
    text(1,-0.5,'cos(\phi)');
    grid on;
    axis tight;
subplot(2,2,2)
quiver(angles,y,'b-','MarkerSize',5, angles,cos(angles),'MarkerSize',5);
    title({'Octave quiver plot' ; 'Graph of y=sin(x)'},
      'FontSize', 10, 'Color', 'b', 'FontWeight', 'normal', 'FontName', 'Monaco')
    xlabel('Angle');
    ylabel('Value');
    legend ({'Sine', 'Cosine'}, 'location', 'northeastoutside');
    grid on;
    axis tight;
subplot(2,2,3)
stem(angles,y,'b','MarkerSize',5, angles,cos(angles),'MarkerSize',5);
    title({'Octave stem plot' ; 'Graph of y=sin(x)'},
      'FontSize', 10, 'Color', 'b', 'FontWeight', 'normal', 'FontName', 'Monaco')
    xlabel('Angle');
    ylabel('Value');
    legend ({'Sine', 'Cosine'}, 'location', 'northeastoutside');
    grid on;
    axis tight;
subplot(2,2,4)
area(angles,y,'g','MarkerSize',5, angles,cos(angles),'g','MarkerSize',5);
    title({'Octave area plot' ; 'Graph of y=sin(x)'},
      'FontSize', 10, 'Color', 'b', 'FontWeight', 'normal', 'FontName', 'Monaco')
    xlabel('Angle');
    ylabel('Value');
    legend ({'Sine', 'Cosine'}, 'location', 'northeastoutside');
    grid on;
    axis tight;
print('plot_10.jpg','-djpg','-r300')



