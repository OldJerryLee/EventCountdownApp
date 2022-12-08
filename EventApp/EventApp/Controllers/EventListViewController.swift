//
//  EventListViewController.swift
//  EventApp
//
//  Created by Fabricio Pujol on 31/05/22.
//

import UIKit

class EventListViewController: UIViewController {

    var viewModel: EventListViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedAddEventButton))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    @objc private func tappedAddEventButton() {
        viewModel.tappedAddEvent()
    }

}
