//Maya ASCII 2017ff05 scene
//Name: scarlet_swim_around_rock_freeswim.ma
//Last modified: Wed, Jun 26, 2019 08:27:38 PM
//Codeset: 1252
file -rdi 1 -ns "luna" -rfn "lunaRN" -typ "mayaAscii" "//csenetid/cs/unix/projects/instr/capstone2/production/assets/character/luna/_published/luna.ma";
file -r -ns "luna" -dr 1 -rfn "lunaRN" -typ "mayaAscii" "//csenetid/cs/unix/projects/instr/capstone2/production/assets/character/luna/_published/luna.ma";
requires maya "2017ff05";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "3.1.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201710312130-1018716";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "C2D4CBF3-48F4-9ED4-7690-1485434B3417";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.7417059271815134 29.047290545038813 157.91349471744704 ;
	setAttr ".r" -type "double3" -9.3383527295419455 361.3999999999333 -4.9711006141186852e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EA0069C9-48EB-0149-94E8-51B25A8BCBF5";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 133.12347198283044;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "071F633F-4CF0-7066-EBAC-6188CD0BAF3A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "83BE8F2D-4540-2AB1-DD67-9782EDDFB65D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "9F0377B7-4AA0-55DD-C8DE-25B6ED0DFC94";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BCE8487E-4E67-BCD9-10D8-CAB1195E9E7A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "44E5762A-4DA2-E7F7-99CA-60B09527E687";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DBDFE67B-4A70-35E7-84DA-47A1CD273324";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "656752E9-4054-E38C-5439-29B32762DA64";
	setAttr ".t" -type "double3" 0 8.4723490852351961 32.391251152596389 ;
	setAttr ".s" -type "double3" 25.638079105754322 25.638079105754322 25.638079105754322 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "6DD84542-4874-FB42-C769-D8B4078781FF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4AF0A925-41B9-9342-3B52-ECB352E9C4B0";
	setAttr -s 236 ".lnk";
	setAttr -s 236 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "FA655B0B-4DEC-F706-E0AD-BE973909994E";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D467C541-46EE-19EC-49A0-418F152EDAF9";
createNode displayLayerManager -n "layerManager";
	rename -uid "A7297261-4A4A-4119-5C98-0EB3465FC5C0";
createNode displayLayer -n "defaultLayer";
	rename -uid "8660FA58-497B-07C7-EA2C-4785875746CC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8C46010E-414D-EA7A-FB8A-0FA854CC331A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "009C8867-4BE2-F53A-CE35-5DAB892C61AF";
	setAttr ".g" yes;
