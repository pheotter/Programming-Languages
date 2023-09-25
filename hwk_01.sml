fun dropEveryOther [] L = L
  | dropEveryOther (X :: L1) L2 = (X :: (app L1 L2))
