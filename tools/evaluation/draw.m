function draw(prec, rec, ap, cum_fp)
% plot precision/recall
    figure(12)
    plot(rec,prec,'-');
    axis([0 1 0 1])
    grid;
    xlabel 'recall'
    ylabel 'precision'
    title(sprintf('Average Precision = %.3f',ap));
    set(12, 'Color', [.988, .988, .988])
    
    pause(0.1) %let's ui rendering catch up
    average_precision_image = frame2im(getframe(12));
    % getframe() is unreliable. Depending on the rendering settings, it will
    % grab foreground windows instead of the figure in question. It could also
    % return a partial image.
    imwrite(average_precision_image, 'visualizations/average_precision.png')
    
    figure(13)
    plot(cum_fp,rec,'-')
    axis([0 300 0 1])
    grid;
    xlabel 'False positives'
    ylabel 'Number of correct detections (recall)'
    title('This plot is meant to match Figure 6 in Viola Jones');