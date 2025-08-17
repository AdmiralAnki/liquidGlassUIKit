//
//  AppTabBarController.swift
//  liquidGlassUIKit
//
//  Created by Ankith on 17/08/25.
//
import UIKit

class AppTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBar()
    }
    
    
    func setupTabBar(){
        
        let searchTab = UISearchTab { tab in
            UINavigationController(rootViewController:SearchViewController())
        }
        
//        searchTab.automaticallyActivatesSearch = true
        
        tabs = [
            UITab(title: "Chats", image:  UIImage(systemName: "message"), identifier: "chats") { tab in
                UINavigationController(rootViewController:ChatsViewController())
            },
            
            UITab(title: "Contacts", image:  UIImage(systemName: "person.2"), identifier: "contacts") { tab in
                UINavigationController(rootViewController:ContactsViewController())
            },
            
            UITab(title: "Groups", image:  UIImage(systemName: "person.3"), identifier: "groups") { tab in
                UINavigationController(rootViewController:GroupsViewController())
            },
            
            UITab(title: "Settings", image:  UIImage(systemName: "gearshape"), identifier: "settings") { tab in
                UINavigationController(rootViewController:SettingsViewController())
            },
            searchTab
        ]
//        searchTab.automaticallyActivatesSearch = true
        
        tabBarMinimizeBehavior = .onScrollDown
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
