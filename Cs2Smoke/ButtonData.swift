//
//  ButtonData.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 12.12.2023.
//

import Foundation

struct ButtonData: Hashable, Codable {
    let title: String
    let tag: Int
    let videoURL: String
}

let button1 = ButtonData(title: "Cam smokesi", tag: 1, videoURL: "https://www.youtube.com/watch?v=9K4a_65aXqA")
let button2 = ButtonData(title: "Strinas", tag: 2, videoURL: "https://www.youtube.com/watch?v=videoID2")
let button3 = ButtonData(title: "saf", tag: 3, videoURL: "https://www.youtube.com/watch?v=videoID3")

let buttonM1 = ButtonData(title: "Mid Window ", tag: 10, videoURL: "https://www.youtube.com/watch?v=9as2pq0bVA8")
let buttonM6 = ButtonData(title: "Mid Short", tag: 20, videoURL: "https://www.youtube.com/watch?v=9K4a_65aXqA")
let buttonM2 = ButtonData(title: "B Kitchen Window", tag: 30, videoURL: "https://www.youtube.com/watch?v=nd8g1erqBMI")
let buttonM3 = ButtonData(title: "B Kitchen Door", tag: 40, videoURL: "https://www.youtube.com/watch?v=4j5Sy3ucpBc")
let buttonM4 = ButtonData(title: "A Stairs ", tag: 50, videoURL: "https://www.youtube.com/watch?v=XcgHf-YQyUw")
let buttonM7 = ButtonData(title: "A Jungle", tag: 60, videoURL: "https://www.youtube.com/watch?v=81G-wxv2Yw4")
let buttonM5 = ButtonData(title: "A Ct ", tag: 70, videoURL: "https://www.youtube.com/watch?v=jM6ymKM0Y8Y")
