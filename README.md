# neural-networks-MATLAB
Implementation of Artificial neural networks in MATLAB.

_______
**Usage demonstration** :

Defination of the network :
` >>> [num_layers, psizes, y, biases, weights ] = init([7,5,1]) `

This will create a 3 layer network with 7 nodes in the input layer, 5 nodes in the hidden layer and 1 node in the output layer. 
Also returned are the various variables related to the network created including random biases, weights etc.

Import your data using any of the many methods and store in the `training_data` and `test_data`. 
Do something like `>>> [training_data, test_data] = xlsread(data.xls)` 

Finally, for training use this :
`>>> SGD(training_data,test_data, epochs=100, eta_SGD=0.5)`

Don't forget to chage the parameters according to your needs, viz. epochs for which to train and the learning step size.