//
//  Environment.swift
//  
//
//  Created by 赤迫亮太 on 2022/10/31.
//

import AWSLambdaRuntimeCore

func env(_ key: EnvKey) -> String? {
    Lambda.env(key.rawValue)
}

enum EnvKey: String {
    case clientId = "CLIENT_ID"
    case clientSecret = "CLIENT_SECRET"
    case refreshToken = "REFRESH_TOKEN"
}
