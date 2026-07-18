.class final Lcom/jcraft/jsch/jzlib/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# static fields
.field private static final BL_CODES:I = 0x13

.field static final Buf_size:I = 0x10

.field static final DIST_CODE_LEN:I = 0x200

.field private static final D_CODES:I = 0x1e

.field static final END_BLOCK:I = 0x100

.field private static final HEAP_SIZE:I = 0x23d

.field private static final LENGTH_CODES:I = 0x1d

.field private static final LITERALS:I = 0x100

.field private static final L_CODES:I = 0x11e

.field private static final MAX_BITS:I = 0xf

.field static final MAX_BL_BITS:I = 0x7

.field static final REPZ_11_138:I = 0x12

.field static final REPZ_3_10:I = 0x11

.field static final REP_3_6:I = 0x10

.field static final _dist_code:[B

.field static final _length_code:[B

.field static final base_dist:[I

.field static final base_length:[I

.field static final bl_order:[B

.field static final extra_blbits:[I

.field static final extra_dbits:[I

.field static final extra_lbits:[I


# instance fields
.field dyn_tree:[S

.field max_code:I

.field stat_desc:Lcom/jcraft/jsch/jzlib/StaticTree;


# direct methods
.method static constructor <clinit>()V
    .locals 257

    .line 59
    const/16 v0, 0x1d

    new-array v1, v0, [I

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput v3, v1, v2

    const/16 v4, 0x9

    aput v3, v1, v4

    const/16 v5, 0xa

    aput v3, v1, v5

    const/16 v6, 0xb

    aput v3, v1, v6

    const/16 v7, 0xc

    const/4 v8, 0x2

    aput v8, v1, v7

    const/16 v9, 0xd

    aput v8, v1, v9

    const/16 v10, 0xe

    aput v8, v1, v10

    const/16 v11, 0xf

    aput v8, v1, v11

    const/16 v12, 0x10

    const/4 v13, 0x3

    aput v13, v1, v12

    const/16 v14, 0x11

    aput v13, v1, v14

    const/16 v15, 0x12

    aput v13, v1, v15

    const/16 v0, 0x13

    aput v13, v1, v0

    const/16 v17, 0x14

    const/16 v18, 0x4

    aput v18, v1, v17

    const/16 v19, 0x15

    aput v18, v1, v19

    const/16 v20, 0x16

    aput v18, v1, v20

    const/16 v21, 0x17

    aput v18, v1, v21

    const/16 v22, 0x18

    const/16 v23, 0x5

    aput v23, v1, v22

    const/16 v24, 0x19

    aput v23, v1, v24

    const/16 v25, 0x1a

    aput v23, v1, v25

    const/16 v26, 0x1b

    aput v23, v1, v26

    .line 58
    sput-object v1, Lcom/jcraft/jsch/jzlib/Tree;->extra_lbits:[I

    .line 62
    const/16 v1, 0x1e

    new-array v0, v1, [I

    aput v3, v0, v18

    aput v3, v0, v23

    const/16 v28, 0x6

    aput v8, v0, v28

    const/16 v29, 0x7

    aput v8, v0, v29

    aput v13, v0, v2

    aput v13, v0, v4

    aput v18, v0, v5

    aput v18, v0, v6

    aput v23, v0, v7

    aput v23, v0, v9

    aput v28, v0, v10

    aput v28, v0, v11

    aput v29, v0, v12

    aput v29, v0, v14

    aput v2, v0, v15

    const/16 v27, 0x13

    aput v2, v0, v27

    aput v4, v0, v17

    .line 63
    aput v4, v0, v19

    aput v5, v0, v20

    aput v5, v0, v21

    aput v6, v0, v22

    aput v6, v0, v24

    aput v7, v0, v25

    aput v7, v0, v26

    const/16 v30, 0x1c

    aput v9, v0, v30

    const/16 v16, 0x1d

    aput v9, v0, v16

    .line 62
    sput-object v0, Lcom/jcraft/jsch/jzlib/Tree;->extra_dbits:[I

    .line 66
    const/16 v0, 0x13

    new-array v1, v0, [I

    aput v8, v1, v12

    aput v13, v1, v14

    aput v29, v1, v15

    sput-object v1, Lcom/jcraft/jsch/jzlib/Tree;->extra_blbits:[I

    .line 68
    new-array v1, v0, [B

    const/4 v0, 0x0

    aput-byte v12, v1, v0

    aput-byte v14, v1, v3

    aput-byte v15, v1, v8

    aput-byte v2, v1, v18

    aput-byte v29, v1, v23

    aput-byte v4, v1, v28

    aput-byte v28, v1, v29

    aput-byte v5, v1, v2

    aput-byte v23, v1, v4

    aput-byte v6, v1, v5

    aput-byte v18, v1, v6

    aput-byte v7, v1, v7

    aput-byte v13, v1, v9

    aput-byte v9, v1, v10

    aput-byte v8, v1, v11

    aput-byte v10, v1, v12

    aput-byte v3, v1, v14

    aput-byte v11, v1, v15

    sput-object v1, Lcom/jcraft/jsch/jzlib/Tree;->bl_order:[B

    .line 79
    const/16 v0, 0x200

    new-array v1, v0, [B

    aput-byte v3, v1, v3

    aput-byte v8, v1, v8

    aput-byte v13, v1, v13

    aput-byte v18, v1, v18

    aput-byte v18, v1, v23

    aput-byte v23, v1, v28

    aput-byte v23, v1, v29

    aput-byte v28, v1, v2

    aput-byte v28, v1, v4

    aput-byte v28, v1, v5

    aput-byte v28, v1, v6

    aput-byte v29, v1, v7

    aput-byte v29, v1, v9

    aput-byte v29, v1, v10

    aput-byte v29, v1, v11

    aput-byte v2, v1, v12

    aput-byte v2, v1, v14

    aput-byte v2, v1, v15

    const/16 v27, 0x13

    aput-byte v2, v1, v27

    aput-byte v2, v1, v17

    .line 80
    aput-byte v2, v1, v19

    aput-byte v2, v1, v20

    aput-byte v2, v1, v21

    aput-byte v4, v1, v22

    aput-byte v4, v1, v24

    aput-byte v4, v1, v25

    aput-byte v4, v1, v26

    aput-byte v4, v1, v30

    const/16 v16, 0x1d

    aput-byte v4, v1, v16

    const/16 v31, 0x1e

    aput-byte v4, v1, v31

    const/16 v32, 0x1f

    aput-byte v4, v1, v32

    const/16 v33, 0x20

    aput-byte v5, v1, v33

    const/16 v34, 0x21

    aput-byte v5, v1, v34

    const/16 v35, 0x22

    aput-byte v5, v1, v35

    const/16 v36, 0x23

    aput-byte v5, v1, v36

    const/16 v37, 0x24

    aput-byte v5, v1, v37

    const/16 v38, 0x25

    aput-byte v5, v1, v38

    const/16 v39, 0x26

    aput-byte v5, v1, v39

    const/16 v40, 0x27

    aput-byte v5, v1, v40

    const/16 v41, 0x28

    aput-byte v5, v1, v41

    const/16 v42, 0x29

    aput-byte v5, v1, v42

    const/16 v43, 0x2a

    aput-byte v5, v1, v43

    const/16 v44, 0x2b

    aput-byte v5, v1, v44

    const/16 v45, 0x2c

    aput-byte v5, v1, v45

    const/16 v46, 0x2d

    aput-byte v5, v1, v46

    const/16 v47, 0x2e

    aput-byte v5, v1, v47

    .line 81
    const/16 v48, 0x2f

    aput-byte v5, v1, v48

    const/16 v49, 0x30

    aput-byte v6, v1, v49

    const/16 v50, 0x31

    aput-byte v6, v1, v50

    const/16 v51, 0x32

    aput-byte v6, v1, v51

    const/16 v52, 0x33

    aput-byte v6, v1, v52

    const/16 v53, 0x34

    aput-byte v6, v1, v53

    const/16 v54, 0x35

    aput-byte v6, v1, v54

    const/16 v55, 0x36

    aput-byte v6, v1, v55

    const/16 v56, 0x37

    aput-byte v6, v1, v56

    const/16 v57, 0x38

    aput-byte v6, v1, v57

    const/16 v58, 0x39

    aput-byte v6, v1, v58

    const/16 v59, 0x3a

    aput-byte v6, v1, v59

    const/16 v60, 0x3b

    aput-byte v6, v1, v60

    const/16 v61, 0x3c

    aput-byte v6, v1, v61

    const/16 v62, 0x3d

    aput-byte v6, v1, v62

    const/16 v63, 0x3e

    aput-byte v6, v1, v63

    const/16 v64, 0x3f

    aput-byte v6, v1, v64

    const/16 v65, 0x40

    aput-byte v7, v1, v65

    const/16 v66, 0x41

    aput-byte v7, v1, v66

    const/16 v67, 0x42

    aput-byte v7, v1, v67

    const/16 v68, 0x43

    aput-byte v7, v1, v68

    const/16 v69, 0x44

    aput-byte v7, v1, v69

    const/16 v70, 0x45

    aput-byte v7, v1, v70

    .line 82
    const/16 v71, 0x46

    aput-byte v7, v1, v71

    const/16 v72, 0x47

    aput-byte v7, v1, v72

    const/16 v73, 0x48

    aput-byte v7, v1, v73

    const/16 v74, 0x49

    aput-byte v7, v1, v74

    const/16 v75, 0x4a

    aput-byte v7, v1, v75

    const/16 v76, 0x4b

    aput-byte v7, v1, v76

    const/16 v77, 0x4c

    aput-byte v7, v1, v77

    const/16 v78, 0x4d

    aput-byte v7, v1, v78

    const/16 v79, 0x4e

    aput-byte v7, v1, v79

    const/16 v80, 0x4f

    aput-byte v7, v1, v80

    const/16 v81, 0x50

    aput-byte v7, v1, v81

    const/16 v82, 0x51

    aput-byte v7, v1, v82

    const/16 v83, 0x52

    aput-byte v7, v1, v83

    const/16 v84, 0x53

    aput-byte v7, v1, v84

    const/16 v85, 0x54

    aput-byte v7, v1, v85

    const/16 v86, 0x55

    aput-byte v7, v1, v86

    const/16 v87, 0x56

    aput-byte v7, v1, v87

    const/16 v88, 0x57

    aput-byte v7, v1, v88

    const/16 v89, 0x58

    aput-byte v7, v1, v89

    const/16 v90, 0x59

    aput-byte v7, v1, v90

    const/16 v91, 0x5a

    aput-byte v7, v1, v91

    const/16 v92, 0x5b

    aput-byte v7, v1, v92

    const/16 v93, 0x5c

    aput-byte v7, v1, v93

    .line 83
    const/16 v94, 0x5d

    aput-byte v7, v1, v94

    const/16 v95, 0x5e

    aput-byte v7, v1, v95

    const/16 v96, 0x5f

    aput-byte v7, v1, v96

    const/16 v97, 0x60

    aput-byte v9, v1, v97

    const/16 v98, 0x61

    aput-byte v9, v1, v98

    const/16 v99, 0x62

    aput-byte v9, v1, v99

    const/16 v100, 0x63

    aput-byte v9, v1, v100

    const/16 v101, 0x64

    aput-byte v9, v1, v101

    const/16 v102, 0x65

    aput-byte v9, v1, v102

    const/16 v103, 0x66

    aput-byte v9, v1, v103

    const/16 v104, 0x67

    aput-byte v9, v1, v104

    const/16 v105, 0x68

    aput-byte v9, v1, v105

    const/16 v106, 0x69

    aput-byte v9, v1, v106

    const/16 v107, 0x6a

    aput-byte v9, v1, v107

    const/16 v108, 0x6b

    aput-byte v9, v1, v108

    const/16 v109, 0x6c

    aput-byte v9, v1, v109

    const/16 v110, 0x6d

    aput-byte v9, v1, v110

    const/16 v111, 0x6e

    aput-byte v9, v1, v111

    const/16 v112, 0x6f

    aput-byte v9, v1, v112

    const/16 v113, 0x70

    aput-byte v9, v1, v113

    const/16 v114, 0x71

    aput-byte v9, v1, v114

    const/16 v115, 0x72

    aput-byte v9, v1, v115

    const/16 v116, 0x73

    aput-byte v9, v1, v116

    .line 84
    const/16 v117, 0x74

    aput-byte v9, v1, v117

    const/16 v118, 0x75

    aput-byte v9, v1, v118

    const/16 v119, 0x76

    aput-byte v9, v1, v119

    const/16 v120, 0x77

    aput-byte v9, v1, v120

    const/16 v121, 0x78

    aput-byte v9, v1, v121

    const/16 v122, 0x79

    aput-byte v9, v1, v122

    const/16 v123, 0x7a

    aput-byte v9, v1, v123

    const/16 v124, 0x7b

    aput-byte v9, v1, v124

    const/16 v125, 0x7c

    aput-byte v9, v1, v125

    const/16 v126, 0x7d

    aput-byte v9, v1, v126

    const/16 v127, 0x7e

    aput-byte v9, v1, v127

    const/16 v128, 0x7f

    aput-byte v9, v1, v128

    const/16 v129, 0x80

    aput-byte v10, v1, v129

    const/16 v130, 0x81

    aput-byte v10, v1, v130

    const/16 v131, 0x82

    aput-byte v10, v1, v131

    const/16 v132, 0x83

    aput-byte v10, v1, v132

    const/16 v133, 0x84

    aput-byte v10, v1, v133

    const/16 v134, 0x85

    aput-byte v10, v1, v134

    const/16 v135, 0x86

    aput-byte v10, v1, v135

    const/16 v136, 0x87

    aput-byte v10, v1, v136

    const/16 v137, 0x88

    aput-byte v10, v1, v137

    const/16 v138, 0x89

    aput-byte v10, v1, v138

    const/16 v139, 0x8a

    aput-byte v10, v1, v139

    .line 85
    const/16 v140, 0x8b

    aput-byte v10, v1, v140

    const/16 v141, 0x8c

    aput-byte v10, v1, v141

    const/16 v142, 0x8d

    aput-byte v10, v1, v142

    const/16 v143, 0x8e

    aput-byte v10, v1, v143

    const/16 v144, 0x8f

    aput-byte v10, v1, v144

    const/16 v145, 0x90

    aput-byte v10, v1, v145

    const/16 v146, 0x91

    aput-byte v10, v1, v146

    const/16 v147, 0x92

    aput-byte v10, v1, v147

    const/16 v148, 0x93

    aput-byte v10, v1, v148

    const/16 v149, 0x94

    aput-byte v10, v1, v149

    const/16 v150, 0x95

    aput-byte v10, v1, v150

    const/16 v151, 0x96

    aput-byte v10, v1, v151

    const/16 v152, 0x97

    aput-byte v10, v1, v152

    const/16 v153, 0x98

    aput-byte v10, v1, v153

    const/16 v154, 0x99

    aput-byte v10, v1, v154

    const/16 v155, 0x9a

    aput-byte v10, v1, v155

    const/16 v156, 0x9b

    aput-byte v10, v1, v156

    const/16 v157, 0x9c

    aput-byte v10, v1, v157

    const/16 v158, 0x9d

    aput-byte v10, v1, v158

    const/16 v159, 0x9e

    aput-byte v10, v1, v159

    const/16 v160, 0x9f

    aput-byte v10, v1, v160

    const/16 v161, 0xa0

    aput-byte v10, v1, v161

    const/16 v162, 0xa1

    aput-byte v10, v1, v162

    .line 86
    const/16 v163, 0xa2

    aput-byte v10, v1, v163

    const/16 v164, 0xa3

    aput-byte v10, v1, v164

    const/16 v165, 0xa4

    aput-byte v10, v1, v165

    const/16 v166, 0xa5

    aput-byte v10, v1, v166

    const/16 v167, 0xa6

    aput-byte v10, v1, v167

    const/16 v168, 0xa7

    aput-byte v10, v1, v168

    const/16 v169, 0xa8

    aput-byte v10, v1, v169

    const/16 v170, 0xa9

    aput-byte v10, v1, v170

    const/16 v171, 0xaa

    aput-byte v10, v1, v171

    const/16 v172, 0xab

    aput-byte v10, v1, v172

    const/16 v173, 0xac

    aput-byte v10, v1, v173

    const/16 v174, 0xad

    aput-byte v10, v1, v174

    const/16 v175, 0xae

    aput-byte v10, v1, v175

    const/16 v176, 0xaf

    aput-byte v10, v1, v176

    const/16 v177, 0xb0

    aput-byte v10, v1, v177

    const/16 v178, 0xb1

    aput-byte v10, v1, v178

    const/16 v179, 0xb2

    aput-byte v10, v1, v179

    const/16 v180, 0xb3

    aput-byte v10, v1, v180

    const/16 v181, 0xb4

    aput-byte v10, v1, v181

    const/16 v182, 0xb5

    aput-byte v10, v1, v182

    const/16 v183, 0xb6

    aput-byte v10, v1, v183

    const/16 v184, 0xb7

    aput-byte v10, v1, v184

    const/16 v185, 0xb8

    aput-byte v10, v1, v185

    .line 87
    const/16 v186, 0xb9

    aput-byte v10, v1, v186

    const/16 v187, 0xba

    aput-byte v10, v1, v187

    const/16 v188, 0xbb

    aput-byte v10, v1, v188

    const/16 v189, 0xbc

    aput-byte v10, v1, v189

    const/16 v190, 0xbd

    aput-byte v10, v1, v190

    const/16 v191, 0xbe

    aput-byte v10, v1, v191

    const/16 v192, 0xbf

    aput-byte v10, v1, v192

    const/16 v193, 0xc0

    aput-byte v11, v1, v193

    const/16 v194, 0xc1

    aput-byte v11, v1, v194

    const/16 v195, 0xc2

    aput-byte v11, v1, v195

    const/16 v196, 0xc3

    aput-byte v11, v1, v196

    const/16 v197, 0xc4

    aput-byte v11, v1, v197

    const/16 v198, 0xc5

    aput-byte v11, v1, v198

    const/16 v199, 0xc6

    aput-byte v11, v1, v199

    const/16 v200, 0xc7

    aput-byte v11, v1, v200

    const/16 v201, 0xc8

    aput-byte v11, v1, v201

    const/16 v202, 0xc9

    aput-byte v11, v1, v202

    const/16 v203, 0xca

    aput-byte v11, v1, v203

    const/16 v204, 0xcb

    aput-byte v11, v1, v204

    const/16 v205, 0xcc

    aput-byte v11, v1, v205

    const/16 v206, 0xcd

    aput-byte v11, v1, v206

    const/16 v207, 0xce

    aput-byte v11, v1, v207

    const/16 v208, 0xcf

    aput-byte v11, v1, v208

    .line 88
    const/16 v209, 0xd0

    aput-byte v11, v1, v209

    const/16 v210, 0xd1

    aput-byte v11, v1, v210

    const/16 v211, 0xd2

    aput-byte v11, v1, v211

    const/16 v212, 0xd3

    aput-byte v11, v1, v212

    const/16 v213, 0xd4

    aput-byte v11, v1, v213

    const/16 v214, 0xd5

    aput-byte v11, v1, v214

    const/16 v215, 0xd6

    aput-byte v11, v1, v215

    const/16 v216, 0xd7

    aput-byte v11, v1, v216

    const/16 v217, 0xd8

    aput-byte v11, v1, v217

    const/16 v218, 0xd9

    aput-byte v11, v1, v218

    const/16 v219, 0xda

    aput-byte v11, v1, v219

    const/16 v220, 0xdb

    aput-byte v11, v1, v220

    const/16 v221, 0xdc

    aput-byte v11, v1, v221

    const/16 v222, 0xdd

    aput-byte v11, v1, v222

    const/16 v223, 0xde

    aput-byte v11, v1, v223

    const/16 v224, 0xdf

    aput-byte v11, v1, v224

    const/16 v225, 0xe0

    aput-byte v11, v1, v225

    const/16 v226, 0xe1

    aput-byte v11, v1, v226

    const/16 v227, 0xe2

    aput-byte v11, v1, v227

    const/16 v228, 0xe3

    aput-byte v11, v1, v228

    const/16 v229, 0xe4

    aput-byte v11, v1, v229

    const/16 v230, 0xe5

    aput-byte v11, v1, v230

    const/16 v231, 0xe6

    aput-byte v11, v1, v231

    .line 89
    const/16 v232, 0xe7

    aput-byte v11, v1, v232

    const/16 v233, 0xe8

    aput-byte v11, v1, v233

    const/16 v234, 0xe9

    aput-byte v11, v1, v234

    const/16 v235, 0xea

    aput-byte v11, v1, v235

    const/16 v236, 0xeb

    aput-byte v11, v1, v236

    const/16 v237, 0xec

    aput-byte v11, v1, v237

    const/16 v238, 0xed

    aput-byte v11, v1, v238

    const/16 v239, 0xee

    aput-byte v11, v1, v239

    const/16 v240, 0xef

    aput-byte v11, v1, v240

    const/16 v241, 0xf0

    aput-byte v11, v1, v241

    const/16 v242, 0xf1

    aput-byte v11, v1, v242

    const/16 v243, 0xf2

    aput-byte v11, v1, v243

    const/16 v244, 0xf3

    aput-byte v11, v1, v244

    const/16 v245, 0xf4

    aput-byte v11, v1, v245

    const/16 v246, 0xf5

    aput-byte v11, v1, v246

    const/16 v247, 0xf6

    aput-byte v11, v1, v247

    const/16 v248, 0xf7

    aput-byte v11, v1, v248

    const/16 v249, 0xf8

    aput-byte v11, v1, v249

    const/16 v250, 0xf9

    aput-byte v11, v1, v250

    const/16 v251, 0xfa

    aput-byte v11, v1, v251

    const/16 v252, 0xfb

    aput-byte v11, v1, v252

    const/16 v253, 0xfc

    aput-byte v11, v1, v253

    const/16 v254, 0xfd

    aput-byte v11, v1, v254

    .line 90
    const/16 v255, 0xfe

    aput-byte v11, v1, v255

    const/16 v16, 0xff

    aput-byte v11, v1, v16

    const/16 v27, 0x102

    aput-byte v12, v1, v27

    const/16 v27, 0x103

    aput-byte v14, v1, v27

    const/16 v27, 0x104

    aput-byte v15, v1, v27

    const/16 v27, 0x105

    aput-byte v15, v1, v27

    const/16 v27, 0x106

    const/16 v31, 0x13

    aput-byte v31, v1, v27

    const/16 v27, 0x107

    aput-byte v31, v1, v27

    const/16 v31, 0x108

    aput-byte v17, v1, v31

    const/16 v31, 0x109

    aput-byte v17, v1, v31

    const/16 v31, 0x10a

    aput-byte v17, v1, v31

    const/16 v31, 0x10b

    aput-byte v17, v1, v31

    const/16 v31, 0x10c

    aput-byte v19, v1, v31

    const/16 v31, 0x10d

    aput-byte v19, v1, v31

    const/16 v31, 0x10e

    aput-byte v19, v1, v31

    const/16 v31, 0x10f

    aput-byte v19, v1, v31

    const/16 v31, 0x110

    aput-byte v20, v1, v31

    const/16 v31, 0x111

    aput-byte v20, v1, v31

    const/16 v31, 0x112

    aput-byte v20, v1, v31

    const/16 v31, 0x113

    aput-byte v20, v1, v31

    const/16 v31, 0x114

    aput-byte v20, v1, v31

    const/16 v31, 0x115

    aput-byte v20, v1, v31

    .line 91
    const/16 v31, 0x116

    aput-byte v20, v1, v31

    const/16 v31, 0x117

    aput-byte v20, v1, v31

    const/16 v31, 0x118

    aput-byte v21, v1, v31

    const/16 v31, 0x119

    aput-byte v21, v1, v31

    const/16 v31, 0x11a

    aput-byte v21, v1, v31

    const/16 v31, 0x11b

    aput-byte v21, v1, v31

    const/16 v31, 0x11c

    aput-byte v21, v1, v31

    const/16 v31, 0x11d

    aput-byte v21, v1, v31

    const/16 v31, 0x11e

    aput-byte v21, v1, v31

    const/16 v31, 0x11f

    aput-byte v21, v1, v31

    const/16 v31, 0x120

    aput-byte v22, v1, v31

    const/16 v31, 0x121

    aput-byte v22, v1, v31

    const/16 v31, 0x122

    aput-byte v22, v1, v31

    const/16 v31, 0x123

    aput-byte v22, v1, v31

    const/16 v31, 0x124

    aput-byte v22, v1, v31

    const/16 v31, 0x125

    aput-byte v22, v1, v31

    const/16 v31, 0x126

    aput-byte v22, v1, v31

    const/16 v31, 0x127

    aput-byte v22, v1, v31

    const/16 v31, 0x128

    aput-byte v22, v1, v31

    const/16 v31, 0x129

    aput-byte v22, v1, v31

    const/16 v31, 0x12a

    aput-byte v22, v1, v31

    const/16 v31, 0x12b

    aput-byte v22, v1, v31

    const/16 v31, 0x12c

    aput-byte v22, v1, v31

    .line 92
    const/16 v31, 0x12d

    aput-byte v22, v1, v31

    const/16 v31, 0x12e

    aput-byte v22, v1, v31

    const/16 v31, 0x12f

    aput-byte v22, v1, v31

    const/16 v31, 0x130

    aput-byte v24, v1, v31

    const/16 v31, 0x131

    aput-byte v24, v1, v31

    const/16 v31, 0x132

    aput-byte v24, v1, v31

    const/16 v31, 0x133

    aput-byte v24, v1, v31

    const/16 v31, 0x134

    aput-byte v24, v1, v31

    const/16 v31, 0x135

    aput-byte v24, v1, v31

    const/16 v31, 0x136

    aput-byte v24, v1, v31

    const/16 v31, 0x137

    aput-byte v24, v1, v31

    const/16 v31, 0x138

    aput-byte v24, v1, v31

    const/16 v31, 0x139

    aput-byte v24, v1, v31

    const/16 v31, 0x13a

    aput-byte v24, v1, v31

    const/16 v31, 0x13b

    aput-byte v24, v1, v31

    const/16 v31, 0x13c

    aput-byte v24, v1, v31

    const/16 v31, 0x13d

    aput-byte v24, v1, v31

    const/16 v31, 0x13e

    aput-byte v24, v1, v31

    const/16 v31, 0x13f

    aput-byte v24, v1, v31

    const/16 v31, 0x140

    aput-byte v25, v1, v31

    const/16 v31, 0x141

    aput-byte v25, v1, v31

    const/16 v31, 0x142

    aput-byte v25, v1, v31

    const/16 v31, 0x143

    aput-byte v25, v1, v31

    .line 93
    const/16 v31, 0x144

    aput-byte v25, v1, v31

    const/16 v31, 0x145

    aput-byte v25, v1, v31

    const/16 v31, 0x146

    aput-byte v25, v1, v31

    const/16 v31, 0x147

    aput-byte v25, v1, v31

    const/16 v31, 0x148

    aput-byte v25, v1, v31

    const/16 v31, 0x149

    aput-byte v25, v1, v31

    const/16 v31, 0x14a

    aput-byte v25, v1, v31

    const/16 v31, 0x14b

    aput-byte v25, v1, v31

    const/16 v31, 0x14c

    aput-byte v25, v1, v31

    const/16 v31, 0x14d

    aput-byte v25, v1, v31

    const/16 v31, 0x14e

    aput-byte v25, v1, v31

    const/16 v31, 0x14f

    aput-byte v25, v1, v31

    const/16 v31, 0x150

    aput-byte v25, v1, v31

    const/16 v31, 0x151

    aput-byte v25, v1, v31

    const/16 v31, 0x152

    aput-byte v25, v1, v31

    const/16 v31, 0x153

    aput-byte v25, v1, v31

    const/16 v31, 0x154

    aput-byte v25, v1, v31

    const/16 v31, 0x155

    aput-byte v25, v1, v31

    const/16 v31, 0x156

    aput-byte v25, v1, v31

    const/16 v31, 0x157

    aput-byte v25, v1, v31

    const/16 v31, 0x158

    aput-byte v25, v1, v31

    const/16 v31, 0x159

    aput-byte v25, v1, v31

    const/16 v31, 0x15a

    aput-byte v25, v1, v31

    .line 94
    const/16 v31, 0x15b

    aput-byte v25, v1, v31

    const/16 v31, 0x15c

    aput-byte v25, v1, v31

    const/16 v31, 0x15d

    aput-byte v25, v1, v31

    const/16 v31, 0x15e

    aput-byte v25, v1, v31

    const/16 v31, 0x15f

    aput-byte v25, v1, v31

    const/16 v31, 0x160

    aput-byte v26, v1, v31

    const/16 v31, 0x161

    aput-byte v26, v1, v31

    const/16 v31, 0x162

    aput-byte v26, v1, v31

    const/16 v31, 0x163

    aput-byte v26, v1, v31

    const/16 v31, 0x164

    aput-byte v26, v1, v31

    const/16 v31, 0x165

    aput-byte v26, v1, v31

    const/16 v31, 0x166

    aput-byte v26, v1, v31

    const/16 v31, 0x167

    aput-byte v26, v1, v31

    const/16 v31, 0x168

    aput-byte v26, v1, v31

    const/16 v31, 0x169

    aput-byte v26, v1, v31

    const/16 v31, 0x16a

    aput-byte v26, v1, v31

    const/16 v31, 0x16b

    aput-byte v26, v1, v31

    const/16 v31, 0x16c

    aput-byte v26, v1, v31

    const/16 v31, 0x16d

    aput-byte v26, v1, v31

    const/16 v31, 0x16e

    aput-byte v26, v1, v31

    const/16 v31, 0x16f

    aput-byte v26, v1, v31

    const/16 v31, 0x170

    aput-byte v26, v1, v31

    const/16 v31, 0x171

    aput-byte v26, v1, v31

    .line 95
    const/16 v31, 0x172

    aput-byte v26, v1, v31

    const/16 v31, 0x173

    aput-byte v26, v1, v31

    const/16 v31, 0x174

    aput-byte v26, v1, v31

    const/16 v31, 0x175

    aput-byte v26, v1, v31

    const/16 v31, 0x176

    aput-byte v26, v1, v31

    const/16 v31, 0x177

    aput-byte v26, v1, v31

    const/16 v31, 0x178

    aput-byte v26, v1, v31

    const/16 v31, 0x179

    aput-byte v26, v1, v31

    const/16 v31, 0x17a

    aput-byte v26, v1, v31

    const/16 v31, 0x17b

    aput-byte v26, v1, v31

    const/16 v31, 0x17c

    aput-byte v26, v1, v31

    const/16 v31, 0x17d

    aput-byte v26, v1, v31

    const/16 v31, 0x17e

    aput-byte v26, v1, v31

    const/16 v31, 0x17f

    aput-byte v26, v1, v31

    const/16 v31, 0x180

    aput-byte v30, v1, v31

    const/16 v27, 0x181

    aput-byte v30, v1, v27

    const/16 v27, 0x182

    aput-byte v30, v1, v27

    const/16 v27, 0x183

    aput-byte v30, v1, v27

    const/16 v27, 0x184

    aput-byte v30, v1, v27

    const/16 v27, 0x185

    aput-byte v30, v1, v27

    const/16 v27, 0x186

    aput-byte v30, v1, v27

    const/16 v27, 0x187

    aput-byte v30, v1, v27

    const/16 v27, 0x188

    aput-byte v30, v1, v27

    .line 96
    const/16 v27, 0x189

    aput-byte v30, v1, v27

    const/16 v27, 0x18a

    aput-byte v30, v1, v27

    const/16 v27, 0x18b

    aput-byte v30, v1, v27

    const/16 v27, 0x18c

    aput-byte v30, v1, v27

    const/16 v27, 0x18d

    aput-byte v30, v1, v27

    const/16 v27, 0x18e

    aput-byte v30, v1, v27

    const/16 v27, 0x18f

    aput-byte v30, v1, v27

    const/16 v27, 0x190

    aput-byte v30, v1, v27

    const/16 v27, 0x191

    aput-byte v30, v1, v27

    const/16 v27, 0x192

    aput-byte v30, v1, v27

    const/16 v27, 0x193

    aput-byte v30, v1, v27

    const/16 v27, 0x194

    aput-byte v30, v1, v27

    const/16 v27, 0x195

    aput-byte v30, v1, v27

    const/16 v27, 0x196

    aput-byte v30, v1, v27

    const/16 v27, 0x197

    aput-byte v30, v1, v27

    const/16 v27, 0x198

    aput-byte v30, v1, v27

    const/16 v27, 0x199

    aput-byte v30, v1, v27

    const/16 v27, 0x19a

    aput-byte v30, v1, v27

    const/16 v27, 0x19b

    aput-byte v30, v1, v27

    const/16 v27, 0x19c

    aput-byte v30, v1, v27

    const/16 v27, 0x19d

    aput-byte v30, v1, v27

    const/16 v27, 0x19e

    aput-byte v30, v1, v27

    const/16 v27, 0x19f

    aput-byte v30, v1, v27

    .line 97
    const/16 v27, 0x1a0

    aput-byte v30, v1, v27

    const/16 v27, 0x1a1

    aput-byte v30, v1, v27

    const/16 v27, 0x1a2

    aput-byte v30, v1, v27

    const/16 v27, 0x1a3

    aput-byte v30, v1, v27

    const/16 v27, 0x1a4

    aput-byte v30, v1, v27

    const/16 v27, 0x1a5

    aput-byte v30, v1, v27

    const/16 v27, 0x1a6

    aput-byte v30, v1, v27

    const/16 v27, 0x1a7

    aput-byte v30, v1, v27

    const/16 v27, 0x1a8

    aput-byte v30, v1, v27

    const/16 v27, 0x1a9

    aput-byte v30, v1, v27

    const/16 v27, 0x1aa

    aput-byte v30, v1, v27

    const/16 v27, 0x1ab

    aput-byte v30, v1, v27

    const/16 v27, 0x1ac

    aput-byte v30, v1, v27

    const/16 v27, 0x1ad

    aput-byte v30, v1, v27

    const/16 v27, 0x1ae

    aput-byte v30, v1, v27

    const/16 v27, 0x1af

    aput-byte v30, v1, v27

    const/16 v27, 0x1b0

    aput-byte v30, v1, v27

    const/16 v27, 0x1b1

    aput-byte v30, v1, v27

    const/16 v27, 0x1b2

    aput-byte v30, v1, v27

    const/16 v27, 0x1b3

    aput-byte v30, v1, v27

    const/16 v27, 0x1b4

    aput-byte v30, v1, v27

    const/16 v27, 0x1b5

    aput-byte v30, v1, v27

    const/16 v27, 0x1b6

    aput-byte v30, v1, v27

    .line 98
    const/16 v27, 0x1b7

    aput-byte v30, v1, v27

    const/16 v27, 0x1b8

    aput-byte v30, v1, v27

    const/16 v27, 0x1b9

    aput-byte v30, v1, v27

    const/16 v27, 0x1ba

    aput-byte v30, v1, v27

    const/16 v27, 0x1bb

    aput-byte v30, v1, v27

    const/16 v27, 0x1bc

    aput-byte v30, v1, v27

    const/16 v27, 0x1bd

    aput-byte v30, v1, v27

    const/16 v27, 0x1be

    aput-byte v30, v1, v27

    const/16 v27, 0x1bf

    aput-byte v30, v1, v27

    const/16 v27, 0x1c0

    const/16 v31, 0x1d

    aput-byte v31, v1, v27

    const/16 v27, 0x1c1

    aput-byte v31, v1, v27

    const/16 v27, 0x1c2

    aput-byte v31, v1, v27

    const/16 v27, 0x1c3

    aput-byte v31, v1, v27

    const/16 v27, 0x1c4

    aput-byte v31, v1, v27

    const/16 v27, 0x1c5

    aput-byte v31, v1, v27

    const/16 v27, 0x1c6

    aput-byte v31, v1, v27

    const/16 v27, 0x1c7

    aput-byte v31, v1, v27

    const/16 v27, 0x1c8

    aput-byte v31, v1, v27

    const/16 v27, 0x1c9

    aput-byte v31, v1, v27

    const/16 v27, 0x1ca

    aput-byte v31, v1, v27

    const/16 v27, 0x1cb

    aput-byte v31, v1, v27

    const/16 v27, 0x1cc

    aput-byte v31, v1, v27

    const/16 v27, 0x1cd

    aput-byte v31, v1, v27

    .line 99
    const/16 v27, 0x1ce

    aput-byte v31, v1, v27

    const/16 v27, 0x1cf

    aput-byte v31, v1, v27

    const/16 v27, 0x1d0

    aput-byte v31, v1, v27

    const/16 v27, 0x1d1

    aput-byte v31, v1, v27

    const/16 v27, 0x1d2

    aput-byte v31, v1, v27

    const/16 v27, 0x1d3

    aput-byte v31, v1, v27

    const/16 v27, 0x1d4

    aput-byte v31, v1, v27

    const/16 v27, 0x1d5

    aput-byte v31, v1, v27

    const/16 v27, 0x1d6

    aput-byte v31, v1, v27

    const/16 v27, 0x1d7

    aput-byte v31, v1, v27

    const/16 v27, 0x1d8

    aput-byte v31, v1, v27

    const/16 v27, 0x1d9

    aput-byte v31, v1, v27

    const/16 v27, 0x1da

    aput-byte v31, v1, v27

    const/16 v27, 0x1db

    aput-byte v31, v1, v27

    const/16 v27, 0x1dc

    aput-byte v31, v1, v27

    const/16 v27, 0x1dd

    aput-byte v31, v1, v27

    const/16 v27, 0x1de

    aput-byte v31, v1, v27

    const/16 v27, 0x1df

    aput-byte v31, v1, v27

    const/16 v27, 0x1e0

    aput-byte v31, v1, v27

    const/16 v27, 0x1e1

    aput-byte v31, v1, v27

    const/16 v27, 0x1e2

    aput-byte v31, v1, v27

    const/16 v27, 0x1e3

    aput-byte v31, v1, v27

    const/16 v27, 0x1e4

    aput-byte v31, v1, v27

    .line 100
    const/16 v27, 0x1e5

    aput-byte v31, v1, v27

    const/16 v27, 0x1e6

    aput-byte v31, v1, v27

    const/16 v27, 0x1e7

    aput-byte v31, v1, v27

    const/16 v27, 0x1e8

    aput-byte v31, v1, v27

    const/16 v27, 0x1e9

    aput-byte v31, v1, v27

    const/16 v27, 0x1ea

    aput-byte v31, v1, v27

    const/16 v27, 0x1eb

    aput-byte v31, v1, v27

    const/16 v27, 0x1ec

    aput-byte v31, v1, v27

    const/16 v27, 0x1ed

    aput-byte v31, v1, v27

    const/16 v27, 0x1ee

    aput-byte v31, v1, v27

    const/16 v27, 0x1ef

    aput-byte v31, v1, v27

    const/16 v27, 0x1f0

    aput-byte v31, v1, v27

    const/16 v27, 0x1f1

    aput-byte v31, v1, v27

    const/16 v27, 0x1f2

    aput-byte v31, v1, v27

    const/16 v27, 0x1f3

    aput-byte v31, v1, v27

    const/16 v27, 0x1f4

    aput-byte v31, v1, v27

    const/16 v27, 0x1f5

    aput-byte v31, v1, v27

    const/16 v27, 0x1f6

    aput-byte v31, v1, v27

    const/16 v27, 0x1f7

    aput-byte v31, v1, v27

    const/16 v27, 0x1f8

    aput-byte v31, v1, v27

    const/16 v27, 0x1f9

    aput-byte v31, v1, v27

    const/16 v27, 0x1fa

    aput-byte v31, v1, v27

    const/16 v27, 0x1fb

    aput-byte v31, v1, v27

    .line 101
    const/16 v27, 0x1fc

    aput-byte v31, v1, v27

    const/16 v27, 0x1fd

    aput-byte v31, v1, v27

    const/16 v27, 0x1fe

    aput-byte v31, v1, v27

    const/16 v27, 0x1ff

    aput-byte v31, v1, v27

    .line 79
    sput-object v1, Lcom/jcraft/jsch/jzlib/Tree;->_dist_code:[B

    .line 103
    const/16 v1, 0x100

    new-array v0, v1, [B

    aput-byte v3, v0, v3

    aput-byte v8, v0, v8

    aput-byte v13, v0, v13

    aput-byte v18, v0, v18

    aput-byte v23, v0, v23

    aput-byte v28, v0, v28

    aput-byte v29, v0, v29

    aput-byte v2, v0, v2

    aput-byte v2, v0, v4

    aput-byte v4, v0, v5

    aput-byte v4, v0, v6

    aput-byte v5, v0, v7

    aput-byte v5, v0, v9

    aput-byte v6, v0, v10

    aput-byte v6, v0, v11

    aput-byte v7, v0, v12

    aput-byte v7, v0, v14

    .line 104
    aput-byte v7, v0, v15

    const/16 v27, 0x13

    aput-byte v7, v0, v27

    aput-byte v9, v0, v17

    aput-byte v9, v0, v19

    aput-byte v9, v0, v20

    aput-byte v9, v0, v21

    aput-byte v10, v0, v22

    aput-byte v10, v0, v24

    aput-byte v10, v0, v25

    aput-byte v10, v0, v26

    aput-byte v11, v0, v30

    const/16 v31, 0x1d

    aput-byte v11, v0, v31

    const/16 v31, 0x1e

    aput-byte v11, v0, v31

    const/16 v27, 0x180

    aput-byte v11, v0, v32

    aput-byte v12, v0, v33

    aput-byte v12, v0, v34

    aput-byte v12, v0, v35

    aput-byte v12, v0, v36

    aput-byte v12, v0, v37

    aput-byte v12, v0, v38

    aput-byte v12, v0, v39

    aput-byte v12, v0, v40

    aput-byte v14, v0, v41

    .line 105
    aput-byte v14, v0, v42

    aput-byte v14, v0, v43

    aput-byte v14, v0, v44

    aput-byte v14, v0, v45

    aput-byte v14, v0, v46

    aput-byte v14, v0, v47

    aput-byte v14, v0, v48

    aput-byte v15, v0, v49

    aput-byte v15, v0, v50

    aput-byte v15, v0, v51

    aput-byte v15, v0, v52

    aput-byte v15, v0, v53

    aput-byte v15, v0, v54

    aput-byte v15, v0, v55

    aput-byte v15, v0, v56

    const/16 v32, 0x13

    aput-byte v32, v0, v57

    aput-byte v32, v0, v58

    aput-byte v32, v0, v59

    aput-byte v32, v0, v60

    aput-byte v32, v0, v61

    aput-byte v32, v0, v62

    aput-byte v32, v0, v63

    aput-byte v32, v0, v64

    .line 106
    aput-byte v17, v0, v65

    aput-byte v17, v0, v66

    aput-byte v17, v0, v67

    aput-byte v17, v0, v68

    aput-byte v17, v0, v69

    aput-byte v17, v0, v70

    aput-byte v17, v0, v71

    aput-byte v17, v0, v72

    aput-byte v17, v0, v73

    aput-byte v17, v0, v74

    aput-byte v17, v0, v75

    aput-byte v17, v0, v76

    aput-byte v17, v0, v77

    aput-byte v17, v0, v78

    aput-byte v17, v0, v79

    aput-byte v17, v0, v80

    aput-byte v19, v0, v81

    aput-byte v19, v0, v82

    aput-byte v19, v0, v83

    aput-byte v19, v0, v84

    aput-byte v19, v0, v85

    aput-byte v19, v0, v86

    aput-byte v19, v0, v87

    .line 107
    aput-byte v19, v0, v88

    aput-byte v19, v0, v89

    aput-byte v19, v0, v90

    aput-byte v19, v0, v91

    aput-byte v19, v0, v92

    aput-byte v19, v0, v93

    aput-byte v19, v0, v94

    aput-byte v19, v0, v95

    aput-byte v19, v0, v96

    aput-byte v20, v0, v97

    aput-byte v20, v0, v98

    aput-byte v20, v0, v99

    aput-byte v20, v0, v100

    aput-byte v20, v0, v101

    aput-byte v20, v0, v102

    aput-byte v20, v0, v103

    aput-byte v20, v0, v104

    aput-byte v20, v0, v105

    aput-byte v20, v0, v106

    aput-byte v20, v0, v107

    aput-byte v20, v0, v108

    aput-byte v20, v0, v109

    aput-byte v20, v0, v110

    .line 108
    aput-byte v20, v0, v111

    aput-byte v20, v0, v112

    aput-byte v21, v0, v113

    aput-byte v21, v0, v114

    aput-byte v21, v0, v115

    aput-byte v21, v0, v116

    aput-byte v21, v0, v117

    aput-byte v21, v0, v118

    aput-byte v21, v0, v119

    aput-byte v21, v0, v120

    aput-byte v21, v0, v121

    aput-byte v21, v0, v122

    aput-byte v21, v0, v123

    aput-byte v21, v0, v124

    aput-byte v21, v0, v125

    aput-byte v21, v0, v126

    aput-byte v21, v0, v127

    aput-byte v21, v0, v128

    aput-byte v22, v0, v129

    aput-byte v22, v0, v130

    aput-byte v22, v0, v131

    aput-byte v22, v0, v132

    aput-byte v22, v0, v133

    .line 109
    aput-byte v22, v0, v134

    aput-byte v22, v0, v135

    aput-byte v22, v0, v136

    aput-byte v22, v0, v137

    aput-byte v22, v0, v138

    aput-byte v22, v0, v139

    aput-byte v22, v0, v140

    aput-byte v22, v0, v141

    aput-byte v22, v0, v142

    aput-byte v22, v0, v143

    aput-byte v22, v0, v144

    aput-byte v22, v0, v145

    aput-byte v22, v0, v146

    aput-byte v22, v0, v147

    aput-byte v22, v0, v148

    aput-byte v22, v0, v149

    aput-byte v22, v0, v150

    aput-byte v22, v0, v151

    aput-byte v22, v0, v152

    aput-byte v22, v0, v153

    aput-byte v22, v0, v154

    aput-byte v22, v0, v155

    aput-byte v22, v0, v156

    .line 110
    aput-byte v22, v0, v157

    aput-byte v22, v0, v158

    aput-byte v22, v0, v159

    aput-byte v22, v0, v160

    aput-byte v24, v0, v161

    aput-byte v24, v0, v162

    aput-byte v24, v0, v163

    aput-byte v24, v0, v164

    aput-byte v24, v0, v165

    aput-byte v24, v0, v166

    aput-byte v24, v0, v167

    aput-byte v24, v0, v168

    aput-byte v24, v0, v169

    aput-byte v24, v0, v170

    aput-byte v24, v0, v171

    aput-byte v24, v0, v172

    aput-byte v24, v0, v173

    aput-byte v24, v0, v174

    aput-byte v24, v0, v175

    aput-byte v24, v0, v176

    aput-byte v24, v0, v177

    aput-byte v24, v0, v178

    aput-byte v24, v0, v179

    .line 111
    aput-byte v24, v0, v180

    aput-byte v24, v0, v181

    aput-byte v24, v0, v182

    aput-byte v24, v0, v183

    aput-byte v24, v0, v184

    aput-byte v24, v0, v185

    aput-byte v24, v0, v186

    aput-byte v24, v0, v187

    aput-byte v24, v0, v188

    aput-byte v24, v0, v189

    aput-byte v24, v0, v190

    aput-byte v24, v0, v191

    aput-byte v24, v0, v192

    aput-byte v25, v0, v193

    aput-byte v25, v0, v194

    aput-byte v25, v0, v195

    aput-byte v25, v0, v196

    aput-byte v25, v0, v197

    aput-byte v25, v0, v198

    aput-byte v25, v0, v199

    aput-byte v25, v0, v200

    aput-byte v25, v0, v201

    aput-byte v25, v0, v202

    .line 112
    aput-byte v25, v0, v203

    aput-byte v25, v0, v204

    aput-byte v25, v0, v205

    aput-byte v25, v0, v206

    aput-byte v25, v0, v207

    aput-byte v25, v0, v208

    aput-byte v25, v0, v209

    aput-byte v25, v0, v210

    aput-byte v25, v0, v211

    aput-byte v25, v0, v212

    aput-byte v25, v0, v213

    aput-byte v25, v0, v214

    aput-byte v25, v0, v215

    aput-byte v25, v0, v216

    aput-byte v25, v0, v217

    aput-byte v25, v0, v218

    aput-byte v25, v0, v219

    aput-byte v25, v0, v220

    aput-byte v25, v0, v221

    aput-byte v25, v0, v222

    aput-byte v25, v0, v223

    aput-byte v25, v0, v224

    aput-byte v26, v0, v225

    .line 113
    aput-byte v26, v0, v226

    aput-byte v26, v0, v227

    aput-byte v26, v0, v228

    aput-byte v26, v0, v229

    aput-byte v26, v0, v230

    aput-byte v26, v0, v231

    aput-byte v26, v0, v232

    aput-byte v26, v0, v233

    aput-byte v26, v0, v234

    aput-byte v26, v0, v235

    aput-byte v26, v0, v236

    aput-byte v26, v0, v237

    aput-byte v26, v0, v238

    aput-byte v26, v0, v239

    aput-byte v26, v0, v240

    aput-byte v26, v0, v241

    aput-byte v26, v0, v242

    aput-byte v26, v0, v243

    aput-byte v26, v0, v244

    aput-byte v26, v0, v245

    aput-byte v26, v0, v246

    aput-byte v26, v0, v247

    aput-byte v26, v0, v248

    .line 114
    aput-byte v26, v0, v249

    aput-byte v26, v0, v250

    aput-byte v26, v0, v251

    aput-byte v26, v0, v252

    aput-byte v26, v0, v253

    aput-byte v26, v0, v254

    aput-byte v26, v0, v255

    aput-byte v30, v0, v16

    .line 103
    sput-object v0, Lcom/jcraft/jsch/jzlib/Tree;->_length_code:[B

    .line 116
    const/16 v0, 0x1d

    new-array v1, v0, [I

    aput v3, v1, v3

    aput v8, v1, v8

    aput v13, v1, v13

    aput v18, v1, v18

    aput v23, v1, v23

    aput v28, v1, v28

    aput v29, v1, v29

    aput v2, v1, v2

    aput v5, v1, v4

    aput v7, v1, v5

    aput v10, v1, v6

    aput v12, v1, v7

    aput v17, v1, v9

    aput v22, v1, v10

    aput v30, v1, v11

    aput v33, v1, v12

    aput v41, v1, v14

    .line 117
    aput v49, v1, v15

    const/16 v0, 0x13

    aput v57, v1, v0

    aput v65, v1, v17

    aput v81, v1, v19

    aput v97, v1, v20

    aput v113, v1, v21

    aput v129, v1, v22

    aput v161, v1, v24

    aput v193, v1, v25

    aput v225, v1, v26

    .line 116
    sput-object v1, Lcom/jcraft/jsch/jzlib/Tree;->base_length:[I

    .line 119
    const/16 v1, 0x1e

    new-array v1, v1, [I

    aput v3, v1, v3

    aput v8, v1, v8

    aput v13, v1, v13

    aput v18, v1, v18

    aput v28, v1, v23

    aput v2, v1, v28

    aput v7, v1, v29

    aput v12, v1, v2

    aput v22, v1, v4

    aput v33, v1, v5

    aput v49, v1, v6

    aput v65, v1, v7

    aput v97, v1, v9

    aput v129, v1, v10

    aput v193, v1, v11

    const/16 v2, 0x100

    aput v2, v1, v12

    .line 120
    aput v27, v1, v14

    const/16 v2, 0x200

    aput v2, v1, v15

    const/16 v2, 0x300

    const/16 v0, 0x13

    aput v2, v1, v0

    const/16 v0, 0x400

    aput v0, v1, v17

    const/16 v0, 0x600

    aput v0, v1, v19

    const/16 v0, 0x800

    aput v0, v1, v20

    const/16 v0, 0xc00

    aput v0, v1, v21

    const/16 v0, 0x1000

    aput v0, v1, v22

    const/16 v0, 0x1800

    aput v0, v1, v24

    const/16 v0, 0x2000

    aput v0, v1, v25

    const/16 v0, 0x3000

    aput v0, v1, v26

    const/16 v0, 0x4000

    aput v0, v1, v30

    const/16 v0, 0x6000

    const/16 v2, 0x1d

    aput v0, v1, v2

    .line 119
    sput-object v1, Lcom/jcraft/jsch/jzlib/Tree;->base_dist:[I

    .line 120
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final bi_reverse(II)I
    .locals 2

    .line 342
    const/4 v0, 0x0

    .line 344
    :cond_0
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 345
    ushr-int/lit8 p0, p0, 0x1

    .line 346
    shl-int/lit8 v0, v0, 0x1

    .line 347
    add-int/lit8 p1, p1, -0x1

    .line 343
    if-gtz p1, :cond_0

    .line 348
    ushr-int/lit8 p0, v0, 0x1

    return p0
.end method

.method static d_code(I)I
    .locals 2

    .line 126
    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/jcraft/jsch/jzlib/Tree;->_dist_code:[B

    aget-byte p0, v0, p0

    return p0

    :cond_0
    sget-object v1, Lcom/jcraft/jsch/jzlib/Tree;->_dist_code:[B

    ushr-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v0

    aget-byte p0, v1, p0

    return p0
.end method

.method private static final gen_codes([SI[S[S)V
    .locals 5

    .line 310
    nop

    .line 316
    const/4 v0, 0x0

    aput-short v0, p3, v0

    .line 317
    const/4 v1, 0x1

    move v2, v1

    move v3, v0

    :goto_0
    const/16 v4, 0xf

    if-le v2, v4, :cond_2

    .line 327
    :goto_1
    if-le v0, p1, :cond_0

    .line 334
    return-void

    .line 328
    :cond_0
    mul-int/lit8 p2, v0, 0x2

    add-int v2, p2, v1

    aget-short v2, p0, v2

    .line 329
    if-nez v2, :cond_1

    .line 330
    goto :goto_2

    .line 332
    :cond_1
    aget-short v3, p3, v2

    add-int v4, v3, v1

    int-to-short v4, v4

    aput-short v4, p3, v2

    invoke-static {v3, v2}, Lcom/jcraft/jsch/jzlib/Tree;->bi_reverse(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p0, p2

    .line 327
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    :cond_2
    sub-int v4, v2, v1

    aget-short v4, p2, v4

    add-int/2addr v3, v4

    shl-int/2addr v3, v1

    int-to-short v3, v3

    aput-short v3, p3, v2

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method build_tree(Lcom/jcraft/jsch/jzlib/Deflate;)V
    .locals 12

    .line 222
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Tree;->dyn_tree:[S

    .line 223
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Tree;->stat_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/StaticTree;->static_tree:[S

    .line 224
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Tree;->stat_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/StaticTree;->elems:I

    .line 226
    nop

    .line 232
    const/4 v3, 0x0

    iput v3, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_len:I

    .line 233
    const/16 v4, 0x23d

    iput v4, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_max:I

    .line 235
    const/4 v4, -0x1

    move v5, v3

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-lt v5, v2, :cond_5

    .line 248
    nop

    .line 248
    :goto_1
    iget v5, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_len:I

    if-lt v5, v7, :cond_2

    .line 257
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Tree;->max_code:I

    .line 262
    iget v1, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_len:I

    div-int/2addr v1, v7

    :goto_2
    if-ge v1, v6, :cond_1

    .line 268
    nop

    .line 271
    :goto_3
    iget-object v1, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    aget v1, v1, v6

    .line 272
    iget-object v3, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    iget-object v5, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    iget v8, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_len:I

    sub-int v9, v8, v6

    iput v9, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_len:I

    aget v5, v5, v8

    aput v5, v3, v6

    .line 273
    invoke-virtual {p1, v0, v6}, Lcom/jcraft/jsch/jzlib/Deflate;->pqdownheap([SI)V

    .line 274
    iget-object v3, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    aget v3, v3, v6

    .line 276
    iget-object v5, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    iget v8, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_max:I

    sub-int/2addr v8, v6

    iput v8, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_max:I

    aput v1, v5, v8

    .line 277
    iget-object v5, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    iget v8, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_max:I

    sub-int/2addr v8, v6

    iput v8, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_max:I

    aput v3, v5, v8

    .line 280
    mul-int v5, v2, v7

    mul-int v8, v1, v7

    aget-short v9, v0, v8

    mul-int v10, v3, v7

    aget-short v11, v0, v10

    add-int/2addr v9, v11

    int-to-short v9, v9

    aput-short v9, v0, v5

    .line 281
    iget-object v5, p1, Lcom/jcraft/jsch/jzlib/Deflate;->depth:[B

    iget-object v9, p1, Lcom/jcraft/jsch/jzlib/Deflate;->depth:[B

    aget-byte v1, v9, v1

    iget-object v9, p1, Lcom/jcraft/jsch/jzlib/Deflate;->depth:[B

    aget-byte v3, v9, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v5, v2

    .line 282
    add-int v1, v8, v6

    add-int v3, v10, v6

    int-to-short v5, v2

    aput-short v5, v0, v3

    aput-short v5, v0, v1

    .line 285
    iget-object v1, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    add-int/lit8 v3, v2, 0x1

    aput v2, v1, v6

    .line 286
    invoke-virtual {p1, v0, v6}, Lcom/jcraft/jsch/jzlib/Deflate;->pqdownheap([SI)V

    .line 287
    iget v1, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_len:I

    .line 269
    if-ge v1, v7, :cond_0

    .line 289
    iget-object v1, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    iget v2, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_max:I

    sub-int/2addr v2, v6

    iput v2, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_max:I

    iget-object v3, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    aget v3, v3, v6

    aput v3, v1, v2

    .line 294
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/jzlib/Tree;->gen_bitlen(Lcom/jcraft/jsch/jzlib/Deflate;)V

    .line 297
    iget-object v1, p1, Lcom/jcraft/jsch/jzlib/Deflate;->bl_count:[S

    iget-object p1, p1, Lcom/jcraft/jsch/jzlib/Deflate;->next_code:[S

    invoke-static {v0, v4, v1, p1}, Lcom/jcraft/jsch/jzlib/Tree;->gen_codes([SI[S[S)V

    .line 298
    return-void

    :cond_0
    move v2, v3

    goto :goto_3

    .line 263
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->pqdownheap([SI)V

    .line 262
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 249
    :cond_2
    iget-object v5, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    iget v8, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_len:I

    add-int/2addr v8, v6

    iput v8, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_len:I

    if-ge v4, v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    move v9, v4

    goto :goto_4

    :cond_3
    move v9, v4

    move v4, v3

    :goto_4
    aput v4, v5, v8

    .line 250
    mul-int v5, v4, v7

    aput-short v6, v0, v5

    .line 251
    iget-object v8, p1, Lcom/jcraft/jsch/jzlib/Deflate;->depth:[B

    aput-byte v3, v8, v4

    .line 252
    iget v4, p1, Lcom/jcraft/jsch/jzlib/Deflate;->opt_len:I

    sub-int/2addr v4, v6

    iput v4, p1, Lcom/jcraft/jsch/jzlib/Deflate;->opt_len:I

    .line 253
    if-eqz v1, :cond_4

    .line 254
    iget v4, p1, Lcom/jcraft/jsch/jzlib/Deflate;->static_len:I

    add-int/2addr v5, v6

    aget-short v5, v1, v5

    sub-int/2addr v4, v5

    iput v4, p1, Lcom/jcraft/jsch/jzlib/Deflate;->static_len:I

    :cond_4
    move v4, v9

    goto/16 :goto_1

    .line 236
    :cond_5
    mul-int/2addr v7, v5

    aget-short v8, v0, v7

    if-eqz v8, :cond_6

    .line 237
    iget-object v4, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    iget v7, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_len:I

    add-int/2addr v6, v7

    iput v6, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_len:I

    aput v5, v4, v6

    .line 238
    iget-object v4, p1, Lcom/jcraft/jsch/jzlib/Deflate;->depth:[B

    aput-byte v3, v4, v5

    .line 239
    move v4, v5

    goto :goto_5

    .line 240
    :cond_6
    add-int/2addr v6, v7

    aput-short v3, v0, v6

    .line 235
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method gen_bitlen(Lcom/jcraft/jsch/jzlib/Deflate;)V
    .locals 14

    .line 142
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Tree;->dyn_tree:[S

    .line 143
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Tree;->stat_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/StaticTree;->static_tree:[S

    .line 144
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Tree;->stat_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    iget-object v2, v2, Lcom/jcraft/jsch/jzlib/StaticTree;->extra_bits:[I

    .line 145
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Tree;->stat_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/StaticTree;->extra_base:I

    .line 146
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Tree;->stat_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/StaticTree;->max_length:I

    .line 152
    nop

    .line 154
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0xf

    if-le v6, v7, :cond_c

    .line 159
    iget-object v6, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    iget v7, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_max:I

    aget v6, v6, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-short v5, v0, v6

    .line 161
    iget v6, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap_max:I

    add-int/lit8 v6, v6, 0x1

    move v7, v5

    :goto_1
    const/16 v8, 0x23d

    if-lt v6, v8, :cond_7

    .line 183
    if-nez v7, :cond_0

    .line 184
    return-void

    :cond_0
    move v8, v7

    .line 189
    :cond_1
    add-int/lit8 v1, v4, -0x1

    .line 190
    nop

    .line 190
    :goto_2
    iget-object v2, p1, Lcom/jcraft/jsch/jzlib/Deflate;->bl_count:[S

    aget-short v2, v2, v1

    if-eqz v2, :cond_6

    .line 192
    iget-object v2, p1, Lcom/jcraft/jsch/jzlib/Deflate;->bl_count:[S

    aget-short v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 193
    iget-object v2, p1, Lcom/jcraft/jsch/jzlib/Deflate;->bl_count:[S

    add-int/lit8 v1, v1, 0x1

    aget-short v3, v2, v1

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 194
    iget-object v1, p1, Lcom/jcraft/jsch/jzlib/Deflate;->bl_count:[S

    aget-short v2, v1, v4

    add-int/lit8 v2, v2, -0x1

    int-to-short v2, v2

    aput-short v2, v1, v4

    .line 197
    add-int/lit8 v8, v8, -0x2

    .line 198
    nop

    .line 188
    if-gtz v8, :cond_1

    .line 200
    move v1, v4

    :goto_3
    if-nez v1, :cond_2

    .line 213
    return-void

    .line 201
    :cond_2
    iget-object v2, p1, Lcom/jcraft/jsch/jzlib/Deflate;->bl_count:[S

    aget-short v2, v2, v1

    .line 202
    nop

    .line 202
    :goto_4
    if-nez v2, :cond_3

    .line 200
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 203
    :cond_3
    iget-object v3, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    add-int/lit8 v6, v6, -0x1

    aget v3, v3, v6

    .line 204
    iget v4, p0, Lcom/jcraft/jsch/jzlib/Tree;->max_code:I

    if-le v3, v4, :cond_4

    .line 205
    goto :goto_4

    .line 206
    :cond_4
    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v3, 0x1

    aget-short v5, v0, v4

    if-eq v5, v1, :cond_5

    .line 207
    iget v5, p1, Lcom/jcraft/jsch/jzlib/Deflate;->opt_len:I

    int-to-long v7, v1

    aget-short v9, v0, v4

    int-to-long v9, v9

    sub-long/2addr v7, v9

    aget-short v3, v0, v3

    int-to-long v9, v3

    mul-long/2addr v7, v9

    long-to-int v3, v7

    add-int/2addr v3, v5

    iput v3, p1, Lcom/jcraft/jsch/jzlib/Deflate;->opt_len:I

    .line 208
    int-to-short v3, v1

    aput-short v3, v0, v4

    .line 210
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 191
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 162
    :cond_7
    iget-object v8, p1, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    aget v8, v8, v6

    .line 163
    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v10, v9, 0x1

    aget-short v11, v0, v10

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-short v11, v0, v11

    add-int/lit8 v11, v11, 0x1

    .line 164
    if-le v11, v4, :cond_8

    .line 165
    nop

    .line 166
    add-int/lit8 v7, v7, 0x1

    move v11, v4

    .line 168
    :cond_8
    int-to-short v12, v11

    aput-short v12, v0, v10

    .line 171
    iget v12, p0, Lcom/jcraft/jsch/jzlib/Tree;->max_code:I

    if-le v8, v12, :cond_9

    .line 172
    goto :goto_6

    .line 174
    :cond_9
    iget-object v12, p1, Lcom/jcraft/jsch/jzlib/Deflate;->bl_count:[S

    aget-short v13, v12, v11

    add-int/lit8 v13, v13, 0x1

    int-to-short v13, v13

    aput-short v13, v12, v11

    .line 175
    nop

    .line 176
    if-lt v8, v3, :cond_a

    .line 177
    sub-int/2addr v8, v3

    aget v8, v2, v8

    goto :goto_5

    :cond_a
    move v8, v5

    .line 178
    :goto_5
    aget-short v9, v0, v9

    .line 179
    iget v12, p1, Lcom/jcraft/jsch/jzlib/Deflate;->opt_len:I

    add-int/2addr v11, v8

    mul-int/2addr v11, v9

    add-int/2addr v11, v12

    iput v11, p1, Lcom/jcraft/jsch/jzlib/Deflate;->opt_len:I

    .line 180
    if-eqz v1, :cond_b

    .line 181
    iget v11, p1, Lcom/jcraft/jsch/jzlib/Deflate;->static_len:I

    aget-short v10, v1, v10

    add-int/2addr v8, v10

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    iput v8, p1, Lcom/jcraft/jsch/jzlib/Deflate;->static_len:I

    .line 161
    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 155
    :cond_c
    iget-object v7, p1, Lcom/jcraft/jsch/jzlib/Deflate;->bl_count:[S

    aput-short v5, v7, v6

    .line 154
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method
