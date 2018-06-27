//
//  ButterflyTableViewController.swift
//  MidProject2
//
//  Created by csie on 2018/5/9.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ButterflyTableViewController: UITableViewController {
    var number: Int!
    /*var butterflyName1 = ["昇天鳳蝶","青斑鳳蝶","紅斑鳳蝶","斑鳳蝶","大鳳蝶"]
    var butterflyName2 = ["墨子黃斑弄蝶","萬大星褐弄蝶","埔里黃斑弄蝶","黑澤星弄蝶","黃斑弄蝶"]
    var butterflyName3 = ["寬邊綠小灰蝶","姬白小灰蝶","淺黑小灰蝶","白小灰蝶","黑燕蝶"]
    var butterflyImageView1 = ["butterfly1","butterfly3","butterfly5","butterfly2","butterfly4"]
    var butterflyImageView2 = ["butterfly8","butterfly9","butterfly7","butterfly10","butterfly6"]
    var butterflyImageView3 = ["butterfly11","butterfly14","butterfly15","butterfly13","butterfly12"]*/
    var selectButterfly: Butterfly = Butterfly()
    
    var butterfly1:[Butterfly] = [Butterfly(name:"昇天鳳蝶",scientific:"Pazala eurous",image:"butterfly1",food:"樟科植物",description:"本種幼蟲以樟科植物，如土肉桂等為食，一年一世代，成蟲主要在春季活動。",location:"埔里鎮大學路一號"),Butterfly(name:"青斑鳳蝶",scientific:"Graphium doson",image:"butterfly3",food:"木蘭科植物",description:"本種幼蟲以木蘭科植物，如白玉蘭、含笑花、烏心石等為食，一年多世代，以蛹態越冬。",location:"高雄左營區大順一路238號"),Butterfly(name:"紅斑鳳蝶",scientific:"Papilio rumanzovia",image:"butterfly5",food:"芸香科植物",description:"又名紅斑大鳳蝶、基紅鳳蝶、紅斑甌蝶、紅基鳳蝶，為鳳蝶科鳳蝶屬下的一個種。",location:"台南"),Butterfly(name:"斑鳳蝶",scientific:"Papilio clytia",image:"butterfly2",food:"樟科植物",description:"斑鳳蝶的寄主植物為多種樟科植物，如紅楠、樟樹和土肉桂等，成蟲出現後不久，大概就可以開始在這些植物上，觀察到它的幼蟲。",location:"台北"),Butterfly(name:"大鳳蝶",scientific:"Papilio memnon",image:"butterfly4",food:"芸香科植物",description:"別名長崎鳳蝶、柑鳳蝶、多型藍鳳蝶、多型大鳳蝶。",location:"南投")]
    
    var butterfly2:[Butterfly] = [Butterfly(name:"墨子黃斑弄蝶",scientific:"Potanthus motzui",image:"butterfly8",food:"樟科",description:"墨子黃斑弄蝶，又名細帶黃斑弄蝶，為弄蝶科黃斑弄蝶屬下的一個種。",location:"北京"),Butterfly(name:"萬大星褐弄蝶",scientific:"Aeromachus bandaishanus",image:"butterfly9",food:"樟科",description:"又名萬大弧弄蝶、姬狹翅挵蝶、萬大黃星挵蝶，為弄蝶科弧弄蝶屬下的一個種。",location:"東京"),Butterfly(name:"埔里黃斑弄蝶",scientific:"Potanthus confucius",image:"butterfly7",food:"樟科",description:"又名黃弄蝶、台灣黃室弄蝶、小黃斑弄蝶、孔子黃斑挵蝶，為弄蝶科黃斑弄蝶屬下的一個種。",location:"首爾"),Butterfly(name:"黑澤星弄蝶",scientific:"Celaenorrhinus kurosawai",image:"butterfly10",food:"樟科",description:"又名姬小黃紋弄蝶、姬黃紋弄蝶、姬星弄蝶、黑澤小星挵蝶，為弄蝶科星弄蝶屬下的一個種。",location:"分布於臺灣本島中海拔地區。"),Butterfly(name:"黃斑弄蝶",scientific:"Potanthus confucius",image:"butterfly6",food:"樟科",description:"又名黃弄蝶、台灣黃室弄蝶、小黃斑弄蝶、孔子黃斑挵蝶，為弄蝶科黃斑弄蝶屬下的一個種。",location:"在臺灣地區分布於臺灣本島中、南部低海拔地區，北部少見。離島龜山島、綠島、蘭嶼亦有分布。臺灣以外分布於東洋區之中國大陸南部、南亞、中南半島、菲律賓與蘇拉威西等地區。")]
    
    var butterfly3:[Butterfly] = [Butterfly(name:"寬邊綠小灰蝶",scientific:"Deudorix rapaloides",image:"butterfly11",food:"蕨類",description:"本種蝶為台灣特有種，幼蟲的宿主植物僅有台灣赤楊（台灣榿木），一年一世代。分布於台灣本島海拔800至2500公尺處，翼展35至40公厘。",location:"分布於臺灣本島中、高海拔山區。"),Butterfly(name:"姬白小灰蝶",scientific:"Leucantigius atayalicus",image:"butterfly14",food:"蕨類",description:"又名瓏灰蝶，璐灰蝶、姬白灰蝶，為灰蝶科瓏灰蝶屬下的一個種。",location:"分布於臺灣本島中、高海拔山區。"),Butterfly(name:"淺黑小灰蝶",scientific:"Deudorix rapaloides",image:"butterfly15",food:"蕨類",description:"淺黑小灰蝶",location:"分布於臺灣本島中、高海拔山區。"),Butterfly(name:"白小灰蝶",scientific:"Ravenna nivea",image:"butterfly13",food:"蕨類",description:"又名朗灰蝶，冷灰蝶、白灰蝶，為灰蝶科朗灰蝶屬下的一個種。",location:"分布於臺灣本島低、中海拔地區。臺灣以外分布於中國大陸南部及越南等地區。"),Butterfly(name:"黑燕蝶",scientific:"Tongeia hainani",image:"butterfly12",food:"景天科植物",description:"又名臺灣玄灰蝶，海南玄灰蝶、臺灣黑燕蝶、景天點玄灰蝶，為灰蝶科玄灰蝶屬下的一個種。本種幼蟲以景天科植物為食，如倒吊蓮、鵝鑾鼻燈籠草、銳葉掌上珠、落地生根等，一年多世代，成蟲全年可見。",location:"分布於臺灣本島低、中海拔地區。")]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ButterflyTableViewCell
        // Configure the cell...
        if number==1{
            selectButterfly = butterfly1[indexPath.row]
            //cell.nameLabel.text = butterfly1[indexPath.row].name
            //cell.ImageView.image = UIImage(named:butterfly1[indexPath.row].image)
            navigationItem.title = "鳳蝶科"
            navigationItem.backBarButtonItem?.title = "鳳蝶科"
        }
        else if number==2{
            selectButterfly = butterfly2[indexPath.row]
            //cell.nameLabel.text = butterfly2[indexPath.row].name
            //cell.ImageView.image = UIImage(named:butterfly2[indexPath.row].image)
            navigationItem.title = "弄蝶科"
            navigationItem.backBarButtonItem?.title = "弄蝶科"
        }
        else {
            selectButterfly = butterfly3[indexPath.row]
            //cell.nameLabel.text = butterfly3[indexPath.row].name
            //cell.ImageView.image = UIImage(named:butterfly3[indexPath.row].image)
            navigationItem.title = "灰蝶科"
            navigationItem.backBarButtonItem?.title = "灰蝶科"
        }
        cell.nameLabel.text = selectButterfly.name
        cell.ImageView.image = UIImage(named:selectButterfly.image)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showButterflyDetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! ButterflyDetailViewController
                if number==1{
                    destinationController.butterfly = butterfly1[indexPath.row]
                }
                else if number==2{
                    destinationController.butterfly = butterfly2[indexPath.row]
                }
                else {
                    destinationController.butterfly = butterfly3[indexPath.row]
                }
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
