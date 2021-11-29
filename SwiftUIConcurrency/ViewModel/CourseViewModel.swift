//
//  CourseViewModel.swift
//  SwiftUIConcurrency
//
//  Created by KANISHK VIJAYWARGIYA on 10/11/21.
//

import Foundation
import Apollo

class CourseViewModel: ObservableObject {
    
    private func queryCourses() async throws -> GraphQLResult<CourseQuery.Data>? {
        return await withCheckedContinuation{ continuation in
            Network.shared.apollo.fetch(query: CourseQuery()) { result in
                switch result {
                case .success(let graphQLResult):
                    continuation.resume(returning: graphQLResult)
//                    print("Successfully got a GraphQL result: \(graphQLResult)")
                    return
                case .failure(let error):
                    if let error = error as? Never {
                        continuation.resume(throwing: error)
                    }
//                    continuation.resume(throwing: error as! Never)
//                    print("Network or response format error: \(error)")
                    return
                }
            }
        }
    }
    
    func fetch() async {
        do {
            let result = try await queryCourses()
            if let result = result {
                print("result", result)
            }
        } catch {
            print("Error", error)
        }
    }
}
