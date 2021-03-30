import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var collectingItemsView : UICollectionView!
    let identifier = "customCell"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        collectionSetup()
       
        }
    
    func collectionSetup(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize.init(width: 100, height: 100)
        collectingItemsView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        
        collectingItemsView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: identifier)
        collectingItemsView.dataSource = self
        collectingItemsView.delegate = self
        collectingItemsView.backgroundColor = .yellow
        view.addSubview(collectingItemsView)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier , for: indexPath)
        cell.backgroundColor = .blue
        let displayLabel = UILabel()
        displayLabel.text = "Name"
        displayLabel.backgroundColor = .green
        displayLabel.frame = CGRect(x: 5, y: 10, width: 50, height: 30)
        cell.contentView.addSubview(displayLabel)
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        print("asks the delegate to be selected")
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       print("tells delegate it was selected")
    }
    
    func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAt indexPath: IndexPath) -> Bool {
        print("asks the delegate to be deselected")
        return true
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        print("tells the delegate it was deselected")
    }
    func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        print("highlited")
        return true
    }
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        print("\(indexPath)")
    }
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        print("\(indexPath)")
    }
    
    uyguygkjnjknbkjbdfhbakfb
}

