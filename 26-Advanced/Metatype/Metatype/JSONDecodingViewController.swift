
import UIKit

let jsonData = """
{
    "id": 1,
    "title": "iOS 앱 개발을 위한 Swift 3",
    "description": "이 책은 iOS 개발에 필요한 모든 언어를 기초부터 쉽게 설명한다. 새로운 언어를 배우기 위해 매번 새로운 책을 살 필요가 없이, Objective-C를 Swift와 함께 사용하는 방법과 Objective-C를 Swift로 전환하는 방법을 쉽게 설명한다. Xcode의 다양한 사용법을 풍부한 스크린샷과 Step by Step 방식으로 쉽게 설명한다. 초보자에게 필요한 소스 편집기, Interface Builder 사용법부터 실무 개발자에게 필요한 Continuous Integration까지, 이 책 한 권으로 Xcode를 능숙하게 사용할 수 있게 됩니다.또한 Foundation 프레임워크, Swift Standard Library 기초 사용법, 다양한 크기의 화면에서 동작하는 앱을 개발하기 위한 Auto Layout, 앱의 반응성과 성능을 높여주는 Operation, GCD등을 설명하여 iOS 개발에 필요한 기초를 쉽게 설명했다."
}
""".data(using: .utf8)!


struct Book: Codable {
   let id: Int
   let title: String
   let description: String
}


class JSONDecodingViewController: UIViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      do {
         let decoder = JSONDecoder()
          try decoder.decode(Book.self, from: jsonData)
      } catch {
         
      }
   }
}