createNode reference -n "lunaRN";
	rename -uid "FFD139F3-48B1-9474-A285-F58BDC4FA4AB";
	setAttr -s 274 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"lunaRN"
		"lunaRN" 0
		"lunaRN" 626
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim" 
		"translate" " -type \"double3\" -25.747069881335712 6.427042067881704 2.3103997709358661"
		
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim" 
		"rotate" " -type \"double3\" -11.377631410420094 -52.01095371483413 -11.772481084873242"
		
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim" 
		"rotate" " -type \"double3\" 0.16032992005330915 2.0921951132076644 2.1930381548295323"
		
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim" 
		"center_swim_influence" " -av -k 1 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim|luna:center_spine_2_null|luna:center_spine_2_deformer_null|luna:center_spine_2_vis_null|luna:center_spine_2_anim" 
		"rotate" " -type \"double3\" 0 -2.0289185949391646 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim|luna:center_spine_2_null|luna:center_spine_2_deformer_null|luna:center_spine_2_vis_null|luna:center_spine_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim|luna:center_spine_2_null|luna:center_spine_2_deformer_null|luna:center_spine_2_vis_null|luna:center_spine_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim|luna:center_spine_2_null|luna:center_spine_2_deformer_null|luna:center_spine_2_vis_null|luna:center_spine_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim|luna:center_spine_2_null|luna:center_spine_2_deformer_null|luna:center_spine_2_vis_null|luna:center_spine_2_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim" 
		"rotate" " -type \"double3\" 0 -7.1819524696990573 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim" 
		"rotate" " -type \"double3\" 0 -1.7311672957251805 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim|luna:center_tail_6_null|luna:center_tail_6_deformer_null|luna:center_tail_6_deformer_null|luna:center_tail_6_vis_null|luna:center_tail_6_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim|luna:center_tail_6_null|luna:center_tail_6_deformer_null|luna:center_tail_6_deformer_null|luna:center_tail_6_vis_null|luna:center_tail_6_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim|luna:center_tail_6_null|luna:center_tail_6_deformer_null|luna:center_tail_6_deformer_null|luna:center_tail_6_vis_null|luna:center_tail_6_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim|luna:center_tail_6_null|luna:center_tail_6_deformer_null|luna:center_tail_6_deformer_null|luna:center_tail_6_vis_null|luna:center_tail_6_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim|luna:center_tail_6_null|luna:center_tail_6_deformer_null|luna:center_tail_6_deformer_null|luna:center_tail_6_vis_null|luna:center_tail_6_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_neck_component_grp|luna:center_neck_anim_grp|luna:center_neck_null|luna:center_neck_multicon_null|luna:center_neck_vis_null|luna:center_neck_anim" 
		"rotate" " -type \"double3\" 0 7.0908973254144083 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_neck_component_grp|luna:center_neck_anim_grp|luna:center_neck_null|luna:center_neck_multicon_null|luna:center_neck_vis_null|luna:center_neck_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_neck_component_grp|luna:center_neck_anim_grp|luna:center_neck_null|luna:center_neck_multicon_null|luna:center_neck_vis_null|luna:center_neck_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_neck_component_grp|luna:center_neck_anim_grp|luna:center_neck_null|luna:center_neck_multicon_null|luna:center_neck_vis_null|luna:center_neck_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_neck_component_grp|luna:center_neck_anim_grp|luna:center_neck_null|luna:center_neck_multicon_null|luna:center_neck_vis_null|luna:center_neck_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_head_component_grp|luna:center_head_anim_grp|luna:center_head_null|luna:center_head_multicon_null|luna:center_head_vis_null|luna:center_head_anim" 
		"rotate" " -type \"double3\" 0 0 1.7441319540600182"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_head_component_grp|luna:center_head_anim_grp|luna:center_head_null|luna:center_head_multicon_null|luna:center_head_vis_null|luna:center_head_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_head_component_grp|luna:center_head_anim_grp|luna:center_head_null|luna:center_head_multicon_null|luna:center_head_vis_null|luna:center_head_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_head_component_grp|luna:center_head_anim_grp|luna:center_head_null|luna:center_head_multicon_null|luna:center_head_vis_null|luna:center_head_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim|luna:center_dorsal_fin_3_null|luna:center_dorsal_fin_3_vis_null|luna:center_dorsal_fin_3_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim|luna:center_dorsal_fin_3_null|luna:center_dorsal_fin_3_vis_null|luna:center_dorsal_fin_3_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim|luna:center_dorsal_fin_3_null|luna:center_dorsal_fin_3_vis_null|luna:center_dorsal_fin_3_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim|luna:center_dorsal_fin_3_null|luna:center_dorsal_fin_3_vis_null|luna:center_dorsal_fin_3_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:center_swim_component_grp|luna:DO_NOT_TOUCH|luna:center_swim_IK" 
		"rotate" " -type \"double3\" 90.000000000000824 88.239251520908226 90.000000000000426"
		
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim" 
		"rotate" " -type \"double3\" 2.7519253792859502 7.5616795084954846 6.4464868699570257"
		
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim|luna:left_flipper_3_null|luna:left_flipper_3_vis_null|luna:left_flipper_3_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim|luna:left_flipper_3_null|luna:left_flipper_3_vis_null|luna:left_flipper_3_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim|luna:left_flipper_3_null|luna:left_flipper_3_vis_null|luna:left_flipper_3_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim|luna:left_flipper_3_null|luna:left_flipper_3_vis_null|luna:left_flipper_3_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim|luna:left_fluke_3_null|luna:left_fluke_3_vis_null|luna:left_fluke_3_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim|luna:left_fluke_3_null|luna:left_fluke_3_vis_null|luna:left_fluke_3_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim|luna:left_fluke_3_null|luna:left_fluke_3_vis_null|luna:left_fluke_3_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim|luna:left_fluke_3_null|luna:left_fluke_3_vis_null|luna:left_fluke_3_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim|luna:left_fluke_3_null|luna:left_fluke_3_vis_null|luna:left_fluke_3_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim" 
		"rotate" " -type \"double3\" -1.0856815709691412 -7.8157493127992419 4.0048962121014222"
		
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim|luna:right_flipper_3_null|luna:right_flipper_3_vis_null|luna:right_flipper_3_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim|luna:right_flipper_3_null|luna:right_flipper_3_vis_null|luna:right_flipper_3_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim|luna:right_flipper_3_null|luna:right_flipper_3_vis_null|luna:right_flipper_3_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim|luna:right_flipper_3_null|luna:right_flipper_3_vis_null|luna:right_flipper_3_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim|luna:right_flipper_3_null|luna:right_flipper_3_vis_null|luna:right_flipper_3_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim|luna:right_fluke_3_null|luna:right_fluke_3_vis_null|luna:right_fluke_3_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim|luna:right_fluke_3_null|luna:right_fluke_3_vis_null|luna:right_fluke_3_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim|luna:right_fluke_3_null|luna:right_fluke_3_vis_null|luna:right_fluke_3_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim|luna:right_fluke_3_null|luna:right_fluke_3_vis_null|luna:right_fluke_3_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_jaw_component_grp|luna:center_jaw_anim_grp|luna:center_jaw_null|luna:center_jaw_multicon_null|luna:center_jaw_vis_null|luna:center_jaw_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_jaw_component_grp|luna:center_jaw_anim_grp|luna:center_jaw_null|luna:center_jaw_multicon_null|luna:center_jaw_vis_null|luna:center_jaw_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_jaw_component_grp|luna:center_jaw_anim_grp|luna:center_jaw_null|luna:center_jaw_multicon_null|luna:center_jaw_vis_null|luna:center_jaw_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_jaw_component_grp|luna:center_jaw_anim_grp|luna:center_jaw_null|luna:center_jaw_multicon_null|luna:center_jaw_vis_null|luna:center_jaw_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_eye_component_grp|luna:left_eye_anim_grp|luna:left_eye_null|luna:left_eye_aim_null|luna:left_eye_vis_null|luna:left_eye_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_eye_component_grp|luna:left_eye_anim_grp|luna:left_eye_null|luna:left_eye_aim_null|luna:left_eye_vis_null|luna:left_eye_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_eye_component_grp|luna:left_eye_anim_grp|luna:left_eye_null|luna:left_eye_aim_null|luna:left_eye_vis_null|luna:left_eye_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_eye_component_grp|luna:left_eye_anim_grp|luna:left_eye_null|luna:left_eye_aim_null|luna:left_eye_vis_null|luna:left_eye_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upper_lid_base_component_grp|luna:left_upper_lid_base_anim_grp|luna:left_upper_lid_base_null|luna:left_upper_lid_base_vis_null|luna:left_upper_lid_base_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upper_lid_base_component_grp|luna:left_upper_lid_base_anim_grp|luna:left_upper_lid_base_null|luna:left_upper_lid_base_vis_null|luna:left_upper_lid_base_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upper_lid_base_component_grp|luna:left_upper_lid_base_anim_grp|luna:left_upper_lid_base_null|luna:left_upper_lid_base_vis_null|luna:left_upper_lid_base_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upper_lid_base_component_grp|luna:left_upper_lid_base_anim_grp|luna:left_upper_lid_base_null|luna:left_upper_lid_base_vis_null|luna:left_upper_lid_base_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upper_lid_base_component_grp|luna:left_upper_lid_base_anim_grp|luna:left_upper_lid_base_null|luna:left_upper_lid_base_vis_null|luna:left_upper_lid_base_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lower_lid_base_component_grp|luna:left_lower_lid_base_anim_grp|luna:left_lower_lid_base_null|luna:left_lower_lid_base_vis_null|luna:left_lower_lid_base_anim" 
		"rotate" " -type \"double3\" 0 0 24.22832835358734"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lower_lid_base_component_grp|luna:left_lower_lid_base_anim_grp|luna:left_lower_lid_base_null|luna:left_lower_lid_base_vis_null|luna:left_lower_lid_base_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lower_lid_base_component_grp|luna:left_lower_lid_base_anim_grp|luna:left_lower_lid_base_null|luna:left_lower_lid_base_vis_null|luna:left_lower_lid_base_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lower_lid_base_component_grp|luna:left_lower_lid_base_anim_grp|luna:left_lower_lid_base_null|luna:left_lower_lid_base_vis_null|luna:left_lower_lid_base_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lower_lid_base_component_grp|luna:left_lower_lid_base_anim_grp|luna:left_lower_lid_base_null|luna:left_lower_lid_base_vis_null|luna:left_lower_lid_base_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_eye_component_grp|luna:right_eye_anim_grp|luna:right_eye_null|luna:right_eye_aim_null|luna:right_eye_vis_null|luna:right_eye_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_eye_component_grp|luna:right_eye_anim_grp|luna:right_eye_null|luna:right_eye_aim_null|luna:right_eye_vis_null|luna:right_eye_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_eye_component_grp|luna:right_eye_anim_grp|luna:right_eye_null|luna:right_eye_aim_null|luna:right_eye_vis_null|luna:right_eye_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_eye_component_grp|luna:right_eye_anim_grp|luna:right_eye_null|luna:right_eye_aim_null|luna:right_eye_vis_null|luna:right_eye_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upper_lid_base_component_grp|luna:right_upper_lid_base_anim_grp|luna:right_upper_lid_base_null|luna:right_upper_lid_base_vis_null|luna:right_upper_lid_base_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upper_lid_base_component_grp|luna:right_upper_lid_base_anim_grp|luna:right_upper_lid_base_null|luna:right_upper_lid_base_vis_null|luna:right_upper_lid_base_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upper_lid_base_component_grp|luna:right_upper_lid_base_anim_grp|luna:right_upper_lid_base_null|luna:right_upper_lid_base_vis_null|luna:right_upper_lid_base_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upper_lid_base_component_grp|luna:right_upper_lid_base_anim_grp|luna:right_upper_lid_base_null|luna:right_upper_lid_base_vis_null|luna:right_upper_lid_base_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upper_lid_base_component_grp|luna:right_upper_lid_base_anim_grp|luna:right_upper_lid_base_null|luna:right_upper_lid_base_vis_null|luna:right_upper_lid_base_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lower_lid_base_component_grp|luna:right_lower_lid_base_anim_grp|luna:right_lower_lid_base_null|luna:right_lower_lid_base_vis_null|luna:right_lower_lid_base_anim" 
		"rotate" " -type \"double3\" 0 0 25.753487461347095"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lower_lid_base_component_grp|luna:right_lower_lid_base_anim_grp|luna:right_lower_lid_base_null|luna:right_lower_lid_base_vis_null|luna:right_lower_lid_base_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lower_lid_base_component_grp|luna:right_lower_lid_base_anim_grp|luna:right_lower_lid_base_null|luna:right_lower_lid_base_vis_null|luna:right_lower_lid_base_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lower_lid_base_component_grp|luna:right_lower_lid_base_anim_grp|luna:right_lower_lid_base_null|luna:right_lower_lid_base_vis_null|luna:right_lower_lid_base_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lower_lid_base_component_grp|luna:right_lower_lid_base_anim_grp|luna:right_lower_lid_base_null|luna:right_lower_lid_base_vis_null|luna:right_lower_lid_base_anim" 
		"segmentScaleCompensate" " 1"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim" 
		"rotateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim" 
		"rotateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim" 
		"rotateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_right_null|luna:center_eye_aim_right_vis_null|luna:center_eye_aim_right_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_right_null|luna:center_eye_aim_right_vis_null|luna:center_eye_aim_right_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_right_null|luna:center_eye_aim_right_vis_null|luna:center_eye_aim_right_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_right_null|luna:center_eye_aim_right_vis_null|luna:center_eye_aim_right_anim" 
		"translateZ" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_left_null|luna:center_eye_aim_left_vis_null|luna:center_eye_aim_left_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_left_null|luna:center_eye_aim_left_vis_null|luna:center_eye_aim_left_anim" 
		"translateX" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_left_null|luna:center_eye_aim_left_vis_null|luna:center_eye_aim_left_anim" 
		"translateY" " -av"
		2 "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_left_null|luna:center_eye_aim_left_vis_null|luna:center_eye_aim_left_anim" 
		"translateZ" " -av"
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim.translateX" 
		"lunaRN.placeHolderList[1]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim.translateY" 
		"lunaRN.placeHolderList[2]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim.translateZ" 
		"lunaRN.placeHolderList[3]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim.rotateX" 
		"lunaRN.placeHolderList[4]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim.rotateY" 
		"lunaRN.placeHolderList[5]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim.rotateZ" 
		"lunaRN.placeHolderList[6]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim.display_deformer" 
		"lunaRN.placeHolderList[7]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim.swim_height" 
		"lunaRN.placeHolderList[8]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim.swim_length" 
		"lunaRN.placeHolderList[9]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_COG_component_grp|luna:center_COG_anim_grp|luna:center_COG_null|luna:center_COG_vis_null|luna:center_COG_anim.swim_offset" 
		"lunaRN.placeHolderList[10]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim.rotateX" 
		"lunaRN.placeHolderList[11]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim.rotateY" 
		"lunaRN.placeHolderList[12]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim.rotateZ" 
		"lunaRN.placeHolderList[13]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim.center_swim_influence" 
		"lunaRN.placeHolderList[14]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim|luna:center_spine_2_null|luna:center_spine_2_deformer_null|luna:center_spine_2_vis_null|luna:center_spine_2_anim.rotateX" 
		"lunaRN.placeHolderList[15]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim|luna:center_spine_2_null|luna:center_spine_2_deformer_null|luna:center_spine_2_vis_null|luna:center_spine_2_anim.rotateY" 
		"lunaRN.placeHolderList[16]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim|luna:center_spine_2_null|luna:center_spine_2_deformer_null|luna:center_spine_2_vis_null|luna:center_spine_2_anim.rotateZ" 
		"lunaRN.placeHolderList[17]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_spine_component_grp|luna:center_spine_anim_grp|luna:center_spine_1_null|luna:center_spine_1_deformer_null|luna:center_spine_1_vis_null|luna:center_spine_1_anim|luna:center_spine_2_null|luna:center_spine_2_deformer_null|luna:center_spine_2_vis_null|luna:center_spine_2_anim.center_swim_influence" 
		"lunaRN.placeHolderList[18]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim.rotateX" 
		"lunaRN.placeHolderList[19]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim.rotateY" 
		"lunaRN.placeHolderList[20]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim.rotateZ" 
		"lunaRN.placeHolderList[21]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim.display_deformer" 
		"lunaRN.placeHolderList[22]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim.center_swim_influence" 
		"lunaRN.placeHolderList[23]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim.tail_flap_height" 
		"lunaRN.placeHolderList[24]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim.tail_flap_length" 
		"lunaRN.placeHolderList[25]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim.tail_flap_offset" 
		"lunaRN.placeHolderList[26]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim.center_tail_flap_influence" 
		"lunaRN.placeHolderList[27]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim.rotateX" 
		"lunaRN.placeHolderList[28]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim.rotateY" 
		"lunaRN.placeHolderList[29]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim.rotateZ" 
		"lunaRN.placeHolderList[30]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim.center_swim_influence" 
		"lunaRN.placeHolderList[31]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim.center_tail_flap_influence" 
		"lunaRN.placeHolderList[32]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim.rotateX" 
		"lunaRN.placeHolderList[33]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim.rotateY" 
		"lunaRN.placeHolderList[34]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim.rotateZ" 
		"lunaRN.placeHolderList[35]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim.center_swim_influence" 
		"lunaRN.placeHolderList[36]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim.center_tail_flap_influence" 
		"lunaRN.placeHolderList[37]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim.rotateX" 
		"lunaRN.placeHolderList[38]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim.rotateY" 
		"lunaRN.placeHolderList[39]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim.rotateZ" 
		"lunaRN.placeHolderList[40]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim.center_swim_influence" 
		"lunaRN.placeHolderList[41]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim.center_tail_flap_influence" 
		"lunaRN.placeHolderList[42]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim.rotateX" 
		"lunaRN.placeHolderList[43]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim.rotateY" 
		"lunaRN.placeHolderList[44]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim.rotateZ" 
		"lunaRN.placeHolderList[45]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim.center_swim_influence" 
		"lunaRN.placeHolderList[46]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim.center_tail_flap_influence" 
		"lunaRN.placeHolderList[47]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim|luna:center_tail_6_null|luna:center_tail_6_deformer_null|luna:center_tail_6_deformer_null|luna:center_tail_6_vis_null|luna:center_tail_6_anim.rotateX" 
		"lunaRN.placeHolderList[48]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim|luna:center_tail_6_null|luna:center_tail_6_deformer_null|luna:center_tail_6_deformer_null|luna:center_tail_6_vis_null|luna:center_tail_6_anim.rotateY" 
		"lunaRN.placeHolderList[49]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim|luna:center_tail_6_null|luna:center_tail_6_deformer_null|luna:center_tail_6_deformer_null|luna:center_tail_6_vis_null|luna:center_tail_6_anim.rotateZ" 
		"lunaRN.placeHolderList[50]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim|luna:center_tail_6_null|luna:center_tail_6_deformer_null|luna:center_tail_6_deformer_null|luna:center_tail_6_vis_null|luna:center_tail_6_anim.center_swim_influence" 
		"lunaRN.placeHolderList[51]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim|luna:center_tail_6_null|luna:center_tail_6_deformer_null|luna:center_tail_6_deformer_null|luna:center_tail_6_vis_null|luna:center_tail_6_anim.center_tail_flap_influence" 
		"lunaRN.placeHolderList[52]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_tail_component_grp|luna:center_tail_anim_grp|luna:center_tail_1_null|luna:center_tail_1_deformer_null|luna:center_tail_1_deformer_null|luna:center_tail_1_vis_null|luna:center_tail_1_anim|luna:center_tail_2_null|luna:center_tail_2_deformer_null|luna:center_tail_2_deformer_null|luna:center_tail_2_vis_null|luna:center_tail_2_anim|luna:center_tail_3_null|luna:center_tail_3_deformer_null|luna:center_tail_3_deformer_null|luna:center_tail_3_vis_null|luna:center_tail_3_anim|luna:center_tail_4_null|luna:center_tail_4_deformer_null|luna:center_tail_4_deformer_null|luna:center_tail_4_vis_null|luna:center_tail_4_anim|luna:center_tail_5_null|luna:center_tail_5_deformer_null|luna:center_tail_5_deformer_null|luna:center_tail_5_vis_null|luna:center_tail_5_anim|luna:center_tail_6_null|luna:center_tail_6_deformer_null|luna:center_tail_6_deformer_null|luna:center_tail_6_vis_null|luna:center_tail_6_anim|luna:center_tail_end_anim.rotateZ" 
		"lunaRN.placeHolderList[53]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_neck_component_grp|luna:center_neck_anim_grp|luna:center_neck_null|luna:center_neck_multicon_null|luna:center_neck_vis_null|luna:center_neck_anim.rotateX" 
		"lunaRN.placeHolderList[54]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_neck_component_grp|luna:center_neck_anim_grp|luna:center_neck_null|luna:center_neck_multicon_null|luna:center_neck_vis_null|luna:center_neck_anim.rotateY" 
		"lunaRN.placeHolderList[55]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_neck_component_grp|luna:center_neck_anim_grp|luna:center_neck_null|luna:center_neck_multicon_null|luna:center_neck_vis_null|luna:center_neck_anim.rotateZ" 
		"lunaRN.placeHolderList[56]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_neck_component_grp|luna:center_neck_anim_grp|luna:center_neck_null|luna:center_neck_multicon_null|luna:center_neck_vis_null|luna:center_neck_anim.parent_to" 
		"lunaRN.placeHolderList[57]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_head_component_grp|luna:center_head_anim_grp|luna:center_head_null|luna:center_head_multicon_null|luna:center_head_vis_null|luna:center_head_anim.rotateX" 
		"lunaRN.placeHolderList[58]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_head_component_grp|luna:center_head_anim_grp|luna:center_head_null|luna:center_head_multicon_null|luna:center_head_vis_null|luna:center_head_anim.rotateY" 
		"lunaRN.placeHolderList[59]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_head_component_grp|luna:center_head_anim_grp|luna:center_head_null|luna:center_head_multicon_null|luna:center_head_vis_null|luna:center_head_anim.rotateZ" 
		"lunaRN.placeHolderList[60]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_head_component_grp|luna:center_head_anim_grp|luna:center_head_null|luna:center_head_multicon_null|luna:center_head_vis_null|luna:center_head_anim.parent_to" 
		"lunaRN.placeHolderList[61]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim.rotateX" 
		"lunaRN.placeHolderList[62]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim.rotateY" 
		"lunaRN.placeHolderList[63]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim.rotateZ" 
		"lunaRN.placeHolderList[64]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim.rotateX" 
		"lunaRN.placeHolderList[65]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim.rotateY" 
		"lunaRN.placeHolderList[66]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim.rotateZ" 
		"lunaRN.placeHolderList[67]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim|luna:center_dorsal_fin_3_null|luna:center_dorsal_fin_3_vis_null|luna:center_dorsal_fin_3_anim.rotateX" 
		"lunaRN.placeHolderList[68]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim|luna:center_dorsal_fin_3_null|luna:center_dorsal_fin_3_vis_null|luna:center_dorsal_fin_3_anim.rotateY" 
		"lunaRN.placeHolderList[69]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:center_dorsal_fin_component_grp|luna:center_dorsal_fin_anim_grp|luna:center_dorsal_fin_1_null|luna:center_dorsal_fin_1_vis_null|luna:center_dorsal_fin_1_anim|luna:center_dorsal_fin_2_null|luna:center_dorsal_fin_2_vis_null|luna:center_dorsal_fin_2_anim|luna:center_dorsal_fin_3_null|luna:center_dorsal_fin_3_vis_null|luna:center_dorsal_fin_3_anim.rotateZ" 
		"lunaRN.placeHolderList[70]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim.rotateX" 
		"lunaRN.placeHolderList[71]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim.rotateY" 
		"lunaRN.placeHolderList[72]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim.rotateZ" 
		"lunaRN.placeHolderList[73]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim.rotateX" 
		"lunaRN.placeHolderList[74]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim.rotateY" 
		"lunaRN.placeHolderList[75]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim.rotateZ" 
		"lunaRN.placeHolderList[76]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim|luna:left_flipper_3_null|luna:left_flipper_3_vis_null|luna:left_flipper_3_anim.rotateX" 
		"lunaRN.placeHolderList[77]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim|luna:left_flipper_3_null|luna:left_flipper_3_vis_null|luna:left_flipper_3_anim.rotateY" 
		"lunaRN.placeHolderList[78]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_flipper_component_grp|luna:left_flipper_anim_grp|luna:left_flipper_1_null|luna:left_flipper_1_vis_null|luna:left_flipper_1_anim|luna:left_flipper_2_null|luna:left_flipper_2_vis_null|luna:left_flipper_2_anim|luna:left_flipper_3_null|luna:left_flipper_3_vis_null|luna:left_flipper_3_anim.rotateZ" 
		"lunaRN.placeHolderList[79]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim.rotateX" 
		"lunaRN.placeHolderList[80]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim.rotateY" 
		"lunaRN.placeHolderList[81]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim.rotateZ" 
		"lunaRN.placeHolderList[82]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim.rotateX" 
		"lunaRN.placeHolderList[83]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim.rotateY" 
		"lunaRN.placeHolderList[84]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim.rotateZ" 
		"lunaRN.placeHolderList[85]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim|luna:left_fluke_3_null|luna:left_fluke_3_vis_null|luna:left_fluke_3_anim.rotateX" 
		"lunaRN.placeHolderList[86]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim|luna:left_fluke_3_null|luna:left_fluke_3_vis_null|luna:left_fluke_3_anim.rotateY" 
		"lunaRN.placeHolderList[87]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:left_fluke_component_grp|luna:left_fluke_anim_grp|luna:left_fluke_1_null|luna:left_fluke_1_vis_null|luna:left_fluke_1_anim|luna:left_fluke_2_null|luna:left_fluke_2_vis_null|luna:left_fluke_2_anim|luna:left_fluke_3_null|luna:left_fluke_3_vis_null|luna:left_fluke_3_anim.rotateZ" 
		"lunaRN.placeHolderList[88]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim.rotateX" 
		"lunaRN.placeHolderList[89]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim.rotateY" 
		"lunaRN.placeHolderList[90]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim.rotateZ" 
		"lunaRN.placeHolderList[91]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim.rotateX" 
		"lunaRN.placeHolderList[92]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim.rotateY" 
		"lunaRN.placeHolderList[93]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim.rotateZ" 
		"lunaRN.placeHolderList[94]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim|luna:right_flipper_3_null|luna:right_flipper_3_vis_null|luna:right_flipper_3_anim.rotateX" 
		"lunaRN.placeHolderList[95]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim|luna:right_flipper_3_null|luna:right_flipper_3_vis_null|luna:right_flipper_3_anim.rotateY" 
		"lunaRN.placeHolderList[96]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_flipper_component_grp|luna:right_flipper_anim_grp|luna:right_flipper_1_null|luna:right_flipper_1_vis_null|luna:right_flipper_1_anim|luna:right_flipper_2_null|luna:right_flipper_2_vis_null|luna:right_flipper_2_anim|luna:right_flipper_3_null|luna:right_flipper_3_vis_null|luna:right_flipper_3_anim.rotateZ" 
		"lunaRN.placeHolderList[97]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim.rotateX" 
		"lunaRN.placeHolderList[98]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim.rotateY" 
		"lunaRN.placeHolderList[99]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim.rotateZ" 
		"lunaRN.placeHolderList[100]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim.rotateX" 
		"lunaRN.placeHolderList[101]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim.rotateY" 
		"lunaRN.placeHolderList[102]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim.rotateZ" 
		"lunaRN.placeHolderList[103]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim|luna:right_fluke_3_null|luna:right_fluke_3_vis_null|luna:right_fluke_3_anim.rotateX" 
		"lunaRN.placeHolderList[104]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim|luna:right_fluke_3_null|luna:right_fluke_3_vis_null|luna:right_fluke_3_anim.rotateY" 
		"lunaRN.placeHolderList[105]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:component_grp|luna:right_fluke_component_grp|luna:right_fluke_anim_grp|luna:right_fluke_1_null|luna:right_fluke_1_vis_null|luna:right_fluke_1_anim|luna:right_fluke_2_null|luna:right_fluke_2_vis_null|luna:right_fluke_2_anim|luna:right_fluke_3_null|luna:right_fluke_3_vis_null|luna:right_fluke_3_anim.rotateZ" 
		"lunaRN.placeHolderList[106]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_jaw_component_grp|luna:center_jaw_anim_grp|luna:center_jaw_null|luna:center_jaw_multicon_null|luna:center_jaw_vis_null|luna:center_jaw_anim.rotateX" 
		"lunaRN.placeHolderList[107]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_jaw_component_grp|luna:center_jaw_anim_grp|luna:center_jaw_null|luna:center_jaw_multicon_null|luna:center_jaw_vis_null|luna:center_jaw_anim.rotateY" 
		"lunaRN.placeHolderList[108]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_jaw_component_grp|luna:center_jaw_anim_grp|luna:center_jaw_null|luna:center_jaw_multicon_null|luna:center_jaw_vis_null|luna:center_jaw_anim.rotateZ" 
		"lunaRN.placeHolderList[109]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_jaw_component_grp|luna:center_jaw_anim_grp|luna:center_jaw_null|luna:center_jaw_multicon_null|luna:center_jaw_vis_null|luna:center_jaw_anim.parent_to" 
		"lunaRN.placeHolderList[110]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_eye_component_grp|luna:left_eye_anim_grp|luna:left_eye_null|luna:left_eye_aim_null|luna:left_eye_vis_null|luna:left_eye_anim.rotateX" 
		"lunaRN.placeHolderList[111]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_eye_component_grp|luna:left_eye_anim_grp|luna:left_eye_null|luna:left_eye_aim_null|luna:left_eye_vis_null|luna:left_eye_anim.rotateY" 
		"lunaRN.placeHolderList[112]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_eye_component_grp|luna:left_eye_anim_grp|luna:left_eye_null|luna:left_eye_aim_null|luna:left_eye_vis_null|luna:left_eye_anim.rotateZ" 
		"lunaRN.placeHolderList[113]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upper_lid_base_component_grp|luna:left_upper_lid_base_anim_grp|luna:left_upper_lid_base_null|luna:left_upper_lid_base_vis_null|luna:left_upper_lid_base_anim.rotateX" 
		"lunaRN.placeHolderList[114]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upper_lid_base_component_grp|luna:left_upper_lid_base_anim_grp|luna:left_upper_lid_base_null|luna:left_upper_lid_base_vis_null|luna:left_upper_lid_base_anim.rotateY" 
		"lunaRN.placeHolderList[115]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upper_lid_base_component_grp|luna:left_upper_lid_base_anim_grp|luna:left_upper_lid_base_null|luna:left_upper_lid_base_vis_null|luna:left_upper_lid_base_anim.rotateZ" 
		"lunaRN.placeHolderList[116]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upper_lid_base_component_grp|luna:left_upper_lid_base_anim_grp|luna:left_upper_lid_base_null|luna:left_upper_lid_base_vis_null|luna:left_upper_lid_base_anim|luna:left_upper_lid_base_end_anim.rotateZ" 
		"lunaRN.placeHolderList[117]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim.translateX" 
		"lunaRN.placeHolderList[118]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim.translateY" 
		"lunaRN.placeHolderList[119]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim.translateZ" 
		"lunaRN.placeHolderList[120]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim.rotateX" 
		"lunaRN.placeHolderList[121]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim.rotateY" 
		"lunaRN.placeHolderList[122]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_1_anim1|luna:left_upperlid_1_vis_null|luna:left_upperlid_1_anim.rotateZ" 
		"lunaRN.placeHolderList[123]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim.translateX" 
		"lunaRN.placeHolderList[124]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim.translateY" 
		"lunaRN.placeHolderList[125]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim.translateZ" 
		"lunaRN.placeHolderList[126]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim.rotateX" 
		"lunaRN.placeHolderList[127]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim.rotateY" 
		"lunaRN.placeHolderList[128]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_2_anim1|luna:left_upperlid_2_vis_null|luna:left_upperlid_2_anim.rotateZ" 
		"lunaRN.placeHolderList[129]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim.translateX" 
		"lunaRN.placeHolderList[130]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim.translateY" 
		"lunaRN.placeHolderList[131]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim.translateZ" 
		"lunaRN.placeHolderList[132]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim.rotateX" 
		"lunaRN.placeHolderList[133]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim.rotateY" 
		"lunaRN.placeHolderList[134]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_upperlid_component_grp|luna:left_upperlid_anim_grp|luna:left_upperlid_3_anim1|luna:left_upperlid_3_vis_null|luna:left_upperlid_3_anim.rotateZ" 
		"lunaRN.placeHolderList[135]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lower_lid_base_component_grp|luna:left_lower_lid_base_anim_grp|luna:left_lower_lid_base_null|luna:left_lower_lid_base_vis_null|luna:left_lower_lid_base_anim.rotateX" 
		"lunaRN.placeHolderList[136]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lower_lid_base_component_grp|luna:left_lower_lid_base_anim_grp|luna:left_lower_lid_base_null|luna:left_lower_lid_base_vis_null|luna:left_lower_lid_base_anim.rotateY" 
		"lunaRN.placeHolderList[137]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lower_lid_base_component_grp|luna:left_lower_lid_base_anim_grp|luna:left_lower_lid_base_null|luna:left_lower_lid_base_vis_null|luna:left_lower_lid_base_anim.rotateZ" 
		"lunaRN.placeHolderList[138]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim.translateX" 
		"lunaRN.placeHolderList[139]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim.translateY" 
		"lunaRN.placeHolderList[140]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim.translateZ" 
		"lunaRN.placeHolderList[141]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim.rotateX" 
		"lunaRN.placeHolderList[142]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim.rotateY" 
		"lunaRN.placeHolderList[143]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_1_anim1|luna:left_lowerlid_1_vis_null|luna:left_lowerlid_1_anim.rotateZ" 
		"lunaRN.placeHolderList[144]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim.translateX" 
		"lunaRN.placeHolderList[145]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim.translateY" 
		"lunaRN.placeHolderList[146]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim.translateZ" 
		"lunaRN.placeHolderList[147]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim.rotateX" 
		"lunaRN.placeHolderList[148]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim.rotateY" 
		"lunaRN.placeHolderList[149]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_2_anim1|luna:left_lowerlid_2_vis_null|luna:left_lowerlid_2_anim.rotateZ" 
		"lunaRN.placeHolderList[150]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim.translateX" 
		"lunaRN.placeHolderList[151]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim.translateY" 
		"lunaRN.placeHolderList[152]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim.translateZ" 
		"lunaRN.placeHolderList[153]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim.rotateX" 
		"lunaRN.placeHolderList[154]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim.rotateY" 
		"lunaRN.placeHolderList[155]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lowerlid_component_grp|luna:left_lowerlid_anim_grp|luna:left_lowerlid_3_anim1|luna:left_lowerlid_3_vis_null|luna:left_lowerlid_3_anim.rotateZ" 
		"lunaRN.placeHolderList[156]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim.translateX" 
		"lunaRN.placeHolderList[157]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim.translateY" 
		"lunaRN.placeHolderList[158]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim.translateZ" 
		"lunaRN.placeHolderList[159]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim.rotateX" 
		"lunaRN.placeHolderList[160]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim.rotateY" 
		"lunaRN.placeHolderList[161]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_innerlid_component_grp|luna:left_innerlid_anim_grp|luna:left_innerlid_anim1|luna:left_innerlid_vis_null|luna:left_innerlid_anim.rotateZ" 
		"lunaRN.placeHolderList[162]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim.translateX" 
		"lunaRN.placeHolderList[163]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim.translateY" 
		"lunaRN.placeHolderList[164]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim.translateZ" 
		"lunaRN.placeHolderList[165]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim.rotateX" 
		"lunaRN.placeHolderList[166]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim.rotateY" 
		"lunaRN.placeHolderList[167]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_outerlid_component_grp|luna:left_outerlid_anim_grp|luna:left_outerlid_anim1|luna:left_outerlid_vis_null|luna:left_outerlid_anim.rotateZ" 
		"lunaRN.placeHolderList[168]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim.translateX" 
		"lunaRN.placeHolderList[169]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim.translateY" 
		"lunaRN.placeHolderList[170]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim.translateZ" 
		"lunaRN.placeHolderList[171]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim.rotateX" 
		"lunaRN.placeHolderList[172]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim.rotateY" 
		"lunaRN.placeHolderList[173]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_1_anim1|luna:left_lip_1_vis_null|luna:left_lip_1_anim.rotateZ" 
		"lunaRN.placeHolderList[174]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim.translateX" 
		"lunaRN.placeHolderList[175]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim.translateY" 
		"lunaRN.placeHolderList[176]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim.translateZ" 
		"lunaRN.placeHolderList[177]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim.rotateX" 
		"lunaRN.placeHolderList[178]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim.rotateY" 
		"lunaRN.placeHolderList[179]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_2_anim1|luna:left_lip_2_vis_null|luna:left_lip_2_anim.rotateZ" 
		"lunaRN.placeHolderList[180]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim.translateX" 
		"lunaRN.placeHolderList[181]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim.translateY" 
		"lunaRN.placeHolderList[182]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim.translateZ" 
		"lunaRN.placeHolderList[183]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim.rotateX" 
		"lunaRN.placeHolderList[184]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim.rotateY" 
		"lunaRN.placeHolderList[185]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:left_lip_component_grp|luna:left_lip_anim_grp|luna:left_lip_3_anim1|luna:left_lip_3_vis_null|luna:left_lip_3_anim.rotateZ" 
		"lunaRN.placeHolderList[186]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_eye_component_grp|luna:right_eye_anim_grp|luna:right_eye_null|luna:right_eye_aim_null|luna:right_eye_vis_null|luna:right_eye_anim.rotateX" 
		"lunaRN.placeHolderList[187]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_eye_component_grp|luna:right_eye_anim_grp|luna:right_eye_null|luna:right_eye_aim_null|luna:right_eye_vis_null|luna:right_eye_anim.rotateY" 
		"lunaRN.placeHolderList[188]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_eye_component_grp|luna:right_eye_anim_grp|luna:right_eye_null|luna:right_eye_aim_null|luna:right_eye_vis_null|luna:right_eye_anim.rotateZ" 
		"lunaRN.placeHolderList[189]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upper_lid_base_component_grp|luna:right_upper_lid_base_anim_grp|luna:right_upper_lid_base_null|luna:right_upper_lid_base_vis_null|luna:right_upper_lid_base_anim.rotateX" 
		"lunaRN.placeHolderList[190]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upper_lid_base_component_grp|luna:right_upper_lid_base_anim_grp|luna:right_upper_lid_base_null|luna:right_upper_lid_base_vis_null|luna:right_upper_lid_base_anim.rotateY" 
		"lunaRN.placeHolderList[191]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upper_lid_base_component_grp|luna:right_upper_lid_base_anim_grp|luna:right_upper_lid_base_null|luna:right_upper_lid_base_vis_null|luna:right_upper_lid_base_anim.rotateZ" 
		"lunaRN.placeHolderList[192]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim.translateX" 
		"lunaRN.placeHolderList[193]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim.translateY" 
		"lunaRN.placeHolderList[194]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim.translateZ" 
		"lunaRN.placeHolderList[195]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim.rotateX" 
		"lunaRN.placeHolderList[196]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim.rotateY" 
		"lunaRN.placeHolderList[197]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_1_anim1|luna:right_upperlid_1_vis_null|luna:right_upperlid_1_anim.rotateZ" 
		"lunaRN.placeHolderList[198]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim.translateX" 
		"lunaRN.placeHolderList[199]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim.translateY" 
		"lunaRN.placeHolderList[200]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim.translateZ" 
		"lunaRN.placeHolderList[201]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim.rotateX" 
		"lunaRN.placeHolderList[202]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim.rotateY" 
		"lunaRN.placeHolderList[203]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_2_anim1|luna:right_upperlid_2_vis_null|luna:right_upperlid_2_anim.rotateZ" 
		"lunaRN.placeHolderList[204]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim.translateX" 
		"lunaRN.placeHolderList[205]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim.translateY" 
		"lunaRN.placeHolderList[206]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim.translateZ" 
		"lunaRN.placeHolderList[207]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim.rotateX" 
		"lunaRN.placeHolderList[208]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim.rotateY" 
		"lunaRN.placeHolderList[209]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_upperlid_component_grp|luna:right_upperlid_anim_grp|luna:right_upperlid_3_anim1|luna:right_upperlid_3_vis_null|luna:right_upperlid_3_anim.rotateZ" 
		"lunaRN.placeHolderList[210]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lower_lid_base_component_grp|luna:right_lower_lid_base_anim_grp|luna:right_lower_lid_base_null|luna:right_lower_lid_base_vis_null|luna:right_lower_lid_base_anim.rotateX" 
		"lunaRN.placeHolderList[211]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lower_lid_base_component_grp|luna:right_lower_lid_base_anim_grp|luna:right_lower_lid_base_null|luna:right_lower_lid_base_vis_null|luna:right_lower_lid_base_anim.rotateY" 
		"lunaRN.placeHolderList[212]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lower_lid_base_component_grp|luna:right_lower_lid_base_anim_grp|luna:right_lower_lid_base_null|luna:right_lower_lid_base_vis_null|luna:right_lower_lid_base_anim.rotateZ" 
		"lunaRN.placeHolderList[213]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim.translateX" 
		"lunaRN.placeHolderList[214]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim.translateY" 
		"lunaRN.placeHolderList[215]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim.translateZ" 
		"lunaRN.placeHolderList[216]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim.rotateX" 
		"lunaRN.placeHolderList[217]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim.rotateY" 
		"lunaRN.placeHolderList[218]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_1_anim1|luna:right_lowerlid_1_vis_null|luna:right_lowerlid_1_anim.rotateZ" 
		"lunaRN.placeHolderList[219]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim.translateX" 
		"lunaRN.placeHolderList[220]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim.translateY" 
		"lunaRN.placeHolderList[221]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim.translateZ" 
		"lunaRN.placeHolderList[222]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim.rotateX" 
		"lunaRN.placeHolderList[223]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim.rotateY" 
		"lunaRN.placeHolderList[224]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_2_anim1|luna:right_lowerlid_2_vis_null|luna:right_lowerlid_2_anim.rotateZ" 
		"lunaRN.placeHolderList[225]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim.translateX" 
		"lunaRN.placeHolderList[226]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim.translateY" 
		"lunaRN.placeHolderList[227]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim.translateZ" 
		"lunaRN.placeHolderList[228]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim.rotateX" 
		"lunaRN.placeHolderList[229]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim.rotateY" 
		"lunaRN.placeHolderList[230]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lowerlid_component_grp|luna:right_lowerlid_anim_grp|luna:right_lowerlid_3_anim1|luna:right_lowerlid_3_vis_null|luna:right_lowerlid_3_anim.rotateZ" 
		"lunaRN.placeHolderList[231]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim.translateX" 
		"lunaRN.placeHolderList[232]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim.translateY" 
		"lunaRN.placeHolderList[233]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim.translateZ" 
		"lunaRN.placeHolderList[234]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim.rotateX" 
		"lunaRN.placeHolderList[235]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim.rotateY" 
		"lunaRN.placeHolderList[236]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_innerlid_component_grp|luna:right_innerlid_anim_grp|luna:right_innerlid_anim1|luna:right_innerlid_vis_null|luna:right_innerlid_anim.rotateZ" 
		"lunaRN.placeHolderList[237]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim.translateX" 
		"lunaRN.placeHolderList[238]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim.translateY" 
		"lunaRN.placeHolderList[239]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim.translateZ" 
		"lunaRN.placeHolderList[240]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim.rotateX" 
		"lunaRN.placeHolderList[241]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim.rotateY" 
		"lunaRN.placeHolderList[242]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_outerlid_component_grp|luna:right_outerlid_anim_grp|luna:right_outerlid_anim1|luna:right_outerlid_vis_null|luna:right_outerlid_anim.rotateZ" 
		"lunaRN.placeHolderList[243]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim.translateX" 
		"lunaRN.placeHolderList[244]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim.translateY" 
		"lunaRN.placeHolderList[245]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim.translateZ" 
		"lunaRN.placeHolderList[246]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim.rotateX" 
		"lunaRN.placeHolderList[247]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim.rotateY" 
		"lunaRN.placeHolderList[248]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_1_anim1|luna:right_lip_1_vis_null|luna:right_lip_1_anim.rotateZ" 
		"lunaRN.placeHolderList[249]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim.translateX" 
		"lunaRN.placeHolderList[250]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim.translateY" 
		"lunaRN.placeHolderList[251]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim.translateZ" 
		"lunaRN.placeHolderList[252]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim.rotateX" 
		"lunaRN.placeHolderList[253]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim.rotateY" 
		"lunaRN.placeHolderList[254]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_2_anim1|luna:right_lip_2_vis_null|luna:right_lip_2_anim.rotateZ" 
		"lunaRN.placeHolderList[255]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim.translateX" 
		"lunaRN.placeHolderList[256]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim.translateY" 
		"lunaRN.placeHolderList[257]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim.translateZ" 
		"lunaRN.placeHolderList[258]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim.rotateX" 
		"lunaRN.placeHolderList[259]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim.rotateY" 
		"lunaRN.placeHolderList[260]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:right_lip_component_grp|luna:right_lip_anim_grp|luna:right_lip_3_anim1|luna:right_lip_3_vis_null|luna:right_lip_3_anim.rotateZ" 
		"lunaRN.placeHolderList[261]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim.parent_to" 
		"lunaRN.placeHolderList[262]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim.translateX" 
		"lunaRN.placeHolderList[263]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim.translateY" 
		"lunaRN.placeHolderList[264]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim.translateZ" 
		"lunaRN.placeHolderList[265]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim.rotateX" 
		"lunaRN.placeHolderList[266]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim.rotateY" 
		"lunaRN.placeHolderList[267]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim.rotateZ" 
		"lunaRN.placeHolderList[268]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_right_null|luna:center_eye_aim_right_vis_null|luna:center_eye_aim_right_anim.translateX" 
		"lunaRN.placeHolderList[269]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_right_null|luna:center_eye_aim_right_vis_null|luna:center_eye_aim_right_anim.translateY" 
		"lunaRN.placeHolderList[270]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_right_null|luna:center_eye_aim_right_vis_null|luna:center_eye_aim_right_anim.translateZ" 
		"lunaRN.placeHolderList[271]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_left_null|luna:center_eye_aim_left_vis_null|luna:center_eye_aim_left_anim.translateX" 
		"lunaRN.placeHolderList[272]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_left_null|luna:center_eye_aim_left_vis_null|luna:center_eye_aim_left_anim.translateY" 
		"lunaRN.placeHolderList[273]" ""
		5 4 "lunaRN" "|luna:Luna_topCon|luna:Luna_Face_topCon|luna:component_grp|luna:center_eye_aim_component_grp|luna:center_eye_aim_anim_grp|luna:center_eye_aim_main_null|luna:center_eye_aim_main_multicon_null|luna:center_eye_aim_main_vis_null|luna:center_eye_aim_main_anim|luna:center_eye_aim_left_null|luna:center_eye_aim_left_vis_null|luna:center_eye_aim_left_anim.translateZ" 
		"lunaRN.placeHolderList[274]" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "BBC9CCA9-4D75-FC6E-16DC-758FDB89EBA3";
	setAttr ".version" -type "string" "3.1.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "F7F5F780-4830-871D-DF42-F1B5280DA3B1";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A1C30488-4C3F-47CB-3846-23A4D104937E";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "F0B13F62-49F5-5CD5-E7A8-DA8537748F4B";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyCube -n "polyCube1";
	rename -uid "6C688CA3-4980-1416-951C-3994E7AFDE15";
	setAttr ".cuv" 4;
