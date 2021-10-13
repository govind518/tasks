

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      let tabbarvc = UITabBarController()
        let vc1 = UINavigationController(rootViewController:  homeVC())
        let vc2 = UINavigationController(rootViewController:  searchVC())
        let vc3 = UINavigationController(rootViewController:  chatsVC())
        let vc4 = UINavigationController(rootViewController:  communityVC())
        let vc5 = UINavigationController(rootViewController:  profileVC())
        
        vc1.title = "home"
        vc2.title = "home"
        vc3.title = "home"
        vc4.title = "home"
        vc5.title = "home"
        tabbarvc.setViewControllers([vc1,vc2,vc3,vc4,vc5], animated: false)
        present(tabbarvc, animated: true, completion: nil)
       guard let items = tabbarvc.tabBar.items
       else{return}
        for item in items
        {
            item.image = UIImage (systemName :"house" )
        }
       
        tabbarvc.modalPresentationStyle = .fullScreen
        
        
    }


}
class homeVC :  UIViewController
{
    override func viewDidLoad() {
        view.backgroundColor = .red
        super.viewDidLoad()
    }
}

    class searchVC :  UIViewController
    {
        override func viewDidLoad() {
            view.backgroundColor = .blue
            super.viewDidLoad()
        }
        
    }
        class chatsVC :  UIViewController
        {
            override func viewDidLoad() {
                view.backgroundColor = .green
                super.viewDidLoad()
        }
        }
            class communityVC :  UIViewController
            {
                override func viewDidLoad() {
                    view.backgroundColor = .purple
                    super.viewDidLoad()
            }
            }
                class profileVC :  UIViewController
                {
                    override func viewDidLoad() {
                        view.backgroundColor = .orange
                        super.viewDidLoad()
                }
                }
