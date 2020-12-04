
import UIKit

class ViewController: UIViewController {
    
    var name: Name!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        APIHelper.getUserDataBaseResponse(parameter: "", completion: { baseResponse in
            
            print("viewDidLoad() name.last==", baseResponse.results[0].name?.last!)
            
            
        })
        
        
    }


}

