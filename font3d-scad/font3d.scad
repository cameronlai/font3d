include<dimension.scad>
include<basic.scad>

module font3d(inputString, fontType)
{
	numChar = len(inputString);
	// Loop around characters
	for (i=[0:numChar-1])
	{
		// Pick corresponding font
		translate([i*xdim,0,0])
		if (fontType=="basic") basic(inputString[i]);
		else
		{
		   	echo("Font type not recognized");
		}
	}
	// Add support bar
	if (numChar>1) support_bar(len(inputString));
}
