//
//  Network.swift
//  SwiftUIConcurrency
//
//  Created by KANISHK VIJAYWARGIYA on 10/11/21.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://graphql.contentful.com/content/v1/spaces/2ei0v46lb0r1?access_token=3kMDmwfsSYbx3FAMi7NeQ4r8IRn4omuQ-NCFmBuzrM8")!)
    
}
