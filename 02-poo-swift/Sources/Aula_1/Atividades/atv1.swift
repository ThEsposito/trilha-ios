func plusMinus(_ arr: [Int]) -> (Double, Double, Double) {
    var sumPos: Double = 0
    var sumNeg: Double = 0
    var sumZero: Double = 0

    for i in 0..<arr.count{
        if arr[i] > 0{
            sumPos += 1
        } else if(arr[i] < 0){
            sumNeg += 1
        } else {
            sumZero += 1
        }
    }

    let fracPos: Double = sumPos/Double(arr.count)
    let fracNeg: Double = sumNeg/Double(arr.count)
    let fracZero: Double = sumZero/Double(arr.count)
    
   return (fracPos, fracNeg, fracZero)
}

let arr: [Int] = [-4, 3, -9, 0, 4, 1]
print(plusMinus(arr))