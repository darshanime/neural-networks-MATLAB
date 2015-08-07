function [] = SGD(training_data,test_data, epochs, eta_SGD)
%        Train the neural network using full-batch stochastic
%        gradient descent.  The ``training_data`` is a struct of arrays
%        ``(x, y)`` representing the training inputs and the desired
%        outputs. If ``test_data`` is provided then the
%        network will be evaluated against the test data after each
%        epoch, and partial progress printed out.  This is useful for
%       tracking progress, but slows things down substantially."""

        disp("After each iteration, results will be shown.")     
                 
        global n_test_data = numel(test_data);
        global num_layers = numel(sizes);
        global psizes = sizes;
        y=psizes(2:end);
        global biases;
        global weights;
        global eta;
        
    for j =1:epochs                
        update_mini_batch(training_data, eta_SGD);        
     
        
            [n_test_score] = evaluate(test_data);        
            fprintf('Epoch %d : %d out of %d \n', j, n_test_score, n_test_data)   
    endfor

end
