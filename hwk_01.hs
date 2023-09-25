dropEveryOther [] = []
dropEveryOther [a] = [a]
dropEveryOther (a:b:c) = a : (dropEveryOther c)
