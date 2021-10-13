

import UIKit
protocol eventacion : class {
    func eventhandler(atcell cell : UITableViewCell)
}

class TableViewCell: UITableViewCell {
    
    weak var eventdelegate : eventacion?
    var callbackhandler : ((_ cell : UITableViewCell) -> Void)?
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
    
    
    @IBAction func Updateuiaction(_ sender: Any) {
        print("update ui butoon taped")
        //eventdelegate?.eventhandler(atcell : self)
        self.callbackhandler?(self)
    }
}
