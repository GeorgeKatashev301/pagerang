//
//  Page.swift
//  PageRankiOS
//
//  Created by George Katashev on 5.04.17.
//  Copyright © 2017 George Katashev. All rights reserved.
//

import Foundation

final class Page: Hashable, Comparable {
    let link: String
    var pageRank: Double = 0
    var nextPR: Double?
    var isDownloaded: Bool = false
    
    var relations: Set<Page> = Set<Page>()
    var parents: Set<Page> = Set<Page>()
    
    init(lnk: String) {
        link = lnk
    }
    
    func addRelation(page: Page) {
        relations.insert(page)
        page.parents.insert(self)
    }
    
    var hashValue: Int {
        return link.hashValue
    }
    
    static func ==(lhs: Page, rhs: Page) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    static func <(lhs: Page, rhs: Page) -> Bool {
        return lhs.pageRank < rhs.pageRank
    }
}

struct SPage: Hashable, Comparable {
    let link: String
    var pageRank: Double = 0
    var nextPR: Double?
    var isDownloaded: Bool = false
    
    var relations: Set<SPage> = Set<SPage>()
    var parents: Set<SPage> = Set<SPage>()
    
    init(lnk: String) {
        link = lnk
    }
    
    mutating func addRelation( page: inout SPage) {
        relations.insert(page)
        page.parents.insert(self)
    }
    
    var hashValue: Int {
        return link.hashValue
    }
    
    static func ==(lhs: SPage, rhs: SPage) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    static func <(lhs: SPage, rhs: SPage) -> Bool {
        return lhs.pageRank < rhs.pageRank
    }
}
