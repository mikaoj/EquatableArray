// The MIT License (MIT)
//
// Copyright (c) 2015 Joakim Gyllström
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Swift

public struct EquatableArray<T: Equatable>: MutableCollection, CustomStringConvertible, CustomDebugStringConvertible, ExpressibleByArrayLiteral, RangeReplaceableCollection, Equatable {
    public typealias Element = T

    fileprivate var array = [Element]()
    public init() {}

    // MARK: MutableCollection
    public var startIndex: Int { return array.startIndex }

    public var endIndex: Int { return array.endIndex }

    public func index(after i: Int) -> Int { return array.index(after: i) }

    public subscript(index: Int) -> T {
        get {
            return array[index]
        }
        set {
            array[index] = newValue
        }
    }

    // MARK: RandomAccessCollection. TODO: When implementing the protocol everything b0rks.
    public func index(before i: Int) -> Int {
        return array.index(before: i)
    }

    //MARK: CustomStringConvertible
    public var description: String {
        return array.description
    }

    // MARK: CustomDebugStringConvertible
    public var debugDescription: String {
        return array.debugDescription
    }

    // MARK: ExpressibleByArrayLiteral
    public init(arrayLiteral elements: T...) {
        array = Array(elements)
    }

    // MARK: RangeReplaceableCollection
    public mutating func replaceSubrange<C>(_ subrange: Range<EquatableArray.Index>, with newElements: C) where C : Collection, C.Iterator.Element == T {
        array.replaceSubrange(subrange, with: newElements)
    }

    public mutating func removeLast() {
        array.removeLast()
    }
}

// MARK: Equatable
public func ==<T: Equatable>(lhs: EquatableArray<T>, rhs: EquatableArray<T>) -> Bool {
    return lhs.array == rhs.array
}
