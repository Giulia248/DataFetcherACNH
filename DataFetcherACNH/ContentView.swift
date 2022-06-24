//
//  ContentView.swift
//  DataFetcherACNH
//
//  Created by user on 24/06/22.
//

import SwiftUI
import SwiftyJSON

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("a").resizable().frame(width: 700, height: 1000)
                Image("c").resizable().frame(width: 190, height: 600).offset(x: 0, y: 60).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 20).offset(x: 0, y: 60))
                
                
                
                 NavigationLink(destination: Mac()) {
                     Text("Mac").padding().foregroundColor(.black).font(.system(size: 30)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                 }.offset(x: 0, y: 250)
                NavigationLink(destination: Kyle()) {
                    Text("Kyle").padding().foregroundColor(.black).font(.system(size: 30)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                   }.offset(x: 0, y: 150)
                NavigationLink(destination: BigTop()) {
                    Text("BigTop").padding().foregroundColor(.black).font(.system(size: 30)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                   }.offset(x: 0, y: 50)
                NavigationLink(destination: Boyd()) {
                    Text("Boyd").padding().foregroundColor(.black).font(.system(size: 30)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                   }.offset(x: 0, y: -50)
                NavigationLink(destination: Leopold()) {
                    Text("Leopold").padding().foregroundColor(.black).font(.system(size: 30)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                }.offset(x: 0, y: -150)
            }
        }

 
          
      }
}




struct Mac: View {
    @ObservedObject var villager = FetchMac()
    var body: some View {
        ZStack{
            Image("b").resizable().frame(width: 700, height: 1510)
            VStack{
                Text("💕")
                AsyncImage(url: URL(string: villager.iconUR))
                Text(villager.pers).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                Text(villager.birthdayStrin).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                Text(villager.catchPhras).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
            }.offset(x: 0, y: 0).background(.white)
      }.offset(x: 0, y: 0)
        }
    }

struct Kyle: View {
    @ObservedObject var villager = FetchKyle()
    var body: some View {
        ZStack{
            Image("b").resizable().frame(width: 700, height: 1510)
            VStack{
                Text("💕")
                AsyncImage(url: URL(string: villager.iconUR))
                Text(villager.pers).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                Text(villager.birthdayStrin).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                Text(villager.catchPhras).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
            }.offset(x: 0, y: 0)
      }.offset(x: 0, y: 0).background(.white)
        }
    }
struct BigTop: View {
    @ObservedObject var villager = FetchBigTop()
    var body: some View {
        ZStack{
            Image("b").resizable().frame(width: 700, height: 1510)
            VStack{
                Text("💕")
                AsyncImage(url: URL(string: villager.iconUR))
                Text(villager.pers).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                Text(villager.birthdayStrin).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                Text(villager.catchPhras).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
            }.offset(x: 0, y: 0)
      }.offset(x: 0, y: 0).background(.white)
        }
    }

struct Boyd: View {
    @ObservedObject var villager = FetchBoyd()
    var body: some View {
        ZStack{
            Image("b").resizable().frame(width: 700, height: 1510)
            VStack{
                Text("💕")
                AsyncImage(url: URL(string: villager.iconUR))
                Text(villager.pers).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                Text(villager.birthdayStrin).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                Text(villager.catchPhras).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
            }.offset(x: 0, y: 0)
      }.offset(x: 0, y: 0).background(.white)
        }
    }

struct Leopold: View {
    @ObservedObject var villager = FetchLeopold()
    var body: some View {
        ZStack{
            Image("b").resizable().frame(width: 700, height: 1510)
            VStack{
                Text("💕")
                AsyncImage(url: URL(string: villager.iconUR))
                Text(villager.pers).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                Text(villager.birthdayStrin).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
                Text(villager.catchPhras).padding().foregroundColor(.black).font(.system(size: 20)).overlay(RoundedRectangle(cornerRadius:50).stroke(Color.black, lineWidth: 5))
            }.offset(x: 0, y: 0)
      }.offset(x: 0, y: 0).background(.white)
        }
    }






//°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        Mac()
    }
}
//°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°

struct Villager : Identifiable{
    let id: String
    let personality, birthdayString: String
    let catchPhrase: String
    let imageURI: String
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
    var birthdayStrin = " "
    var catchPhras = " "
    var iconUR = " "
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
            self.birthdayStrin = json["birthday-string"].string ?? "N/A"
            self.catchPhras = json["catch-phrase"].string ?? "N/A"
            self.iconUR = json["image_uri"].string ?? "N/A"
        }.resume()
    }
    
   }

class FetchKyle: ObservableObject {
     var pers = " "
    var birthdayStrin = " "
    var catchPhras = " "
    var iconUR = " "
    init() {
        let url = URL(string: "https://acnhapi.com/v1/villagers/390")!
        let session = URLSession(configuration: .default)
        session.dataTask(with: url) { (data, _, err) in
            if err != nil {
                print(err.debugDescription)
            }
            let json = try! JSON(data: data!)
            print(json)
            self.pers = json["personality"].string ?? "N/A"
            self.birthdayStrin = json["birthday-string"].string ?? "N/A"
            self.catchPhras = json["catch-phrase"].string ?? "N/A"
            self.iconUR = json["image_uri"].string ?? "N/A"
        }.resume()
    }
    
   }

class FetchBigTop: ObservableObject {
     var pers = " "
    var birthdayStrin = " "
    var catchPhras = " "
    var iconUR = " "
    init() {
        let url = URL(string: "https://acnhapi.com/v1/villagers/146")!
        let session = URLSession(configuration: .default)
        session.dataTask(with: url) { (data, _, err) in
            if err != nil {
                print(err.debugDescription)
            }
            let json = try! JSON(data: data!)
            print(json)
            self.pers = json["personality"].string ?? "N/A"
            self.birthdayStrin = json["birthday-string"].string ?? "N/A"
            self.catchPhras = json["catch-phrase"].string ?? "N/A"
            self.iconUR = json["image_uri"].string ?? "N/A"
        }.resume()
    }
    
   }

class FetchBoyd: ObservableObject {
     var pers = " "
    var birthdayStrin = " "
    var catchPhras = " "
    var iconUR = " "
    init() {
        let url = URL(string: "https://acnhapi.com/v1/villagers/185")!
        let session = URLSession(configuration: .default)
        session.dataTask(with: url) { (data, _, err) in
            if err != nil {
                print(err.debugDescription)
            }
            let json = try! JSON(data: data!)
            print(json)
            self.pers = json["personality"].string ?? "N/A"
            self.birthdayStrin = json["birthday-string"].string ?? "N/A"
            self.catchPhras = json["catch-phrase"].string ?? "N/A"
            self.iconUR = json["image_uri"].string ?? "N/A"
        }.resume()
    }
    
   }

class FetchLeopold: ObservableObject {
     var pers = " "
    var birthdayStrin = " "
    var catchPhras = " "
    var iconUR = " "
    init() {
        let url = URL(string: "https://acnhapi.com/v1/villagers/240")!
        let session = URLSession(configuration: .default)
        session.dataTask(with: url) { (data, _, err) in
            if err != nil {
                print(err.debugDescription)
            }
            let json = try! JSON(data: data!)
            print(json)
            self.pers = json["personality"].string ?? "N/A"
            self.birthdayStrin = json["birthday-string"].string ?? "N/A"
            self.catchPhras = json["catch-phrase"].string ?? "N/A"
            self.iconUR = json["image_uri"].string ?? "N/A"
        }.resume()
    }
    
   }

