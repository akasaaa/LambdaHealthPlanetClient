//
//  main.swift
//  
//
//  Created by 赤迫亮太 on 2022/10/18.
//

import Foundation
import AWSLambdaRuntime
import HealthPlanetClient

private struct LambdaRequest: Codable {
    let from: String?
    let to: String?
}
private typealias LambdaResponse = InnerScan

private let lambdaCodableClosure: Lambda.CodableClosure<LambdaRequest, LambdaResponse> = { context, request, callback in
    guard let clientId = env(.clientId),
          let clientSecret = env(.clientSecret),
          let refreshToken = env(.refreshToken) else {
        callback(.failure(Error.withComment("Please check EnvironmentValues.")))
        return
    }
    
    HealthPlanetClient(clientId: clientId, clientSecret: clientSecret, refreshToken: refreshToken)
        .fetch(from: request.from ?? "", to: request.to ?? "") { result in
            switch result {
            case .success(let innerScan):
                callback(.success(innerScan))
            case .failure(let error):
                callback(.failure(error))
            }
        }
}
    
Lambda.run(lambdaCodableClosure)
