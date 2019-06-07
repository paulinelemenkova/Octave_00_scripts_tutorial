# Script to calculate and plot a rectified sine wave
t = linspace(0, 10, 100);
subplot(1,1,1) % Specify 1 row, 1 column, and select
    y = abs(sin(t)); %The abs command makes all negative numbers positive
    plot(t,y);
    xlabel('t');
    title('Rectified Sine Wave');
    grid on
    legend('Rectified Sine Wave')
print('plot_rectsinewave.jpg','-djpg','-r300')
