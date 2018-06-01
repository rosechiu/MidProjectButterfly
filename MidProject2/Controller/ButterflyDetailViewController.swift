//
//  ButterflyDetailViewController.swift
//  MidProject2
//
//  Created by csie on 2018/5/10.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ButterflyDetailViewController: UIViewController ,UITableViewDataSource,UITextViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ButterflyFoodTableViewCell.self),for: indexPath) as! ButterflyFoodTableViewCell
            cell.iconImageView.image = UIImage(named: "foodicon")
            cell.shortTextLabel.text = butterfly.food
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ButterflyDetailTextTableViewCell.self),for: indexPath) as! ButterflyDetailTextTableViewCell
            cell.penImageView.image = UIImage(named: "pen")
            cell.descriptionLabel.text = butterfly.description
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ButterflyLocationTableViewCell.self),for: indexPath) as! ButterflyLocationTableViewCell
            cell.butterflyIcon.image = UIImage(named: "iconButterfly")
            cell.locationLabel.text = butterfly.location
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:ButterflyDetailSeparatorCell.self),for:indexPath) as! ButterflyDetailSeparatorCell
            cell.titleLabel.text = "牠們分布在..."
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ButterflyDetailMapCell.self),for:indexPath) as! ButterflyDetailMapCell
            return cell
        default:
            fatalError("Hello!")
        }
    }
    

    //@IBOutlet var butterflyImageView: UIImageView!
    //var butterflyImageName = ""
    var butterfly:Butterfly = Butterfly()
    @IBOutlet var headerView: ButterflyDetailHeaderView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //butterflyImageView.image = UIImage(named: butterfly.image)
        headerView.headerImageView.image = UIImage(named: butterfly.image)
        headerView.nameLabel.text = butterfly.name
        headerView.scientific.text = butterfly.scientific
        navigationItem.title = butterfly.name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
