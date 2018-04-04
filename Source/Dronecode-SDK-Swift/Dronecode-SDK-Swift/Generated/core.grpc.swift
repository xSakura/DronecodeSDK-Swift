//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: core.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import Dispatch
import gRPC
import SwiftProtobuf

internal protocol Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverCall: ClientCallServerStreaming {
  /// Call this to wait for a result. Blocking.
  func receive() throws -> Dronecore_Rpc_Core_DiscoverResponse
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (Dronecore_Rpc_Core_DiscoverResponse?, ClientError?) -> Void) throws
}

fileprivate final class Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverCallBase: ClientCallServerStreamingBase<Dronecore_Rpc_Core_SubscribeDiscoverRequest, Dronecore_Rpc_Core_DiscoverResponse>, Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverCall {
  override class var method: String { return "/dronecore.rpc.core.CoreService/SubscribeDiscover" }
}

class Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverCallTestStub: ClientCallServerStreamingTestStub<Dronecore_Rpc_Core_DiscoverResponse>, Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverCall {
  override class var method: String { return "/dronecore.rpc.core.CoreService/SubscribeDiscover" }
}

internal protocol Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutCall: ClientCallServerStreaming {
  /// Call this to wait for a result. Blocking.
  func receive() throws -> Dronecore_Rpc_Core_TimeoutResponse
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (Dronecore_Rpc_Core_TimeoutResponse?, ClientError?) -> Void) throws
}

fileprivate final class Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutCallBase: ClientCallServerStreamingBase<Dronecore_Rpc_Core_SubscribeTimeoutRequest, Dronecore_Rpc_Core_TimeoutResponse>, Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutCall {
  override class var method: String { return "/dronecore.rpc.core.CoreService/SubscribeTimeout" }
}

class Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutCallTestStub: ClientCallServerStreamingTestStub<Dronecore_Rpc_Core_TimeoutResponse>, Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutCall {
  override class var method: String { return "/dronecore.rpc.core.CoreService/SubscribeTimeout" }
}

internal protocol Dronecore_Rpc_Core_CoreServiceListRunningPluginsCall: ClientCallUnary {}

fileprivate final class Dronecore_Rpc_Core_CoreServiceListRunningPluginsCallBase: ClientCallUnaryBase<Dronecore_Rpc_Core_ListRunningPluginsRequest, Dronecore_Rpc_Core_ListRunningPluginsResponse>, Dronecore_Rpc_Core_CoreServiceListRunningPluginsCall {
  override class var method: String { return "/dronecore.rpc.core.CoreService/ListRunningPlugins" }
}


/// Instantiate Dronecore_Rpc_Core_CoreServiceServiceClient, then call methods of this protocol to make API calls.
internal protocol Dronecore_Rpc_Core_CoreServiceService: ServiceClient {
  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func subscribediscover(_ request: Dronecore_Rpc_Core_SubscribeDiscoverRequest, completion: ((CallResult) -> Void)?) throws -> Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverCall

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func subscribetimeout(_ request: Dronecore_Rpc_Core_SubscribeTimeoutRequest, completion: ((CallResult) -> Void)?) throws -> Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutCall

  /// Synchronous. Unary.
  func listrunningplugins(_ request: Dronecore_Rpc_Core_ListRunningPluginsRequest) throws -> Dronecore_Rpc_Core_ListRunningPluginsResponse
  /// Asynchronous. Unary.
  func listrunningplugins(_ request: Dronecore_Rpc_Core_ListRunningPluginsRequest, completion: @escaping (Dronecore_Rpc_Core_ListRunningPluginsResponse?, CallResult) -> Void) throws -> Dronecore_Rpc_Core_CoreServiceListRunningPluginsCall

}

