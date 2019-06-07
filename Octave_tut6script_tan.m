# Script # plotting graphs plot(x,y) angles 60 degrees
cd /Users/pauline/Documents/Octave
angles=linspace(0,2*pi,100);
figure
plot(angles, tan(angles))
    grid on
    axis([0 7 -70 70])
    title('Octave plot: Graph of y=tan(x)')
    xlabel('Angle')
    ylabel('Value')
    grid on
    legend('Tan')
print('plot_tan.jpg','-djpg','-r300')
