let rec dropEveryOther x =
  match x with
  |[]->[]
  |[a]->[a]
  |a::b::c->a::dropEveryOther c ;;
