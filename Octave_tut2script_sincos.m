# Script to plot sine and cosine
#cd /Users/pauline/Documents/Octave
angles=linspace(0,2*pi,100)
y=sin(angles)
figure
clf;
plot(angles,y,'mo','MarkerSize',5, angles,cos(angles),'r+','MarkerSize',5);
    title({'Octave plot' ; 'Graph of y=sin(x)'},
      'FontSize', 10, 'Color', 'b', 'FontWeight', 'normal', 'FontName', 'Monaco')
    xlabel('Angle');
    ylabel('Value');
    legend ({'Sine', 'Cosine'}, 'location', 'northeastoutside');
    text(3,0.5,'sin(\phi)');
    text(1,-0.5,'cos(\phi)');
    grid on;
    axis tight;
print('plot_sinecos.jpg','-djpg','-r300')
