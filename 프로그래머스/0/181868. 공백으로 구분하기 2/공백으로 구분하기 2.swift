import Foundation

func solution(_ my_string:String) -> [String] {
    return my_string.split(separator: " ", omittingEmptySubsequences: true).map(String.init)
}