createNode animCurveTL -n "center_COG_anim_translateX";
	rename -uid "06B68D7D-4FFC-F57D-19A1-64A2EE0ED1EA";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 -19.277857676269129 14 -30.577111075334436
		 21 -35.648819989015465 28 -28.699509050822005 39 -12.924186370308364 47 -5.4941898979741417
		 54 -4.3226413792777825 82 -1.9514448507340685 95 18.587860963340056 114 42.135249152122498
		 126 22.042637987691506 134.2 5.288764339788564 141.99999948979593 0;
createNode animCurveTL -n "center_COG_anim_translateY";
	rename -uid "032D8B1A-4147-0C1B-DC6E-1EA4452B9FCE";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  1 0 8 4.7459769242584002 14 7.2693374999700087
		 21 4.7459769242584002 28 1.0024814241994218 32 -0.43298607866011185 39 7.7370799855117731
		 47 10.571124410257648 54 12.192504896607678 82 16.940968231771251 91 13.321114003517856
		 95 10.762418283368451 100 6.3801793491961245 114 10.096661202840286 118 10.87804787255623
		 126 7.6112605446841766 134.2 0.43384123251924755 141.99999948979593 0;
createNode animCurveTL -n "center_COG_anim_translateZ";
	rename -uid "78009CFD-4EF4-442B-7E45-DD89523EFBD0";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 6.5861688860239553 21 17.033200982652588
		 28 43.130177500381315 39 66.685993638557164 47 74.321808594467399 54 74.321808594467399
		 82 74.321808594467399 114 26.721361983780731 126 3.0565657652765736 134.2 -2.4378239168041347
		 141.99999948979593 0;
createNode animCurveTA -n "center_COG_anim_rotateX";
	rename -uid "E68BD9B0-4C2A-4A6A-C30E-D2B1B61E3445";
	setAttr ".tan" 18;
	setAttr -s 21 ".ktv[0:20]"  1 0 8 -12.945687826952174 14 -6.7660596764429073
		 21 13.43144492423874 25 1.2059182369365289 28 -8.6425928463092099 30 -4.6240526692662964
		 39 -14.894506169552082 47 -13.236051093279777 54 -14.144959740434619 58 -24.589949945212474
		 82 -21.975557315922476 91 49.89250313152764 100 -0.26624617529115635 106 -9.7840842278010651
		 111 6.6804541162594573 114 22.823827538542357 118 31.180202637443898 126 44.696950634233026
		 134.2 150.84859097308913 141.99999948979593 180;
createNode animCurveTA -n "center_COG_anim_rotateY";
	rename -uid "BB5C3659-4A5B-F8C9-D149-57B1ED754DBE";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 8 -63.451038282858796 14 -31.799029232945863
		 21 12.571574303958997 25 24.787950901493254 28 27.425091874781284 39 25.552652826233611
		 47 23.922049393891733 54 23.263645766012218 82 21.575506428975778 91 140.64043740232171
		 100 157.58010053698001 106 174.01753441085788 111 186.57901330587956 114 192.07216951099164
		 118 207.18265007765692 126 229.92846930400395 134.2 252.67244638398736 141.99999948979593 180;
createNode animCurveTA -n "center_COG_anim_rotateZ";
	rename -uid "06B76397-42A9-400F-8F7B-98BE779648F6";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 8 -7.6465088563429608 14 -15.688988134776316
		 21 -21.520132109683459 25 -29.522917722443033 28 -28.128603366866908 39 -13.226692043452502
		 47 -7.0860836490382546 54 -7.1349502652321091 82 -7.5559549585945467 91 45.642793529282351
		 100 1.7756088229215825 106 -17.004871481168266 111 -5.215777858384433 114 -19.070034484156213
		 118 -20.69291799224634 126 -29.713168086468485 134.2 -120.78653327353022 141.99999948979593 -180;
createNode animCurveTU -n "center_COG_anim_swim_offset";
	rename -uid "18DE3F52-44CD-A312-4B98-66B5EAF2C8A1";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 54 0 82 0
		 114 0 126 0 134.2 0 141.99999948979593 0;
createNode animCurveTU -n "center_COG_anim_swim_height";
	rename -uid "F60857A1-4644-87D9-934C-009A7A9AB655";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 54 0 82 0
		 114 0 126 0 134.2 0 141.99999948979593 0;
createNode animCurveTU -n "center_COG_anim_swim_length";
	rename -uid "AD3FC418-455F-565C-3D94-30A9792D2C17";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 5 8 5 14 5 21 5 28 5 39 5 47 5 54 5 82 5
		 114 5 126 5 134.2 5 141.99999948979593 5;
createNode animCurveTU -n "center_COG_anim_display_deformer";
	rename -uid "96BAFCD8-4F15-5AB3-C982-089BB9601383";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 54 0 82 0
		 114 0 126 0 134.2 0 141.99999948979593 0;
