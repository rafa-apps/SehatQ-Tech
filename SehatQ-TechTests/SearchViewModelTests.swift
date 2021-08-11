//
//  SearchViewModelTests.swift
//  SehatQ-TechTests
//
//  Created by rahman fad on 08/08/21.
//

import XCTest
import RxSwift
import RxBlocking

class SearchViewModelTests: XCTestCase {
//    var scheduler: TestScheduler!
    var disposeBag: DisposeBag!
    var viewModel : SearchViewModel!
    var fakeProducts: [Product] = []

    override func setUp() {
        super.setUp()
//        self.scheduler = TestScheduler(initialClock: 0)
        self.disposeBag = DisposeBag()
        self.fakeProducts = [Product(id: "123", imageUrl: "/url/", title: "Test Product", description: "Desc", price: "1238923", loved: 1)]
        self.viewModel = SearchViewModel(products: fakeProducts)
    }

    override func tearDown() {
        self.viewModel = nil
        super.tearDown()
    }

    func testSearchEqual() {
        viewModel.search(query: "Test Product")
        viewModel
            .productPubSub
            .asObservable()
            .subscribe { products in
                XCTAssertEqual(products.first?.title, self.fakeProducts.first?.title)
            } onError: { error in
                XCTAssertThrowsError(error)
            }
            .disposed(by: disposeBag)
    }

    func testSearchNil() {
        viewModel.search(query: "Test Product")
        viewModel
            .productPubSub
            .asObservable()
            .subscribe { products in
                XCTAssertNil(products)
            } onError: { error in
                XCTAssertThrowsError(error)
            }
            .disposed(by: disposeBag)
    }

    func testSuccesfullInit() {
        XCTAssertNotNil(SearchViewModel(products: fakeProducts))
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
