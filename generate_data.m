function [training_data, test_data] = generate_data(number)
global training_data;
global test_data;
for j =1:number

    training_data(j).x = [0.1*j;0.1*j];
    training_data(j).y = [1];
    
    training_data(j+number).x = [0.1*-j;0.1*j];
    training_data(j+number).y = [2];
    
    training_data(j+2*number).x = [0.1*-j;0.1*-j];
    training_data(j+2*number).y = [3];
    
    training_data(j+3*number).x = [0.1*j;0.1*-j];
    training_data(j+3*number).y = [4];
    
    test_data(j).x = [j+15;j+10];
    test_data(j).y = [1];
    
    test_data(j+1*number).x = [-j-15;j+10];
    test_data(j+1*number).y = [2];
    
    test_data(j+2*number).x = [-j-15;-j-10];
    test_data(j+2*number).y = [3];
    
    test_data(j+3*number).x = [j+15;-j-10];
    test_data(j+3*number).y = [4];
    
    
endfor