createNode animCurveTA -n "center_eye_aim_main_anim_rotateX";
	rename -uid "87DFA8AB-4257-D714-F15A-78ACA9AF121A";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "center_eye_aim_main_anim_rotateY";
	rename -uid "E5170255-4008-1A22-5976-42B158A4E58B";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "center_eye_aim_main_anim_rotateZ";
	rename -uid "5E779D86-421E-C237-12EF-EE95E2373B84";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "center_jaw_anim_rotateX";
	rename -uid "FACAC6FC-4A4B-6B35-AD41-E997C450B7DA";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "center_jaw_anim_rotateY";
	rename -uid "D124251F-4528-7555-6786-90A6D5BC9681";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "center_jaw_anim_rotateZ";
	rename -uid "48630C40-46DE-F062-064C-55812A8F8F5A";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 61 15.474494140517281
		 82 0 90 0 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_eye_anim_rotateX";
	rename -uid "3FF07EE1-4F4F-4D94-D9D0-69A2B92259E9";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_eye_anim_rotateY";
	rename -uid "3B70A35F-4FBB-6156-4EFD-F6AD452425BE";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_eye_anim_rotateZ";
	rename -uid "741A16DB-4CD8-A234-9295-EABD2752B32B";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_innerlid_anim_rotateX";
	rename -uid "56DFFA53-40D8-7B09-C7CE-98BED11D853F";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_innerlid_anim_rotateY";
	rename -uid "57AA1814-4290-55A0-4B8E-379F36F42F9B";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_innerlid_anim_rotateZ";
	rename -uid "81CFAA83-4AA5-0E93-EFA8-BE924688F1F7";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lip_1_anim_rotateX";
	rename -uid "B8A1F9D1-4205-2377-41E4-D387F6346F95";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lip_1_anim_rotateY";
	rename -uid "4F306AE1-4601-8F2B-B45F-5B968C869B54";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lip_1_anim_rotateZ";
	rename -uid "C69F67DF-4AA1-EBF0-254D-75BE11443C31";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lip_2_anim_rotateX";
	rename -uid "AA8ED739-4378-7800-0253-70BA45B5340A";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lip_2_anim_rotateY";
	rename -uid "CB5331EF-44B4-844E-632D-94A541AC20EC";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lip_2_anim_rotateZ";
	rename -uid "12669FC9-4A64-1C6C-4666-F1AB7F889100";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lip_3_anim_rotateX";
	rename -uid "231B0080-4E48-49CD-33C5-409A769270CA";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lip_3_anim_rotateY";
	rename -uid "DA2EF92F-4ADA-7DCB-971A-7097F070F84A";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lip_3_anim_rotateZ";
	rename -uid "CA5C985B-4473-D79C-F52C-688FACE6E814";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lower_lid_base_anim_rotateX";
	rename -uid "BB281D5E-4206-7ACF-624F-B2A7FE9C2301";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 0 47 0 68 1.3237316972437851 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lower_lid_base_anim_rotateY";
	rename -uid "C26C7781-4AFD-79EC-C37F-599FF0814EEF";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 0 47 0 68 3.6186724748514196 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lower_lid_base_anim_rotateZ";
	rename -uid "3EDD64D4-4B3D-EDC5-9DA2-9FA039CF4C9B";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 25.009902573007324 47 18.562842554239225
		 61 36.292277030994292 68 43.016828832245885 82 0 90 0 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lowerlid_1_anim_rotateX";
	rename -uid "E118B8E4-454F-C746-4FB0-8588862DCC3D";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lowerlid_1_anim_rotateY";
	rename -uid "077FDC72-4CC3-5CED-11CD-AD8446F342BE";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lowerlid_1_anim_rotateZ";
	rename -uid "BC97D9C1-4CD3-1697-0478-40AC588D3104";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lowerlid_2_anim_rotateX";
	rename -uid "B769E3F5-43CF-DA05-3B70-CEBD92A741F5";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lowerlid_2_anim_rotateY";
	rename -uid "C17DB95C-4F71-C533-FD50-63AD1A6FEDBA";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lowerlid_2_anim_rotateZ";
	rename -uid "F1C7385F-4E8B-8F6B-6205-7C9D3264ACA8";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lowerlid_3_anim_rotateX";
	rename -uid "4186B33D-4C8C-6D2F-9469-07BD4419B6EB";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lowerlid_3_anim_rotateY";
	rename -uid "69F4D75E-469F-0C1C-678A-498F3893FC1C";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_lowerlid_3_anim_rotateZ";
	rename -uid "40552C2A-4191-EF08-CEB4-9B81B93343F3";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_outerlid_anim_rotateX";
	rename -uid "23D6B208-474D-CA95-1A57-E09370CF49CD";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_outerlid_anim_rotateY";
	rename -uid "F75C8226-4B70-01AB-DC4C-18B997587E0E";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_outerlid_anim_rotateZ";
	rename -uid "497981C6-4A49-3CB7-1A15-A3BB4B33CD12";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_upper_lid_base_anim_rotateX";
	rename -uid "7C0C6FE9-40EA-4635-A074-298733E98D5C";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_upper_lid_base_anim_rotateY";
	rename -uid "6F0265AD-4378-C448-C90F-69B9C133BB0F";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_upper_lid_base_anim_rotateZ";
	rename -uid "44C553EB-4974-C974-6C8C-98871FDE704E";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 61 48.685968936583095
		 68 48.685968936583095 82 0 90 0 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_upperlid_1_anim_rotateX";
	rename -uid "2DD98296-4F15-CCE5-E8E9-62B94CFC5680";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_upperlid_1_anim_rotateY";
	rename -uid "432A9802-47BC-F9C7-7ED9-719C0680DE0D";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_upperlid_1_anim_rotateZ";
	rename -uid "536DE81C-4585-5D5D-FB5C-38BB036A5CE7";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_upperlid_2_anim_rotateX";
	rename -uid "5E6668DE-4880-6CE1-9EC8-D88E6359E027";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_upperlid_2_anim_rotateY";
	rename -uid "B580A3A5-4CB8-FA08-D51B-E48579E962A3";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_upperlid_2_anim_rotateZ";
	rename -uid "4D9D909E-4577-66B2-6FC7-2A96150CA3A9";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_upperlid_3_anim_rotateX";
	rename -uid "336A3C9F-4217-0B21-DC3E-A3B8F566CC51";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_upperlid_3_anim_rotateY";
	rename -uid "2B1DD44D-4F6C-9692-46A0-21BD3BBE1B95";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "left_upperlid_3_anim_rotateZ";
	rename -uid "7C71CD6F-41C6-E2EB-8B66-1E8502321CBB";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_eye_anim_rotateX";
	rename -uid "71F324E9-4B1C-9CE3-0660-CC8024962069";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_eye_anim_rotateY";
	rename -uid "29EFCF0E-4569-42FC-12E3-4398C5BB476A";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_eye_anim_rotateZ";
	rename -uid "66BC1331-4BB7-F3E2-7436-A686803A1D1F";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_innerlid_anim_rotateX";
	rename -uid "48E6E797-4B8B-57A0-74A9-E782846820A3";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_innerlid_anim_rotateY";
	rename -uid "346263DB-43B3-6214-95FF-FF8988B9A90F";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_innerlid_anim_rotateZ";
	rename -uid "1EEBBAAD-4717-DC70-575C-8C975BDC5BCA";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lip_1_anim_rotateX";
	rename -uid "F1242110-4709-72CB-3307-83BBAAC34DE5";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lip_1_anim_rotateY";
	rename -uid "16732873-4EE1-C6AC-69D7-99A05CE7960E";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lip_1_anim_rotateZ";
	rename -uid "4677EE4D-41B6-164B-817D-28A38BEA12AF";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lip_2_anim_rotateX";
	rename -uid "8AB585C2-4A9B-1F1B-1061-708DA4C37999";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lip_2_anim_rotateY";
	rename -uid "ABC2AEA3-4C1D-0164-B211-BDA9E001D583";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lip_2_anim_rotateZ";
	rename -uid "DD49CF0B-4A74-C579-C0FA-B48CCB5BE85E";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lip_3_anim_rotateX";
	rename -uid "08BBEA9E-454B-70ED-B2FA-E3A3368857F5";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lip_3_anim_rotateY";
	rename -uid "5D5E9F76-4FE7-31A7-368F-949E64986175";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lip_3_anim_rotateZ";
	rename -uid "ED6F2BFD-4A2C-0E45-55BB-8D9FBFA6CE89";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lower_lid_base_anim_rotateX";
	rename -uid "DA3709C0-49C1-9729-2DC6-11878F5DB145";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 47 0 61 1.3237316972437851 68 4.3321688831762462
		 82 -2.5058202151421165 100 0;
createNode animCurveTA -n "right_lower_lid_base_anim_rotateY";
	rename -uid "C37D0DDF-4BCA-8764-B357-C8AC6559149F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 47 0 61 3.6186724748514196 68 2.8812545432080174
		 82 -3.100619473789636 100 0;
createNode animCurveTA -n "right_lower_lid_base_anim_rotateZ";
	rename -uid "F2B40BE9-41AE-E7B3-3B7C-CE8DDBD82C07";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 26.736466986081329 47 18.628052153917629
		 61 43.016828832245885 68 48.724515350740539 82 11.492816226693373 100 0;
createNode animCurveTA -n "right_lowerlid_1_anim_rotateX";
	rename -uid "49713F2E-47B2-EC47-B05F-459BEF7290E9";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lowerlid_1_anim_rotateY";
	rename -uid "5717A4CF-41A4-E452-C6B3-F8A3B328811D";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lowerlid_1_anim_rotateZ";
	rename -uid "A534104B-48E9-8CD2-C4D1-E88796F06071";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lowerlid_2_anim_rotateX";
	rename -uid "FDF619EA-481E-3EEC-C871-CF9FFCF8E3C5";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lowerlid_2_anim_rotateY";
	rename -uid "76449EE7-4220-1C2F-41F8-63A6D49EBC72";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lowerlid_2_anim_rotateZ";
	rename -uid "537AFC24-468C-678C-9954-468349C08836";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lowerlid_3_anim_rotateX";
	rename -uid "DE646E3C-4F58-FF4A-9D33-FCA879C70D96";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lowerlid_3_anim_rotateY";
	rename -uid "DCAE03CA-4865-14F8-E754-84A2BE13429D";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_lowerlid_3_anim_rotateZ";
	rename -uid "9E79D426-4076-ECDF-0A01-9E9D2A9139E1";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_outerlid_anim_rotateX";
	rename -uid "FF93C815-428B-EF22-FA83-FBAE234B9773";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_outerlid_anim_rotateY";
	rename -uid "99B87DFB-48F4-92EE-E8C7-FB8991A330C0";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_outerlid_anim_rotateZ";
	rename -uid "613D8078-4572-281F-EEC6-6690BD858FA9";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_upper_lid_base_anim_rotateX";
	rename -uid "7B08C30D-4DFC-9ABB-5FD8-A290B570F17B";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 0 8 0 14 0 21 0 28 0 39 0 47 -9.8452726983818639
		 61 1.3237316972437851 68 1.3237316972437851 82 0 90 0 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_upper_lid_base_anim_rotateY";
	rename -uid "DB094611-4B3B-7F79-76F6-78BBC1704DCF";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 61 3.6186724748514196
		 68 3.6186724748514196 82 0 90 0 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_upper_lid_base_anim_rotateZ";
	rename -uid "E9730618-4E78-2CB3-505F-E19E339610AC";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 61 43.016828832245885
		 68 43.016828832245885 82 0 90 0 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_upperlid_1_anim_rotateX";
	rename -uid "18CB3A3C-4793-D8B5-3241-A498B5488E0C";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_upperlid_1_anim_rotateY";
	rename -uid "8E75DB24-4C05-9233-A2CD-349B6CF9688C";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_upperlid_1_anim_rotateZ";
	rename -uid "29801EA4-4B93-499E-14C5-FD8380FDB505";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_upperlid_2_anim_rotateX";
	rename -uid "78A4A67E-4F5C-4259-D7FB-08A8F1541C80";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_upperlid_2_anim_rotateY";
	rename -uid "B3C0CC34-49DB-51C2-4AA7-F58ACD20DC94";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_upperlid_2_anim_rotateZ";
	rename -uid "24E3C6AC-4FE4-9439-7612-338FA32F8FD5";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_upperlid_3_anim_rotateX";
	rename -uid "E218B526-45A3-D672-A886-E6A053DECF11";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_upperlid_3_anim_rotateY";
	rename -uid "6A05DF59-4F3B-24B9-4BEB-319CCEFBB1C4";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "right_upperlid_3_anim_rotateZ";
	rename -uid "B530E68E-4FCE-519A-8A48-2681C322E8C0";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTA -n "center_dorsal_fin_1_anim_rotateX";
	rename -uid "20B27CD3-4E7A-BCC7-6D0B-429F34676E4E";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 113 0 122 0 132 0 140 0;
createNode animCurveTA -n "center_dorsal_fin_1_anim_rotateY";
	rename -uid "109CB1C9-4820-C264-2E39-B2AA47FDB887";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 113 0 122 0 132 0 140 0;
createNode animCurveTA -n "center_dorsal_fin_1_anim_rotateZ";
	rename -uid "17DA5A66-4C87-8717-105E-B290E39F3BDC";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 113 0 122 0 132 0 140 0;
createNode animCurveTA -n "center_dorsal_fin_2_anim_rotateX";
	rename -uid "CA20BB36-442B-C103-34EA-C681DD32E6CB";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 113 0 122 0 132 0 140 0;
createNode animCurveTA -n "center_dorsal_fin_2_anim_rotateY";
	rename -uid "D0857528-4134-5FF5-7781-D3B4E3D776EB";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 113 0 122 0 132 0 140 0;
createNode animCurveTA -n "center_dorsal_fin_2_anim_rotateZ";
	rename -uid "C0A2CC53-49E0-9989-06EF-3DA54F565B92";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 113 0 122 0 132 0 140 0;
createNode animCurveTA -n "center_dorsal_fin_3_anim_rotateX";
	rename -uid "C475D208-4198-F007-C4A6-25A510D721DA";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 113 0 122 0 132 0 140 0;
createNode animCurveTA -n "center_dorsal_fin_3_anim_rotateY";
	rename -uid "DE8BB195-4B0F-E77A-023E-0F955AD49117";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 113 0 122 0 132 0 140 0;
createNode animCurveTA -n "center_dorsal_fin_3_anim_rotateZ";
	rename -uid "43C9B25B-44EE-1037-D64A-4CA665F2FD80";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 113 0 122 0 132 0 140 0;
createNode animCurveTA -n "center_head_anim_rotateX";
	rename -uid "617F8F7A-47CD-D464-4CBD-E696EB18AD50";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 116 0 124 0 132 0 140 0;
createNode animCurveTA -n "center_head_anim_rotateY";
	rename -uid "AEF0C947-4A82-9F96-30EF-79ABCED97DBE";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 116 0 124 0 132 0 140 0;
createNode animCurveTA -n "center_head_anim_rotateZ";
	rename -uid "44137367-4692-0F54-DFFE-4BAC34693B4F";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 3.4882639081200377 21 0 28 0
		 39 0 47 0 82 0 90 0 106 0 116 0 124 0 132 0 140 0;
createNode animCurveTA -n "center_neck_anim_rotateX";
	rename -uid "486B6055-4461-D446-E904-B5A0F031CE5D";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0.0029623537009337889
		 73 14.117046114120329 82 1.5048004624785469 85 -2.8949834205267302 90 -2.4064645399723745
		 102 0 103 2.6560769424707553 106 0 116 0 124 0 132 0 140 0;
createNode animCurveTA -n "center_neck_anim_rotateY";
	rename -uid "979EF63C-45C3-9B3F-E962-A0AD4610BF27";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  1 0 8 0 14 14.18179465082882 21 0 28 0 39 0
		 47 6.1139285058855419 73 1.6269084466392134 82 12.231448358111043 85 8.9052271777280332
		 90 1.8179728526419547 102 0 103 10.455330403614942 106 12.531176560131724 116 0 124 0
		 132 0 140 0;
createNode animCurveTA -n "center_neck_anim_rotateZ";
	rename -uid "ABEF4BA9-44CF-B023-5FAB-E7821C787AF4";
	setAttr ".tan" 18;
	setAttr -s 20 ".ktv[0:19]"  1 0 8 0 14 0 21 5.3902190602250011 28 8.1416159627973474
		 32 0.27720152053176761 34 -15.880800554343423 39 -7.9577631158244388 47 -15.229256122868781
		 73 6.1771287553196208 82 9.2789108220492551 85 -3.0353887260437693 90 9.820176950644198
		 102 0 103 -6.1700141588322275 106 0 116 0 124 0 132 0 140 0;
createNode animCurveTA -n "center_spine_1_anim_rotateX";
	rename -uid "07A5249D-4123-A833-FFE3-6DAEB2A2C406";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0 8 0 14 0.32065984010661835 21 0 28 0
		 39 0 47 0 82 0 90 0 102 0 106 0 116 0 124 0 132 0 140 0;
createNode animCurveTA -n "center_spine_1_anim_rotateY";
	rename -uid "287CE042-40ED-2E56-1BD5-6CABEBD8F6AC";
	setAttr ".tan" 18;
	setAttr -s 17 ".ktv[0:16]"  1 0 8 0 14 4.1843902264153296 21 0 28 0
		 39 0 47 0 82 0 90 12.562592099071495 102 0 103 8.628114549770709 106 4.9411894833819119
		 116 0 120 10.709288531355655 124 0 132 0 140 0;
createNode animCurveTA -n "center_spine_1_anim_rotateZ";
	rename -uid "BE91686E-4BC1-B26B-002B-EF98BDC9FC2D";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 0 8 0 14 4.3860763096590647 21 3.0862887837746094
		 28 16.24065081518712 34 -5.6347954979954036 39 -15.261645617248748 47 -8.7640620226177699
		 82 0 90 0 102 -11.687040099832792 106 0 116 0 124 0 132 0 140 0;
createNode animCurveTA -n "center_spine_2_anim_rotateX";
	rename -uid "AEDC2CC2-41B7-2D27-BE47-C19B0410073D";
	setAttr ".tan" 18;
	setAttr -s 20 ".ktv[0:19]"  1 0 8 0 14 0 21 -13.416645271224249 28 0
		 34 -3.9698614095061995 39 0 47 0 66 0 82 0 88 0 91 -22.115983870129941 94 -8.1824133828274963
		 102 19.499728189226527 103 18.212366868682551 104 15.518972060077115 109 0.42285741358970336
		 116 -4.6702429130036167 120 0 140 0;
	setAttr -s 20 ".kit[5:19]"  10 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
