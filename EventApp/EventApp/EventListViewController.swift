//
//  EventListViewController.swift
//  EventApp
//
//  Created by Fabricio Pujol on 31/05/22.
//

import UIKit

class EventListViewController: UIViewController {

    static func instantiate() -> EventListViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(withIdentifier: "EventListViewController") as! EventListViewController
        return controller
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedRightBarButton))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = "Event"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    @objc private func tappedRightBarButton() {
        print("Tapped")
    }

}
