# DataFetcherACNH


Data Fetcher based on Animal Crossing series




https://user-images.githubusercontent.com/106954791/175520548-475c0162-4c82-44ec-a8d8-25a9ac92f503.mov



data fetcher code:

'


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

'
