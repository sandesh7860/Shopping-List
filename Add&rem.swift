import UIKit

class ShoppingListItem {
    let name: String
    var quantity: Int?
    
    init(name: String, quantity: Int?) {
        self.name = name
        self.quantity = quantity
    }
    
    convenience init(name: String) {
        self.init(name: name, quantity: nil)
    }
}

class ShoppingList {
    var items: [ShoppingListItem] = []
    
    func addItem(item: ShoppingListItem) {
        items.append(item)
    }
    
    func removeItemAtIndex(index: Int) {
        items.remove(at: index)
    }
    
    func printList() {
        print("Shopping List:")
        for item in items {
            if let quantity = item.quantity {
                print("\(item.name) - \(quantity)")
            } else {
                print(item.name)
            }
        }
    }
}

let list = ShoppingList()

let item1 = ShoppingListItem(name: "Apples", quantity: 3)
let item2 = ShoppingListItem(name: "Milk", quantity: 1)
let item3 = ShoppingListItem(name: "Bread")

list.addItem(item: item1)
list.addItem(item: item2)
list.addItem(item: item3)

list.printList()

list.removeItemAtIndex(index: 1)

list.printList()





