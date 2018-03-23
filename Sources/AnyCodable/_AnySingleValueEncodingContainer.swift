//
//  _AnySingleValueEncodingContainer.swift
//  AnyCodable
//
//  Created by Valerio Mazzeo on 23/03/2018.
//

import Foundation

extension _AnyEncoder: SingleValueEncodingContainer {

    fileprivate func assertCanEncodeNewValue() {
        precondition(self.canEncodeNewValue, "Attempt to encode value through single value container when previously value already encoded.")
    }

    public func encodeNil() throws {
        assertCanEncodeNewValue()
        self.storage.push(container: NSNull())
    }

    public func encode(_ value: Bool) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: Int) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: Int8) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: Int16) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: Int32) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: Int64) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: UInt) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: UInt8) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: UInt16) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: UInt32) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: UInt64) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: String) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: Float) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode(_ value: Double) throws {
        assertCanEncodeNewValue()
        self.storage.push(container: value)
    }

    public func encode<T: Encodable>(_ value: T) throws {
        assertCanEncodeNewValue()
        try self.storage.push(container: self.box(value))
    }
}
