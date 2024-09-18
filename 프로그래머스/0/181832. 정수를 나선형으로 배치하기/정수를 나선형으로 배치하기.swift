import Foundation

func solution(_ n:Int) -> [[Int]] {
    var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    let directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    var directionIndex = 0 // 현재 방향 인덱스
    var row = 0, col = 0   // 시작 위치
    var currentNumber = 1  // 시작 숫자
    
    while currentNumber <= n * n {
        matrix[row][col] = currentNumber
        currentNumber += 1
        
        // 다음 위치 계산
        let nextRow = row + directions[directionIndex].0
        let nextCol = col + directions[directionIndex].1
        
        if nextRow < 0 || nextRow >= n || nextCol < 0 || nextCol >= n || matrix[nextRow][nextCol] != 0 {
            directionIndex = (directionIndex + 1) % 4 // 방향을 바꿈
        }
        
        // 방향이 바뀌었을 수 있으니 새로운 위치 계산
        row += directions[directionIndex].0
        col += directions[directionIndex].1
    }
    
    return matrix
}