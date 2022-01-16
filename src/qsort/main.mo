import Array "mo:base/Array";
import Int "mo:base/Int";
import Quicksort "Quicksort";

actor main {
    public func qsort(arr: [Int]): async [Int] {
        let n = arr.size();
        if (n < 2) {
            return arr;
        } else {
            let result = Array.thaw<Int>(arr);
            Quicksort.quickSort(result, 0, n - 1);
            return Array.freeze(result);
        };
    };
};
