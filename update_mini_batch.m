function [weights, biases, delta_nabla_b, delta_nabla_w] = update_mini_batch(training_data, eta_passed)
        
        global psizes;
        global num_layers = numel(psizes);
        global y;
        global biases;
        global weights;
        y=psizes(2:end);
        global n_training_data = numel(training_data);
        numel_y = numel(y);
        global eta = eta_passed
     
        for i =1:numel_y
          a=y(i);
          nabla_b(i).b=zeros(a,1);
          nabla_w(i).w = zeros(psizes(i+1), psizes(i));
        endfor 
        
        rand_array = randperm(n_training_data);        
       
        for i = 1: n_training_data
           x = training_data(rand_array(i)).x;
           y = training_data(rand_array(i)).y;
           [delta_nabla_b, delta_nabla_w] = backprop(x, y);
        
           for i =1:numel_y           
              nabla_b(i).b=nabla_b(i).b + delta_nabla_b(i).b;
              nabla_w(i).w = nabla_w(i).w + delta_nabla_w(i).w;
           endfor 
        endfor 
     
        for i =1:numel_y
              weights(i).weight = weights(i).weight - nabla_w(i).w*(eta_passed/n_training_data);
              biases(i).bias = biases(i).bias - (eta_passed/n_training_data).*nabla_b(i).b;
              
        endfor 
end
