function cell_to_pixel_x(cX)
{
	return cX * CELLWIDTH
}
function cell_to_pixel_y(cY)
{
	return cY * CELLHEIGHT
}

function pixel_to_cell_x(pX)
{
	return floor(pX / CELLWIDTH)
}
function pixel_to_cell_y(pY)
{
	return floor(pY / CELLHEIGHT)
}