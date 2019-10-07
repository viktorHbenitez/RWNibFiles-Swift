# NIB Files : 

### Description:  
XIB  
XML interface Builder   
Pre-Compilation  

Nib   
(originally) NeXT  
Post Compilation  

```swift

@IBDesignable class CardSuperview: UIView {
  
  // LOADING NIB FILES
  override func awakeFromNib() {
    super.awakeFromNib()
    // runtime only
     // initial state IBOutlets
    addCardViews()
  }

  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    // in Interface bouldier
    // for example set IBoutlets values
    addCardViews()
  }

...
}


```
![imagen](../master/Sketch/flip.gif) 

![workflow](https://github.com/viktorHbenitez/RWNibFiles-Swift/blob/master/Sketch/AddFileOwner.png) 
