function [ret] = cost_derivative(output_activations, y)

%"""Return the vector of partial derivatives \partial C_x /
%        \partial a for the output activations."""
       ret = (output_activations.-y);
end








