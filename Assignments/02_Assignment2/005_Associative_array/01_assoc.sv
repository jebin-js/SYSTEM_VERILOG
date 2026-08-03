//6. Write a associative array example .explain its functionality.


module associative_array;

    int a[int];

    initial begin

        a[100]  = 10;
        a[200]  = 20;
        a[500]  = 30;

        $display("================ASSOCIATIVE ARRAY================");

        foreach (a[i])
            $display("Index = %0d, Value = %0d", i, a[i]);

    end

endmodule

/*Functionality of Associative Array (Summary)
An associative array stores data using a key (index) instead of continuous indexes.
Memory is allocated only for the keys that contain data, which avoids memory wastage.
It is mainly used to store sparse data, where indexes are not sequential.
The foreach loop iterates only over the existing keys, not all possible indexes.
Associative arrays support built-in methods such as first(), last(), next(), prev(), exists(), delete(), and num() for easy traversal and management.*/
