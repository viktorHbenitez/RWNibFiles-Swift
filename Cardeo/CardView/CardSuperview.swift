
import UIKit

@IBDesignable class CardSuperview: UIView {
  
  var handleFlip: ( (_ destination: CardView.Side) -> Void )?
  
  // access to the child card view only
  var cardViews: [CardView] {
    return subviews as! [CardView]
  }
  
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
  
  @IBAction func handleTap(_ sender: CardView) {
    sender.flip()
    handleFlip?(.front)
    
  }
  
  func setCard(_ card: Card, side: CardView.Side, flip: Bool) {
    
    // access to the cards view
    for cardView in cardViews {
      cardView.card = card
    }
  }
  
}
