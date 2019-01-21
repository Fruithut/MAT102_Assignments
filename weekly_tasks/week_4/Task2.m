%Task 2

triangleArea = @(height, width)(height * width) / 2;
triangleArea(10, 2)

boxArea = @(height, width, length) height * width * length;
boxArea(10, 10, 10)

circleSectorArea = @(radius, degrees) ((degrees * pi) / 360) * radius^2;
circleSectorArea(4, 40)