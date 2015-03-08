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

xdim = 20;
ydim = 20;
zdim = 10;
zdim_bar = 10;
width = 4;

// Frame to check whether your letter lies inside the box
%translate([xdim/2, ydim/2, zdim/2]) cube([xdim, ydim, zdim], center = true);



