//
//  Coins.swift
//  PlantInTestTask
//
//  Created by Ivan Melnyk on 05.06.2022.
//

import Foundation


struct Coin: Hashable {
    var title: String
    var alt: String
    var change: String
    var trend: Bool
    var value: String
    var description: String = ""
    var rank: Int = 0
    var launchDate: String = "January 1, 2000"
}

// Some hardcoded coin list with coins test data

let coinList : [Coin] = [
    Coin(title: "Ethereum", alt: "ETH", change: "4.95%", trend: true, value: "2,678.20", description: "Praesent libero ipsum, maximus ut libero id, facilisis porta nisl. Nam rutrum id lectus vitae laoreet. Nam semper, lectus eu tempus fermentum, enim est imperdiet odio, eget ultrices tellus turpis in quam. Phasellus vitae bibendum orci, vitae lacinia elit. Proin tempor nibh id nunc tincidunt, ac luctus neque luctus. Mauris aliquam sit amet nisi vitae mollis. Etiam euismod velit eget nulla faucibus dignissim. Sed sit amet enim in erat blandit feugiat maximus vel tortor. Etiam et commodo libero. Sed sit amet augue in neque consequat maximus. Sed sed convallis leo. Integer convallis, neque ac bibendum pretium, est eros maximus mauris, nec vehicula quam dolor sit amet nulla."),
    Coin(title: "Ethereum 2", alt: "ETH2", change: "4.91%", trend: true, value: "2,383.20", description: "Fusce vitae feugiat arcu. Fusce pretium mi at dictum sagittis. Nulla ligula lacus, pretium id iaculis at, elementum et tortor. Phasellus accumsan fringilla turpis ac consectetur. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed turpis non neque sodales molestie eu et risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent laoreet diam id diam scelerisque sodales. Phasellus sed dui ut nulla fermentum dignissim nec non nisl. Praesent venenatis fringilla ullamcorper. Donec accumsan magna sed neque luctus, quis feugiat velit bibendum. Proin fermentum finibus nisi id facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla ultricies tristique mi, ut tristique ligula imperdiet non. Fusce sapien dolor, cursus in dolor non, consectetur dignissim mauris."),
    Coin(title: "Tether", alt: "USDT", change: "0.05%", trend: false, value: "2.00", description: "Proin tincidunt felis ex, in suscipit odio cursus sit amet. Fusce eget sapien ipsum. Phasellus interdum enim ultrices odio porta malesuada. Phasellus mollis lectus sed est consequat, vel mollis mauris ornare. Morbi non nulla quis ex lobortis accumsan at ac nisi. Aliquam id dui sem. Maecenas a turpis id massa luctus bibendum eget a erat. Donec ac ipsum nunc. Nulla non volutpat diam. Nunc arcu orci, condimentum in ipsum ut, accumsan semper dui."),
    Coin(title: "Binance Coin", alt: "BNB", change: "0.27%", trend: false, value: "352,50", description: "Morbi varius quis metus condimentum rutrum. Nam at tempus dolor. Donec vulputate enim dolor, et tincidunt quam porta ut. Proin in auctor leo, et accumsan nibh. Nunc vulputate ante non ex lacinia viverra. Phasellus ac libero tempus, aliquam neque nec, bibendum libero. Suspendisse enim nisl, laoreet nec tellus eu, ornare tincidunt tellus. Proin est arcu, tincidunt sed orci porta, volutpat sagittis tellus. Sed ut tincidunt sem, non ornare leo."),
    Coin(title: "Cardano", alt: "ADA", change: "4.11%", trend: true, value: "2,836,137.20", description: "Mauris luctus finibus ipsum eget tempus. Fusce fermentum justo dui, tincidunt rutrum augue scelerisque non. Mauris ornare, libero eu accumsan gravida, dolor lectus volutpat neque, non feugiat turpis magna a arcu. Curabitur pellentesque massa eget ultricies porttitor. Praesent faucibus, lacus quis dictum tristique, risus nunc pretium felis, et sodales tellus nisl et quam. Nunc convallis at tellus vel lacinia. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut tristique euismod ipsum at venenatis. Mauris eget viverra nisl. Pellentesque non nisi id odio molestie lacinia et gravida urna. Etiam sollicitudin elit sed odio consequat, ac luctus dolor dapibus. Quisque tincidunt lacus vel purus ullamcorper, et ultricies ex luctus. Curabitur eu justo ut risus tristique iaculis et a lacus. Etiam imperdiet sit amet magna ac molestie. Praesent commodo sapien rutrum, ornare velit nec, fringilla eros."),
    Coin(title: "Chain link", alt: "LINK", change: "2.23%", trend: true, value: "2,836,137.20", description: "Quisque commodo ac urna at convallis. Nulla facilisi. Integer quis sem sed nulla auctor viverra in ut lectus. Praesent fermentum ac orci eget semper. Duis faucibus arcu lorem, eu commodo ante suscipit id. Praesent tellus est, fringilla eget est id, congue sodales nibh. Donec egestas dictum rutrum. Ut non ipsum augue. Ut ac lacus fringilla, consequat nisi eu, ullamcorper risus. Morbi ultrices mattis leo nec gravida. Mauris efficitur egestas eleifend. Vivamus eu ornare magna, in dictum mauris. Integer luctus fermentum varius. Praesent purus tortor, imperdiet non hendrerit sed, semper sit amet urna. Sed finibus nibh odio, cursus faucibus ante porttitor sed."),
    Coin(title: "Bitcoin", alt: "BTC", change: "2.23%", trend: true, value: "36,751.20", description: "Maecenas nec fringilla ipsum. Nam maximus eros a ipsum consequat pretium. Sed lobortis libero ultrices, mattis purus at, ultrices felis. Cras ac sem faucibus erat rhoncus venenatis. Nulla auctor, velit nec blandit interdum, arcu odio vulputate turpis, eget suscipit est risus accumsan diam. Morbi tempor orci elit, ultricies lobortis mi dapibus ut. Aliquam ac condimentum tellus. Cras accumsan sapien nunc, quis posuere lorem ornare ac. Aenean blandit sem ut sapien venenatis, non tristique elit mattis. Proin ornare finibus faucibus. Etiam semper odio id ipsum imperdiet volutpat."),
]
