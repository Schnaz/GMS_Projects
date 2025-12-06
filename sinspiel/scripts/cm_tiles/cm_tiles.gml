function cm_tiles(n, sz, sprite,upx,upy,upz){
//cm_tiles(tiles per side, size, sprite)

var txu = sprite_get_uvs(sprite, 0);

	var iy = -n/2
	repeat(n) {
		
		var ix = -n/2
		repeat(n) {
			//tile(vb, s, ix, iy, xup, yup, zup)
			cm_tile2(vb, n, sz, ix, iy, txu, upx,upy,upz);
		
			ix++
		}
		iy++
	}
}