import Array "mo:base/Array";
import Int "mo:base/Int";

module Quicksort {
    public func quickSort(s: [var Int], l: Int, r: Int) : () {
        if (l < r) {
            var i = l;
            var j = r;
            var x = s[Int.abs(l)];
            while (i < j)
            {
                label Loop1 while(s[Int.abs(j)] >= x){
                    if (i < j) {
                        j -= 1;
                    } else {
                        break Loop1;
                        };
                    };
            
                if(i < j){
                    s[Int.abs(i)] := s[Int.abs(j)];
                    i+=1;
                    };
            
                label Loop2 while(s[Int.abs(i)] < x) {
                    if (i < j) {
                    i += 1;
                } else {
                    break Loop2;
                    };
                    };
                        

                if(i < j) {
                    s[Int.abs(j)] := s[Int.abs(i)];
                    j -= 1;
                };
            };
            s[Int.abs(i)] := x;
            quickSort(s, l, i - 1); // 递归调用 
            quickSort(s, i + 1, r);
        }
    };
};