function [nabla_b, nabla_w] = backprop(input_x,input_y)
%        Return a tuple ``(nabla_b, nabla_w)`` representing the
%        gradient for the cost function C_x.  ``nabla_b`` and
%        ``nabla_w`` are layer-by-layer lists of numpy arrays, similar
%        to ``self.biases`` and ``self.weights``.
        global psizes;
        global num_layers = numel(psizes);
        global y;
        global biases;
        global weights;
        y=psizes(2:end);
        numel_y = numel(y);
   
        for i =1:numel_y
          a=y(i);
          nabla_b(i).b=zeros(a,1);
          nabla_w(i).w = zeros(psizes(i+1), psizes(i));
        endfor 

% Feedforward
        activation = input_x;
        activations(1).activ = [input_x];
       
        for i =1:numel_y
            z = weights(i).weight*activation + biases(i).bias;
            zs(i).zs= z;
            activation = sigmoid(z);
            activations(i+1).activ = activation;
        endfor

%Backward pass
        delta = cost_derivative(activations(numel_y+1).activ, input_y).*sigmoid_prime(zs(numel_y).zs);
        nabla_b(numel_y).b = delta;
        nabla_w(numel_y).w = delta.*activations(numel_y).activ';
        
        for l =1:numel_y-1
            z = zs(numel_y-l).zs;
            spv = sigmoid_prime(z);
            delta_new = (transpose(weights(numel_y-l+1).weight)*delta).*spv;
            delta=delta_new;
            nabla_b(numel_y-l).b = delta;
            nabla_w(numel_y-l).w = delta.*transpose(activations(numel_y-l).activ);
        endfor        
end
