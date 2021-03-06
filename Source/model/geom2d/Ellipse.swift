import Foundation

open class Ellipse: Locus {
  
  open let cx: Double
  open let cy: Double
  open let rx: Double
  open let ry: Double
  
  public init(cx: Double = 0, cy: Double = 0, rx: Double = 0, ry: Double = 0) {
    self.cx = cx
    self.cy = cy
    self.rx = rx
    self.ry = ry
  }
  
  override open func bounds() -> Rect {
    return Rect(
      x: cx - rx,
      y: cy - ry,
      w: rx * 2.0,
      h: ry * 2.0)
  }
  
  // GENERATED NOT
  open func arc(shift: Double, extent: Double) -> Arc {
    return Arc(ellipse: self, shift: shift, extent: extent)
  }
}
