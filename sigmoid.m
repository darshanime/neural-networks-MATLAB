function [z] = sigmoid(z)
%The sigmoid function
z = exp(-z);
z = 1+z;
z = 1./z;
end

