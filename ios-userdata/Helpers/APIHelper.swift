import Foundation

class APIHelper {
    
    static func getUserDataBaseResponse(parameter: String?, completion: @escaping (BaseResponse) -> Void){
        
        let url: URL = URL(string: "https://randomuser.me/api/1.3/\(parameter!)")!
            
        print("[Started] getUsername() url=",url.debugDescription)
        
        URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
            
            guard let data = data, error == nil else {
                print("[Error] getUsername() error=",error!)
                return
            }
            
            do {
                let baseResponse: BaseResponse = try JSONDecoder().decode(BaseResponse.self, from: data)
                print("[Success] getUsername() name.first=", baseResponse.results[0].name?.first)
                completion(baseResponse)
                
            } catch {
                print("[Error] getUsername() JSONDecoder() error=", error)
                
            }
            
        }).resume() // Don't forget this
    }
}