createNode animCurveTA -n "center_spine_2_anim_rotateY";
	rename -uid "16E89A7B-4DA9-2AD7-AC4E-6699919628BC";
	setAttr ".tan" 18;
	setAttr -s 20 ".ktv[0:19]"  1 0 8 0 14 -5.3707462759232829 21 -11.378545412389593
		 28 8.0741116961643353 34 -4.3033551383932123 39 0 47 0 66 0 82 0 88 -24.790881821887552
		 91 -13.116052995493742 94 -2.3362168642239216 102 4.9333524654135932 103 -5.5339321250200602
		 104 3.9020047036678327 109 -11.360597386241119 116 -1.8792804225933324 120 -8.1029419433112757
		 140 0;
	setAttr -s 20 ".kit[5:19]"  10 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
createNode animCurveTA -n "center_spine_2_anim_rotateZ";
	rename -uid "CAF7D158-4B17-1C16-8C7C-85BD2733310A";
	setAttr ".tan" 18;
	setAttr -s 24 ".ktv[0:23]"  1 0 8 0 14 0 21 15.651179440257524 28 9.1130221055502201
		 31 -20.215483564873441 34 -20.255528468739893 39 0 44 9.9496924651921059 47 0 52 -6.5122422930471737
		 66 -3.5812508728579413 76 -2.1909614906008996 82 31.932521623420854 88 0 91 2.8885658061113806
		 94 27.555508184256727 102 30.946940688812926 103 25.321428318214064 104 22.913031155686159
		 109 -19.041290320448113 116 -14.905590076651352 120 -12.140504063038566 140 0;
createNode animCurveTA -n "center_tail_1_anim_rotateX";
	rename -uid "423CB317-48A4-829B-C3AA-7E92F9549719";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  1 0 8 0 14 0 21 -3.1346008571995596 28 0
		 39 -1.828908194553468 47 0 82 0 88 0 90 9.1914301369113502 96 -18.196731967596754
		 102 0 104 -11.498391740597219 109 0.30263738476209207 116 -9.6242052111613745 120 -20.192702029512034
		 126 -10.90476443041319 140 0;
	setAttr -s 18 ".kit[16:17]"  10 18;
createNode animCurveTA -n "center_tail_1_anim_rotateY";
	rename -uid "BF96030C-4530-8E82-910C-C0A7714574EB";
	setAttr ".tan" 18;
	setAttr -s 17 ".ktv[0:16]"  1 0 8 0 14 -14.36390493939812 21 -5.090818858660068
		 28 0 39 -0.46134620427533191 47 0 82 0 88 0 90 -3.307878581008743 96 -19.905496967362328
		 102 0 109 -7.1398034338574581 116 -5.5312037243948851 120 17.849966988379339 126 21.018035527916474
		 140 0;
	setAttr -s 17 ".kit[15:16]"  10 18;
createNode animCurveTA -n "center_tail_1_anim_rotateZ";
	rename -uid "9899D67E-4AEB-FE40-4600-8E9BD791BB48";
	setAttr ".tan" 18;
	setAttr -s 20 ".ktv[0:19]"  1 0 8 0 14 0 21 2.4215099229395585 28 4.2248258781934949
		 39 -27.296284224287273 44 2.578029315030903 47 -15.0350363845491 60 -10.493582793209047
		 76 -12.659379540435104 82 15.86270518467348 88 0 90 -14.821093548530797 96 -3.1453240162231784
		 102 12.590344434449136 109 -5.1017014885836733 116 3.499763141260722 120 1.0245752175386351
		 126 1.0839993219750654 140 0;
	setAttr -s 20 ".kit[18:19]"  10 18;
createNode animCurveTA -n "center_tail_2_anim_rotateX";
	rename -uid "933792F0-4546-D709-0B1D-B3A39A4C5467";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0 8 0 14 0 21 0 28 0 31 -4.9721558995944095
		 39 0 47 0 82 0 88 0 98 6.8215957940210297 102 0 109 -1.0659267993083286 120 6.9380464357675189
		 140 0;
createNode animCurveTA -n "center_tail_2_anim_rotateY";
	rename -uid "BB8C5076-4241-C843-2FAB-A981EFEE6C22";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 -3.4623345914503623 21 0 28 0
		 31 2.9279007591375827 39 0 47 0 82 0 88 0 102 0 109 -13.527428635692038 120 -23.559686744787484
		 140 0;
createNode animCurveTA -n "center_tail_2_anim_rotateZ";
	rename -uid "5A15C19C-49EE-A692-5889-6B8D965DA0DB";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 0 8 0 14 0 21 10.289230305252191 28 11.915080868600979
		 31 15.403560704737474 39 -9.3814234856923235 47 0 76 -16.301010868218633 82 0 88 0
		 98 23.574490915981752 102 14.021474997611678 109 -0.15620736427793611 120 -8.9123143468310175
		 140 0;
createNode animCurveTA -n "center_tail_3_anim_rotateX";
	rename -uid "682FA0AB-47D7-FC95-B9A4-CF94E7B53F02";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  1 0 8 0 14 0 21 0 28 0 31 -0.27872465026899645
		 39 -1.4733331805156398 47 0 82 0 88 0 93 -7.4780790959451089 98 -12.686945176051445
		 102 -15.288669676778117 106 -2.2973384563663024 109 -5.5976670238710406 118 -2.5774734424928685
		 120 0 140 0;
createNode animCurveTA -n "center_tail_3_anim_rotateY";
	rename -uid "0AA66C08-4B6C-FCB0-03A5-449FDA0659BD";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  1 0 8 0 14 0 21 -11.627823688050642 28 0
		 31 -0.018442983943738046 39 -0.41259906308456717 47 0 82 0 88 0 93 -1.8567249494819624
		 98 1.3760655525528722 102 1.9349030994010317 106 -1.4610947544657553 109 -3.702683629644361
		 118 -0.57752260589764304 120 0 140 0;
createNode animCurveTA -n "center_tail_3_anim_rotateZ";
	rename -uid "A4FF01BA-4D9A-69C7-5527-B6A3F1378A5C";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  1 0 8 0 14 0 21 0 28 9.6492537342756837
		 31 11.858837896310437 39 -17.839133887362109 47 0 82 0 88 0 93 -13.865408597235598
		 98 0.75656633595255651 102 7.0413048732650374 106 16.170122834617914 109 10.060739215811171
		 118 23.726371704745301 120 0 140 0;
createNode animCurveTA -n "center_tail_4_anim_rotateX";
	rename -uid "1FBCD9C0-4C6C-5843-C7E2-74B594720AFC";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0 8 0 14 0 21 0 28 0.068676207898887079
		 31 3.9533186912119245 39 0 47 0 82 0 88 0 102 0 109 0 120 0 126 -9.6410736525714444
		 140 0;
	setAttr -s 15 ".kit[13:14]"  10 18;
createNode animCurveTA -n "center_tail_4_anim_rotateY";
	rename -uid "AE6F8C41-4A0B-95A3-A166-7A84533995D8";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 0 8 0 14 0 21 0 28 -7.0708203532798075
		 31 1.7853562949468438 39 0 47 0 82 0 88 0 102 0 109 0 116 -17.335285249137456 120 0
		 126 1.6826790281315311 140 0;
	setAttr -s 16 ".kit[14:15]"  10 18;
createNode animCurveTA -n "center_tail_4_anim_rotateZ";
	rename -uid "75EADEED-4AD2-9CCB-A099-00BFEA26E88A";
	setAttr ".tan" 18;
	setAttr -s 21 ".ktv[0:20]"  1 0 8 0 14 0 21 -15.788841540053218 28 23.606464504269912
		 31 31.221790028066586 39 0 40 -25.043591474645307 47 0 60 0 82 0 84 19.289507369300416
		 88 0 102 0 106 -14.661408840343062 107 0 109 0 116 -36.685319945468564 120 17.687013514057856
		 126 24.726644666585322 140 0;
	setAttr -s 21 ".kit[19:20]"  10 18;
createNode animCurveTA -n "center_tail_5_anim_rotateX";
	rename -uid "B21A1420-490B-53F8-FA90-BB82532F2A3C";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0 8 0 14 0 21 0 28 -3.4456682589547785
		 31 0 39 0 47 0 82 0 88 0 102 0 109 0 118 -3.4700137840364635 120 0 140 0;
createNode animCurveTA -n "center_tail_5_anim_rotateY";
	rename -uid "83199595-479D-6B43-6617-50B99E63D320";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0 8 0 14 0 21 0 28 0.31540262381127948
		 31 0 39 0 47 0 82 0 88 0 102 0 109 0 118 1.9524432734710706 120 0 140 0;
createNode animCurveTA -n "center_tail_5_anim_rotateZ";
	rename -uid "F954D3D2-4F23-B328-B8FD-1FBA1FBBFF76";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 8 0 14 0 21 0 28 -14.500277467638712
		 31 0 39 0 40 -20.44146987939321 47 10.694491362011622 53 -5.3750501967487363 82 0
		 84 31.060306015068353 88 0 94 -24.931547211261403 102 0 109 25.872183081119214 118 -32.060086531192894
		 120 0 140 0;
createNode animCurveTA -n "center_tail_6_anim_rotateX";
	rename -uid "6D12F018-4095-4320-191C-CAA7366B458B";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 8 0 14 0 21 0 28 0 31 2.2406817520317328
		 39 0 47 0 82 0 88 0.016696469804474246 93 1.7261271459268372 94 1.4385872798630661
		 100 -7.665060353655619 102 -8.3447174883856476 107 12.974988892496622 109 16.912462111423558
		 118 7.8728199721744474 120 14.728784980634014 140 0;
createNode animCurveTA -n "center_tail_6_anim_rotateY";
	rename -uid "382E2204-472A-684D-BC3D-9481459B9CB4";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 8 0 14 0 21 0 28 0 31 0.72121483987359847
		 39 0 47 0 82 0 88 0.024602242327833198 93 -10.943990612595545 94 -13.44267490145781
		 100 -16.727721535743317 102 -14.738209050605857 107 -4.7892216695459267 109 5.189807432637215
		 118 16.774026359639642 120 12.399445506383085 140 0;
createNode animCurveTA -n "center_tail_6_anim_rotateZ";
	rename -uid "8B3B7313-4C2C-06A7-1BF3-3B92DBDE764D";
	setAttr ".tan" 18;
	setAttr -s 21 ".ktv[0:20]"  1 0 8 0 14 0 21 0 28 -19.11097295875922
		 31 30.439666229065825 39 0 47 18.951467497735791 56 -13.369146231086885 82 0 88 34.163030476922749
		 91 30.547347102217177 93 -9.4478771731146534 94 -20.216128327113577 100 -13.887617178786543
		 102 0.90643334225127337 107 5.3426199032375674 109 0.323671087176853 118 5.5267563041607488
		 120 29.65117810749258 140 0;
createNode animCurveTA -n "left_flipper_1_anim_rotateX";
	rename -uid "D3226BEA-4315-C4AE-8026-4AB854F4A736";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 0 8 0 14 5.5038507585719039 21 0 28 0
		 39 0 47 0 60 -25.849154073166062 82 -20.523983672780599 86 -43.226881459250691 90 0
		 93 0.031132282469302028 106 5.9822877879139797 124 0 132 0 140 0;
createNode animCurveTA -n "left_flipper_1_anim_rotateY";
	rename -uid "D978D090-4A45-7086-8A03-1BB8C79CF2D0";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0 8 0 14 15.123359016990973 21 0 28 0
		 39 0 47 0 60 -13.973969915787778 82 -22.847678466744615 90 0 93 -14.867829190601912
		 106 9.0722233670002268 124 0 132 0 140 0;
createNode animCurveTA -n "left_flipper_1_anim_rotateZ";
	rename -uid "2B23A030-451B-33F3-0651-5CAF34478C57";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0 8 0 14 12.892973739914057 21 0 28 0
		 39 0 47 0 60 -1.187511514646227 82 7.2854214661109147 90 0 93 -0.013453615233872208
		 106 28.911420404501953 124 0 132 0 140 0;
createNode animCurveTA -n "left_flipper_2_anim_rotateX";
	rename -uid "9FD8C08F-46A3-7B81-D37A-7AAC1D26DE51";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 124 0 132 0 140 0;
createNode animCurveTA -n "left_flipper_2_anim_rotateY";
	rename -uid "EA37CD7B-4A49-3D25-A383-7EBE9CC5D2F6";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 93 0 106 -16.813178820912643 124 0 132 0 140 0;
createNode animCurveTA -n "left_flipper_2_anim_rotateZ";
	rename -uid "6BB514A2-4D08-031A-7E14-2F94E07F64B3";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 124 0 132 0 140 0;
createNode animCurveTA -n "left_flipper_3_anim_rotateX";
	rename -uid "A9FC03E2-4B08-A720-8A92-A796DCEC8BEA";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 124 0 132 0 140 0;
createNode animCurveTA -n "left_flipper_3_anim_rotateY";
	rename -uid "04C8A3C7-49E4-4340-FB58-C0B67B13A982";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 124 0 132 0 140 0;
createNode animCurveTA -n "left_flipper_3_anim_rotateZ";
	rename -uid "DB0BBBD0-4D56-6AAE-280D-1A83C1874F1C";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 124 0 132 0 140 0;
createNode animCurveTA -n "left_fluke_1_anim_rotateX";
	rename -uid "3688AD65-4665-6D06-9984-91A9A40697AA";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 102 0 109 0 120 0 140 0;
createNode animCurveTA -n "left_fluke_1_anim_rotateY";
	rename -uid "66C566AB-4AF9-657C-32CA-95950AEDE3E2";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 102 0 109 0 120 0 140 0;
createNode animCurveTA -n "left_fluke_1_anim_rotateZ";
	rename -uid "1FC971B2-4FE0-6B5A-81B8-F299E431809A";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 102 0 109 0 120 0 140 0;
createNode animCurveTA -n "left_fluke_2_anim_rotateX";
	rename -uid "E3FC62F3-4CED-2BBA-1577-DAA57A6DFAC1";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 104 0 111 0 120 0 140 0;
createNode animCurveTA -n "left_fluke_2_anim_rotateY";
	rename -uid "80506B2F-461D-C356-82BF-6583C459A81F";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 104 0 111 0 120 0 140 0;
createNode animCurveTA -n "left_fluke_2_anim_rotateZ";
	rename -uid "15BF69E2-4D90-DF0C-3FDB-37B2299538D8";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 104 0 111 0 120 0 140 0;
createNode animCurveTA -n "left_fluke_3_anim_rotateX";
	rename -uid "C34BBD6B-4CA0-64D2-7CE5-68B58D26CB14";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 104 0 111 0 120 0 140 0;
createNode animCurveTA -n "left_fluke_3_anim_rotateY";
	rename -uid "E2266A93-4B14-0471-0674-4EBACBD5825A";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 104 0 111 0 120 0 140 0;
createNode animCurveTA -n "left_fluke_3_anim_rotateZ";
	rename -uid "A0F64505-4E9A-B07F-DA34-6DA51E65DA60";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 104 0 111 0 120 0 140 0;
createNode animCurveTA -n "right_flipper_1_anim_rotateX";
	rename -uid "4DFB41B9-429A-6BE3-5A63-9B85FC848BE3";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 0 8 0 14 -2.1713631419382828 21 0 28 0
		 39 0 47 0 54 0 58 13.277157468850922 62 30.904103805383386 65 -13.321854706254253
		 68 25.048154574652049 72 -9.8252353709425577 79 -2.7977745763929902 82 0 86 -4.1824982657761236
		 90 0 93 0.029561332910872363 106 -5.4961205143376128 124 0 132 0 140 0;
createNode animCurveTA -n "right_flipper_1_anim_rotateY";
	rename -uid "52F5B89A-4507-9518-7C6B-AAA8CE3FBDE2";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 0 8 0 14 -15.631498625598489 21 0 28 0
		 39 0 47 0 54 0 58 -47.472924244471827 62 -38.640319397776551 65 -42.917057100505922
		 68 -36.582685276574871 72 -39.092447050230533 79 -19.797535729762583 82 0 86 13.606359117341848
		 90 0 93 27.860713279415126 106 -2.5012464689043599 124 0 132 24.415066679420267 140 0;
createNode animCurveTA -n "right_flipper_1_anim_rotateZ";
	rename -uid "A372F724-4D8A-CE13-5DDA-E09A8D6E81CF";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 0 8 0 14 8.0097924242028462 21 0 28 0
		 39 0 47 0 54 0 58 -84.925332330610587 62 -109.37848824943151 65 -41.874339402190174
		 68 -89.810597189354397 72 -32.455046119287402 79 -1.6916321398797429 82 0 86 -17.268045328782776
		 90 0 93 0.049255129772642396 106 34.623486014271613 124 0 132 0 140 0;
createNode animCurveTA -n "right_flipper_2_anim_rotateX";
	rename -uid "5F8AED31-4742-FE4C-6487-82A2F6FD811B";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 124 0 132 0 140 0;
createNode animCurveTA -n "right_flipper_2_anim_rotateY";
	rename -uid "1571ECB7-46C3-1406-0CBB-69AEC31C5061";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 -9.4251422023790283
		 106 0 124 0 132 0 140 0;
createNode animCurveTA -n "right_flipper_2_anim_rotateZ";
	rename -uid "A71963B9-47E5-120A-3644-BEA01A42A67F";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 124 0 132 0 140 0;
createNode animCurveTA -n "right_flipper_3_anim_rotateX";
	rename -uid "897712D2-4F70-44CC-5230-A7BCEEFCE546";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 124 0 132 0 140 0;
createNode animCurveTA -n "right_flipper_3_anim_rotateY";
	rename -uid "03CF20AE-478B-7194-9B44-09BF26D32B80";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 124 0 132 0 140 0;
createNode animCurveTA -n "right_flipper_3_anim_rotateZ";
	rename -uid "CC17291B-4919-0DE5-6783-9E9C42EEAC10";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 124 0 132 0 140 0;
createNode animCurveTA -n "right_fluke_1_anim_rotateX";
	rename -uid "D1F73CDC-4B68-4F15-0FB7-519B0AE807F9";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 102 0 109 0 120 0 140 0;
