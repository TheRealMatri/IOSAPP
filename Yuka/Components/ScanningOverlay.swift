import UIKit

class ScanningOverlay: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        // Fill with semi-transparent black
        context.setFillColor(UIColor.black.withAlphaComponent(0.5).cgColor)
        context.fill(rect)
        
        // Create a transparent "window"
        let centerRect = CGRect(x: rect.midX - 150, y: rect.midY - 150, width: 300, height: 300)
        context.clear(centerRect)
        
        // Draw border
        context.setStrokeColor(UIColor.green.cgColor)
        context.setLineWidth(2.0)
        context.stroke(centerRect)
        
        // Draw corner marks
        let cornerLength: CGFloat = 20
        let lineWidth: CGFloat = 4.0
        
        // Top left
        drawCorner(context: context, point: CGPoint(x: centerRect.minX, y: centerRect.minY), 
                   horizontalDirection: .right, verticalDirection: .down, 
                   length: cornerLength, lineWidth: lineWidth)
        
        // Top right
        drawCorner(context: context, point: CGPoint(x: centerRect.maxX, y: centerRect.minY), 
                   horizontalDirection: .left, verticalDirection: .down, 
                   length: cornerLength, lineWidth: lineWidth)
        
        // Bottom left
        drawCorner(context: context, point: CGPoint(x: centerRect.minX, y: centerRect.maxY), 
                   horizontalDirection: .right, verticalDirection: .up, 
                   length: cornerLength, lineWidth: lineWidth)
        
        // Bottom right
        drawCorner(context: context, point: CGPoint(x: centerRect.maxX, y: centerRect.maxY), 
                   horizontalDirection: .left, verticalDirection: .up, 
                   length: cornerLength, lineWidth: lineWidth)
    }
    
    enum Direction { case left, right, up, down }
    
    func drawCorner(context: CGContext, point: CGPoint, 
                   horizontalDirection: Direction, verticalDirection: Direction,
                   length: CGFloat, lineWidth: CGFloat) {
        context.setStrokeColor(UIColor.green.cgColor)
        context.setLineWidth(lineWidth)
        context.setLineCap(.round)
        
        // Horizontal line
        let hEnd = horizontalDirection == .right ? 
            CGPoint(x: point.x + length, y: point.y) : 
            CGPoint(x: point.x - length, y: point.y)
        
        context.move(to: point)
        context.addLine(to: hEnd)
        
        // Vertical line
        let vEnd = verticalDirection == .down ? 
            CGPoint(x: point.x, y: point.y + length) : 
            CGPoint(x: point.x, y: point.y - length)
        
        context.move(to: point)
        context.addLine(to: vEnd)
        
        context.strokePath()
    }
}