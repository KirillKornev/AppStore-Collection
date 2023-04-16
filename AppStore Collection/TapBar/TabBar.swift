//
//  TabBar.swift
//  AppStore Collection
//
//  Created by Kirill Kornev on 16.04.2023.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
        configureAppearence()
    }

    private func configureAppearence() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .systemBackground
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = UITabBar.appearance().standardAppearance
    }

    private func createNavController(for rootViewController: UIViewController,
                             title: String,
                             image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }

    private func setupVCs() {
        viewControllers = [
            createNavController(for: AppsViewController(), title: "Apps", image: UIImage(systemName: "square.stack.3d.up.fill")!),
            createNavController(for: GameViewController(), title: "Games", image: UIImage(systemName: "gamecontroller")!),
            createNavController(for: ArcadeViewController(), title: "Arcade", image: UIImage(systemName: "dollarsign.circle")!),
            createNavController(for: SearchViewController(), title: "Search", image: UIImage(systemName: "magnifyingglass")!)
        ]
    }
}
