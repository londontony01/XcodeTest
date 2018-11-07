//
//  ViewController.swift
//  Display2
//
//  Created by Dung Tran on 05/11/2018.
//  Copyright © 2018 Dung Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var inputNum: UITextField!
    @IBOutlet weak var tblList:UITableView!
// VT modified some data on 7/11/2018
    // Some data
    let drawNumbers = ["Num0", "Num1", "Num2", "Num3", "Num4", "Num5", "Num6", "Num7", "Num8", "Num9", "Num10", "Num11", "Num12", "Num13", "Num14", "Num15", "Num16", "Num17", "Num18", "Num19", "Num20", "Num21", "Num22", "Num23", "Num24", "Num25", "Num26", "Num27", "Num28", "Num29", "Num30", "Num31", "Num32", "Num33", "Num34", "Num35", "Num36"]
    let drawMark = ["Cross", ""]
    var numberOfDraws: Int = 0
    var drawNumbersArray = [Int]()      // initialisation the draw numbers array
    var EvenNum = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36]
    let smallNum = 18                   // small numbers from 1-18 inclusive
    let dozen1 = 12                     // 1st dozen from 1-12
    let dozen2 = 24                     // second dozen from 13-24
    let column1 = [1,4,7,10,13,16,19,22,25,28,31,34]
    let column2 = [2,5,8,11,14,17,20,23,26,29,32,35]
    let column3 = [3,6,9,12,15,18,21,24,27,30,33,36]
    let FrenchTires = [33,16,24,5,10,23,8,30,11,36,13,27]
    let FrenchOrphans = [1,20,14,31,9,6,34,17]
    let FrenchVoisins = [22,18,29,7,28,12,35,3,26,0,32,15,19,4,21,2,25]
    let FrenchJeu0 = [12,35,3,26,0,32,15]
    var test1:Float = 99.0
    var test2:String = ""
    // end of data

    // end of data

    // some test changes on file before commit this file to source control local repository
    // 11:23 pm on 6/11/2018
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // just
        return drawNumbersArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        // cell object
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! myTableViewCell
        //let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! mycellTableViewCell
        //        if drawNumbersArray.count > 0 {
        print("check inide cell count=",  drawNumbersArray.count)
        print("check inide cell indexPath=", indexPath.row)
        if let pic = cell.contentView.viewWithTag(101) as? UIImageView {
            pic.image = UIImage(named: drawNumbers[drawNumbersArray[indexPath.row]] + ".png")
            
            print(" check inside cell indexPath= \(indexPath)")
            print("check inside cell , drawNumbersArray= \(drawNumbersArray)")
            
            test2 = drawNumbers[drawNumbersArray[indexPath.row]] + ".png"
            print("check inside cell , should display ", test2)
            
            cell.drawNumber.image = UIImage(named: drawNumbers[drawNumbersArray[indexPath.row]] + ".png")
        }
        
        
        //cell.drawNumber.image = UIImage(named: drawNumbers[drawNumbersArray[indexPath.row]] + ".png")
        // Markfrom 1 to 13
        // Odd and Even
        //cell.Mark1.image = UIImage(contentsOfFile: drawMark[0] + ".png")
        //cell.Mark2.image = UIImage(contentsOfFile: drawMark[1])
        // Hi and Low
        //cell.Mark3.image = UIImage(contentsOfFile: drawMark[0] + ".png")
        //cell.Mark4.image = UIImage(contentsOfFile: drawMark[1])
        // ... continue
        
        //        }
        
        return (cell)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tblList.tableFooterView = UIView.init(frame: .zero)
        tblList.dataSource = self
        tblList.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addBtn(sender: UIButton) {
        
            // adding new row
            if inputNum.text != ""{
                numberOfDraws += 1
                print(" draw  \(numberOfDraws)")
                print("draw number = ", inputNum.text)
                drawNumbersArray.insert(Int(inputNum.text!)!, atIndex: 0)
                let myIndex = NSIndexPath(forRow: 0, inSection: 0)
                print(" checking path \(myIndex)")
                
                tblList.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .Top)
            }
            else{
                print (" Error no input!")
            }
        
    }

}

