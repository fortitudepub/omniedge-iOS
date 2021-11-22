//
//  DeviceList.swift
//  DeviceList
//
//

import Foundation
import OEPlatform
import Tattoo

/// Document your module purpose
public class DeviceList: DeviceListAPI {
    private let scope: Scope

    public init(scope: Scope) {
        self.scope = scope
    }

    public func createHomeCoordinator(router: RoutingAPI, user: User, token: String) -> DeviceListCoordinator {
        return DeviceListCoordinatorImpl(scope: scope, router: router, user: user, token: token)
    }
}
