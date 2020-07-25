//
//  UsersFinance.swift
//  Finance
//
//  Created by Lykøs on 5/28/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import Foundation

class UserFinance: ObservableObject {
    @Published var age: String = ""
    @Published var futureAge: String = ""
    @Published var moneySaved : String = ""
    @Published var moneyPossesion : String = ""
    @Published var monthlyIncome : String = ""
    @Published var monthlySideIncome : String = ""
    @Published var passiveIncome : String = ""
    @Published var monthlyExpenses : String = ""
    
    @Published var rent : String = ""
    @Published var mortgage : String = ""
    @Published var carPayment : String = ""
    @Published var creditPayment : String = ""
    @Published var phoneBill : String = ""
    @Published var concert : String = ""
    @Published var food : String = ""
    @Published var alcohol : String = ""
    @Published var tobacco : String = ""
    @Published var drugs : String = ""
    @Published var shopping : String = ""
    @Published var gas : String = ""

    
    //calculates array of money you will have at the rate you are going
    func calcMoney() -> [Double] {
        let newAge = Int(age) ?? 0
        let newFutureAge = Int(futureAge) ?? 0
        let newMoneySaved = Double(moneySaved) ?? 0
        let newMoneyPossesion = Double(moneyPossesion ) ?? 0
        let newMonthlyIncome = Double(monthlyIncome) ?? 0
        let newMonthlyExpenses = Double(monthlyExpenses) ?? 0

        let passive = Double(passiveIncome) ?? 0
        let side = Double(monthlySideIncome) ?? 0

        var res : [Double] = []
        
        //base calulation without age
        let base = ( (newMoneySaved/newMoneyPossesion) + ((newMonthlyIncome + passive + side) - newMonthlyExpenses) ) * 12.0 * 0.92
        
        //get age range ex: 20 - 25 would give you 1...5
        let ages = newFutureAge - newAge + 1
        
        //calculations base * age
        for x in 1...ages{
            let ans : Double = Double(x) * base
            res.append(ans)
        }
        
        return res
    }

    //calculates array of money you will have at the rate you are going
    func calcMoney(checkAt : Int) -> Double {
        let newAge = Int(age) ?? 0
        
        if(checkAt < newAge){return 0}
        
        let newMoneySaved = Double(moneySaved) ?? 0
        let newMoneyPossesion = Double(moneyPossesion ) ?? 0
        let newMonthlyIncome = Double(monthlyIncome) ?? 0
        let newMonthlyExpenses = Double(monthlyExpenses) ?? 0

        let passive = Double(passiveIncome) ?? 0
        let side = Double(monthlySideIncome) ?? 0

        
        //base calulation without age
        let base = ( (newMoneySaved/newMoneyPossesion) + ((newMonthlyIncome + passive + side) - newMonthlyExpenses) ) * 12.0 * 0.92
        
        //get age range ex: 20 - 25 would give you 1...5
        let ages = Double(checkAt) - Double(newAge) + 1
        
        if(checkAt == newAge){return base}
        
        return  ages * base
        
    }
    
    func calcMoney(checkAt : Int) -> [Double] {
        let newAge = Int(age) ?? 0
//        let newFutureAge = Int(futureAge) ?? 0
        let newMoneySaved = Double(moneySaved) ?? 0
        let newMoneyPossesion = Double(moneyPossesion ) ?? 0
        let newMonthlyIncome = Double(monthlyIncome) ?? 0
        let newMonthlyExpenses = Double(monthlyExpenses) ?? 0

        let passive = Double(passiveIncome) ?? 0
        let side = Double(monthlySideIncome) ?? 0

        var res : [Double] = []
        
        //base calulation without age
        let base = ( (newMoneySaved/newMoneyPossesion) + ((newMonthlyIncome + passive + side) - newMonthlyExpenses) ) * 12.0 * 0.92
        
        //get age range ex: 20 - 25 would give you 1...5
        let ages = checkAt - newAge + 1
        
        //calculations base * age
        for x in 1...ages{
            let ans : Double = Double(x) * base
            res.append(ans)
        }
        
        return res
    }
    
