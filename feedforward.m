function [a] = feedforward(a)
%   If a is the input to the network, what would be the output ?
        global psizes;
        global biases;
        global weights;
        y=psizes(2:end);
        for i =1:numel(y)
        z = weights(i).weight*a + biases(i).bias;
        a = sigmoid(z);
        endfor

end
