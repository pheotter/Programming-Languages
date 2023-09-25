fun dropEveryOther [] = []
  | dropEveryOther [a] = [a]
  | dropEveryOther (X :: Y :: L1) = (X :: (dropEveryOther L1))
