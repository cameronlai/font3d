/*
* font3d
* (C) Copyright 2014 Cameron Lai
*
* All rights reserved. This program and the accompanying materials
* are made available under the terms of the GNU Lesser General Public License
* (LGPL) version 3.0 which accompanies this distribution, and is available at
* https://www.gnu.org/licenses/lgpl-3.0.txt
*
* font3d is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
* Lesser General Public License for more details.
*
*/

// General useful shapes

// Input parameters
// s: star corner
// e: end corner
// xstep: width specified in x dimension
// ystep: width specified in y dimension
module pgram(s,e, xstep, ystep){
	linear_extrude(height = zdim)
	polygon([s,[s[0]+xstep, s[1]+ystep],
				e,[e[0]-xstep, e[1]-ystep]],
				[[0,1,2,3,4]]);
}

// Input parameters
// center: center of circle
// d: diameter of outer circle
// w: width of circle
module hollowCylinder(center, d, w){
	translate([center[0], center[1], 0])
	difference(){
		linear_extrude(height = zdim)	circle(r=d/2);	
		linear_extrude(height = zdim)	circle(r=d/2-w);
	}
}

// Input parameters
// center: center of circle
// d: diameter of outer circle
// w: width of circle
// degree: degree of rotation before translation
module halfHollowCylinder(center, d, w, degree){
	translate([center[0], center[1], 0])
    rotate([0,0,degree])
	difference(){
    	hollowCylinder([0,0], d, w);
        translate([0, -d/2, 0])
        cube([d/2, d, zdim]);
    }
}

// Input parameters
// center: center of circle
// d: diameter of outer circle
// w: width of circle
module quarterHollowCylinder(center, d, w, degree){
	translate([center[0], center[1], 0])
    rotate([0,0,degree])
	difference(){
        halfHollowCylinder([0,0], d, w, 0);
        translate([-d/2, -d/2, 0])
        cube([d/2, d/2, zdim]);
    }
}

// Input parameters
// bar_length: length of bar for supporting font3d structures
module support_bar(bar_length){
	translate([0, -width, 0]) 
	cube([xdim*bar_length, width, zdim_bar]);
}
