function a = SGD(training_data, epoch, mini_batch_size, eta, test_data=None)
        if (test_data!=None): 
        global n_test = len(test_data)
        endif
        
        global n = len(training_data)
        
        for num in 1 : epochs:
            random.shuffle(training_data)
            for x in 1: len(mini_batch_size:
            mini_batches = [
                training_data[x:x+mini_batch_size]
                
            for mini_batch in mini_batches:
                self.update_mini_batch(mini_batch, eta)
            if test_data:
                print "Epoch {0}: {1} / {2}".format(
                    j, self.evaluate(test_data), n_test)
            else:
                print "Epoch {0} complete".format(j)