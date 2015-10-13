//
//  ChristmasTree.swift
//  akenc_swift_learn_02
//
//  Created by kenshino on 15/10/13.
//  Copyright © 2015年 akenc. All rights reserved.
//

import SceneKit

class ChristmasTree: SCNNode {
    override init() {
        super.init()
        
        let cylinder = SCNCylinder(radius:1,height:3)
        let trunk = SCNNode(geometry: cylinder)
        cylinder.firstMaterial?.diffuse.contents = UIColor.brownColor()
        addChildNode(trunk)
        
        for i in 1...3 {
            let cone = SCNNode(geometry: SCNCone(topRadius:0, bottomRadius:3, height:3))
            cone.position.y = 2 * Float(i) + 1
            cone.geometry?.firstMaterial?.diffuse.contents = UIColor.greenColor()
            addChildNode(cone)
        }
        
        for i in 1...3 {
            let present = SCNNode(geometry: SCNBox(width: 1, height: 1, length: 1, chamferRadius: 0))
            present.geometry?.firstMaterial?.diffuse.contents = UIColor.blueColor()
            present.position.x = Float(i % 2) * 2
            present.position.z = Float(i / 2) * 2
            present.position.y = -1
            addChildNode(present)
        }
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
