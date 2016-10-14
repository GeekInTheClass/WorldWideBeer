//: Playground - noun: a place where people can play

import UIKit

enum BeerType:String
{
   case lager, draft, pilsener, munchener, dortmund, bock, porter, ale, stout, lambic, wheat
}

/*enum Continent:String
{
    case Asia, Europe, South_America, North_America, Africa, Oceania
}
*/
/*class Nation
{
    let country:String
    let continent:Continent
    let beer:Beer
    
    init(country:String, continent:Continent, beer:Beer)
    {
        self.country = country
        self.continent = continent
        self.beer = beer
    }
}
 */

class Beer{
    let name:String
    let country:String
    var type:BeerType?
    let alchol:Double
    
    
    init(name:String, country:String, alchol:Double){
        self.name = name
        self.country = country
        self.alchol = alchol
    }
}

let Blanc1664 = Beer(name: "1664 Blanc", country: "France", alchol: 5.0)
Blanc1664.type = BeerType.wheat

let LaTrappeTripel = Beer(name: "LaTrappe Tripel", country: "TheNetherlands", alchol: 8.0 )

let BigWave = Beer(name: "Big Wave", country: "US", alchol: 4.4)
BigWave.type = BeerType.ale

let SamuelAdams = Beer(name: "SamuelAdams", country: "US" , alchol: 4.9)
SamuelAdams.type = BeerType.lager

let Kloud = Beer(name: "Kloud", country: "Korea", alchol: 5.0)
Kloud.type = BeerType.lager

let SanMiguel = Beer(name: "SanMiguel", country: "Philippines", alchol: 5.0)
SanMiguel.type = BeerType.pilsener

let Kirin = Beer(name: "Kirin", country: "Japan", alchol: 5.5)
Kirin.type = BeerType.lager


var beers:[Beer] = []
beers += [Blanc1664, LaTrappeTripel, BigWave, SamuelAdams, Kloud, SanMiguel, Kirin]

var highAlcholBeer:[Beer] = []
var USBeer:[Beer] = []
var Lager:[Beer] = []
var USBeerString:String = ""
var alcholAmount:[String : Double] = [:]

for beer in beers
{
    if beer.alchol > 5.0
    {
        highAlcholBeer += [beer]
    }
}

for beer in beers
{
    if beer.country == "US"
    {
        USBeer += [beer]
    }
}

for beer in beers
{
    if(beer.country == "US")
    {
        USBeerString += beer.name
    }
}

for beer in beers
{
    if beer.type == BeerType.lager
    {
        Lager += [beer]
    }
}

for beer in beers
{
    var aa = 500 * beer.alchol / 100
    
    alcholAmount[beer.name] = aa
}
