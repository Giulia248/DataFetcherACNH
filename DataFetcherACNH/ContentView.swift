//
//  ContentView.swift
//  DataFetcherACNH
//
//  Created by user on 24/06/22.
//

import SwiftUI
import SwiftyJSON

struct ContentView: View {
    @ObservedObject var villager = FetchMac()
    var body: some View {
        ZStack{
                
            
            Button(" a "){
                print(villager.getPersonality())
            }
            

            
        }
    
        
    }
}








//°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°

struct Villager : Identifiable{
    let id: String
    let personality, birthdayString: String
    let catchPhrase: String
    let iconURI: String
    /*
     let personality = el.1["personality"].stringValue
     let birthdayString = el.1["birthdayString"].stringValue
     let catchPhrase = el.1["catchPhrase"].stringValue
     let iconURI = el.1["iconURI"].stringValue
     */
}

// MARK: - CatchTranslations
struct CatchTranslations {
    let catchUSen, catchEUen, catchEUde, catchEUes: String
    let catchUSes, catchEUfr, catchUSfr, catchEUit: String
    let catchEUnl, catchCNzh, catchTWzh, catchJPja: String
    let catchKRko, catchEUru: String
    
    
    
    
}

// MARK: - Name
struct Name {
    let nameUSen, nameEUen, nameEUde, nameEUes: String
    let nameUSes, nameEUfr, nameUSfr, nameEUit: String
    let nameEUnl, nameCNzh, nameTWzh, nameJPja: String
    let nameKRko, nameEUru: String
}

class FetchMac: ObservableObject {
     var pers = " "
    init() {
        let url = URL(string: "https://acnhapi.com/v1/villagers/122")!
        let session = URLSession(configuration: .default)
        session.dataTask(with: url) { (data, _, err) in
            if err != nil {
                print(err.debugDescription)
            }
            let json = try! JSON(data: data!)
            print(json)
            self.pers = json["personality"].string ?? "N/A"
            print("Name: \(self.pers)")
        }.resume()
    }
    
    func getPersonality( ) -> String{
        
        return pers
    }
    
}
