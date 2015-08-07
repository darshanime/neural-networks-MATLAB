function [index_ans] = max_value(network_out)

max_ans = network_out(1);
index_ans=1;
for i=2:numel(network_out)
          if (network_out(i) > max_ans)
            max_ans = network_out(i);
            index_ans = i;
          end
endfor

