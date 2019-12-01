//
//  StoriesImageCell.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 27/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class StoriesImageCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet private weak var collection : UICollectionView?
    
    private var dataModel : StoriesDataModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collection?.delegate = self
        collection?.dataSource = self
    }
    
    private func registerViews() {
        let identifier : String = String(describing: StoryCollectionCell.self)
        collection?.register(UINib(nibName: identifier, bundle: Bundle.main), forCellWithReuseIdentifier: identifier)
    }
    
    func configure(dataModel: StoriesDataModel) {
        self.dataModel = dataModel
        registerViews()
        collection?.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (dataModel?.stories?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let storyDataModel = dataModel?.stories?[indexPath.row]
        let identifier = String(describing: StoryCollectionCell.self)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        if let storyCollectionCell = cell as? StoryCollectionCell,
            let storyDataModel = storyDataModel {
            storyCollectionCell.configure(decorator: StoryCollectionDecorator(storyDataModel: storyDataModel))
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 110, height: 150)
    }
    
}
