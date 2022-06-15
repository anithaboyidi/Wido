//
//  RegisterViewController.swift
//  Wido
//
//  Created by wido technologies on 09/06/22.
//

import Foundation
import UIKit

class RegisterViewController:UIViewController {
    
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var pastBtn: UIButton!
    @IBOutlet weak var activeBtn: UIButton!
    
    var cabdetails = [Int:cabData]()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillData()
        myTable.delegate = self
        myTable.dataSource = self
    
    }
    
    private func fillData()
    {
        let cab1 : cabData =  cabData(carName: "Daily - Mini", Date: "30-05-2022, 06:31 PM",Address: "Madhavadhara,Madhavadhara,Visakhapatnam,India,530007",  Location: "MVP Colony,MVP Colony,Visakhapatnam,Andhra Pradesh,India", Price: "$275", Cancelled: "Cancelled", PinImage:UIImage(contentsOfFile: "Arrow1.png"), ArrowImage:UIImage(contentsOfFile: "pin.png"))
        
        cabdetails[0] = cab1
        
        let cab2 : cabData =  cabData(carName: "Daily - Mini", Date: "30-05-2022, 06:31 PM", Address: "Madhavadhara,Madhavadhara,Visakhapatnam,India,530007", Location: "MVP Colony,MVP Colony,Visakhapatnam,Andhra Pradesh,India", Price: "$275", Cancelled: "Cancelled", PinImage:UIImage(contentsOfFile: "Arrow1.png"), ArrowImage:UIImage(contentsOfFile: "pin.png"))
        
        cabdetails[1] = cab2
        
        let cab3 : cabData =  cabData(carName: "Driver - Driver", Date: "30-05-2022, 06:31 PM", Address: "Madhavadhara,Madhavadhara,Visakhapatnam,India,530007", Location: "MVP Colony,MVP Colony,Visakhapatnam,Andhra Pradesh,India", Price: "$2225", Cancelled: "Cancelled", PinImage:UIImage(contentsOfFile: "Arrow1.png"), ArrowImage:UIImage(contentsOfFile: "pin.png"))
        
        cabdetails[2] = cab3
        
        let cab4 : cabData =  cabData(carName: "Daily - Auto", Date: "30-05-2022, 06:31 PM", Address: "Madhavadhara,Madhavadhara,Visakhapatnam,India,530007", Location: "MVP Colony,MVP Colony,Visakhapatnam,Andhra Pradesh,India", Price: "$173", Cancelled: "Cancelled", PinImage:UIImage(contentsOfFile: "Arrow1.png"), ArrowImage:UIImage(contentsOfFile: "pin.png"))
        
        cabdetails[3] = cab4
        
        let cab5 : cabData =  cabData(carName: "Daily - Mini", Date: "30-05-2022, 06:31 PM", Address: "Madhavadhara,Madhavadhara,Visakhapatnam,India,530007", Location: "MVP Colony,MVP Colony,Visakhapatnam,Andhra Pradesh,India", Price: "$250", Cancelled: "Cancelled", PinImage:UIImage(contentsOfFile: "Arrow1.png"), ArrowImage:UIImage(contentsOfFile: "pin.png"))
        
        cabdetails[4] = cab5
        
       
        
    }
    
}
extension RegisterViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cabdetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MyTableViewCell
        
        let imageName = cabdetails[indexPath.row]?.PinImage
        let LocImage = cabdetails[indexPath.row]?.ArrowImage
        
        cell.carLabel.text = cabdetails[indexPath.row]?.carName
        cell.dateLabel.text = cabdetails[indexPath.row]?.Date
        cell.addLabel.text = cabdetails[indexPath.row]?.Address
        cell.locLabel.text = cabdetails[indexPath.row]?.Location
        cell.priceLabel.text = cabdetails[indexPath.row]?.Price
        cell.addImage.image = UIImage(named: "pin")
        cell.locImage.image =  UIImage(named: "Arrow1")
        cell.cancelledLabel.text = cabdetails[indexPath.row]?.Cancelled
         return cell
    }
    
}
