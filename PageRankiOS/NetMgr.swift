//
//  NetMgr.swift
//  PageRankiOS
//
//  Created by George Katashev on 5.04.17.
//  Copyright © 2017 George Katashev. All rights reserved.
//

import Foundation
import HTMLReader

final class NetMgr {
    class func performTask(urlStr: String) -> [String] {
        var result = [String]()
        autoreleasepool {
            let url = URL(string: urlStr)!
            do {
                let str = try String.init(contentsOf: url, encoding: String.Encoding.utf8)
                let doc = HTMLDocument(string: str)
                let aNodes = doc.nodes(matchingSelector: "a")
                for node in aNodes {
                    if let href = node.attributes["href"], href.contains(baseURL) {
                        result.append(href)
                    }
                }
            } catch {
                print("Catch Error: \(error.localizedDescription)")
            }
        }
        return result
    }
}
