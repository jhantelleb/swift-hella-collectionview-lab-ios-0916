//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController,
                           UICollectionViewDataSource,
                           UICollectionViewDelegate {
    
    
    var fibonacciArray = [Float]()
    
    @IBOutlet weak var hellaCollectionView: UICollectionView!
    
    override func viewDidLoad() {
    // Do any additional setup after loading the view, typically from a nib.
        generateFibonacci()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "basicCell", for: indexPath)
        if isFibo(num: Float(indexPath.row)) {
            cell.backgroundColor = UIColor.purple
        } else {
            cell.backgroundColor = UIColor.yellow
        }
        return cell
    }
    
    func generateFibonacci(){
        var numA:Float = 0
        var numB: Float = 1
        var sum = Float()
        
        for _ in 1...1000 {
            fibonacciArray.append(numA)
            sum = numA + numB
            numA = numB
            numB = sum }
    }
    
    func isFibo(num: Float) -> Bool { return fibonacciArray.contains(num) }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailView = segue.destination as! HellaDetailViewController
        let indexPath = hellaCollectionView?.indexPath(for: sender as! UICollectionViewCell)
        let itemCell = hellaCollectionView.cellForItem(at: indexPath!)
        
        detailView.number = indexPath!.row
        detailView.bgColor = (itemCell?.backgroundColor)!
    }
}

