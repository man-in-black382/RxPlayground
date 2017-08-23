//: Playground - noun: a place where people can play

import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

import RxSwift

example("PublishSubject") { 
    let disposeBag = DisposeBag()
    let subject = PublishSubject<String>()
    subject.subscribe {
        print("First sub: \($0)")
    }.addDisposableTo(disposeBag)
    
    subject.on(.next("Hello!"))
    subject.onNext("RxSwift")
    
    subject.subscribe(onNext: {
        print("Second sub: \($0)")
    }).addDisposableTo(disposeBag)
    
    subject.onNext("Hi!")
    
    
    
    let obs = Observable. 
}

