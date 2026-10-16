function [y1, y2] = vienasdu(x)
    y1 = sin(x);
    if nargout == 2
        y2 = cos(x);
    end
end