internal final class Dronecore_Rpc_Core_CoreServiceServiceClient: ServiceClientBase, Dronecore_Rpc_Core_CoreServiceService {
  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  internal func subscribediscover(_ request: Dronecore_Rpc_Core_SubscribeDiscoverRequest, completion: ((CallResult) -> Void)?) throws -> Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverCall {
    return try Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  internal func subscribetimeout(_ request: Dronecore_Rpc_Core_SubscribeTimeoutRequest, completion: ((CallResult) -> Void)?) throws -> Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutCall {
    return try Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func listrunningplugins(_ request: Dronecore_Rpc_Core_ListRunningPluginsRequest) throws -> Dronecore_Rpc_Core_ListRunningPluginsResponse {
    return try Dronecore_Rpc_Core_CoreServiceListRunningPluginsCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  internal func listrunningplugins(_ request: Dronecore_Rpc_Core_ListRunningPluginsRequest, completion: @escaping (Dronecore_Rpc_Core_ListRunningPluginsResponse?, CallResult) -> Void) throws -> Dronecore_Rpc_Core_CoreServiceListRunningPluginsCall {
    return try Dronecore_Rpc_Core_CoreServiceListRunningPluginsCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

class Dronecore_Rpc_Core_CoreServiceServiceTestStub: ServiceClientTestStubBase, Dronecore_Rpc_Core_CoreServiceService {
  var subscribediscoverRequests: [Dronecore_Rpc_Core_SubscribeDiscoverRequest] = []
  var subscribediscoverCalls: [Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverCall] = []
  func subscribediscover(_ request: Dronecore_Rpc_Core_SubscribeDiscoverRequest, completion: ((CallResult) -> Void)?) throws -> Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverCall {
    subscribediscoverRequests.append(request)
    defer { subscribediscoverCalls.removeFirst() }
    return subscribediscoverCalls.first!
  }

  var subscribetimeoutRequests: [Dronecore_Rpc_Core_SubscribeTimeoutRequest] = []
  var subscribetimeoutCalls: [Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutCall] = []
  func subscribetimeout(_ request: Dronecore_Rpc_Core_SubscribeTimeoutRequest, completion: ((CallResult) -> Void)?) throws -> Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutCall {
    subscribetimeoutRequests.append(request)
    defer { subscribetimeoutCalls.removeFirst() }
    return subscribetimeoutCalls.first!
  }

  var listrunningpluginsRequests: [Dronecore_Rpc_Core_ListRunningPluginsRequest] = []
  var listrunningpluginsResponses: [Dronecore_Rpc_Core_ListRunningPluginsResponse] = []
  func listrunningplugins(_ request: Dronecore_Rpc_Core_ListRunningPluginsRequest) throws -> Dronecore_Rpc_Core_ListRunningPluginsResponse {
    listrunningpluginsRequests.append(request)
    defer { listrunningpluginsResponses.removeFirst() }
    return listrunningpluginsResponses.first!
  }
  func listrunningplugins(_ request: Dronecore_Rpc_Core_ListRunningPluginsRequest, completion: @escaping (Dronecore_Rpc_Core_ListRunningPluginsResponse?, CallResult) -> Void) throws -> Dronecore_Rpc_Core_CoreServiceListRunningPluginsCall {
    fatalError("not implemented")
  }

}

/// To build a server, implement a class that conforms to this protocol.
internal protocol Dronecore_Rpc_Core_CoreServiceProvider {
  func subscribediscover(request: Dronecore_Rpc_Core_SubscribeDiscoverRequest, session: Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverSession) throws
  func subscribetimeout(request: Dronecore_Rpc_Core_SubscribeTimeoutRequest, session: Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutSession) throws
  func listrunningplugins(request: Dronecore_Rpc_Core_ListRunningPluginsRequest, session: Dronecore_Rpc_Core_CoreServiceListRunningPluginsSession) throws -> Dronecore_Rpc_Core_ListRunningPluginsResponse
}

internal protocol Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverSession: ServerSessionServerStreaming {
  /// Send a message. Nonblocking.
  func send(_ response: Dronecore_Rpc_Core_DiscoverResponse, completion: ((Bool) -> Void)?) throws
}

fileprivate final class Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverSessionBase: ServerSessionServerStreamingBase<Dronecore_Rpc_Core_SubscribeDiscoverRequest, Dronecore_Rpc_Core_DiscoverResponse>, Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverSession {}

class Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverSessionTestStub: ServerSessionServerStreamingTestStub<Dronecore_Rpc_Core_DiscoverResponse>, Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverSession {}

internal protocol Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutSession: ServerSessionServerStreaming {
  /// Send a message. Nonblocking.
  func send(_ response: Dronecore_Rpc_Core_TimeoutResponse, completion: ((Bool) -> Void)?) throws
}

fileprivate final class Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutSessionBase: ServerSessionServerStreamingBase<Dronecore_Rpc_Core_SubscribeTimeoutRequest, Dronecore_Rpc_Core_TimeoutResponse>, Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutSession {}

class Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutSessionTestStub: ServerSessionServerStreamingTestStub<Dronecore_Rpc_Core_TimeoutResponse>, Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutSession {}

internal protocol Dronecore_Rpc_Core_CoreServiceListRunningPluginsSession: ServerSessionUnary {}

fileprivate final class Dronecore_Rpc_Core_CoreServiceListRunningPluginsSessionBase: ServerSessionUnaryBase<Dronecore_Rpc_Core_ListRunningPluginsRequest, Dronecore_Rpc_Core_ListRunningPluginsResponse>, Dronecore_Rpc_Core_CoreServiceListRunningPluginsSession {}

class Dronecore_Rpc_Core_CoreServiceListRunningPluginsSessionTestStub: ServerSessionUnaryTestStub, Dronecore_Rpc_Core_CoreServiceListRunningPluginsSession {}


/// Main server for generated service
internal final class Dronecore_Rpc_Core_CoreServiceServer: ServiceServer {
  private let provider: Dronecore_Rpc_Core_CoreServiceProvider

  internal init(address: String, provider: Dronecore_Rpc_Core_CoreServiceProvider) {
    self.provider = provider
    super.init(address: address)
  }

  internal init?(address: String, certificateURL: URL, keyURL: URL, provider: Dronecore_Rpc_Core_CoreServiceProvider) {
    self.provider = provider
    super.init(address: address, certificateURL: certificateURL, keyURL: keyURL)
  }

  /// Start the server.
  internal override func handleMethod(_ method: String, handler: Handler, queue: DispatchQueue) throws -> Bool {
    let provider = self.provider
    switch method {
    case "/dronecore.rpc.core.CoreService/SubscribeDiscover":
      try Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverSessionBase(
        handler: handler,
        providerBlock: { try provider.subscribediscover(request: $0, session: $1 as! Dronecore_Rpc_Core_CoreServiceSubscribeDiscoverSessionBase) })
          .run(queue: queue)
      return true
    case "/dronecore.rpc.core.CoreService/SubscribeTimeout":
      try Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutSessionBase(
        handler: handler,
        providerBlock: { try provider.subscribetimeout(request: $0, session: $1 as! Dronecore_Rpc_Core_CoreServiceSubscribeTimeoutSessionBase) })
          .run(queue: queue)
      return true
    case "/dronecore.rpc.core.CoreService/ListRunningPlugins":
      try Dronecore_Rpc_Core_CoreServiceListRunningPluginsSessionBase(
        handler: handler,
        providerBlock: { try provider.listrunningplugins(request: $0, session: $1 as! Dronecore_Rpc_Core_CoreServiceListRunningPluginsSessionBase) })
          .run(queue: queue)
      return true
    default:
      return false
    }
  }
}
