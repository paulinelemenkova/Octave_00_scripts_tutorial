# Script for plotting histograms of the given vector on-the-fly
figure
w = -6+sqrt(10)*randn(1,10000); % produce a certain line vector
x = [1,2,3,14,5,7,6,4];
subplot(2,2,1)
#hist(w, 50, "facecolor", "r", "edgecolor", "b")
hist(w, 50)
    colormap (cool ());
    grid on
    title({'Octave hist: a histogram plot' ; 'Function: w=-6+sqrt(10)*randn(1,10000)'},
      'FontSize', 12, 'Color', 'black', 'FontWeight', 'Normal', 'FontName', 'Monaco')
    xlabel('X')
    ylabel('Y')
subplot(2,2,2)
rose(w, 50)
    grid on
    title({'Octave rose: Rose diagram' ; '20 angular bins'},
      'FontSize', 12, 'Color', 'black', 'FontWeight', 'Normal', 'FontName', 'Monaco')
    xlabel('X')
    ylabel('Y')
subplot(2,2,3)
    bar (randn (1, 50, 1), "facecolor", "r", "edgecolor", "b");
    grid on
    title({'Octave bar' ; 'Bar chart (randn (1, 50, 1)'},
      'FontSize', 12, 'Color', 'black', 'FontWeight', 'Normal', 'FontName', 'Monaco')
    xlabel('X')
    ylabel('Y')
subplot(2,2,4)
    pie (x);
    grid on
    title({'Octave pie' ; 'Pie chart'},
      'FontSize', 12, 'Color', 'black', 'FontWeight', 'Normal', 'FontName', 'Monaco')
print('plot_four_hists.jpg','-djpg','-r300')
