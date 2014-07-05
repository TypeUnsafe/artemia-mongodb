module main

import artemia


function main = |args| {

  let mongocli = mongo(): initialize("mydatabase", "localhost", 27017)

  let riri = mongocli: model("ducks")
    : field("firstName", "Riri")
    : field("lastName", "Duck")
    #: insert()

  let fifi = mongocli: model("ducks")
    : field("firstName", "Fifi")
    : field("lastName", "Duck") 
    #: insert() 

  let loulou = mongocli: model("ducks")
    : field("firstName", "Loulou")
    : field("lastName", "Duck")  
    #: insert()

  let ducks = mongocli: collection("ducks")

  ducks: fetch(): each(|duck| {
    println(duck: toJsonString())
  })

  ducks: fetchMaps(): each(|duck| {
    println(duck)
  })

  ducks: like("firstName", ".*i.*"): each(|duck| {
    println(duck: toJsonString())
  })

}