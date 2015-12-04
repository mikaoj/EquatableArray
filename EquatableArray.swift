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

public struct EquatableArray<Element: Equatable>: CollectionType, MutableCollectionType, Equatable, ArrayLiteralConvertible, CustomStringConvertible, CustomDebugStringConvertible, RangeReplaceableCollectionType {
    private var _array = [Element]()
    public typealias Index = Int
    
    public init() {}
    
    public init(arrayLiteral elements: Element...) {
        _array = Array(elements)
    }
    
    public var startIndex: Index {
        return _array.startIndex
    }
    
    public var endIndex: Index {
        return _array.count
    }
    
    public subscript(i: Index) -> Element {
        get {
            return _array[i]
        }
        set {
            _array[i] = newValue
        }
    }
    
    // MARK: String convertible
    public var description: String {
        return _array.description
    }
    
    public var debugDescription: String {
        return _array.debugDescription
    }
    
    // MARK: RangeReplaceableCollectionType
    public mutating func replaceRange<C : CollectionType where C.Generator.Element == Element>(subRange: Range<Index>, with newElements: C) {
        _array.replaceRange(subRange, with: newElements)
    }
    
    public mutating func reserveCapacity(minimumCapacity: Int) {
        _array.reserveCapacity(minimumCapacity)
    }
    
    public mutating func append(newElement: Element) {
        _array.append(newElement)
    }
    
    public mutating func appendContentsOf<S : SequenceType where S.Generator.Element == Element>(newElements: S) {
        _array.appendContentsOf(newElements)
    }
    
    public mutating func insert(newElement: Element, atIndex i: Int) {
        _array.insert(newElement, atIndex: i)
    }
    
    public mutating func insertContentsOf<C : CollectionType where C.Generator.Element == Element>(newElements: C, at i: Index) {
        _array.insertContentsOf(newElements, at: i)
    }
    
    public mutating func removeAtIndex(index: Int) -> Element {
        return _array.removeAtIndex(index)
    }
    
    public mutating func removeFirst() -> Element {
        return _array.removeFirst()
    }
    
    public mutating func removeFirst(n: Int) {
        _array.removeFirst(n)
    }
    
    public mutating func removeRange(subRange: Range<Index>) {
        _array.removeRange(subRange)
    }
    
    public mutating func removeAll(keepCapacity keepCapacity: Bool) {
        _array.removeAll(keepCapacity: keepCapacity)
    }
}
