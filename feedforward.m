function [a] = feedforward(a)
        global psizes;
        global biases;
        global weights;
        y=psizes(2:end);
        for i =1:numel(y)
        a = weights(i).weight*a + biases(i).bias;
        endfor

end
