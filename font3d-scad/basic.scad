include <dimension.scad>
include <utility.scad>

module basic(char){
	if(char=="A"){
		pgram([xdim*0.05,0],[(xdim+width)/2, ydim],width,0);
		pgram([(xdim-width)/2,ydim],[xdim*0.95, 0],width,0);
		translate([xdim*0.3,  ydim*0.25, 0])
		cube([xdim*0.4, width, zdim]);	
	}
	else if(char=="B"){
		translate([0.1*xdim, 0, 0]){
			cube([width, ydim, zdim]);
			cube([0.5*xdim, width, zdim]);
			translate([0, 0.5*(ydim-width), 0])
			cube([0.5*xdim, width, zdim]);
			translate([0, (ydim-width), 0])
			cube([0.5*xdim, width, zdim]);
	
			halfHollowCylinder([0.5*xdim, 1.5*width], 0.5*(ydim+width), width, 180);
			halfHollowCylinder([0.5*xdim, 0.5*ydim+width], 0.5*(ydim+width), width, 180);
		}
	}
	else if(char=="C"){
		translate([xdim*0.6, 0, 0]){
			halfHollowCylinder([0, 0.5*ydim], ydim, width, 0);
			cube([xdim*0.25, width, zdim]);
			translate([0, ydim-width, 0])
			cube([xdim*0.25, width, zdim]);
		}
	}
	else if(char=="D"){
		translate([xdim*0.2, 0, 0]){
			cube([width, ydim, zdim]);
			halfHollowCylinder([width, 0.5*ydim], ydim, width, 180);
		}
	}
	else if(char=="E"){
		translate([xdim*0.2, 0, 0]){	
			cube([width,ydim,zdim]);
			translate([0, (ydim-width)/2, 0]) cube([xdim*0.6,width,zdim]);
			translate([0, (ydim-width), 0]) cube([xdim*0.6,width,zdim]);
		}
		translate([xdim*0.2, 0, 0])
		cube([xdim*0.6,width,zdim]);	
	}
	else if(char=="F"){
		translate([xdim*0.2, 0, 0]){	
			cube([width,ydim,zdim]);
			translate([0, (ydim-width)/2, 0]) cube([xdim*0.6,width,zdim]);
			translate([0, (ydim-width), 0]) cube([xdim*0.6,width,zdim]);
		}
	}
	else if(char=="G"){
		translate([xdim*0.05, 0, 0]){	
			mirror([1, 0, 0])
			halfHollowCylinder([-xdim/2, ydim/2], ydim, width, 180);
			translate([0.6*xdim, 0, 0])
			cube([width, ydim/2, zdim]);
			translate([xdim*0.5, ydim/2-width, 0])
			cube([xdim*0.4, width, zdim]);
			translate([xdim*0.5, 0, 0])
			cube([xdim*0.1, width, zdim]);
			translate([xdim*0.5, ydim-width, 0])
			cube([xdim*0.2, width, zdim]);
		}
	}
	else if(char=="H"){
		translate([xdim*0.15, 0, 0]){
			cube([width,ydim,zdim]);
			translate([0, (ydim-width)/2, 0]) cube([xdim*0.7,width,zdim]);
			translate([xdim*0.7-width, 0, 0]) cube([width,ydim,zdim]);
		}
	}
	else if(char=="I"){
		translate([xdim*0.15, 0, 0]){
			cube([xdim*0.7,width,zdim]);		
			translate([0, ydim-width, 0]) 
			cube([xdim*0.7,width,zdim]);
			translate([xdim*0.35-width/2, 0, 0]) 
			cube([width,ydim,zdim]);
		}
	}
	else if(char=="J"){
		translate([xdim*0.2, ydim-width, 0])
		cube([xdim*0.6, width, zdim]);
		translate([(xdim-width)/2, ydim*0.2, 0])
		cube([width, ydim*0.75, zdim]);
		translate([(xdim+2*width)/4, ydim*0.2, 0])
		halfHollowCylinder([0, 0.05*ydim], 0.5*xdim, width, 90);
	}
	else if(char=="K"){
		translate([xdim*0.15, 0, 0]){
			cube([width, ydim, zdim]);
			pgram([0,ydim/2], [xdim*0.7, ydim], width, 0);
			pgram([0,ydim/2], [xdim*0.7, 0], width, 0);
		}
	}
	else if(char=="L"){
		translate([xdim*0.2, 0, 0]){
			cube([xdim*0.6,width,zdim]);		
			cube([width,ydim,zdim]);
		}
	}
	else if(char=="M"){
		translate([xdim*0.05, 0, 0]){
			cube([width, ydim, zdim]);
			translate([xdim*0.9-width, 0, 0]) cube([width, ydim, zdim]);
			pgram([0,ydim], [(xdim*0.9+width)/2, 0], width, 0);
			pgram([(xdim*0.9-width)/2,0], [xdim*0.9, ydim], width, 0);
		}
	}
	else if(char=="N"){
		translate([xdim*0.15, 0, 0]){
			cube([width, ydim, zdim]);
			translate([xdim*0.7-width, 0, 0]) cube([width, ydim, zdim]);
			pgram([0,ydim], [xdim*0.7, 0], width, 0);
		}
	}
	else if(char=="O"){
		hollowCylinder([0.5*xdim, 0.5*ydim], xdim, width);
	}
	else if(char=="P"){
		translate([xdim*0.25, 0, 0]){
			cube([width, ydim, zdim]);
			halfHollowCylinder([width, 0.65*ydim], 0.7*ydim, width, 180);
		}
	}
	else if(char=="Q"){
		translate([xdim*0.05, 0, 0]){
			scale([0.9, 1])
			hollowCylinder([0.5*xdim, 0.5*ydim], xdim, width);
		}
		pgram([xdim/2, ydim/3],[xdim, 0],width, 0);
	}
	else if(char=="R"){
		translate([xdim*0.25, 0, 0]){
			cube([width, ydim, zdim]);
			halfHollowCylinder([width, ydim*0.65], ydim*0.7, width, 180);
		}
		pgram([xdim*0.25, ydim*0.3+width],[xdim*0.7+width,0], width, 0);
	}
	else if(char=="S"){
		translate([xdim*0.2, 0, 0]){
			halfHollowCylinder([0.25*xdim, 0.25*(ydim+width)], 0.5*(ydim+width), width, 180);
			translate([0.25*xdim+0.25*width, (3*ydim-width)/4, 0])
			halfHollowCylinder([0, 0], 0.5*(ydim+width), width, 0);
		
			cube([0.25*xdim, width, zdim]);
			translate([0.25*xdim, ydim-width, 0])
			cube([0.25*xdim, width, zdim]);
		}
	}
	else if(char=="T"){
		translate([xdim*0.1, 0, 0]){
			translate([0, ydim-width, 0]) 
			cube([xdim*0.8,width,zdim]);
			translate([(xdim*0.8-width)/2, 0, 0])
			cube([width,ydim,zdim]);
		}
	}
	else if(char=="U"){
		translate([xdim*0.5, ydim*0.4, 0]){
			translate([-xdim*0.45, 0, 0])
			cube([width,ydim*0.6,zdim]);
			translate([xdim*0.45-width, 0, 0]) 
			cube([width,ydim*0.6,zdim]);
			translate([0, 0.05*ydim, 0])
			halfHollowCylinder([0, 0], xdim*0.9, width, 90);
		}
	}
	else if(char=="V"){
		pgram([xdim*0.05, ydim], [(xdim*0.95+width)/2, 0], width, 0);
		pgram([(xdim*0.95-width)/2, 0], [xdim*0.95, ydim], width, 0);
	}
	else if(char=="W"){
		pgram([xdim*0.05, ydim], [xdim*0.4, 0], width, 0);
		pgram([xdim*0.4-width, 0], [xdim*0.4+width, ydim], width, 0);
		translate([xdim*0.35, 0, 0]){
			pgram([xdim*0.05, ydim], [xdim*0.4, 0], width, 0);
			pgram([xdim*0.4-width, 0], [xdim*0.4+width, ydim], width, 0);
		}
	}
	else if(char=="X"){
		translxdimate([xdim*0.1, 0, 0]){
			pgram([0, ydim], [xdim*0.8,0], width, 0);
			pgram([0, 0], [xdim*0.8, ydim], width, 0);
		}
	}
	else if(char=="Y"){
		pgram([xdim*0.1, ydim], [(xdim*0.9+width)/2, ydim/2], width, 0);
		pgram([(xdim*0.9-width)/2, ydim/2], [xdim*0.9, ydim], width, 0);
		translate([(xdim*0.9-width)/2, 0, 0]) 
		cube([width, ydim/2, zdim]);
	}
	else if(char=="Z"){
		translate([xdim*0.1, 0, 0]){
			cube([xdim*0.8, width, zdim]);
			translate([0, ydim-width, 0]) 
			cube([xdim*0.8, width, zdim]);
			pgram([0,width], [xdim*0.8, ydim-width], width, 0);
		}
	}
	else if(char=="0"){
		scale([0.7, 1])
		hollowCylinder([0.7*xdim, 0.5*ydim], xdim, width);
	}
	else if(char=="1"){
		translate([0.5*(xdim-width), 0, 0]){			
			translate([0, ydim, 0])
			rotate([0,0,45]) 
			translate([-xdim*0.4, -width, 0])
			cube([xdim*0.4,width,zdim]);
			cube([width,ydim,zdim]);
		}
	}	
	else if(char=="2"){
		translate([0.1*xdim, 0, 0]){
			translate([0.4*xdim, 0.6*ydim, 0])
			scale([0.8, 0.8, 1])
			rotate([0, 0, 90])
			halfHollowCylinder([0, 0], xdim, width/0.8, 180);
			pgram([0,width], [0.8*xdim, 0.6*ydim], width, 0);
			cube([0.8*xdim,width,zdim]);
		}
	}
	else if(char=="3"){
		translate([0.2*xdim, 0, 0]){
			cube([0.4*xdim, width, zdim]);
			translate([0, 0.5*(ydim-width), 0])
			cube([0.4*xdim, width, zdim]);
			translate([0, (ydim-width), 0])
			cube([0.4*xdim, width, zdim]);
	
			halfHollowCylinder([0.4*xdim, (ydim+width)/4], 0.5*(ydim+width), width, 180);
			halfHollowCylinder([0.4*xdim, (3*ydim-width)/4], 0.5*(ydim+width), width, 180);
		}
	}
	else if(char=="4"){
		translate([0.5*(xdim-width), 0, 0]){			
			pgram([-0.35*xdim, 0.3*ydim+width], [width, ydim], width, 0);
			translate([-0.35*xdim, 0.3*ydim, 0])			difference(){
				circle(ydim/2);
				circle(ydim/2-width);
			}
			cube([0.8*xdim,width,zdim]);
			cube([width,ydim,zdim]);
		}
	}	
	else if(char=="5"){
		translate([0.25*xdim, 0, 0]){
			translate([0, ydim-width, 0])
			cube([0.5*xdim,width,zdim]);
			translate([0, 0.5*ydim, 0])
			cube([width,ydim*0.5,zdim]);
			scale([1.5, 1, 1])
			halfHollowCylinder([0, 0.35*ydim], 0.7*ydim, width, 180);	
		}
	}
	else if(char=="6"){
		difference(){
			difference(){
				quarterHollowCylinder([1.2*xdim,0.3*ydim], 2*xdim, width, 0);
				translate([0.8*xdim, 0, 0])
				cube([xdim, 2*ydim, zdim]);
			}
			translate([0, ydim, 0])
			cube([xdim, ydim, zdim]);
		}
		hollowCylinder([0.5*xdim,0.3*ydim], 0.6*ydim, width);
	}
	else if(char=="7"){
		translate([0.15*xdim, ydim-width, 0]){
			cube([0.7*xdim, width, zdim]);
			pgram([0, -ydim+width], [0.7*xdim, 0], width, 0);
		}
	}	
	else if(char=="8"){
		hollowCylinder([0.5*xdim, 0.7*ydim], 0.6*ydim, width);
		hollowCylinder([0.5*xdim, 0.3*ydim], 0.6*ydim, width);
	}
	else if(char=="9"){
		difference(){
			quarterHollowCylinder([-0.2*xdim,0.75*ydim], 2*xdim, width, 180);
			translate([-0.5*xdim, -ydim, 0])
			cube([xdim, ydim, zdim]);
		}
		hollowCylinder([0.5*xdim,0.7*ydim], 0.6*ydim, width);
	}
} //End of basic font
