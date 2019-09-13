//
//  Model.swift
//  CumulativeProbability
//
//  Created by macuser on 9/13/19.
//  Copyright © 2019 WSU. All rights reserved.
//

import Foundation

class Model {
    public var binomialProbability : Double = 0
    public var probabilityOfSuccess : Double = 0
    public var numberOfTrials : Int = 0
    public var numberOfSuccesses : Int = 0
    
    func getBinomialProbability(){
        let combo = self.combination(n: self.numberOfTrials, x: self.numberOfSuccesses)
        let pow = self.power(n: self.probabilityOfSuccess, p: self.numberOfSuccesses)
        let oneMinusPPow = self.power(n: (1 - self.probabilityOfSuccess), p: (self.numberOfTrials - self.numberOfSuccesses))
        self.binomialProbability = Double(combo) * pow * oneMinusPPow
    }
    
    func combination(n : Int, x : Int) -> Int{
        return self.factorial(n: n) / ( self.factorial(n: x) * self.factorial(n: (n - x)) )
    }
    
    func factorial(n : Int) -> Int{
        if(n > 0){
            return n * self.factorial(n : n - 1)
        }
        else if (n == 0){
            return 1
        }
        else{
            return -1
        }
    }
    
    func power(n : Double, p : Int) -> Double{
        
        if(p == 0)
        {
            return 1
        }
        
        var retVal = n
        for _ in 1...p{
            retVal = retVal * n
        }
        return retVal
    }
}
