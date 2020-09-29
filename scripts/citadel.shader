textures/citadel/ladder
{
	qer_trans 0.35
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm ladder
}

textures/citadel/cushion_block01b
{
	surfaceparm dust
	surfaceparm nodamage
	qer_editorimage textures/egyptsoc_mat/block01b
	{
		map $lightmap
		blendfunc GL_ONE GL_ZERO
	}
	{
		map textures/egyptsoc_mat/block01b
		blendfunc filter
	}
	
}

textures/citadel/smoke
{
	{
		map textures/citadel/smoke
		blendfunc GL_SRC_ALPHA GL_ONE
		rgbGen vertex
		alphaGen vertex
	}
}

textures/citadel/smooth_block01d
{
	qer_editorimage textures/egyptsoc_mat/block01d
	q3map_shadeangle 150
	q3map_nonplanar
	{
		map $lightmap
		blendfunc GL_ONE GL_ZERO
	}
	{
		map textures/egyptsoc_mat/block01d
		blendfunc filter
	}
}

textures/citadel/orders
{
	cull disable
	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm trans
	polygonOffset
	{
		map $lightmap
		blendfunc GL_ONE GL_ZERO
	}
	{
		map textures/citadel/orders
		blendfunc filter
	}
}

textures/citadel/smooth_block01b
{
	qer_editorimage textures/egyptsoc_mat/block01b
	q3map_shadeangle 150
	q3map_nonplanar
	{
		map $lightmap
		blendfunc GL_ONE GL_ZERO
	}
	{
		map textures/egyptsoc_mat/block01b
		blendfunc filter
	}
}

textures/citadel/water_nodraw
{
	qer_trans 0.3
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water
	//surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nodraw
}

textures/citadel/water
{
	qer_trans 0.4
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water
	surfaceparm nomarks
	deformVertexes wave 256 sin 0 5 6 0.5 
	cull disable
	{
		map textures/citadel/water
		alphaGen const 0.2
		blendfunc blend
		tcMod scale 0.5 0.5
		tcMod scroll 0.5 0.5
	}
	{
		map textures/citadel/water
		alphaGen const 0.2
		blendfunc blend
		tcMod scale 0.5 0.5
		tcMod scroll -0.5 0.5
	}
	{
		map textures/citadel/water
		blendfunc GL_SRC_ALPHA GL_ONE
		alphaGen const 0.4
		tcGen environment
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/citadel/skybox
{
	qer_editorimage env/citadelsky/citadelsky_up
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_surfacelight 53
	q3map_sunExt 0.63 0.57 0.52 40 104 55 1.5 8	//104 was 78
	skyParms env/citadelsky/citadelsky - -
}


textures/citadel/flare_glow
{
	qer_editorimage textures/citadel/flare_glow
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	deformVertexes autosprite
	cull disable
	qer_trans 0.6
	{
		map textures/citadel/flare_glow
		blendfunc GL_SRC_ALPHA GL_ONE
		rgbGen vertex
		alphagen portal 256
	}
}

textures/citadel/script
{
	qer_editorimage textures/citadel/script
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	polygonOffset
	q3map_surfacelight 50
	q3map_lightsubdivide 32
	{
		map textures/citadel/script
		blendfunc add
		rgbGen wave sawtooth 0.9 0.1 0 4
	}
}

textures/citadel/grate
{	
	surfaceparm alphashadow
	surfaceparm trans
	cull none
	nopicmip
	qer_editorimage textures/egyptsoc_floor/grate2b
	qer_alphafunc GE_128 0.5
	{
		map textures/egyptsoc_floor/grate2b
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc filter
		depthFunc equal
	}
}

textures/citadel/liglight
{
	qer_editorimage textures/egyptsoc_sfx/lig_064-04y1
	surfaceparm nomarks
	{
		map $lightmap
		blendfunc gl_one gl_zero
	}
	{
		map textures/egyptsoc_sfx/lig_064-04y1
		blendfunc filter
	}
	{
		map textures/egyptsoc_sfx/lig_064-04y.blend
		blendfunc add
	}
}

//palm tree shaders

models/mapobjects/citadel/palm4/palmfrond
{	
	surfaceparm alphashadow
	cull none
	nopicmip
	qer_editorimage textures/citadel/palm4/palmfrond
	qer_alphafunc GE_128 0.5
	q3map_shadeangle 120
	q3map_nonplanar
    	//deformVertexes wave 25 sin 3 2 .1 0.1
	{
		map textures/citadel/palm4/palmfrond
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc filter
		depthFunc equal
	}
}

models/mapobjects/citadel/palm4/palmbark
{
	qer_editorimage textures/citadel/palm4/palmbark
	q3map_shadeangle 120
	q3map_nonplanar
	{
		map $lightmap
		blendFunc GL_ONE GL_ZERO
	}
	{
		map textures/citadel/palm4/palmbark
		blendFunc filter
	}
}

// ======================================================================
// Wall Torch Stuff - Thanks to Sockter / dasprid
// ======================================================================


textures/citadel/sockter/torchflame
{
	qer_editorimage	textures/citadel/sockter/flame1_editor
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	polygonOffset
	cull none
//	q3map_surfacelight 1000
	sort nearest
	{
		animMap 10 textures/citadel/sockter/flame1 textures/citadel/sockter/flame2.tga textures/citadel/sockter/flame3.tga textures/citadel/sockter/flame4.tga textures/citadel/sockter/flame5.tga textures/citadel/sockter/flame6.tga textures/citadel/sockter/flame7.tga textures/citadel/sockter/flame8.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave inverseSawtooth 0 1 0 10
	}	
	{
		animMap 10 textures/citadel/sockter/flame2 textures/citadel/sockter/flame3.tga textures/citadel/sockter/flame4.tga textures/citadel/sockter/flame5.tga textures/citadel/sockter/flame6.tga textures/citadel/sockter/flame7.tga textures/citadel/sockter/flame8.tga textures/citadel/sockter/flame1.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/citadel/sockter/flameball
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/citadel/sockter/wood1toplit
{
	qer_editorimage	textures/citadel/sockter/wood1toplit
	q3map_nonplanar
	q3map_shadeAngle 179

	{
		map textures/citadel/sockter/wood1toplit
		rgbGen vertex
	}
	{
		map textures/citadel/sockter/wood1glow
		blendFunc add
		tcMod rotate -6
		rgbGen wave sin .8 .1 0 .6	
	}
	{
		map textures/citadel/sockter/wood1glow
		blendFunc add
		tcMod rotate 8
	}
}

textures/citadel/sockter/wood1topout
{
	qer_editorimage	textures/citadel/sockter/wood1topout
	q3map_nonplanar
	q3map_shadeAngle 120

	{
		map textures/citadel/sockter/wood1topout
		rgbGen const ( 0.3 0.3 0.3 )
	}
}

// dropship shaders

textures/citadel/dropship/laser_s
{
	cull disable
	qer_editorimage textures/citadel/dropship/laser
	{
		map textures/citadel/dropship/laser
		blendfunc add
		rgbGen lightingDiffuse
	}
}

textures/citadel/dropship/engwin_s
{
	{
		map $whiteimage
		blendfunc gl_one gl_zero
		rgbGen const ( 0 0 0 )
	}
}

textures/citadel/dropship/backdoor_s
{
	qer_editorimage textures/citadel/dropship/dropship
	{
		map $lightmap
		blendfunc GL_ONE GL_ZERO
	}
	{
		map textures/citadel/dropship/dropship
		blendfunc filter
	}
}