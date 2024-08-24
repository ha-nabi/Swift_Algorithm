import Foundation

func solution(_ order:[String]) -> Int {
    let americanoPrice = 4500
    let cafeLattePrice = 5000
    
    var totalCost = 0
    
    for drink in order {
        switch drink {
        case "iceamericano", "americanoice", "hotamericano", "americanohot", "americano", "anything":
            totalCost += americanoPrice
        case "icecafelatte", "cafelatteice", "hotcafelatte", "cafelattehot", "cafelatte":
            totalCost += cafeLattePrice
        default:
            break
        }
    }
    
    return totalCost
}