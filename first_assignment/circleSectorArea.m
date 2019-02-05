% I hereby confirm that I know UiBs guidelines for ethics in regards to 
% the education and that I have written this submission.
% Olav Gjerde

function [sectorArea] = circleSectorArea(radius, angle)
%circleSectorArea finds the area of a sector given a radius and an angle
    if (angle < -2*pi || angle > 2*pi || radius < 0)
        argException = MException("Args:InvalidArguments", ...
                                  "Please check that your arguments are valid: -2pi <= angle <= 2pi & radius >= 0");
        throw(argException);
    end
    sectorArea = (angle/2) * radius^2;
end

