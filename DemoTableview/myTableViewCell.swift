//
//  myTableViewCell.swift
//  DemoTableview
//
//  Created by mayank ranka on 13/04/23.
//

import UIKit

class myTableViewCell: UITableViewCell {
    
    
    var playerLabel     : UILabel!
    var avatarImageView : UIImageView!
    var playerCrown     : UIImageView!
    var outOfLabel      : UILabel!
    
    var viewForCrown    : UIView!
    var viewInCell      : UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        loadcell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        loadcell()
    }

    func loadcell(){
        loadContent()
        loadAvatarImageView()
        loadPlayerLabe()
        loadOutOfLabel()
//        loadViewForCrown()
        loadCrownImageView()
        
    }
    
    func loadContent(){
        viewInCell = UIView()
        viewInCell.translatesAutoresizingMaskIntoConstraints = false
        viewInCell.clipsToBounds = false
        
//        viewInCell.layer.zPosition = 0
        self.addSubview(viewInCell)
        
        NSLayoutConstraint.activate([
            viewInCell.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            viewInCell.topAnchor.constraint(equalTo: self.topAnchor),
            viewInCell.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            viewInCell.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])

    }
    
    
    func loadOutOfLabel(){
        outOfLabel = UILabel()
        outOfLabel.translatesAutoresizingMaskIntoConstraints = false
        outOfLabel.textColor = .black
        outOfLabel.font = UIFont.systemFont(ofSize: 20)
        viewInCell.addSubview(outOfLabel)
        
//        viewInCell.bringSubviewToFront(outOfLabel)
        
        NSLayoutConstraint.activate([
            outOfLabel.trailingAnchor.constraint(equalTo: viewInCell.trailingAnchor, constant: -50),
            outOfLabel.centerYAnchor.constraint(equalTo: viewInCell.centerYAnchor)
        ])
    }
    
    func loadPlayerLabe(){
        
        playerLabel = UILabel()
        playerLabel.translatesAutoresizingMaskIntoConstraints = false
        playerLabel.text = "Player 1"
        playerLabel.textAlignment = .center
        playerLabel.textColor = .black
        playerLabel.font = UIFont.systemFont(ofSize: 20)
        viewInCell.addSubview(playerLabel)
        
        NSLayoutConstraint.activate([
            playerLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
            playerLabel.centerYAnchor.constraint(equalTo: viewInCell.centerYAnchor),
        ])
    }
    
    func loadAvatarImageView(){
        
        avatarImageView = UIImageView()
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.image = UIImage(named: "avatar")
        avatarImageView.layer.borderWidth = 1
        avatarImageView.layer.borderColor = .init(red: (247.0/255.0), green: (219.0/255.0), blue: (79.0/255.0), alpha: 1)
        avatarImageView.layer.cornerRadius = 10
        
        avatarImageView.layer.zPosition = 0
        viewInCell.addSubview(avatarImageView)
        
        NSLayoutConstraint.activate([
            avatarImageView.leadingAnchor.constraint(equalTo: viewInCell.leadingAnchor, constant: 50),
            avatarImageView.centerYAnchor.constraint(equalTo: viewInCell.centerYAnchor),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50),
//
        ])
    }
    
    func loadCrownImageView(){
        
        playerCrown = UIImageView()
        playerCrown.translatesAutoresizingMaskIntoConstraints = false
        playerCrown.image = UIImage(named: "crown")
        avatarImageView.addSubview(playerCrown)
        playerCrown.layer.zPosition = 1
        
//        playerCrown.bringSubviewToFront(avatarImageView)
        
        NSLayoutConstraint.activate([
            playerCrown.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor, constant: -15),
            playerCrown.topAnchor.constraint(equalTo: avatarImageView.topAnchor, constant: -20)
        ])
    }
    
//    func loadViewForCrown(){
//
//        viewForCrown = UIView()
//        viewForCrown.translatesAutoresizingMaskIntoConstraints = false
//        viewForCrown.backgroundColor = .red
//        avatarImageView.addSubview(viewForCrown)
//
//        NSLayoutConstraint.activate([
//            viewForCrown.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor, constant: 0 ),
//            viewForCrown.topAnchor.constraint(equalTo: avatarImageView.topAnchor, constant: -5)
//        ])
//    }
    
}
