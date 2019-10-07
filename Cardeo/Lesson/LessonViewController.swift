
import UIKit

class LessonViewController: UIViewController {
  
  // [unowned self] in terms of memory leaks
  // it's good to do this for clouser listen viewControllers owns
  @IBOutlet var cardSuperview: CardSuperview! {
     didSet {
       cardSuperview.handleFlip = { [unowned self] _ in self.pickNewCard()
      }
     }
   }
  
  var cards: [Card]!
  
  
  func pickNewCard() {
    let card = cards.randomElement()!
    cardSuperview.setCard(card, side: .front, flip: false)
  }
}