createNode animCurveTA -n "right_fluke_1_anim_rotateY";
	rename -uid "FAB1C4E3-41A5-0A1C-55E4-03B631B7F71F";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 102 0 109 0 120 0 140 0;
createNode animCurveTA -n "right_fluke_1_anim_rotateZ";
	rename -uid "8767A522-4290-BAEF-C872-2487EB998319";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 102 0 109 0 120 0 140 0;
createNode animCurveTA -n "right_fluke_2_anim_rotateX";
	rename -uid "74BFA676-46F7-4F26-E70C-76AA8FEBF8B2";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 96 0 102 0 109 0 120 0 140 0;
createNode animCurveTA -n "right_fluke_2_anim_rotateY";
	rename -uid "9C13F70A-4792-E2F9-B1E6-57917A5A9252";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 96 0 102 0 109 0 120 0 140 0;
createNode animCurveTA -n "right_fluke_2_anim_rotateZ";
	rename -uid "48A1C0D0-4F52-B119-C20F-9AA65FDB6ACC";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 96 0 102 0 109 0 120 0 140 0;
createNode animCurveTA -n "right_fluke_3_anim_rotateX";
	rename -uid "532D5358-43D6-F356-44B4-A586F66CCF89";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 96 0 102 0 109 0 120 0 140 0;
createNode animCurveTA -n "right_fluke_3_anim_rotateY";
	rename -uid "A4F3AD55-4B43-346A-CCA5-A29AC5B201F3";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 96 0 102 0 109 0 120 0 140 0;
createNode animCurveTA -n "right_fluke_3_anim_rotateZ";
	rename -uid "B4FC0192-4AB5-6586-95A5-06B038F2085E";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 96 0 102 0 109 0 120 0 140 0;
createNode animCurveTU -n "center_spine_1_anim_center_swim_influence";
	rename -uid "1A5F310D-4C88-C545-6180-18A51B036516";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 90 1
		 106 1 116 1 124 1 132 1 140 1;
createNode animCurveTU -n "center_spine_2_anim_center_swim_influence";
	rename -uid "ACDAD1D5-4D8D-5E84-931D-EB99026D140A";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 66 1 82 1
		 88 1 102 1 109 1 120 1 140 1;
createNode animCurveTU -n "center_tail_1_anim_center_swim_influence";
	rename -uid "0B1C37BF-4702-5F96-3E1A-C6A5DBC7DEE7";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 88 1
		 102 1 109 1 120 1 140 1;
createNode animCurveTU -n "center_tail_1_anim_tail_flap_offset";
	rename -uid "620672EA-4E8F-3395-A3EE-F7ABE6766000";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 102 0 109 0 120 0 140 0;
createNode animCurveTU -n "center_tail_1_anim_tail_flap_height";
	rename -uid "1696F2DB-444D-1868-0734-CDBEF2ADDFE9";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 102 0 109 0 120 0 140 0;
createNode animCurveTU -n "center_tail_1_anim_tail_flap_length";
	rename -uid "40671906-44A1-3885-58D2-09B65415A687";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 5 8 5 14 5 21 5 28 5 39 5 47 5 82 5 88 5
		 102 5 109 5 120 5 140 5;
createNode animCurveTU -n "center_tail_1_anim_center_tail_flap_influence";
	rename -uid "846F18B9-413C-799C-ED75-EC83F46AF868";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 88 1
		 102 1 109 1 120 1 140 1;
createNode animCurveTU -n "center_tail_1_anim_display_deformer";
	rename -uid "22331C7E-4D25-A08A-BF6C-64B0A86F6848";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 88 0
		 102 0 109 0 120 0 140 0;
createNode animCurveTU -n "center_tail_2_anim_center_swim_influence";
	rename -uid "B77F63C4-48DA-A1CC-06B1-CE959F449B4F";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 88 1
		 102 1 109 1 120 1 140 1;
createNode animCurveTU -n "center_tail_2_anim_center_tail_flap_influence";
	rename -uid "7F04960A-4250-388A-861A-549B7B8496A1";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 88 1
		 102 1 109 1 120 1 140 1;
createNode animCurveTU -n "center_tail_3_anim_center_swim_influence";
	rename -uid "4B19E674-42B2-E92D-CF18-A883E1A6429F";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 88 1
		 102 1 109 1 120 1 140 1;
createNode animCurveTU -n "center_tail_3_anim_center_tail_flap_influence";
	rename -uid "7CC5B8A8-4E4B-69F2-4B52-9487F891F9BA";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 88 1
		 102 1 109 1 120 1 140 1;
createNode animCurveTU -n "center_tail_4_anim_center_swim_influence";
	rename -uid "FAC73B3B-4943-7C6C-D251-0F8775B3E354";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 88 1
		 102 1 109 1 120 1 140 1;
createNode animCurveTU -n "center_tail_4_anim_center_tail_flap_influence";
	rename -uid "3C4B4AFC-4000-0097-D0AC-BFAA07C7C6C2";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 88 1
		 102 1 109 1 120 1 140 1;
createNode animCurveTU -n "center_tail_5_anim_center_swim_influence";
	rename -uid "5E22AD78-4782-5B86-7692-E49102499878";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 88 1
		 102 1 109 1 120 1 140 1;
createNode animCurveTU -n "center_tail_5_anim_center_tail_flap_influence";
	rename -uid "174F2E44-41CB-F5B5-98B4-33B6FDCB7701";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 88 1
		 102 1 109 1 120 1 140 1;
createNode animCurveTU -n "center_tail_6_anim_center_swim_influence";
	rename -uid "D80635A9-4D37-30E2-71F0-7582FB05B1D2";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 88 1
		 120 1 140 1;
createNode animCurveTU -n "center_tail_6_anim_center_tail_flap_influence";
	rename -uid "0C4C5B46-4B3B-590D-CF4E-C991C0862A23";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 1 8 1 14 1 21 1 28 1 39 1 47 1 82 1 88 1
		 120 1 140 1;
createNode animCurveTU -n "center_neck_anim_parent_to";
	rename -uid "41DC299A-4998-D687-4F4E-E48B8451EBDA";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 73 0 82 0
		 90 0 106 0 116 0 124 0 132 0 140 0;
createNode animCurveTU -n "center_head_anim_parent_to";
	rename -uid "49FA0BA0-4321-15E0-415F-54B1988E2A08";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 106 0 116 0 124 0 132 0 140 0;
createNode animCurveTU -n "center_jaw_anim_parent_to";
	rename -uid "7F29ED90-45A1-72C6-BB26-1CA68308835A";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_upperlid_1_anim_translateX";
	rename -uid "3A279330-4857-0DB5-1C9C-EB8A02F1D3D8";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_upperlid_1_anim_translateY";
	rename -uid "C184E82C-4F37-2646-6A0A-14995265B103";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -8.8817841970012523e-016 8 -8.8817841970012523e-016
		 14 -8.8817841970012523e-016 21 -8.8817841970012523e-016 28 -8.8817841970012523e-016
		 39 -8.8817841970012523e-016 47 -8.8817841970012523e-016 82 -8.8817841970012523e-016
		 90 -8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_upperlid_1_anim_translateZ";
	rename -uid "BA7C3A42-4389-55BF-1C71-EF9F6D8288CE";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -1.7763568394002505e-015 8 -1.7763568394002505e-015
		 14 -1.7763568394002505e-015 21 -1.7763568394002505e-015 28 -1.7763568394002505e-015
		 39 -1.7763568394002505e-015 47 -1.7763568394002505e-015 82 -1.7763568394002505e-015
		 90 -1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_upperlid_2_anim_translateX";
	rename -uid "F8FE344C-40C3-1DFE-09AE-1AB9FF2C1FC5";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 8.8817841970012523e-016 8 8.8817841970012523e-016
		 14 8.8817841970012523e-016 21 8.8817841970012523e-016 28 8.8817841970012523e-016
		 39 8.8817841970012523e-016 47 8.8817841970012523e-016 82 8.8817841970012523e-016
		 90 8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_upperlid_2_anim_translateY";
	rename -uid "ED343B09-473D-0B22-94BE-8A8777D50829";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_upperlid_2_anim_translateZ";
	rename -uid "5C1DF29C-4C9E-C6B1-6BC4-93B20BE50D9B";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_upperlid_3_anim_translateX";
	rename -uid "B2D4F85C-4E19-74AB-1FEB-CF96257A2F1F";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 1.7763568394002505e-015 8 1.7763568394002505e-015
		 14 1.7763568394002505e-015 21 1.7763568394002505e-015 28 1.7763568394002505e-015
		 39 1.7763568394002505e-015 47 1.7763568394002505e-015 82 1.7763568394002505e-015
		 90 1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_upperlid_3_anim_translateY";
	rename -uid "4C4A5FC3-4222-2FA4-5EAE-A0BCE221FC94";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_upperlid_3_anim_translateZ";
	rename -uid "5DBD4DB4-40AC-2EC2-F866-318D0E432DFC";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -1.7763568394002505e-015 8 -1.7763568394002505e-015
		 14 -1.7763568394002505e-015 21 -1.7763568394002505e-015 28 -1.7763568394002505e-015
		 39 -1.7763568394002505e-015 47 -1.7763568394002505e-015 82 -1.7763568394002505e-015
		 90 -1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lowerlid_1_anim_translateX";
	rename -uid "384ACA38-476C-E7E1-4F12-D09CD41659E7";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lowerlid_1_anim_translateY";
	rename -uid "E96220E0-4B15-2756-3863-E993A7648185";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lowerlid_1_anim_translateZ";
	rename -uid "38A8A105-49A1-353A-5069-289D0324027B";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 1.7763568394002505e-015 8 1.7763568394002505e-015
		 14 1.7763568394002505e-015 21 1.7763568394002505e-015 28 1.7763568394002505e-015
		 39 1.7763568394002505e-015 47 1.7763568394002505e-015 82 1.7763568394002505e-015
		 90 1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lowerlid_2_anim_translateX";
	rename -uid "3B37F0C6-43AA-CC40-5536-54A393DAF2A2";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -1.7763568394002505e-015 8 -1.7763568394002505e-015
		 14 -1.7763568394002505e-015 21 -1.7763568394002505e-015 28 -1.7763568394002505e-015
		 39 -1.7763568394002505e-015 47 -1.7763568394002505e-015 82 -1.7763568394002505e-015
		 90 -1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lowerlid_2_anim_translateY";
	rename -uid "E1E4B288-4A82-EECB-F518-0FB54235DBC0";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 4.4408920985006262e-016 8 4.4408920985006262e-016
		 14 4.4408920985006262e-016 21 4.4408920985006262e-016 28 4.4408920985006262e-016
		 39 4.4408920985006262e-016 47 4.4408920985006262e-016 82 4.4408920985006262e-016
		 90 4.4408920985006262e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lowerlid_2_anim_translateZ";
	rename -uid "95A4F084-40E1-65EE-4E8B-E59B32F00052";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 1.7763568394002505e-015 8 1.7763568394002505e-015
		 14 1.7763568394002505e-015 21 1.7763568394002505e-015 28 1.7763568394002505e-015
		 39 1.7763568394002505e-015 47 1.7763568394002505e-015 82 1.7763568394002505e-015
		 90 1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lowerlid_3_anim_translateX";
	rename -uid "A0FC7E56-4297-FA42-1A30-46AC3DD8206C";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 8.8817841970012523e-016 8 8.8817841970012523e-016
		 14 8.8817841970012523e-016 21 8.8817841970012523e-016 28 8.8817841970012523e-016
		 39 8.8817841970012523e-016 47 8.8817841970012523e-016 82 8.8817841970012523e-016
		 90 8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lowerlid_3_anim_translateY";
	rename -uid "0CF1BA2B-4924-F03A-F1C3-B5A065AEEF0D";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -4.4408920985006262e-016 8 -4.4408920985006262e-016
		 14 -4.4408920985006262e-016 21 -4.4408920985006262e-016 28 -4.4408920985006262e-016
		 39 -4.4408920985006262e-016 47 -4.4408920985006262e-016 82 -4.4408920985006262e-016
		 90 -4.4408920985006262e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lowerlid_3_anim_translateZ";
	rename -uid "845355A0-4915-7625-3912-6B95CA05C192";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_innerlid_anim_translateX";
	rename -uid "B1CFDE5C-45FE-B89F-C909-1E9DAC08549C";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -8.8817841970012523e-016 8 -8.8817841970012523e-016
		 14 -8.8817841970012523e-016 21 -8.8817841970012523e-016 28 -8.8817841970012523e-016
		 39 -8.8817841970012523e-016 47 -8.8817841970012523e-016 82 -8.8817841970012523e-016
		 90 -8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_innerlid_anim_translateY";
	rename -uid "3ACE0919-46C3-3E6E-0FAB-E7A7321965FC";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_innerlid_anim_translateZ";
	rename -uid "9A145184-4391-2D43-AC9C-92AC8B4524CE";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_outerlid_anim_translateX";
	rename -uid "F758FF2C-4755-A061-E4BB-61A5EAD2BD93";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_outerlid_anim_translateY";
	rename -uid "E2E0340C-413C-A894-CB2B-B391D3120E02";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -8.8817841970012523e-016 8 -8.8817841970012523e-016
		 14 -8.8817841970012523e-016 21 -8.8817841970012523e-016 28 -8.8817841970012523e-016
		 39 -8.8817841970012523e-016 47 -8.8817841970012523e-016 82 -8.8817841970012523e-016
		 90 -8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_outerlid_anim_translateZ";
	rename -uid "6E46CD98-4414-D52A-922E-D8A8C2469F79";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 3.5527136788005009e-015 8 3.5527136788005009e-015
		 14 3.5527136788005009e-015 21 3.5527136788005009e-015 28 3.5527136788005009e-015
		 39 3.5527136788005009e-015 47 3.5527136788005009e-015 82 3.5527136788005009e-015
		 90 3.5527136788005009e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lip_1_anim_translateX";
	rename -uid "F8F2C320-4D6A-31FF-CF83-9B83C5F26A9E";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 8.8817841970012523e-016 8 8.8817841970012523e-016
		 14 8.8817841970012523e-016 21 8.8817841970012523e-016 28 8.8817841970012523e-016
		 39 8.8817841970012523e-016 47 8.8817841970012523e-016 82 8.8817841970012523e-016
		 90 8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lip_1_anim_translateY";
	rename -uid "727E914A-461A-E77F-2986-30B033B0177F";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lip_1_anim_translateZ";
	rename -uid "875A4556-43F1-D2F9-004F-638FDF4D342F";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lip_2_anim_translateX";
	rename -uid "6CEF3BEE-4DDF-B907-3C5D-B48A94FD1682";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 61 -0.0019078922095242788
		 82 0 90 0 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lip_2_anim_translateY";
	rename -uid "A68970AF-4BFA-9639-B661-FD84BF338CA2";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 61 0.024767396790236526
		 82 0 90 0 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lip_2_anim_translateZ";
	rename -uid "01E4063F-4E01-9E68-AF81-AEBDD7D8E37B";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 8.8817841970012523e-016 8 8.8817841970012523e-016
		 14 8.8817841970012523e-016 21 8.8817841970012523e-016 28 8.8817841970012523e-016
		 39 8.8817841970012523e-016 47 8.8817841970012523e-016 61 -0.050575505796668856 82 8.8817841970012523e-016
		 90 8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lip_3_anim_translateX";
	rename -uid "BCFE5793-4344-7CE6-E2A9-C1BE619BC581";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -8.8817841970012523e-016 8 -8.8817841970012523e-016
		 14 -8.8817841970012523e-016 21 -8.8817841970012523e-016 28 -8.8817841970012523e-016
		 39 -8.8817841970012523e-016 47 -8.8817841970012523e-016 82 -8.8817841970012523e-016
		 90 -8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lip_3_anim_translateY";
	rename -uid "F55469AC-4753-3389-3E40-638B1D8D5714";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "left_lip_3_anim_translateZ";
	rename -uid "4A2F7AE5-4433-9FF0-5E6B-1C999DC4C159";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -1.7763568394002505e-015 8 -1.7763568394002505e-015
		 14 -1.7763568394002505e-015 21 -1.7763568394002505e-015 28 -1.7763568394002505e-015
		 39 -1.7763568394002505e-015 47 -1.7763568394002505e-015 82 -1.7763568394002505e-015
		 90 -1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_upperlid_1_anim_translateX";
	rename -uid "8E164021-49CA-5DC8-5211-CFBC65C83AED";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -8.8817841970012523e-016 8 -8.8817841970012523e-016
		 14 -8.8817841970012523e-016 21 -8.8817841970012523e-016 28 -8.8817841970012523e-016
		 39 -8.8817841970012523e-016 47 -8.8817841970012523e-016 82 -8.8817841970012523e-016
		 90 -8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_upperlid_1_anim_translateY";
	rename -uid "CFE9C103-4388-44D4-8202-859A7AB902B9";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 8.8817841970012523e-016 8 8.8817841970012523e-016
		 14 8.8817841970012523e-016 21 8.8817841970012523e-016 28 8.8817841970012523e-016
		 39 8.8817841970012523e-016 47 8.8817841970012523e-016 82 8.8817841970012523e-016
		 90 8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_upperlid_1_anim_translateZ";
	rename -uid "92F1EF20-4743-5874-7087-568D19824003";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 1.7763568394002505e-015 8 1.7763568394002505e-015
		 14 1.7763568394002505e-015 21 1.7763568394002505e-015 28 1.7763568394002505e-015
		 39 1.7763568394002505e-015 47 1.7763568394002505e-015 82 1.7763568394002505e-015
		 90 1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_upperlid_2_anim_translateX";
	rename -uid "D4527B46-4CFF-8BE5-5D6A-5294AFACA698";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 8.8817841970012523e-016 8 8.8817841970012523e-016
		 14 8.8817841970012523e-016 21 8.8817841970012523e-016 28 8.8817841970012523e-016
		 39 8.8817841970012523e-016 47 8.8817841970012523e-016 82 8.8817841970012523e-016
		 90 8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_upperlid_2_anim_translateY";
	rename -uid "8F30A3FF-49A3-8E60-FA20-ED8560A693C1";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 8.8817841970012523e-016 8 8.8817841970012523e-016
		 14 8.8817841970012523e-016 21 8.8817841970012523e-016 28 8.8817841970012523e-016
		 39 8.8817841970012523e-016 47 8.8817841970012523e-016 82 8.8817841970012523e-016
		 90 8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_upperlid_2_anim_translateZ";
	rename -uid "226F417B-45DB-1C0E-8AFD-CD9B9971BD0D";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_upperlid_3_anim_translateX";
	rename -uid "AEEC5483-4B15-379E-DF5E-F8AFF49EF02F";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_upperlid_3_anim_translateY";
	rename -uid "93584671-47D4-908F-2408-C48A2F218996";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_upperlid_3_anim_translateZ";
	rename -uid "12C375D7-4727-0B16-AE54-8B84FFF7229D";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -1.7763568394002505e-015 8 -1.7763568394002505e-015
		 14 -1.7763568394002505e-015 21 -1.7763568394002505e-015 28 -1.7763568394002505e-015
		 39 -1.7763568394002505e-015 47 -1.7763568394002505e-015 82 -1.7763568394002505e-015
		 90 -1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lowerlid_1_anim_translateX";
	rename -uid "6020B7BE-46C2-1FDA-01EA-CAA214DF6FF7";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 1.7763568394002505e-015 8 1.7763568394002505e-015
		 14 1.7763568394002505e-015 21 1.7763568394002505e-015 28 1.7763568394002505e-015
		 39 1.7763568394002505e-015 47 1.7763568394002505e-015 82 1.7763568394002505e-015
		 90 1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lowerlid_1_anim_translateY";
	rename -uid "4900345D-4F31-70E7-F3DC-3C8F4D4EECCE";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -8.8817841970012523e-016 8 -8.8817841970012523e-016
		 14 -8.8817841970012523e-016 21 -8.8817841970012523e-016 28 -8.8817841970012523e-016
		 39 -8.8817841970012523e-016 47 -8.8817841970012523e-016 82 -8.8817841970012523e-016
		 90 -8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lowerlid_1_anim_translateZ";
	rename -uid "0BEDE368-4A57-2EB0-ED08-B7AC64B11EEC";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lowerlid_2_anim_translateX";
	rename -uid "79240F87-42A9-EC24-4DA0-CBA523092AD3";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lowerlid_2_anim_translateY";
	rename -uid "63D5A4DE-4E6F-73E6-3721-C3A808A1D4D7";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -1.3322676295501878e-015 8 -1.3322676295501878e-015
		 14 -1.3322676295501878e-015 21 -1.3322676295501878e-015 28 -1.3322676295501878e-015
		 39 -1.3322676295501878e-015 47 -1.3322676295501878e-015 82 -1.3322676295501878e-015
		 90 -1.3322676295501878e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lowerlid_2_anim_translateZ";
	rename -uid "2EEA4146-4661-EE68-6BFC-1D9D6FAFC196";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -1.7763568394002505e-015 8 -1.7763568394002505e-015
		 14 -1.7763568394002505e-015 21 -1.7763568394002505e-015 28 -1.7763568394002505e-015
		 39 -1.7763568394002505e-015 47 -1.7763568394002505e-015 82 -1.7763568394002505e-015
		 90 -1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lowerlid_3_anim_translateX";
	rename -uid "105045E2-420E-9AF6-3758-5D9D0D95E700";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lowerlid_3_anim_translateY";
	rename -uid "87035968-4F44-D771-54B6-21B5029F6372";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -1.3322676295501878e-015 8 -1.3322676295501878e-015
		 14 -1.3322676295501878e-015 21 -1.3322676295501878e-015 28 -1.3322676295501878e-015
		 39 -1.3322676295501878e-015 47 -1.3322676295501878e-015 82 -1.3322676295501878e-015
		 90 -1.3322676295501878e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lowerlid_3_anim_translateZ";
	rename -uid "1E238ECC-417D-A44A-6970-9E906DD730FD";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_innerlid_anim_translateX";
	rename -uid "18FF197E-43F3-2E72-A5CF-78B882CCDE01";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_innerlid_anim_translateY";
	rename -uid "48261F2C-4A2A-1A14-70DD-CB83AA4990DC";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -1.7763568394002505e-015 8 -1.7763568394002505e-015
		 14 -1.7763568394002505e-015 21 -1.7763568394002505e-015 28 -1.7763568394002505e-015
		 39 -1.7763568394002505e-015 47 -1.7763568394002505e-015 82 -1.7763568394002505e-015
		 90 -1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_innerlid_anim_translateZ";
	rename -uid "D3CD9A2C-4475-C812-C4D6-EB8091235FEF";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_outerlid_anim_translateX";
	rename -uid "0C26B80E-4F7C-CA9B-5B92-32900283FE50";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -8.8817841970012523e-016 8 -8.8817841970012523e-016
		 14 -8.8817841970012523e-016 21 -8.8817841970012523e-016 28 -8.8817841970012523e-016
		 39 -8.8817841970012523e-016 47 -8.8817841970012523e-016 82 -8.8817841970012523e-016
		 90 -8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_outerlid_anim_translateY";
	rename -uid "7345A7BF-4C3D-759F-3C91-85B68461BFDE";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -8.8817841970012523e-016 8 -8.8817841970012523e-016
		 14 -8.8817841970012523e-016 21 -8.8817841970012523e-016 28 -8.8817841970012523e-016
		 39 -8.8817841970012523e-016 47 -8.8817841970012523e-016 82 -8.8817841970012523e-016
		 90 -8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_outerlid_anim_translateZ";
	rename -uid "A822753A-4B15-2FFD-D0ED-E9AFFA928D5A";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -3.5527136788005009e-015 8 -3.5527136788005009e-015
		 14 -3.5527136788005009e-015 21 -3.5527136788005009e-015 28 -3.5527136788005009e-015
		 39 -3.5527136788005009e-015 47 -3.5527136788005009e-015 82 -3.5527136788005009e-015
		 90 -3.5527136788005009e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lip_1_anim_translateX";
	rename -uid "FA5180C6-445B-5FDE-D4F7-FC8BAE14DC3F";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lip_1_anim_translateY";
	rename -uid "0381C519-4C1F-C245-F0A0-138373CBBBB3";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 4.4408920985006262e-016 8 4.4408920985006262e-016
		 14 4.4408920985006262e-016 21 4.4408920985006262e-016 28 4.4408920985006262e-016
		 39 4.4408920985006262e-016 47 4.4408920985006262e-016 82 4.4408920985006262e-016
		 90 4.4408920985006262e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lip_1_anim_translateZ";
	rename -uid "1847962C-47E0-05DB-E4E9-71A1E9557101";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 -1.7763568394002505e-015 8 -1.7763568394002505e-015
		 14 -1.7763568394002505e-015 21 -1.7763568394002505e-015 28 -1.7763568394002505e-015
		 39 -1.7763568394002505e-015 47 -1.7763568394002505e-015 82 -1.7763568394002505e-015
		 90 -1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lip_2_anim_translateX";
	rename -uid "11A836B7-4D45-2CC3-DBA2-3CB465C609A0";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 8.8817841970012523e-016 8 8.8817841970012523e-016
		 14 8.8817841970012523e-016 21 8.8817841970012523e-016 28 8.8817841970012523e-016
		 39 8.8817841970012523e-016 47 8.8817841970012523e-016 61 -0.016937498538450044 82 8.8817841970012523e-016
		 90 8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lip_2_anim_translateY";
	rename -uid "4A6EB35B-4BBE-72F7-3ABD-129C510876DB";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 -1.7763568394002505e-015 8 -1.7763568394002505e-015
		 14 -1.7763568394002505e-015 21 -1.7763568394002505e-015 28 -1.7763568394002505e-015
		 39 -1.7763568394002505e-015 47 -1.7763568394002505e-015 61 0.018170997212814424 82 -1.7763568394002505e-015
		 90 -1.7763568394002505e-015 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lip_2_anim_translateZ";
	rename -uid "F8C97D6B-4CDB-C1F2-E8C8-25A252D36FE2";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 61 -0.050575505796669577
		 82 0 90 0 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lip_3_anim_translateX";
	rename -uid "37D5CFFB-4588-A727-54CD-5D899F370FBE";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 8.8817841970012523e-016 8 8.8817841970012523e-016
		 14 8.8817841970012523e-016 21 8.8817841970012523e-016 28 8.8817841970012523e-016
		 39 8.8817841970012523e-016 47 8.8817841970012523e-016 82 8.8817841970012523e-016
		 90 8.8817841970012523e-016 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lip_3_anim_translateY";
	rename -uid "4C8154F2-4C15-75E6-95EE-7FB26A4AE9FA";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "right_lip_3_anim_translateZ";
	rename -uid "41FB24A7-4D70-A596-C69F-EFB5AF3890BC";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "center_eye_aim_right_anim_translateX";
	rename -uid "52FFA7EA-462D-4052-57EE-DE90FD2D94C5";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "center_eye_aim_right_anim_translateY";
	rename -uid "EE117BC3-495C-141C-6D14-9F86D8CF0C6C";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "center_eye_aim_right_anim_translateZ";
	rename -uid "9BA5A52E-4D01-AED6-BDDF-2E99053A113B";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "center_eye_aim_left_anim_translateX";
	rename -uid "3662BD17-4A26-D8F8-7A20-E98BA91BA748";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "center_eye_aim_left_anim_translateY";
	rename -uid "A11A843E-4F47-F8C8-8376-088B29DD9630";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "center_eye_aim_left_anim_translateZ";
	rename -uid "D9060AB0-4863-7704-41BA-C48C250B778D";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "center_eye_aim_main_anim_translateX";
	rename -uid "649C4069-422E-0137-C0D1-2291FE9475A6";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "center_eye_aim_main_anim_translateY";
	rename -uid "EA7EC7D4-4574-9E32-FCA9-76945B57B0BA";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTL -n "center_eye_aim_main_anim_translateZ";
	rename -uid "1070DAFE-449F-32A4-20DE-E28F482A559C";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode animCurveTU -n "center_eye_aim_main_anim_parent_to";
	rename -uid "D15A5414-4672-9F97-EE46-5392DB6160F2";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  1 0 8 0 14 0 21 0 28 0 39 0 47 0 82 0 90 0
		 104 0 114 0 122 0 130 0 138 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A0F9DFDE-4166-5E16-A948-D5852E30F765";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 0\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 822\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n"
		+ "                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel5\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1914\n            -height 973\n            -sceneRenderFilter 0\n"
		+ "            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 0\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 0\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 822\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 0\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 0\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 822\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B34D13F0-4EDC-3396-B52B-7BA5E0C1622E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 164 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTA -n "left_upper_lid_base_end_anim_rotateZ";
	rename -uid "76211CA8-4184-BBF3-DAE9-E28C8F7869E5";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  68 36.292277030994292;
	setAttr ".kix[0]"  0.58333333333333326;
	setAttr ".kiy[0]"  0.044354094782202112;
	setAttr ".kox[0]"  0.29166666666666696;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "center_tail_end_anim_rotateZ";
	rename -uid "2811AB75-417F-9E14-6109-8EBD7AC4BB0D";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  82 18.897260249221748;
	setAttr ".kix[0]"  1.2083333333333333;
	setAttr ".kiy[0]"  0.21742616439880735;
	setAttr ".kox[0]"  0.25;
	setAttr ".koy[0]"  0;
