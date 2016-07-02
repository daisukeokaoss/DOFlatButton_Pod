//
//  DOFlatButton.swift
//  DOFlatButton
//
//  MIT License
//

import Foundation

import UIKit


public class DOFlatButton :UIButton
{
    private var faceColors:Dictionary<UInt,UIColor>?
    private var sideColors:Dictionary<UInt,UIColor>?
    private var borderColors:Dictionary<UInt,UIColor>?
    
    public var faceColor:UIColor?{
        set{
            self.setFaceColor(newValue!,state:state)
        }
        get{
            return self.faceColorForState(state)
        }
    }
    public var sideColor:UIColor?{
        set{
            self.setSideColor(newValue!, state: state)
        }
        
        get{
            return self.sideColorForState(state)
        }
    }
    public var borderColor:UIColor?{
        set{
            self.setBorderColor(newValue!, state: state)
        }
        get{
            return self.borderColorForState(state)
        }
    }
    
    public var radius:CGFloat?
    public var margin:CGFloat?
    public var depth:CGFloat?
    public var borderWidth:CGFloat?
    
    public func setFaceColor(faceColor:UIColor,state:UIControlState)
    {
        self.faceColors?[state.rawValue] = faceColor
    }
    public func setSideColor(sideColor:UIColor,state:UIControlState)
    {
        self.sideColors?[state.rawValue] = sideColor
    }
    public func setBorderColor(borderColor:UIColor,state:UIControlState)
    {
        self.borderColors?[state.rawValue] = borderColor
    }
    
    public func faceColorForState(state:UIControlState) -> UIColor
    {
        if self.faceColors?[state.rawValue] == nil{
            return (self.faceColors?[UIControlState.Normal.rawValue])!
        }
        
        return (self.faceColors?[state.rawValue])!
    }
    
    public func sideColorForState(state:UIControlState) -> UIColor
    {
        if self.sideColors?[state.rawValue] == nil{
            return (self.sideColors?[UIControlState.Normal.rawValue])!
        }
        return (self.sideColors?[state.rawValue])!
    }
    
    public func borderColorForState(state:UIControlState) -> UIColor
    {
        if self.borderColors?[state.rawValue] == nil{
            return (self.borderColors?[UIControlState.Normal.rawValue])!
        }
        return (self.borderColors?[state.rawValue])!
    }
    
    override public func encodeWithCoder(aCoder: NSCoder) {
        
    }
    override init(frame:CGRect){
        //self.init()
        
        super.init(frame: frame)
        self.dofb_init()
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        //self.init()
        super.init(coder: aDecoder)
        self.dofb_init()
    }
    
    /*override init(){
        super.init()
        self.dofb_init()
    }*/
    
    func dofb_init()
    {
        self.faceColors = [:]
        self.sideColors = [:]
        self.borderColors = [:]
        
        self.faceColor = UIColor(red: 0.333, green: 0.631, blue: 0.851, alpha: 1.0)
        self.sideColor = UIColor(red: 0.310, green: 0.498, blue: 0.702, alpha: 1.0)
        self.borderColor = UIColor(red: 0.310, green: 0.498, blue: 0.702, alpha: 1.0)
        
        self.radius = 6.0
        self.margin = 4.0
        self.depth = 3.0
        self.borderWidth = 0.0
        
        self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
    }
    
    override public func setTitle(title: String?, forState state: UIControlState) {
        super.setTitle(title, forState: state)
    }
    
    override public func layoutSubviews()
    {
        super.layoutSubviews()
        var frame:CGRect = self.titleLabel!.frame
        frame.origin.y = frame.origin.y - self.margin!/2
        
        var imageViewFrame:CGRect = self.imageView!.frame
        imageViewFrame.origin.y = imageViewFrame.origin.y - self.margin!/2
        
        if(self.state == UIControlState.Selected || self.state == UIControlState.Highlighted){
            frame.origin.y = frame.origin.y + self.depth!
            imageViewFrame.origin.y = imageViewFrame.origin.y + self.depth!
        }
        
        self.titleLabel?.frame = frame
        self.imageView?.frame = imageViewFrame
    }
    
    override public var frame:CGRect{
        get{
            return super.frame
        }
        set{
            super.frame = newValue
            self.setNeedsDisplay()
        }
    }
    
