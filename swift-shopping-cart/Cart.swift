//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class Cart {

  var items = [Item]()

  func totalPriceInCents() -> Int {
    var totalCost : Int = 0
    for item in items {
      totalCost += item.priceInCents
    }
    return totalCost
  }

  func add(item: Item) {
    items.append(item)
  }

  func remove(item: Item) {
    if let index = items.index(of: item) {
    items.remove(at: index)
    }
  }

  func items(withName name : String) -> [Item] {
    var newItems = [Item]()
    for item in items {
      if item.name == name {
        newItems.append(item)
      }
    }
    return newItems
  }


  func items(withMinPrice price: Int) -> [Item] {
    var newItems = [Item]()
    for item in items {
      if item.priceInCents >= price {
        newItems.append(item)
      }
    }
    return newItems
  }

  func items(withMaxPrice price: Int) -> [Item] {
    var newItems = [Item]()
    for item in items {
      if item.priceInCents <= price {
        newItems.append(item)
      }
    }
    return newItems
  }

    
    
}
