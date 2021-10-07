//


import UIKit

class ApiViewController: UIViewController {
    @IBOutlet weak var label1 : UILabel!
    
    @IBOutlet weak var activityindicator : UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
  
    @IBAction func fetchdata(_ sender: Any) {
    
    
        self.activityindicator.startAnimating()
        let session = URLSession(configuration: URLSessionConfiguration.default)
        if let url = URL(string: "https://reqres.in/api/users?page=2"){
            let urlrequest = URLRequest(url: url)
            let dataTask = session.dataTask(with: urlrequest){(data, response , error) in
                DispatchQueue.main.async {
                    self.activityindicator.stopAnimating()
                }
                if let apiResponse = response as? HTTPURLResponse, apiResponse.statusCode == 200{
                    self.extractJson (formdata :data)
                }
            }
            dataTask.resume()
        }
    }
    func extractJson(formdata data :Data?)
    {
        guard let responsedata = data else{return}
        do{
            let json = try JSONSerialization.jsonObject(with: responsedata, options: .mutableContainers)
            print(json)
        } catch{print(error.localizedDescription)}
    }
    
}
