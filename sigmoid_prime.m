function [z] = sigmoid_prime(z)
%Derivative of the sigmoid function.
z = 1-sigmoid(z)
z = z.*sigmoid(z)
end

