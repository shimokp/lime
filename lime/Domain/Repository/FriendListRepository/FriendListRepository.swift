//
//  FriendListRepository.swift
//  lime
//
//  Created by 下村一将 on 2017/10/18.
//  Copyright © 2017 kazu. All rights reserved.
//

import Foundation
import RxSwift

public protocol FriendListRepository {
	func getFriendList() -> Observable<[FriendEntity]>
}

struct FriendListRepositoryImpl: FriendListRepository {
	private let dataStore: FriendListDataStore
	
	public init(dataStore: FriendListDataStore) {
		self.dataStore = dataStore
	}
	
	func getFriendList() -> Observable<[FriendEntity]> {
		return dataStore.getFriendList()
	}
}
