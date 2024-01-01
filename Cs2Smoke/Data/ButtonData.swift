//
//  ButtonData.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 12.12.2023.
//

import Foundation

struct ButtonData: Hashable, Codable, Identifiable {
    let title: String
    let tag: Int
    let videoURL: String
    var id = UUID()  // Benzersiz bir ID ekleyin
}


let buttonMI1 = ButtonData(title: "Mid Window Smoke", tag: 1, videoURL: "https://www.youtube.com/watch?v=9as2pq0bVA8")
let buttonMI6 = ButtonData(title: "Mid Short Smoke", tag: 2, videoURL: "https://www.youtube.com/watch?v=9K4a_65aXqA")
let buttonMI2 = ButtonData(title: "B Kitchen Window Smoke", tag: 3, videoURL: "https://www.youtube.com/watch?v=nd8g1erqBMI")
let buttonMI3 = ButtonData(title: "B Kitchen Door Smoke", tag: 4, videoURL: "https://www.youtube.com/watch?v=4j5Sy3ucpBc")
let buttonMI4 = ButtonData(title: "A Stairs Smoke", tag: 5, videoURL: "https://www.youtube.com/watch?v=XcgHf-YQyUw")
let buttonMI7 = ButtonData(title: "A Jungle Smoke", tag: 6, videoURL: "https://www.youtube.com/watch?v=81G-wxv2Yw4")
let buttonMI5 = ButtonData(title: "A Ct Smoke", tag: 7, videoURL: "https://www.youtube.com/watch?v=jM6ymKM0Y8Y")

let buttonAC1 = ButtonData(title: "A Ancient Cave Smoke", tag:10 , videoURL: "https://www.youtube.com/watch?v=pb7u10DHS_0")
let buttonAC2 = ButtonData(title: "B Long Close Smoke", tag:11 , videoURL: "https://www.youtube.com/watch?v=hGjLCtJ7Dbo")
let buttonAC3 = ButtonData(title: "Temple Smoke", tag:12 , videoURL: "https://www.youtube.com/watch?v=1zATl0Q3Fl0")
let buttonAC4 = ButtonData(title: "Tomb Smoke", tag:13 , videoURL: "https://www.youtube.com/watch?v=T0wXtWgSzUE")
let buttonAC5 = ButtonData(title: "Mid Smoke", tag:14 , videoURL: "https://www.youtube.com/watch?v=eFZAGp03aPY")
let buttonAC6 = ButtonData(title: "A Site CT Smoke", tag:15 , videoURL: "https://www.youtube.com/watch?v=wNEgFtKC6RU")
let buttonAC7 = ButtonData(title: "Donut Smoke", tag:16 , videoURL: "https://www.youtube.com/watch?v=MydZZhu_yR4")

let buttonAU1 = ButtonData(title: "Bridge Smoke", tag: 20, videoURL: "https://www.youtube.com/watch?v=4SqpFijYY3Y")
let buttonAU2 = ButtonData(title: "Water Smoke", tag: 21, videoURL: "https://www.youtube.com/watch?v=QnC4em0pcNg")
let buttonAU3 = ButtonData(title: "Walkway Smoke", tag: 22, videoURL: "https://www.youtube.com/watch?v=W1Pej1y-db8")
let buttonAU4 = ButtonData(title: "Palace Smoke", tag: 23, videoURL: "https://www.youtube.com/watch?v=6DT8VznR-MI")
let buttonAU5 = ButtonData(title: "Heaven Smoke", tag: 24, videoURL: "https://www.youtube.com/watch?v=PxtXNQgcBJo")
let buttonAU6 = ButtonData(title: "A Site CT Smoke", tag: 25, videoURL: "https://www.youtube.com/watch?v=YJZdlbnhLBY")

