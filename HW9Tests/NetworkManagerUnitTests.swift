//
//  NetworkManagerUnitTests.swift
//  HW9Tests
//
//  Created by ARMBP on 8/7/24.
//

import XCTest
@testable import HW9

class NetworkManagerTests: XCTestCase {
    
    func testGetRequest() {
        let expectation = self.expectation(description: "GET request should succeed")
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else {
            XCTFail("Invalid URL")
            return
        }
        
        NetworkManager.shared.getRequest(url: url) { result in
            switch result {
                case .success(let data):
                    XCTAssertNotNil(data, "No data was downloaded.")
                case .failure(let error):
                    XCTFail("Error: \(error.localizedDescription)")
            }
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPostRequest() {
        let expectation = self.expectation(description: "POST request should succeed")
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            XCTFail("Invalid URL")
            return
        }
        let body = try? JSONSerialization.data(withJSONObject: ["title": "foo", "body": "bar", "userId": 1], options: [])
        
        NetworkManager.shared.postRequest(url: url, body: body) { result in
            switch result {
                case .success(let data):
                    XCTAssertNotNil(data, "No data was downloaded.")
                case .failure(let error):
                    XCTFail("Error: \(error.localizedDescription)")
            }
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPutRequest() {
        let expectation = self.expectation(description: "PUT request should succeed")
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else {
            XCTFail("Invalid URL")
            return
        }
        let body = try? JSONSerialization.data(withJSONObject: ["id": 1, "title": "foo", "body": "bar", "userId": 1], options: [])
         
        NetworkManager.shared.putRequest(url: url, body: body) { result in
            switch result {
                case .success(let data):
                    XCTAssertNotNil(data, "No data was downloaded.")
                case .failure(let error):
                    XCTFail("Error: \(error.localizedDescription)")
            }
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testDeleteRequest() {
        let expectation = self.expectation(description: "DELETE request should succeed")
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else {
            XCTFail("Invalid URL")
            return
        }
        
        NetworkManager.shared.deleteRequest(url: url) { result in
            switch result {
                case .success(let data):
                    XCTAssertNotNil(data, "No data was downloaded.")
                case .failure(let error):
                    XCTFail("Error: \(error.localizedDescription)")
            }
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
}

