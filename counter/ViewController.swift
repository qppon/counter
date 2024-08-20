//
//  ViewController.swift
//  counter
//
//  Created by Jojo Smith on 8/19/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var refreshButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var changeHistoryTextView: UITextView!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    private var counterNumber: Int = 0
    
    private func getCurrentTime() -> String {
        let time = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.YYYY HH:mm:ss"
        formatter.timeZone = TimeZone(secondsFromGMT: 10800)
        let formatteddate = formatter.string(from: time as Date)
        return formatteddate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeHistoryTextView.text = "История изменений:"
        counterLabel.text = "Значение счетчика: 0"
    }
    
    @IBAction func plusButtonDidTap(_ sender: Any) {
        counterNumber += 1
        counterLabel.text = "Значение счетчика: \(counterNumber)"
        let changeHistoryStroke: String = "\(getCurrentTime()): значение изменено на +1"
        changeHistoryTextView.text += "\n\(changeHistoryStroke)"
    }
    
    
    @IBAction func minusButtonDidTap(_ sender: Any) {
        if counterNumber != 0 {
            counterNumber -= 1
            counterLabel.text = "Значение счетчика: \(counterNumber)"
            let changeHistoryStroke: String = "\(getCurrentTime()): значение изменено на -1"
            changeHistoryTextView.text += "\n\(changeHistoryStroke)"
        } else {
            let changeHistoryStroke: String = "\(getCurrentTime()): попытка уменьшить значение счётчика ниже 0"
            changeHistoryTextView.text += "\n\(changeHistoryStroke)"
        }
        
    }
    
    
    @IBAction func refreshButtonDidTap(_ sender: Any) {
        counterNumber = 0
        counterLabel.text = "Значение счетчика: \(counterNumber)"
        let changeHistoryStroke: String = "\(getCurrentTime()): значение сброшено"
        changeHistoryTextView.text += "\n\(changeHistoryStroke)"
    }
    
    
}