let buttonVE1 = ButtonData(title: "Gap Smoke", tag: 30, videoURL: "https://www.youtube.com/watch?v=ROUKobhbfes")
let buttonVE2 = ButtonData(title: "Right of A Site Smoke", tag: 31, videoURL: "https://www.youtube.com/watch?v=fCNG8PDPToI")
let buttonVE3 = ButtonData(title: "Elevator Smoke", tag: 32, videoURL: "https://www.youtube.com/watch?v=3g1SPjX5uN0")
let buttonVE4 = ButtonData(title: "B CT Smoke", tag: 33, videoURL: "https://www.youtube.com/watch?v=nmWCmt7RrCY")
let buttonVE5 = ButtonData(title: "Connector Smoke", tag: 34, videoURL: "https://www.youtube.com/watch?v=NTrBaHKy74c")
let buttonVE6 = ButtonData(title: "B Site Smoke", tag: 35, videoURL: "https://www.youtube.com/watch?v=-YOIA7-X_aY")

let buttonNU1 = ButtonData(title: "B Window Smoke", tag: 40, videoURL: "https://www.youtube.com/watch?v=QWM5KI3QAP8")
let buttonNU2 = ButtonData(title: "HeavenSmoke", tag: 41, videoURL: "https://www.youtube.com/watch?v=dKhm26JHR1A")
let buttonNU3 = ButtonData(title: "Vent Rush Smoke", tag: 42, videoURL: "https://www.youtube.com/watch?v=z2qcu3Dg5ds")
let buttonNU4 = ButtonData(title: "Mini Smoke", tag: 43, videoURL: "https://www.youtube.com/watch?v=pW_jVN5ZRN0")
let buttonNU5 = ButtonData(title: "Vent Rush Smoke", tag: 44, videoURL: "https://www.youtube.com/watch?v=iu6su1X7kkc")

let buttonOV1 = ButtonData(title: "Stairs Smoke", tag: 50, videoURL: "https://www.youtube.com/watch?v=5Cg5JVtCSwg")
let buttonOV2 = ButtonData(title: "B Bank Smoke", tag: 51, videoURL: "https://www.youtube.com/watch?v=YDLYwEDG7XM")
let buttonOV3 = ButtonData(title: "Sign Smoke", tag: 52, videoURL: "https://www.youtube.com/watch?v=NXWpwn9qC3k")
let buttonOV4 = ButtonData(title: "Monster Smoke", tag: 53, videoURL: "https://www.youtube.com/watch?v=-lG5E7Yv7sg")
let buttonOV5 = ButtonData(title: "Mid Smoke", tag: 54, videoURL: "https://www.youtube.com/watch?v=1tzHXgOR78U")
let buttonOV6 = ButtonData(title: "Heaven Smoke", tag: 55, videoURL: "https://www.youtube.com/watch?v=M8u9jXIwCNQ")
let buttonOV7 = ButtonData(title: "Bridge Smoke", tag: 56, videoURL: "https://www.youtube.com/watch?v=7jn-JFvT0EY")
let buttonOV8 = ButtonData(title: "Balloons Smoke", tag: 57, videoURL: "https://www.youtube.com/watch?v=0JSvt0q-otY")

let buttonIN1 = ButtonData(title: "B CT Smoke", tag: 60, videoURL: "https://www.youtube.com/watch?v=5x3w0O4KTYI")
let buttonIN2 = ButtonData(title: "Coffin Smoke", tag: 61, videoURL: "https://www.youtube.com/watch?v=OkIg6y9hQBc")
let buttonIN3 = ButtonData(title: "B Stairs Smoke", tag: 62, videoURL: "https://www.youtube.com/watch?v=MQp1mGR_aXM")
let buttonIN4 = ButtonData(title: "A long Smoke", tag: 63, videoURL: "https://www.youtube.com/watch?v=72-0B2Sxb4k")
let buttonIN5 = ButtonData(title: "B short Smoke", tag: 64, videoURL: "https://www.youtube.com/watch?v=Xv0xDFouX6k")
let buttonIN6 = ButtonData(title: "A Pit Smoke", tag: 65, videoURL: "https://www.youtube.com/watch?v=MlJlKCcLgv4")
let buttonIN7 = ButtonData(title: "Mid Smoke", tag: 66, videoURL: "https://www.youtube.com/watch?v=v_fjIfh3sRI")
let buttonIN8 = ButtonData(title: "Long Smoke", tag: 67, videoURL: "https://www.youtube.com/watch?v=ej0zEXPhwsI")







