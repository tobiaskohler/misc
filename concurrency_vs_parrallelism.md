Concurrency is about breaking up a programm into independently executing tasks that can be run potentially at the same time and STILL getting the right result at the end.

**Hence; a concurrent programm is one that can be parallelized**

The big strength of golang lies within the concept of concurrencies (**goroutines**) in combination with **channels**. The reason for that is the following:


| goroutine1 | goroutine2|
| ------------- |:-------------:| 
| 1. arbitrary_code()| 1. arbitrary_code()| 
| 2. arbitrary_code()| 2. arbitrary_code()| 
| 3. arbitrary_code()| 3. **c := <- "Hello World"** | 
| 4. arbitrary_code()| 4. arbitrary_code()| 
| 5. **message := <- c** | 5. arbitrary_code()| 
| 6. arbitrary_code()| 6. arbitrary_code()| 
| 7. arbitrary_code()| 7. arbitrary_code()| 


Goroutine1 executes functions 1-4, as soon as it reaches 5. it stops, as it now waits for the input coming from **"c"**. That **"c"** comes from goroutine2 from Step 3.
If, for whatever reason, gorotuine steps 1-2 take longers than the steps 1-4 of goroutine1, the goroutine1 will wait for the input given be goroutine2.
**That is a huge benefit!**, as go allows for communication and synchroniziation.

Only the SENDER is allowed to close the channel, never the RECEIVER. 

- Select statements are helpful. Because if one has two goroutines, but the programms prints the incoming results from channels from goroutines1 and 2 it will always wait for the slower goroutine the be finished before it prints the second print-statement.
