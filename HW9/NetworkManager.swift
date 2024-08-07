//
//  NetworkManager.swift
//  HW9
//
//  Created by ARMBP on 8/7/24.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    private init() {}

    func getRequest(url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        performRequest(request, completion: completion)
    }

    func postRequest(url: URL, body: Data?, completion: @escaping (Result<Data, Error>) -> Void) {
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = body
        performRequest(request, completion: completion)
    }

    func putRequest(url: URL, body: Data?, completion: @escaping (Result<Data, Error>) -> Void) {
        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        request.httpBody = body
        performRequest(request, completion: completion)
    }

    func deleteRequest(url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        var request = URLRequest(url: url)
        request.httpMethod = "DELETE"
        performRequest(request, completion: completion)
    }

    private func performRequest(_ request: URLRequest, completion: @escaping (Result<Data, Error>) -> Void) {
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            guard let data = data else {
                completion(.failure(NSError(domain: "No data", code: -1, userInfo: nil)))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
}
