// ======================================================================
// Wall Torch Stuff - Thanks to Sockter
// ======================================================================
textures/sockter/torchflame
{
	qer_editorimage	textures/sockter/flame1_editor
	qer_alphafunc greater 0.5
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	polygonOffset
	qer_trans 0.99
	cull none
	q3map_surfacelight 7500
	{
		animMap 10 textures/sfx/flame1 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave inverseSawtooth 0 1 0 10
	}	
	{
		animMap 10 textures/sfx/flame2 textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/flameball
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sockter/wood1toplit
{
	qer_editorimage	textures/sockter/wood1toplit
	q3map_nonplanar
	q3map_shadeAngle 179

	{
		map textures/sockter/wood1toplit
		rgbGen vertex
	}
	{
		map textures/sockter/wood1glow
		blendFunc add
		tcMod rotate -6
		rgbGen wave sin .8 .1 0 .6	
	}
	{
		map textures/sockter/wood1glow
		blendFunc add
		tcMod rotate 8
	}
}

textures/sockter/wood1topout
{
	qer_editorimage	textures/sockter/wood1topout
	q3map_nonplanar
	q3map_shadeAngle 120

	{
		map textures/sockter/wood1topout
		rgbGen const ( 0.3 0.3 0.3 )
	}
}

// ======================================================================
// Nightball Skybox by Sockter - Changed at 16. January 2005
// ======================================================================
textures/nightball/nightball_skybox
{
	qer_editorimage textures/nightball/nightball_view
	skyparms env/nightball/nightball - -

	q3map_sunExt 0.851 0.945 1.0 100 320 40 3 16
	q3map_lightmapFilterRadius 0 8
	q3map_skyLight 100 3
	
	surfaceparm sky
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight

	nopicmip
	nomipmaps
}

// ======================================================================
// Phongshaded Sand - Added at 15. January 2005
// ======================================================================
textures/egyptsoc_mat/sand1b
{
	q3map_nonplanar
	q3map_shadeangle 50
	qer_editorimage textures/egyptsoc_mat/sand1b
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/egyptsoc_mat/sand1b
		blendFunc filter
	}
}

// ======================================================================
// Palmtree Addon - Added at 15. January 2005
// ======================================================================
models/mapobjects/multiplant/bannanaleaf
{
	surfaceparm alphashadow
	cull none
	nopicmip
	deformVertexes wave 150 sin 0 1 0 .3
	{
		map models/mapobjects/multiplant/bannanaleaf
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identityLighting
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
	}
}

// ======================================================================
// Phongshaded Block (for the cave) - Added at 30. March 2005
// ======================================================================
textures/egyptsoc_mat/block01d
{
	q3map_nonplanar
	q3map_shadeangle 70
	qer_editorimage textures/egyptsoc_mat/block01d
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/egyptsoc_mat/block01d
		blendFunc filter
	}
}

// ======================================================================
//	mapobjects/skel subfolder
// ======================================================================

models/mapobjects/skel/skel
{
    cull disable
    surfaceparm alphashadow
        {
                map models/mapobjects/skel/skel
                alphaFunc GE128
		depthWrite
		rgbGen vertex
        }
}

models/mapobjects/skel/xray
{
    deformVertexes move 0 0 .7  sin 0 5 0 0.2
    cull disable
    q3map_surfacelight 300	
        {
                map models/mapobjects/skel/xray
                blendfunc add
                rgbGen wave sin 1 .8 0 .3
        }
        {
		
                map models/mapobjects/bitch/hologirl2
                tcMod scroll -6 -.2
                tcgen environment
		blendFunc GL_ONE GL_ONE
		rgbGen identity
	}    


}