    //return array [startAge ... targetAge]
    func ageRange() -> [Int]{
        let newAge = Int(age) ?? 0
        let newFutureAge = Int(futureAge) ?? 0
        return Array(newAge...newFutureAge)
    }
    
    
    ///Test Data
    func calcMoney(age: Int, futureAge: Int, moneySaved: Double, moneyPossesion: Double, monthlyIncome: Double, passive: Double, side: Double, monthlyExpenses: Double) -> [Double] {
        
        //base calulation without age
        let base = ( (moneySaved/moneyPossesion) + ((monthlyIncome + passive + side) - monthlyExpenses) ) * 12.0 * 0.92
        
        var res: [Double] = []
        //calculations base * age
        let ages = futureAge - age
        for x in 1...ages{
            let ans : Double = Double(x) * base
            res.append(ans)
        }
        
        return res
    }
    
    func advanced() -> [Double] {
        let newAge = Int(age) ?? 0
        let newFutureAge = Int(futureAge) ?? 0
        let newMoneySaved = Double(moneySaved) ?? 0
        let newMoneyPossesion = Double(moneyPossesion ) ?? 0
        let newMonthlyIncome = Double(monthlyIncome) ?? 0
        
        let rent = Double(self.rent) ?? 0
        let mortgage = Double(self.mortgage) ?? 0
        let carPayment = Double(self.carPayment) ?? 0
        let creditPayment = Double(self.creditPayment) ?? 0
        let phoneBill = Double(self.phoneBill) ?? 0
        let concert = Double(self.concert) ?? 0
        let food = Double(self.food) ?? 0
        let alcohol = Double(self.alcohol) ?? 0
        let tobacco = Double(self.tobacco) ?? 0
        let drugs = Double(self.drugs) ?? 0
        let shopping = Double(self.shopping) ?? 0
        let gas = Double(self.gas) ?? 0
        
        let newMonthlyExpenses = rent + mortgage + carPayment + creditPayment + phoneBill + concert + food + alcohol + tobacco + drugs + shopping + gas
        
        

        let passive = Double(passiveIncome) ?? 0
        let side = Double(monthlySideIncome) ?? 0

        var res : [Double] = []
        
        //base calulation without age
        let base = ( (newMoneySaved/newMoneyPossesion) + ((newMonthlyIncome + passive + side) - newMonthlyExpenses) ) * 12.0 * 0.92
        
        //get age range ex: 20 - 25 would give you 1...5
        let ages = newFutureAge - newAge + 1
        
        //calculations base * age
        for x in 1...ages{
            let ans : Double = Double(x) * base
            res.append(ans)
        }
        
        return res
    }
    
    func advanced(checkAt : Int) -> [Double] {
        let newAge = Int(age) ?? 0
//        let newFutureAge = Int(futureAge) ?? 0
        let newMoneySaved = Double(moneySaved) ?? 0
        let newMoneyPossesion = Double(moneyPossesion ) ?? 0
        let newMonthlyIncome = Double(monthlyIncome) ?? 0
        
        let rent = Double(self.rent) ?? 0
        let mortgage = Double(self.mortgage) ?? 0
        let carPayment = Double(self.carPayment) ?? 0
        let creditPayment = Double(self.creditPayment) ?? 0
        let phoneBill = Double(self.phoneBill) ?? 0
        let concert = Double(self.concert) ?? 0
        let food = Double(self.food) ?? 0
        let alcohol = Double(self.alcohol) ?? 0
        let tobacco = Double(self.tobacco) ?? 0
        let drugs = Double(self.drugs) ?? 0
        let shopping = Double(self.shopping) ?? 0
        let gas = Double(self.gas) ?? 0
        
        let newMonthlyExpenses = rent + mortgage + carPayment + creditPayment + phoneBill + concert + food + alcohol + tobacco + drugs + shopping + gas
        
        

        let passive = Double(passiveIncome) ?? 0
        let side = Double(monthlySideIncome) ?? 0

        var res : [Double] = []
        
        //base calulation without age
        let base = ( (newMoneySaved/newMoneyPossesion) + ((newMonthlyIncome + passive + side) - newMonthlyExpenses) ) * 12.0 * 0.92
        
        //get age range ex: 20 - 25 would give you 1...5
        let ages = checkAt - newAge + 1
        
        //calculations base * age
        for x in 1...ages{
            let ans : Double = Double(x) * base
            res.append(ans)
        }
        
        return res
    }

}
