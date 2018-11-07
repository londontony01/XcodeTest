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
    // Some data
    let drawNumbers = ["Num0", "Num1", "Num2", "Num3", "Num4", "Num5", "Num6", "Num7", "Num8", "Num9", "Num10", "Num11", "Num12", "Num13", "Num14", "Num15", "Num16", "Num17", "Num18", "Num19", "Num20", "Num21", "Num22", "Num23", "Num24", "Num25", "Num26", "Num27", "Num28", "Num29", "Num30", "Num31", "Num32", "Num33", "Num34", "Num35", "Num36"]
    let drawMark = ["Cross", ""]
    var numberOfDraws = 0
    var drawNumbersArray = [Int]()      // initialisation the draw numbers array
    var test1:Int = 99
    var test2:String = ""
    // end of data

    // some test changes on file before commit this file to source control local repository
    // 11:23 pm on 6/11/2018
    //
    
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
            
            test1 = drawNumbersArray[indexPath.row]
            print("check inside cell , member of drawNumbersArray= ", test1)
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

