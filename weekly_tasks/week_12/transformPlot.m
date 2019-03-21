function transformPlot(transformMatrix, vector)
% transformPlot defined in lecture notes

    rotatedVector = transformMatrix * vector;
    startX = zeros(1, 4);
    startY = zeros(1, 4);
    endX = [transformMatrix(1,:), vector(1), rotatedVector(1)];
    endY = [transformMatrix(2,:), vector(2), rotatedVector(2)];
    colors = ['r', 'g', 'b', 'p'];
    
    figure()
    hold on
    for i = 1:4
        quiver(startX(i), startY(i), endX(i), endY(i), colors(i))
    end
    legend('transVector_1', 'transVector_2', 'orgVector', 'transformed');
    hold off
end

