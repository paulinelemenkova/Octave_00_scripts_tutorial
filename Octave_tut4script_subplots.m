# Script to plot two subplots (rows ,columns ,select )
x = linspace(-10, 10);
subplot(2,1,1) % Specify two rows, one column, and select
    plot(x, sin(x));
    xlabel('Angle')
    ylabel('Value')
    title('Plot-1: Graph of y=sin(x)')
    grid on
    legend('Sine')
subplot(2,1,2);
    plot(x, sin(x)./x);
    xlabel('Angle')
    ylabel('Value')
    title('Plot-2: Graph of y=sin(x)./x')
    grid on
    legend('Sine')
print('plot_twosubplots.jpg','-djpg','-r300')
