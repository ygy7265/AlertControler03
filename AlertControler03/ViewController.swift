//
//  ViewController.swift
//  AlertControler03
//
//  Created by D7703_19 on 2019. 4. 11..
//  Copyright © 2019년 sin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbla: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Pressed(_ sender: Any) {
        let alert = UIAlertController(title: "Camera", message: "Take a picture",preferredStyle: .actionSheet)
        
        //actionsheet << 밑에서 올라오기 alert : 중간화면에 띄우기
        let camaction = UIAlertAction(title: "사진촬영",style:.default){
            (Action:UIAlertAction) -> Void in
                self.lbla.text = "사진촬영 시작"
                self.view.backgroundColor = UIColor.gray
        }
        
        let libAction = UIAlertAction(title: "사진라이브러리", style:.default){
            (Action:UIAlertAction) -> Void in
            self.lbla.text = "라이브러리 가기"
            self.view.backgroundColor = UIColor.green
        }
        
        let savaAction = UIAlertAction(title: "사진저장", style: .default){
            (Action:UIAlertAction) -> Void in
            self.lbla.text = "사진저장"
            self.view.backgroundColor = UIColor.yellow
            
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel){
            (Action:UIAlertAction) -> Void in
            self.lbla.text = "취소"
            self.view.backgroundColor = UIColor.red
        }
        
        //destructive < 글자색 빨간색
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive){
            (Action:UIAlertAction) -> Void in
            self.lbla.text = "삭제"
            self.view.backgroundColor = UIColor.brown
        }
        
        //촬영
         alert.addAction(camaction)
        //라이브러리
         alert.addAction(libAction)
        //저장
         alert.addAction(savaAction)
        //취소
         alert.addAction(cancelAction)
        //삭제
         alert.addAction(deleteAction)
        
        self.present(alert,animated: true,completion: nil)
    }
    
}


