//
//  CandyAttribute.swift
//  demo
//
//  Created by jesse on 2017/10/13.
//  Copyright © 2017年 jesse. All rights reserved.
//

import SwiftyAttributes

public typealias StringKey = SwiftyAttributes.StringKey
public typealias Attribute = SwiftyAttributes.Attribute

public struct CandyAttribute {}

extension CandyAttribute {
    static func dictionary(from attributes: [Attribute]) -> [StringKey: Any] {
        var dict = [StringKey: Any]()
        for attr in attributes {
            dict[attr.keyName] = attr.foundationValue
        }
        return dict
    }

    public static func withTextColor(_ color: Color) -> [StringKey: Any] {
        return dictionary(from: [Attribute.textColor(color)])
    }

    public static func withFont(_ font: Font) -> [StringKey: Any] {
        return dictionary(from: [Attribute.font(font)])
    }

    public static func withParagraphStyle(_ style: ParagraphStyle) -> [StringKey: Any] {
        return dictionary(from: [Attribute.paragraphStyle(style)])
    }

    public static func withBackgroundColor(_ color: Color) -> [StringKey: Any] {
        return dictionary(from: [Attribute.backgroundColor(color)])
    }

    public static func withLigatures(_ ligatures: Ligatures) -> [StringKey: Any] {
        return dictionary(from: [Attribute.ligatures(ligatures)])
    }

    public static func withKern(_ kernValue: Double) -> [StringKey: Any] {
        return dictionary(from: [Attribute.kern(kernValue)])
    }

    public static func withStrikethroughStyle(_ style: StrikethroughStyle) -> [StringKey: Any] {
        return dictionary(from: [Attribute.strikethroughStyle(style)])
    }

    public static func withUnderlineStyle(_ style: UnderlineStyle) -> [StringKey: Any] {
        return dictionary(from: [Attribute.underlineStyle(style)])
    }

    public static func withStrokeColor(_ color: Color) -> [StringKey: Any] {
        return dictionary(from: [Attribute.strokeColor(color)])
    }

    public static func withStrokeWidth(_ width: Double) -> [StringKey: Any] {
        return dictionary(from: [Attribute.strokeWidth(width)])
    }

    public static func withTextEffect(_ effect: TextEffect) -> [StringKey: Any] {
        return dictionary(from: [Attribute.textEffect(effect)])
    }

    public static func withBaselineOffset(_ offset: Double) -> [StringKey: Any] {
        return dictionary(from: [Attribute.baselineOffset(offset)])
    }

    public static func withUnderlineColor(_ color: Color) -> [StringKey: Any] {
        return dictionary(from: [Attribute.underlineColor(color)])
    }

    public static func withStrikethroughColor(_ color: Color) -> [StringKey: Any] {
        return dictionary(from: [Attribute.strikethroughColor(color)])
    }

    public static func withObliqueness(_ obliquenessValue: Double) -> [StringKey: Any] {
        return dictionary(from: [Attribute.obliqueness(obliquenessValue)])
    }

    public static func withExpansion(_ expansion: Double) -> [StringKey: Any] {
        return dictionary(from: [Attribute.expansion(expansion)])
    }

    public static func withWritingDirections(_ directions: [WritingDirection]) -> [StringKey: Any] {
        return dictionary(from: [Attribute.writingDirections(directions)])
    }

    public static func withVerticalGlyphForm(_ form: VerticalGlyphForm) -> [StringKey: Any] {
        return dictionary(from: [Attribute.verticalGlyphForm(form)])
    }

    public static func withShadow(_ shadow: Shadow) -> [StringKey: Any] {
        return dictionary(from: [Attribute.shadow(shadow)])
    }

    public static func withLink(_ link: URL) -> [StringKey: Any] {
        return dictionary(from: [Attribute.link(link)])
    }

    public static func withAttributes(_ attributes: [Attribute]) -> [StringKey: Any] {
        return dictionary(from: attributes)
    }

    public static func withAttribute(_ attribute: Attribute) -> [StringKey: Any] {
        return dictionary(from: [attribute])
    }

    public static func withLineSpacing(_ lineSpacing: CGFloat) -> [StringKey: Any] {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = lineSpacing
        return dictionary(from: [Attribute.paragraphStyle(style)])
    }
}

extension Dictionary where Key == StringKey {
    public static func +(lhs: [Key: Value], rhs: [Key: Value]) -> [Key: Value] {
        var result = lhs
        rhs.forEach{ result[$0] = $1 }
        return result
    }

    public func withTextColor(_ color: Color) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.textColor(color)])
    }

    public func withFont(_ font: Font) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.font(font)])
    }

    public func withParagraphStyle(_ style: ParagraphStyle) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.paragraphStyle(style)])
    }

    public func withLineSpacing(_ lineSpacing: CGFloat) -> [StringKey: Any] {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = lineSpacing
        return self + CandyAttribute.dictionary(from: [Attribute.paragraphStyle(style)])
    }

    public func withBackgroundColor(_ color: Color) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.backgroundColor(color)])
    }

    public func withLigatures(_ ligatures: Ligatures) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.ligatures(ligatures)])
    }

    public func withKern(_ kernValue: Double) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.kern(kernValue)])
    }

    public func withStrikethroughStyle(_ style: StrikethroughStyle) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.strikethroughStyle(style)])
    }

    public func withUnderlineStyle(_ style: UnderlineStyle) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.underlineStyle(style)])
    }

    public func withStrokeColor(_ color: Color) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.strokeColor(color)])
    }

    public func withStrokeWidth(_ width: Double) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.strokeWidth(width)])
    }

    public func withTextEffect(_ effect: TextEffect) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.textEffect(effect)])
    }

    public func withBaselineOffset(_ offset: Double) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.baselineOffset(offset)])
    }

    public func withUnderlineColor(_ color: Color) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.underlineColor(color)])
    }

    public func withStrikethroughColor(_ color: Color) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.strikethroughColor(color)])
    }

    public func withObliqueness(_ obliquenessValue: Double) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.obliqueness(obliquenessValue)])
    }

    public func withExpansion(_ expansion: Double) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.expansion(expansion)])
    }

    public func withLink(_ link: URL) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.link(link)])
    }

    public func withWritingDirections(_ directions: [WritingDirection]) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.writingDirections(directions)])
    }

    public func withVerticalGlyphForm(_ form: VerticalGlyphForm) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.verticalGlyphForm(form)])
    }

    public func withShadow(_ shadow: Shadow) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [Attribute.shadow(shadow)])
    }

    public func withAttributes(_ attributes: [Attribute]) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: attributes)
    }

    public func withAttribute(_ attribute: Attribute) -> [StringKey: Any] {
        return self + CandyAttribute.dictionary(from: [attribute])
    }
}

extension NSAttributedString {
    public static func +(lhs: String, rhs: NSAttributedString) -> NSAttributedString {
        let combinedString = NSMutableAttributedString(string: lhs)
        combinedString.append(rhs)
        return combinedString
    }

    public static func +(lhs: NSAttributedString, rhs: String) -> NSAttributedString {
        let combinedString = NSMutableAttributedString(string: rhs)
        combinedString.append(lhs)
        return combinedString
    }

    public func withLineSpacing(_ lineSpacing: CGFloat) -> NSMutableAttributedString {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = lineSpacing
        return withAttribute(.paragraphStyle(style))
    }
}

extension String {
    public func withLineSpacing(_ lineSpacing: CGFloat) -> NSMutableAttributedString {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = lineSpacing
        return withAttribute(.paragraphStyle(style))
    }
}

