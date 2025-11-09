import std::io;

fn void main(){
    // Learning Arrays
    float avg, sum_2; 
    int sum, i, j, k;


    // Different Arrays
    int[5] numbers = {127, 0, 1, 0, 10};
    float[3][2] measurements = {            //[3][2] => 3 values in 2 rows 
        { 2.3, 6.6, 1.1 },                  //[3][2] doesn't mean 3 rows and 2 columns like in  C
        { 8.1, 4.2, 2.7 }
    };     
    String[5] fruits = {"Apple", "Banana", "Cherry", "Date", "Elderberry"};

    //Using for loop - 1D Array
    for (i = 0; i < numbers.len ; i = i + 1){
      io::printf("%d ",numbers[i]);  
      sum = numbers[i] + sum;
      avg = (float)sum / numbers.len;               //an explicit cast to 'float'
    } 

    io::printfn("");

    //Using for loop - 2D Array
    for(j = 0; j < 2; j += 1){
        for(k = 0; k < 3; k += 1){
            io::printfn("measurements[%d][%d] = %.2f", i, j, measurements[j][k]);
            sum_2 = measurements[j][k] + sum_2;
        }
        io::printfn("");
    }


    // Printing Press
      io::printfn("A for %s\n",fruits[0]);
      io::printfn("third number is %d\n",numbers[2]);
      io::printfn("SUM of 2D Array: %.2f\n",sum_2);
      io::printfn("SUM of 1D Array: %d\n",sum);
      io::printfn("AVG: %.2f\n",avg);
        
}