    override public var highlighted:Bool{
        set{
            super.highlighted = newValue
            self.setNeedsDisplay()
        }
        get{
            return super.highlighted
        }
        
    }
    override public var selected:Bool{
        set{
            super.selected = newValue
            self.setNeedsDisplay()
        }
        get{
            return super.selected
        }
    }
    
    override public var enabled:Bool{
        set{
            super.enabled = newValue
            self.setNeedsDisplay()
        }
        get{
            return super.enabled
        }
    }
    
    private func setFaceColor(faceColor:UIColor){
        self.setFaceColor(faceColor, state: UIControlState.Normal)
        self.setFaceColor(faceColor, state: UIControlState.Highlighted)
        self.setFaceColor(faceColor, state: UIControlState.Selected)
        self.setFaceColor(faceColor, state: UIControlState.Disabled)

    }
    
    private func setBorderColor(borderColor:UIColor){
        self.setBorderColor(borderColor, state: UIControlState.Normal)
        self.setBorderColor(borderColor, state: UIControlState.Highlighted)
        self.setBorderColor(borderColor, state: UIControlState.Selected)
        self.setBorderColor(borderColor, state: UIControlState.Disabled)
        self.setBorderColor(borderColor, state: UIControlState.Application)
        self.setBorderColor(borderColor, state: UIControlState())
    }
    
    override public func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        let size:CGSize = self.bounds.size
        
        let surfaceRect:CGRect = CGRectMake(0, 0, size.width, size.height)
        var surfaceImage:UIImage
        
        UIGraphicsBeginImageContextWithOptions(surfaceRect.size, false, 0.0);
        
        let borderColor:UIColor? = self.borderColorForState(self.state)
        if(borderColor != nil){
            borderColor!.set()
            self.drawRoundedRect(surfaceRect, radius: self.radius!, context: UIGraphicsGetCurrentContext()!)
        }
            
        self.faceColorForState(self.state).set()
        
        self.drawRoundedRect(CGRectInset(surfaceRect, self.borderWidth!, self.borderWidth!), radius: (self.radius! - self.borderWidth!), context: UIGraphicsGetCurrentContext()!)
        
        surfaceImage = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext();
        
        self.sideColorForState(self.state).set()
        
        let sideRect:CGRect = CGRectMake(0,size.height * 1.0 / 4.0,size.width,size.height * 3.0/4.0)
        
        self.drawRoundedRect(sideRect, radius: self.radius!, context: UIGraphicsGetCurrentContext()!)
        
        let actualSurfaceRect:CGRect
        
        if(self.state == UIControlState.Selected || self.state == UIControlState.Highlighted){
            actualSurfaceRect = CGRectMake(0, self.depth!, size.width, size.height - self.margin!)
        }else {
            actualSurfaceRect = CGRectMake(0, 0, size.width, size.height - self.margin!)
        }
        
        surfaceImage.drawInRect(actualSurfaceRect)
        
    }
    
    func drawRoundedRect(rect:CGRect,radius:CGFloat,context:CGContextRef)
    {
        var rectvariable = rect
        rectvariable.origin.x += 0.5
        rectvariable.origin.y += 0.5
        rectvariable.size.width -= 1.0
        rectvariable.size.height -= 1.0
        
        let minX:CGFloat = CGRectGetMinX(rectvariable)
        let midX:CGFloat = CGRectGetMidX(rectvariable)
        let maxX:CGFloat = CGRectGetMaxX(rectvariable)
        let minY:CGFloat = CGRectGetMinY(rectvariable)
        let midY:CGFloat = CGRectGetMidY(rectvariable)
        let maxY:CGFloat = CGRectGetMaxY(rectvariable)
        
        CGContextMoveToPoint(context, minX, midY);
        CGContextAddArcToPoint(context, minX, minY, midX, minY, radius);
        CGContextAddArcToPoint(context, maxX, minY, maxX, midY, radius);
        CGContextAddArcToPoint(context, maxX, maxY, midX, maxY, radius);
        CGContextAddArcToPoint(context, minX, maxY, minX, midY, radius);
        CGContextClosePath(context);
        
        CGContextDrawPath(context, CGPathDrawingMode.FillStroke);
    }
    

    
    
    
}

