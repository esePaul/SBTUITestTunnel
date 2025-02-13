//
//  SBTExtensionTableViewController2.swift

//  SBTUITestTunnel_Example
//
//  Created by tomas on 20/06/2019.
//  Copyright © 2019 Tomas Camin. All rights reserved.
//

// swiftlint:disable implicit_return
// swiftformat:disable redundantReturn

import UIKit

class SBTExtensionCollectionViewController: UIViewController {

    private let scrollDirection: UICollectionView.ScrollDirection
    private let flowLayout: UICollectionViewFlowLayout
    private let collectionView: UICollectionView

    init(scrollDirection: UICollectionView.ScrollDirection) {
        self.scrollDirection = scrollDirection

        self.flowLayout = UICollectionViewFlowLayout()
        self.flowLayout.scrollDirection = scrollDirection

        self.collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        self.collectionView.backgroundColor = .green

        self.collectionView.contentInsetAdjustmentBehavior = .always
        self.collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.collectionView.contentInset =  UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        self.collectionView.register(Cell.self, forCellWithReuseIdentifier: "cell")
        self.collectionView.accessibilityIdentifier = "collection"
        self.collectionView.translatesAutoresizingMaskIntoConstraints = false

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
        ])

        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension SBTExtensionCollectionViewController: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? Cell {
            cell.configure(with: "\(indexPath.item)")
            return cell
        }
        return UICollectionViewCell()
    }
}

extension SBTExtensionCollectionViewController: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if scrollDirection == .vertical {
            return CGSize(width: collectionView.frame.width, height: 100)
        } else {
            return CGSize(width: 100, height: collectionView.frame.height)
        }
    }
}

private final class Cell: UICollectionViewCell {

    let label = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    func commonInit() {
        contentView.backgroundColor = .red

        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        contentView.addSubview(label)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }

    public func configure(with text: String?) {
        label.text = text
        accessibilityIdentifier = text
    }
}