select -ne :time1;
	setAttr ".o" 11;
	setAttr ".unw" 11;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 236 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 31 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -s 10 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "center_COG_anim_translateX.o" "lunaRN.phl[1]";
connectAttr "center_COG_anim_translateY.o" "lunaRN.phl[2]";
connectAttr "center_COG_anim_translateZ.o" "lunaRN.phl[3]";
connectAttr "center_COG_anim_rotateX.o" "lunaRN.phl[4]";
connectAttr "center_COG_anim_rotateY.o" "lunaRN.phl[5]";
connectAttr "center_COG_anim_rotateZ.o" "lunaRN.phl[6]";
connectAttr "center_COG_anim_display_deformer.o" "lunaRN.phl[7]";
connectAttr "center_COG_anim_swim_height.o" "lunaRN.phl[8]";
connectAttr "center_COG_anim_swim_length.o" "lunaRN.phl[9]";
connectAttr "center_COG_anim_swim_offset.o" "lunaRN.phl[10]";
connectAttr "center_spine_1_anim_rotateX.o" "lunaRN.phl[11]";
connectAttr "center_spine_1_anim_rotateY.o" "lunaRN.phl[12]";
connectAttr "center_spine_1_anim_rotateZ.o" "lunaRN.phl[13]";
connectAttr "center_spine_1_anim_center_swim_influence.o" "lunaRN.phl[14]";
connectAttr "center_spine_2_anim_rotateX.o" "lunaRN.phl[15]";
connectAttr "center_spine_2_anim_rotateY.o" "lunaRN.phl[16]";
connectAttr "center_spine_2_anim_rotateZ.o" "lunaRN.phl[17]";
connectAttr "center_spine_2_anim_center_swim_influence.o" "lunaRN.phl[18]";
connectAttr "center_tail_1_anim_rotateX.o" "lunaRN.phl[19]";
connectAttr "center_tail_1_anim_rotateY.o" "lunaRN.phl[20]";
connectAttr "center_tail_1_anim_rotateZ.o" "lunaRN.phl[21]";
connectAttr "center_tail_1_anim_display_deformer.o" "lunaRN.phl[22]";
connectAttr "center_tail_1_anim_center_swim_influence.o" "lunaRN.phl[23]";
connectAttr "center_tail_1_anim_tail_flap_height.o" "lunaRN.phl[24]";
connectAttr "center_tail_1_anim_tail_flap_length.o" "lunaRN.phl[25]";
connectAttr "center_tail_1_anim_tail_flap_offset.o" "lunaRN.phl[26]";
connectAttr "center_tail_1_anim_center_tail_flap_influence.o" "lunaRN.phl[27]";
connectAttr "center_tail_2_anim_rotateX.o" "lunaRN.phl[28]";
connectAttr "center_tail_2_anim_rotateY.o" "lunaRN.phl[29]";
connectAttr "center_tail_2_anim_rotateZ.o" "lunaRN.phl[30]";
connectAttr "center_tail_2_anim_center_swim_influence.o" "lunaRN.phl[31]";
connectAttr "center_tail_2_anim_center_tail_flap_influence.o" "lunaRN.phl[32]";
connectAttr "center_tail_3_anim_rotateX.o" "lunaRN.phl[33]";
connectAttr "center_tail_3_anim_rotateY.o" "lunaRN.phl[34]";
connectAttr "center_tail_3_anim_rotateZ.o" "lunaRN.phl[35]";
connectAttr "center_tail_3_anim_center_swim_influence.o" "lunaRN.phl[36]";
connectAttr "center_tail_3_anim_center_tail_flap_influence.o" "lunaRN.phl[37]";
connectAttr "center_tail_4_anim_rotateX.o" "lunaRN.phl[38]";
connectAttr "center_tail_4_anim_rotateY.o" "lunaRN.phl[39]";
connectAttr "center_tail_4_anim_rotateZ.o" "lunaRN.phl[40]";
connectAttr "center_tail_4_anim_center_swim_influence.o" "lunaRN.phl[41]";
connectAttr "center_tail_4_anim_center_tail_flap_influence.o" "lunaRN.phl[42]";
connectAttr "center_tail_5_anim_rotateX.o" "lunaRN.phl[43]";
connectAttr "center_tail_5_anim_rotateY.o" "lunaRN.phl[44]";
connectAttr "center_tail_5_anim_rotateZ.o" "lunaRN.phl[45]";
connectAttr "center_tail_5_anim_center_swim_influence.o" "lunaRN.phl[46]";
connectAttr "center_tail_5_anim_center_tail_flap_influence.o" "lunaRN.phl[47]";
connectAttr "center_tail_6_anim_rotateX.o" "lunaRN.phl[48]";
connectAttr "center_tail_6_anim_rotateY.o" "lunaRN.phl[49]";
connectAttr "center_tail_6_anim_rotateZ.o" "lunaRN.phl[50]";
connectAttr "center_tail_6_anim_center_swim_influence.o" "lunaRN.phl[51]";
connectAttr "center_tail_6_anim_center_tail_flap_influence.o" "lunaRN.phl[52]";
connectAttr "center_tail_end_anim_rotateZ.o" "lunaRN.phl[53]";
connectAttr "center_neck_anim_rotateX.o" "lunaRN.phl[54]";
connectAttr "center_neck_anim_rotateY.o" "lunaRN.phl[55]";
connectAttr "center_neck_anim_rotateZ.o" "lunaRN.phl[56]";
connectAttr "center_neck_anim_parent_to.o" "lunaRN.phl[57]";
connectAttr "center_head_anim_rotateX.o" "lunaRN.phl[58]";
connectAttr "center_head_anim_rotateY.o" "lunaRN.phl[59]";
connectAttr "center_head_anim_rotateZ.o" "lunaRN.phl[60]";
connectAttr "center_head_anim_parent_to.o" "lunaRN.phl[61]";
connectAttr "center_dorsal_fin_1_anim_rotateX.o" "lunaRN.phl[62]";
connectAttr "center_dorsal_fin_1_anim_rotateY.o" "lunaRN.phl[63]";
connectAttr "center_dorsal_fin_1_anim_rotateZ.o" "lunaRN.phl[64]";
connectAttr "center_dorsal_fin_2_anim_rotateX.o" "lunaRN.phl[65]";
connectAttr "center_dorsal_fin_2_anim_rotateY.o" "lunaRN.phl[66]";
connectAttr "center_dorsal_fin_2_anim_rotateZ.o" "lunaRN.phl[67]";
connectAttr "center_dorsal_fin_3_anim_rotateX.o" "lunaRN.phl[68]";
connectAttr "center_dorsal_fin_3_anim_rotateY.o" "lunaRN.phl[69]";
connectAttr "center_dorsal_fin_3_anim_rotateZ.o" "lunaRN.phl[70]";
connectAttr "left_flipper_1_anim_rotateX.o" "lunaRN.phl[71]";
connectAttr "left_flipper_1_anim_rotateY.o" "lunaRN.phl[72]";
connectAttr "left_flipper_1_anim_rotateZ.o" "lunaRN.phl[73]";
connectAttr "left_flipper_2_anim_rotateX.o" "lunaRN.phl[74]";
connectAttr "left_flipper_2_anim_rotateY.o" "lunaRN.phl[75]";
connectAttr "left_flipper_2_anim_rotateZ.o" "lunaRN.phl[76]";
connectAttr "left_flipper_3_anim_rotateX.o" "lunaRN.phl[77]";
connectAttr "left_flipper_3_anim_rotateY.o" "lunaRN.phl[78]";
connectAttr "left_flipper_3_anim_rotateZ.o" "lunaRN.phl[79]";
connectAttr "left_fluke_1_anim_rotateX.o" "lunaRN.phl[80]";
connectAttr "left_fluke_1_anim_rotateY.o" "lunaRN.phl[81]";
connectAttr "left_fluke_1_anim_rotateZ.o" "lunaRN.phl[82]";
connectAttr "left_fluke_2_anim_rotateX.o" "lunaRN.phl[83]";
connectAttr "left_fluke_2_anim_rotateY.o" "lunaRN.phl[84]";
connectAttr "left_fluke_2_anim_rotateZ.o" "lunaRN.phl[85]";
connectAttr "left_fluke_3_anim_rotateX.o" "lunaRN.phl[86]";
connectAttr "left_fluke_3_anim_rotateY.o" "lunaRN.phl[87]";
connectAttr "left_fluke_3_anim_rotateZ.o" "lunaRN.phl[88]";
connectAttr "right_flipper_1_anim_rotateX.o" "lunaRN.phl[89]";
connectAttr "right_flipper_1_anim_rotateY.o" "lunaRN.phl[90]";
connectAttr "right_flipper_1_anim_rotateZ.o" "lunaRN.phl[91]";
connectAttr "right_flipper_2_anim_rotateX.o" "lunaRN.phl[92]";
connectAttr "right_flipper_2_anim_rotateY.o" "lunaRN.phl[93]";
connectAttr "right_flipper_2_anim_rotateZ.o" "lunaRN.phl[94]";
connectAttr "right_flipper_3_anim_rotateX.o" "lunaRN.phl[95]";
connectAttr "right_flipper_3_anim_rotateY.o" "lunaRN.phl[96]";
connectAttr "right_flipper_3_anim_rotateZ.o" "lunaRN.phl[97]";
connectAttr "right_fluke_1_anim_rotateX.o" "lunaRN.phl[98]";
connectAttr "right_fluke_1_anim_rotateY.o" "lunaRN.phl[99]";
connectAttr "right_fluke_1_anim_rotateZ.o" "lunaRN.phl[100]";
connectAttr "right_fluke_2_anim_rotateX.o" "lunaRN.phl[101]";
connectAttr "right_fluke_2_anim_rotateY.o" "lunaRN.phl[102]";
connectAttr "right_fluke_2_anim_rotateZ.o" "lunaRN.phl[103]";
connectAttr "right_fluke_3_anim_rotateX.o" "lunaRN.phl[104]";
connectAttr "right_fluke_3_anim_rotateY.o" "lunaRN.phl[105]";
connectAttr "right_fluke_3_anim_rotateZ.o" "lunaRN.phl[106]";
connectAttr "center_jaw_anim_rotateX.o" "lunaRN.phl[107]";
connectAttr "center_jaw_anim_rotateY.o" "lunaRN.phl[108]";
connectAttr "center_jaw_anim_rotateZ.o" "lunaRN.phl[109]";
connectAttr "center_jaw_anim_parent_to.o" "lunaRN.phl[110]";
connectAttr "left_eye_anim_rotateX.o" "lunaRN.phl[111]";
connectAttr "left_eye_anim_rotateY.o" "lunaRN.phl[112]";
connectAttr "left_eye_anim_rotateZ.o" "lunaRN.phl[113]";
connectAttr "left_upper_lid_base_anim_rotateX.o" "lunaRN.phl[114]";
connectAttr "left_upper_lid_base_anim_rotateY.o" "lunaRN.phl[115]";
connectAttr "left_upper_lid_base_anim_rotateZ.o" "lunaRN.phl[116]";
connectAttr "left_upper_lid_base_end_anim_rotateZ.o" "lunaRN.phl[117]";
connectAttr "left_upperlid_1_anim_translateX.o" "lunaRN.phl[118]";
connectAttr "left_upperlid_1_anim_translateY.o" "lunaRN.phl[119]";
connectAttr "left_upperlid_1_anim_translateZ.o" "lunaRN.phl[120]";
connectAttr "left_upperlid_1_anim_rotateX.o" "lunaRN.phl[121]";
connectAttr "left_upperlid_1_anim_rotateY.o" "lunaRN.phl[122]";
connectAttr "left_upperlid_1_anim_rotateZ.o" "lunaRN.phl[123]";
connectAttr "left_upperlid_2_anim_translateX.o" "lunaRN.phl[124]";
connectAttr "left_upperlid_2_anim_translateY.o" "lunaRN.phl[125]";
connectAttr "left_upperlid_2_anim_translateZ.o" "lunaRN.phl[126]";
connectAttr "left_upperlid_2_anim_rotateX.o" "lunaRN.phl[127]";
connectAttr "left_upperlid_2_anim_rotateY.o" "lunaRN.phl[128]";
connectAttr "left_upperlid_2_anim_rotateZ.o" "lunaRN.phl[129]";
connectAttr "left_upperlid_3_anim_translateX.o" "lunaRN.phl[130]";
connectAttr "left_upperlid_3_anim_translateY.o" "lunaRN.phl[131]";
connectAttr "left_upperlid_3_anim_translateZ.o" "lunaRN.phl[132]";
connectAttr "left_upperlid_3_anim_rotateX.o" "lunaRN.phl[133]";
connectAttr "left_upperlid_3_anim_rotateY.o" "lunaRN.phl[134]";
connectAttr "left_upperlid_3_anim_rotateZ.o" "lunaRN.phl[135]";
connectAttr "left_lower_lid_base_anim_rotateX.o" "lunaRN.phl[136]";
connectAttr "left_lower_lid_base_anim_rotateY.o" "lunaRN.phl[137]";
connectAttr "left_lower_lid_base_anim_rotateZ.o" "lunaRN.phl[138]";
connectAttr "left_lowerlid_1_anim_translateX.o" "lunaRN.phl[139]";
connectAttr "left_lowerlid_1_anim_translateY.o" "lunaRN.phl[140]";
connectAttr "left_lowerlid_1_anim_translateZ.o" "lunaRN.phl[141]";
connectAttr "left_lowerlid_1_anim_rotateX.o" "lunaRN.phl[142]";
connectAttr "left_lowerlid_1_anim_rotateY.o" "lunaRN.phl[143]";
connectAttr "left_lowerlid_1_anim_rotateZ.o" "lunaRN.phl[144]";
connectAttr "left_lowerlid_2_anim_translateX.o" "lunaRN.phl[145]";
connectAttr "left_lowerlid_2_anim_translateY.o" "lunaRN.phl[146]";
connectAttr "left_lowerlid_2_anim_translateZ.o" "lunaRN.phl[147]";
connectAttr "left_lowerlid_2_anim_rotateX.o" "lunaRN.phl[148]";
connectAttr "left_lowerlid_2_anim_rotateY.o" "lunaRN.phl[149]";
connectAttr "left_lowerlid_2_anim_rotateZ.o" "lunaRN.phl[150]";
connectAttr "left_lowerlid_3_anim_translateX.o" "lunaRN.phl[151]";
connectAttr "left_lowerlid_3_anim_translateY.o" "lunaRN.phl[152]";
connectAttr "left_lowerlid_3_anim_translateZ.o" "lunaRN.phl[153]";
connectAttr "left_lowerlid_3_anim_rotateX.o" "lunaRN.phl[154]";
connectAttr "left_lowerlid_3_anim_rotateY.o" "lunaRN.phl[155]";
connectAttr "left_lowerlid_3_anim_rotateZ.o" "lunaRN.phl[156]";
connectAttr "left_innerlid_anim_translateX.o" "lunaRN.phl[157]";
connectAttr "left_innerlid_anim_translateY.o" "lunaRN.phl[158]";
connectAttr "left_innerlid_anim_translateZ.o" "lunaRN.phl[159]";
connectAttr "left_innerlid_anim_rotateX.o" "lunaRN.phl[160]";
connectAttr "left_innerlid_anim_rotateY.o" "lunaRN.phl[161]";
connectAttr "left_innerlid_anim_rotateZ.o" "lunaRN.phl[162]";
connectAttr "left_outerlid_anim_translateX.o" "lunaRN.phl[163]";
connectAttr "left_outerlid_anim_translateY.o" "lunaRN.phl[164]";
connectAttr "left_outerlid_anim_translateZ.o" "lunaRN.phl[165]";
connectAttr "left_outerlid_anim_rotateX.o" "lunaRN.phl[166]";
connectAttr "left_outerlid_anim_rotateY.o" "lunaRN.phl[167]";
connectAttr "left_outerlid_anim_rotateZ.o" "lunaRN.phl[168]";
connectAttr "left_lip_1_anim_translateX.o" "lunaRN.phl[169]";
connectAttr "left_lip_1_anim_translateY.o" "lunaRN.phl[170]";
connectAttr "left_lip_1_anim_translateZ.o" "lunaRN.phl[171]";
connectAttr "left_lip_1_anim_rotateX.o" "lunaRN.phl[172]";
connectAttr "left_lip_1_anim_rotateY.o" "lunaRN.phl[173]";
connectAttr "left_lip_1_anim_rotateZ.o" "lunaRN.phl[174]";
connectAttr "left_lip_2_anim_translateX.o" "lunaRN.phl[175]";
connectAttr "left_lip_2_anim_translateY.o" "lunaRN.phl[176]";
connectAttr "left_lip_2_anim_translateZ.o" "lunaRN.phl[177]";
connectAttr "left_lip_2_anim_rotateX.o" "lunaRN.phl[178]";
connectAttr "left_lip_2_anim_rotateY.o" "lunaRN.phl[179]";
connectAttr "left_lip_2_anim_rotateZ.o" "lunaRN.phl[180]";
connectAttr "left_lip_3_anim_translateX.o" "lunaRN.phl[181]";
connectAttr "left_lip_3_anim_translateY.o" "lunaRN.phl[182]";
connectAttr "left_lip_3_anim_translateZ.o" "lunaRN.phl[183]";
connectAttr "left_lip_3_anim_rotateX.o" "lunaRN.phl[184]";
connectAttr "left_lip_3_anim_rotateY.o" "lunaRN.phl[185]";
connectAttr "left_lip_3_anim_rotateZ.o" "lunaRN.phl[186]";
connectAttr "right_eye_anim_rotateX.o" "lunaRN.phl[187]";
connectAttr "right_eye_anim_rotateY.o" "lunaRN.phl[188]";
connectAttr "right_eye_anim_rotateZ.o" "lunaRN.phl[189]";
connectAttr "right_upper_lid_base_anim_rotateX.o" "lunaRN.phl[190]";
connectAttr "right_upper_lid_base_anim_rotateY.o" "lunaRN.phl[191]";
connectAttr "right_upper_lid_base_anim_rotateZ.o" "lunaRN.phl[192]";
connectAttr "right_upperlid_1_anim_translateX.o" "lunaRN.phl[193]";
connectAttr "right_upperlid_1_anim_translateY.o" "lunaRN.phl[194]";
connectAttr "right_upperlid_1_anim_translateZ.o" "lunaRN.phl[195]";
connectAttr "right_upperlid_1_anim_rotateX.o" "lunaRN.phl[196]";
connectAttr "right_upperlid_1_anim_rotateY.o" "lunaRN.phl[197]";
connectAttr "right_upperlid_1_anim_rotateZ.o" "lunaRN.phl[198]";
connectAttr "right_upperlid_2_anim_translateX.o" "lunaRN.phl[199]";
connectAttr "right_upperlid_2_anim_translateY.o" "lunaRN.phl[200]";
connectAttr "right_upperlid_2_anim_translateZ.o" "lunaRN.phl[201]";
connectAttr "right_upperlid_2_anim_rotateX.o" "lunaRN.phl[202]";
connectAttr "right_upperlid_2_anim_rotateY.o" "lunaRN.phl[203]";
connectAttr "right_upperlid_2_anim_rotateZ.o" "lunaRN.phl[204]";
connectAttr "right_upperlid_3_anim_translateX.o" "lunaRN.phl[205]";
connectAttr "right_upperlid_3_anim_translateY.o" "lunaRN.phl[206]";
connectAttr "right_upperlid_3_anim_translateZ.o" "lunaRN.phl[207]";
connectAttr "right_upperlid_3_anim_rotateX.o" "lunaRN.phl[208]";
connectAttr "right_upperlid_3_anim_rotateY.o" "lunaRN.phl[209]";
connectAttr "right_upperlid_3_anim_rotateZ.o" "lunaRN.phl[210]";
connectAttr "right_lower_lid_base_anim_rotateX.o" "lunaRN.phl[211]";
connectAttr "right_lower_lid_base_anim_rotateY.o" "lunaRN.phl[212]";
connectAttr "right_lower_lid_base_anim_rotateZ.o" "lunaRN.phl[213]";
connectAttr "right_lowerlid_1_anim_translateX.o" "lunaRN.phl[214]";
connectAttr "right_lowerlid_1_anim_translateY.o" "lunaRN.phl[215]";
connectAttr "right_lowerlid_1_anim_translateZ.o" "lunaRN.phl[216]";
connectAttr "right_lowerlid_1_anim_rotateX.o" "lunaRN.phl[217]";
connectAttr "right_lowerlid_1_anim_rotateY.o" "lunaRN.phl[218]";
connectAttr "right_lowerlid_1_anim_rotateZ.o" "lunaRN.phl[219]";
connectAttr "right_lowerlid_2_anim_translateX.o" "lunaRN.phl[220]";
connectAttr "right_lowerlid_2_anim_translateY.o" "lunaRN.phl[221]";
connectAttr "right_lowerlid_2_anim_translateZ.o" "lunaRN.phl[222]";
connectAttr "right_lowerlid_2_anim_rotateX.o" "lunaRN.phl[223]";
connectAttr "right_lowerlid_2_anim_rotateY.o" "lunaRN.phl[224]";
connectAttr "right_lowerlid_2_anim_rotateZ.o" "lunaRN.phl[225]";
connectAttr "right_lowerlid_3_anim_translateX.o" "lunaRN.phl[226]";
connectAttr "right_lowerlid_3_anim_translateY.o" "lunaRN.phl[227]";
connectAttr "right_lowerlid_3_anim_translateZ.o" "lunaRN.phl[228]";
connectAttr "right_lowerlid_3_anim_rotateX.o" "lunaRN.phl[229]";
connectAttr "right_lowerlid_3_anim_rotateY.o" "lunaRN.phl[230]";
connectAttr "right_lowerlid_3_anim_rotateZ.o" "lunaRN.phl[231]";
connectAttr "right_innerlid_anim_translateX.o" "lunaRN.phl[232]";
connectAttr "right_innerlid_anim_translateY.o" "lunaRN.phl[233]";
connectAttr "right_innerlid_anim_translateZ.o" "lunaRN.phl[234]";
connectAttr "right_innerlid_anim_rotateX.o" "lunaRN.phl[235]";
connectAttr "right_innerlid_anim_rotateY.o" "lunaRN.phl[236]";
connectAttr "right_innerlid_anim_rotateZ.o" "lunaRN.phl[237]";
connectAttr "right_outerlid_anim_translateX.o" "lunaRN.phl[238]";
connectAttr "right_outerlid_anim_translateY.o" "lunaRN.phl[239]";
connectAttr "right_outerlid_anim_translateZ.o" "lunaRN.phl[240]";
connectAttr "right_outerlid_anim_rotateX.o" "lunaRN.phl[241]";
connectAttr "right_outerlid_anim_rotateY.o" "lunaRN.phl[242]";
connectAttr "right_outerlid_anim_rotateZ.o" "lunaRN.phl[243]";
connectAttr "right_lip_1_anim_translateX.o" "lunaRN.phl[244]";
connectAttr "right_lip_1_anim_translateY.o" "lunaRN.phl[245]";
connectAttr "right_lip_1_anim_translateZ.o" "lunaRN.phl[246]";
connectAttr "right_lip_1_anim_rotateX.o" "lunaRN.phl[247]";
connectAttr "right_lip_1_anim_rotateY.o" "lunaRN.phl[248]";
connectAttr "right_lip_1_anim_rotateZ.o" "lunaRN.phl[249]";
connectAttr "right_lip_2_anim_translateX.o" "lunaRN.phl[250]";
connectAttr "right_lip_2_anim_translateY.o" "lunaRN.phl[251]";
connectAttr "right_lip_2_anim_translateZ.o" "lunaRN.phl[252]";
connectAttr "right_lip_2_anim_rotateX.o" "lunaRN.phl[253]";
connectAttr "right_lip_2_anim_rotateY.o" "lunaRN.phl[254]";
connectAttr "right_lip_2_anim_rotateZ.o" "lunaRN.phl[255]";
connectAttr "right_lip_3_anim_translateX.o" "lunaRN.phl[256]";
connectAttr "right_lip_3_anim_translateY.o" "lunaRN.phl[257]";
connectAttr "right_lip_3_anim_translateZ.o" "lunaRN.phl[258]";
connectAttr "right_lip_3_anim_rotateX.o" "lunaRN.phl[259]";
connectAttr "right_lip_3_anim_rotateY.o" "lunaRN.phl[260]";
connectAttr "right_lip_3_anim_rotateZ.o" "lunaRN.phl[261]";
connectAttr "center_eye_aim_main_anim_parent_to.o" "lunaRN.phl[262]";
connectAttr "center_eye_aim_main_anim_translateX.o" "lunaRN.phl[263]";
connectAttr "center_eye_aim_main_anim_translateY.o" "lunaRN.phl[264]";
connectAttr "center_eye_aim_main_anim_translateZ.o" "lunaRN.phl[265]";
connectAttr "center_eye_aim_main_anim_rotateX.o" "lunaRN.phl[266]";
connectAttr "center_eye_aim_main_anim_rotateY.o" "lunaRN.phl[267]";
connectAttr "center_eye_aim_main_anim_rotateZ.o" "lunaRN.phl[268]";
connectAttr "center_eye_aim_right_anim_translateX.o" "lunaRN.phl[269]";
connectAttr "center_eye_aim_right_anim_translateY.o" "lunaRN.phl[270]";
connectAttr "center_eye_aim_right_anim_translateZ.o" "lunaRN.phl[271]";
connectAttr "center_eye_aim_left_anim_translateX.o" "lunaRN.phl[272]";
connectAttr "center_eye_aim_left_anim_translateY.o" "lunaRN.phl[273]";
connectAttr "center_eye_aim_left_anim_translateZ.o" "lunaRN.phl[274]";
connectAttr "polyCube1.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of scarlet_swim_around_rock_freeswim.ma
