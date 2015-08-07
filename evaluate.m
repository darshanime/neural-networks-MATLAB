function [n_test_score] = evaluate(test_data)

%        """Return the number of test inputs for which the neural
%        network outputs the correct result. Note that the neural
%        network's output is assumed to be the index of whichever
%        neuron in the final layer has the highest activation."""
        n_test_score=0;
         
        for i=1:numel(test_data)
            output_x= feedforward(test_data(i).x);
            predicted_y = max_value(output_x);
                        
            if (predicted_y == test_data(i).y)
            n_test_score +=1;
            end
        endfor

end
