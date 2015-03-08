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

include<dimension.scad>
include<basic.scad>

module font3d(inputString, fontType)
{
	// Loop around characters
	for (i=[0:len(inputString)-1])
	{
		// Pick corresponding font
		translate([i*xdim,0,0])
		if (fontType=="basic") basic(inputString[i]);
		else
		{
		   echo("Font type not recognized");
		}
	}
}
