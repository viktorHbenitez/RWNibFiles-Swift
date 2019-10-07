
import UIKit

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

  override func layoutSubviews() {
    super.layoutSubviews()
    roundCorners()
  }

  func addCardViews() {
    for cardView in
      Bundle(for: CardView.self)
      .loadNibNamed("\(CardView.self)", owner: self)!
    {
      addSubview(cardView as! CardView, constrainedTo: self)
    }
  }
}
