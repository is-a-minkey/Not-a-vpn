.class final Lcom/jcraft/jsch/jzlib/InfTree;
.super Ljava/lang/Object;
.source "InfTree.java"


# static fields
.field static final BMAX:I = 0xf

.field private static final MANY:I = 0x5a0

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_OK:I = 0x0

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field static final cpdext:[I

.field static final cpdist:[I

.field static final cplens:[I

.field static final cplext:[I

.field static final fixed_bd:I = 0x5

.field static final fixed_bl:I = 0x9

.field static final fixed_td:[I

.field static final fixed_tl:[I


# instance fields
.field c:[I

.field hn:[I

.field r:[I

.field u:[I

.field v:[I

.field x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 190

    .line 50
    const/16 v0, 0x600

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x60

    aput v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x7

    aput v4, v0, v3

    const/4 v5, 0x2

    const/16 v6, 0x100

    aput v6, v0, v5

    const/4 v7, 0x4

    const/16 v8, 0x8

    aput v8, v0, v7

    const/4 v9, 0x5

    const/16 v10, 0x50

    aput v10, v0, v9

    aput v8, v0, v4

    const/16 v11, 0x10

    aput v11, v0, v8

    const/16 v12, 0x9

    const/16 v13, 0x54

    aput v13, v0, v12

    const/16 v14, 0xa

    aput v8, v0, v14

    const/16 v15, 0xb

    const/16 v16, 0x73

    aput v16, v0, v15

    const/16 v17, 0xc

    const/16 v18, 0x52

    aput v18, v0, v17

    const/16 v19, 0xd

    aput v4, v0, v19

    const/16 v20, 0xe

    const/16 v1, 0x1f

    aput v1, v0, v20

    aput v8, v0, v11

    const/16 v21, 0x11

    const/16 v22, 0x70

    aput v22, v0, v21

    .line 51
    const/16 v23, 0x13

    aput v8, v0, v23

    const/16 v24, 0x14

    const/16 v25, 0x30

    aput v25, v0, v24

    const/16 v26, 0x16

    aput v12, v0, v26

    const/16 v27, 0x17

    const/16 v28, 0xc0

    aput v28, v0, v27

    const/16 v29, 0x18

    aput v10, v0, v29

    const/16 v30, 0x19

    aput v4, v0, v30

    const/16 v31, 0x1a

    aput v14, v0, v31

    const/16 v32, 0x1c

    aput v8, v0, v32

    const/16 v33, 0x1d

    aput v2, v0, v33

    aput v8, v0, v1

    const/16 v34, 0x20

    aput v34, v0, v34

    const/16 v35, 0x22

    aput v12, v0, v35

    const/16 v36, 0x23

    const/16 v37, 0xa0

    aput v37, v0, v36

    const/16 v38, 0x25

    aput v8, v0, v38

    const/16 v39, 0x28

    aput v8, v0, v39

    const/16 v40, 0x29

    const/16 v41, 0x80

    aput v41, v0, v40

    const/16 v42, 0x2b

    aput v8, v0, v42

    const/16 v43, 0x2c

    const/16 v44, 0x40

    aput v44, v0, v43

    .line 52
    const/16 v45, 0x2e

    aput v12, v0, v45

    const/16 v46, 0x2f

    const/16 v47, 0xe0

    aput v47, v0, v46

    aput v10, v0, v25

    const/16 v48, 0x31

    aput v4, v0, v48

    const/16 v49, 0x32

    const/16 v50, 0x6

    aput v50, v0, v49

    const/16 v51, 0x34

    aput v8, v0, v51

    const/16 v52, 0x35

    const/16 v53, 0x58

    aput v53, v0, v52

    const/16 v54, 0x37

    aput v8, v0, v54

    const/16 v55, 0x38

    aput v29, v0, v55

    const/16 v56, 0x3a

    aput v12, v0, v56

    const/16 v57, 0x3b

    const/16 v58, 0x90

    aput v58, v0, v57

    const/16 v59, 0x3c

    const/16 v60, 0x53

    aput v60, v0, v59

    const/16 v61, 0x3d

    aput v4, v0, v61

    const/16 v62, 0x3e

    aput v57, v0, v62

    aput v8, v0, v44

    const/16 v63, 0x41

    const/16 v64, 0x78

    aput v64, v0, v63

    const/16 v65, 0x43

    aput v8, v0, v65

    const/16 v66, 0x44

    aput v55, v0, v66

    const/16 v67, 0x46

    aput v12, v0, v67

    const/16 v68, 0x47

    const/16 v69, 0xd0

    aput v69, v0, v68

    .line 53
    const/16 v70, 0x48

    const/16 v71, 0x51

    aput v71, v0, v70

    const/16 v72, 0x49

    aput v4, v0, v72

    const/16 v73, 0x4a

    aput v21, v0, v73

    const/16 v74, 0x4c

    aput v8, v0, v74

    const/16 v75, 0x4d

    const/16 v76, 0x68

    aput v76, v0, v75

    const/16 v77, 0x4f

    aput v8, v0, v77

    aput v39, v0, v10

    aput v12, v0, v18

    const/16 v78, 0xb0

    aput v78, v0, v60

    const/16 v79, 0x55

    aput v8, v0, v79

    const/16 v80, 0x56

    aput v8, v0, v80

    aput v8, v0, v53

    const/16 v81, 0x59

    const/16 v82, 0x88

    aput v82, v0, v81

    const/16 v83, 0x5b

    aput v8, v0, v83

    const/16 v84, 0x5c

    aput v70, v0, v84

    const/16 v85, 0x5e

    aput v12, v0, v85

    const/16 v86, 0x5f

    const/16 v87, 0xf0

    aput v87, v0, v86

    aput v10, v0, v2

    const/16 v88, 0x61

    aput v4, v0, v88

    const/16 v89, 0x62

    aput v7, v0, v89

    .line 54
    const/16 v90, 0x64

    aput v8, v0, v90

    const/16 v91, 0x65

    aput v13, v0, v91

    const/16 v92, 0x67

    aput v8, v0, v92

    aput v24, v0, v76

    const/16 v93, 0x69

    aput v79, v0, v93

    const/16 v94, 0x6a

    aput v8, v0, v94

    const/16 v95, 0x6b

    const/16 v96, 0xe3

    aput v96, v0, v95

    const/16 v97, 0x6c

    aput v60, v0, v97

    const/16 v98, 0x6d

    aput v4, v0, v98

    const/16 v99, 0x6e

    aput v42, v0, v99

    aput v8, v0, v22

    const/16 v100, 0x71

    const/16 v101, 0x74

    aput v101, v0, v100

    aput v8, v0, v16

    aput v51, v0, v101

    const/16 v102, 0x76

    aput v12, v0, v102

    const/16 v103, 0x77

    const/16 v104, 0xc8

    aput v104, v0, v103

    aput v71, v0, v64

    const/16 v105, 0x79

    aput v4, v0, v105

    const/16 v106, 0x7a

    aput v19, v0, v106

    const/16 v107, 0x7c

    aput v8, v0, v107

    .line 55
    const/16 v108, 0x7d

    aput v90, v0, v108

    const/16 v109, 0x7f

    aput v8, v0, v109

    const/16 v110, 0x24

    aput v110, v0, v41

    const/16 v111, 0x82

    aput v12, v0, v111

    const/16 v112, 0x83

    const/16 v113, 0xa8

    aput v113, v0, v112

    const/16 v114, 0x85

    aput v8, v0, v114

    const/16 v115, 0x86

    aput v7, v0, v115

    aput v8, v0, v82

    const/16 v116, 0x89

    const/16 v117, 0x84

    aput v117, v0, v116

    const/16 v118, 0x8b

    aput v8, v0, v118

    const/16 v119, 0x8c

    aput v66, v0, v119

    const/16 v120, 0x8e

    aput v12, v0, v120

    const/16 v121, 0x8f

    const/16 v122, 0xe8

    aput v122, v0, v121

    aput v10, v0, v58

    const/16 v58, 0x91

    aput v4, v0, v58

    const/16 v123, 0x92

    aput v8, v0, v123

    const/16 v124, 0x94

    aput v8, v0, v124

    const/16 v125, 0x95

    aput v84, v0, v125

    const/16 v126, 0x97

    aput v8, v0, v126

    .line 56
    const/16 v127, 0x98

    aput v32, v0, v127

    const/16 v128, 0x9a

    aput v12, v0, v128

    const/16 v129, 0x9b

    aput v127, v0, v129

    const/16 v127, 0x9c

    aput v13, v0, v127

    const/16 v130, 0x9d

    aput v4, v0, v130

    const/16 v131, 0x9e

    aput v60, v0, v131

    aput v8, v0, v37

    const/16 v37, 0xa1

    aput v107, v0, v37

    const/16 v132, 0xa3

    aput v8, v0, v132

    const/16 v133, 0xa4

    aput v59, v0, v133

    const/16 v134, 0xa6

    aput v12, v0, v134

    const/16 v135, 0xa7

    const/16 v136, 0xd8

    aput v136, v0, v135

    aput v18, v0, v113

    const/16 v113, 0xa9

    aput v4, v0, v113

    const/16 v137, 0xaa

    aput v27, v0, v137

    const/16 v138, 0xac

    aput v8, v0, v138

    const/16 v139, 0xad

    aput v97, v0, v139

    const/16 v140, 0xaf

    aput v8, v0, v140

    aput v43, v0, v78

    .line 57
    const/16 v78, 0xb2

    aput v12, v0, v78

    const/16 v141, 0xb3

    const/16 v142, 0xb8

    aput v142, v0, v141

    const/16 v143, 0xb5

    aput v8, v0, v143

    const/16 v144, 0xb6

    aput v17, v0, v144

    aput v8, v0, v142

    const/16 v142, 0xb9

    aput v119, v0, v142

    const/16 v145, 0xbb

    aput v8, v0, v145

    const/16 v146, 0xbc

    aput v74, v0, v146

    const/16 v147, 0xbe

    aput v12, v0, v147

    const/16 v148, 0xbf

    const/16 v149, 0xf8

    aput v149, v0, v148

    aput v10, v0, v28

    const/16 v150, 0xc1

    aput v4, v0, v150

    const/16 v151, 0xc2

    const/16 v152, 0x3

    aput v152, v0, v151

    const/16 v153, 0xc4

    aput v8, v0, v153

    const/16 v154, 0xc5

    aput v18, v0, v154

    const/16 v155, 0xc7

    aput v8, v0, v155

    const/16 v156, 0x12

    aput v156, v0, v104

    const/16 v104, 0xc9

    aput v79, v0, v104

    const/16 v157, 0xca

    aput v8, v0, v157

    const/16 v158, 0xcb

    aput v132, v0, v158

    .line 58
    const/16 v159, 0xcc

    aput v60, v0, v159

    const/16 v160, 0xcd

    aput v4, v0, v160

    const/16 v161, 0xce

    aput v36, v0, v161

    aput v8, v0, v69

    const/16 v69, 0xd1

    const/16 v162, 0x72

    aput v162, v0, v69

    const/16 v163, 0xd3

    aput v8, v0, v163

    const/16 v164, 0xd4

    aput v49, v0, v164

    const/16 v165, 0xd6

    aput v12, v0, v165

    const/16 v166, 0xd7

    aput v153, v0, v166

    aput v71, v0, v136

    const/16 v136, 0xd9

    aput v4, v0, v136

    const/16 v153, 0xda

    aput v15, v0, v153

    const/16 v167, 0xdc

    aput v8, v0, v167

    const/16 v168, 0xdd

    aput v89, v0, v168

    const/16 v169, 0xdf

    aput v8, v0, v169

    aput v35, v0, v47

    const/16 v47, 0xe2

    aput v12, v0, v47

    aput v133, v0, v96

    const/16 v133, 0xe5

    aput v8, v0, v133

    const/16 v170, 0xe6

    aput v5, v0, v170

    .line 59
    aput v8, v0, v122

    const/16 v122, 0xe9

    aput v111, v0, v122

    const/16 v171, 0xeb

    aput v8, v0, v171

    const/16 v172, 0xec

    const/16 v173, 0x42

    aput v173, v0, v172

    const/16 v174, 0xee

    aput v12, v0, v174

    const/16 v175, 0xef

    const/16 v176, 0xe4

    aput v176, v0, v175

    aput v10, v0, v87

    const/16 v87, 0xf1

    aput v4, v0, v87

    const/16 v176, 0xf2

    aput v4, v0, v176

    const/16 v177, 0xf4

    aput v8, v0, v177

    const/16 v178, 0xf5

    const/16 v179, 0x5a

    aput v179, v0, v178

    const/16 v180, 0xf7

    aput v8, v0, v180

    aput v31, v0, v149

    const/16 v149, 0xfa

    aput v12, v0, v149

    const/16 v181, 0xfb

    aput v124, v0, v181

    const/16 v124, 0xfc

    aput v13, v0, v124

    const/16 v182, 0xfd

    aput v4, v0, v182

    const/16 v183, 0xfe

    aput v65, v0, v183

    aput v8, v0, v6

    const/16 v184, 0x101

    aput v106, v0, v184

    .line 60
    const/16 v184, 0x103

    aput v8, v0, v184

    const/16 v184, 0x104

    aput v56, v0, v184

    const/16 v184, 0x106

    aput v12, v0, v184

    const/16 v184, 0x107

    aput v164, v0, v184

    const/16 v164, 0x108

    aput v18, v0, v164

    const/16 v164, 0x109

    aput v4, v0, v164

    const/16 v164, 0x10a

    aput v23, v0, v164

    const/16 v164, 0x10c

    aput v8, v0, v164

    const/16 v164, 0x10d

    aput v94, v0, v164

    const/16 v164, 0x10f

    aput v8, v0, v164

    const/16 v164, 0x110

    const/16 v184, 0x2a

    aput v184, v0, v164

    const/16 v164, 0x112

    aput v12, v0, v164

    const/16 v164, 0x113

    const/16 v185, 0xb4

    aput v185, v0, v164

    const/16 v164, 0x115

    aput v8, v0, v164

    const/16 v164, 0x116

    aput v14, v0, v164

    const/16 v164, 0x118

    aput v8, v0, v164

    const/16 v164, 0x119

    const/16 v185, 0x8a

    aput v185, v0, v164

    const/16 v164, 0x11b

    aput v8, v0, v164

    const/16 v164, 0x11c

    aput v73, v0, v164

    .line 61
    const/16 v164, 0x11e

    aput v12, v0, v164

    const/16 v164, 0x11f

    aput v177, v0, v164

    const/16 v164, 0x120

    aput v10, v0, v164

    const/16 v164, 0x121

    aput v4, v0, v164

    const/16 v164, 0x122

    aput v9, v0, v164

    const/16 v164, 0x124

    aput v8, v0, v164

    const/16 v164, 0x125

    aput v80, v0, v164

    const/16 v164, 0x127

    aput v8, v0, v164

    const/16 v164, 0x128

    aput v26, v0, v164

    const/16 v164, 0x129

    aput v28, v0, v164

    const/16 v164, 0x12a

    aput v8, v0, v164

    const/16 v164, 0x12c

    aput v60, v0, v164

    const/16 v164, 0x12d

    aput v4, v0, v164

    const/16 v164, 0x12e

    const/16 v177, 0x33

    aput v177, v0, v164

    const/16 v164, 0x130

    aput v8, v0, v164

    const/16 v164, 0x131

    aput v102, v0, v164

    const/16 v164, 0x133

    aput v8, v0, v164

    const/16 v164, 0x134

    const/16 v186, 0x36

    aput v186, v0, v164

    const/16 v164, 0x136

    aput v12, v0, v164

    const/16 v164, 0x137

    aput v159, v0, v164

    .line 62
    const/16 v159, 0x138

    aput v71, v0, v159

    const/16 v159, 0x139

    aput v4, v0, v159

    const/16 v159, 0x13a

    const/16 v164, 0xf

    aput v164, v0, v159

    const/16 v159, 0x13c

    aput v8, v0, v159

    const/16 v159, 0x13d

    const/16 v187, 0x66

    aput v187, v0, v159

    const/16 v159, 0x13f

    aput v8, v0, v159

    const/16 v159, 0x140

    const/16 v188, 0x26

    aput v188, v0, v159

    const/16 v159, 0x142

    aput v12, v0, v159

    const/16 v159, 0x143

    aput v138, v0, v159

    const/16 v138, 0x145

    aput v8, v0, v138

    const/16 v138, 0x146

    aput v50, v0, v138

    const/16 v138, 0x148

    aput v8, v0, v138

    const/16 v138, 0x149

    aput v115, v0, v138

    const/16 v138, 0x14b

    aput v8, v0, v138

    const/16 v138, 0x14c

    aput v67, v0, v138

    const/16 v138, 0x14e

    aput v12, v0, v138

    const/16 v138, 0x14f

    aput v172, v0, v138

    const/16 v138, 0x150

    aput v10, v0, v138

    const/16 v138, 0x151

    aput v4, v0, v138

    const/16 v138, 0x152

    aput v12, v0, v138

    .line 63
    const/16 v138, 0x154

    aput v8, v0, v138

    const/16 v138, 0x155

    aput v85, v0, v138

    const/16 v138, 0x157

    aput v8, v0, v138

    const/16 v138, 0x158

    const/16 v5, 0x1e

    aput v5, v0, v138

    const/16 v138, 0x15a

    aput v12, v0, v138

    const/16 v138, 0x15b

    aput v127, v0, v138

    const/16 v127, 0x15c

    aput v13, v0, v127

    const/16 v127, 0x15d

    aput v4, v0, v127

    const/16 v127, 0x15e

    const/16 v138, 0x63

    aput v138, v0, v127

    const/16 v127, 0x160

    aput v8, v0, v127

    const/16 v127, 0x161

    const/16 v159, 0x7e

    aput v159, v0, v127

    const/16 v127, 0x163

    aput v8, v0, v127

    const/16 v127, 0x164

    aput v62, v0, v127

    const/16 v127, 0x166

    aput v12, v0, v127

    const/16 v127, 0x167

    aput v167, v0, v127

    const/16 v127, 0x168

    aput v18, v0, v127

    const/16 v127, 0x169

    aput v4, v0, v127

    const/16 v127, 0x16a

    const/16 v167, 0x1b

    aput v167, v0, v127

    const/16 v127, 0x16c

    aput v8, v0, v127

    .line 64
    const/16 v127, 0x16d

    aput v99, v0, v127

    const/16 v127, 0x16f

    aput v8, v0, v127

    const/16 v127, 0x170

    aput v45, v0, v127

    const/16 v127, 0x172

    aput v12, v0, v127

    const/16 v127, 0x173

    aput v146, v0, v127

    const/16 v127, 0x175

    aput v8, v0, v127

    const/16 v127, 0x176

    aput v20, v0, v127

    const/16 v127, 0x178

    aput v8, v0, v127

    const/16 v127, 0x179

    aput v120, v0, v127

    const/16 v127, 0x17b

    aput v8, v0, v127

    const/16 v127, 0x17c

    const/16 v146, 0x4e

    aput v146, v0, v127

    const/16 v127, 0x17e

    aput v12, v0, v127

    const/16 v127, 0x17f

    aput v124, v0, v127

    const/16 v124, 0x180

    aput v2, v0, v124

    const/16 v124, 0x181

    aput v4, v0, v124

    const/16 v124, 0x182

    aput v6, v0, v124

    const/16 v124, 0x184

    aput v8, v0, v124

    const/16 v124, 0x185

    aput v71, v0, v124

    .line 65
    const/16 v124, 0x187

    aput v8, v0, v124

    const/16 v124, 0x188

    aput v21, v0, v124

    const/16 v124, 0x189

    aput v79, v0, v124

    const/16 v124, 0x18a

    aput v8, v0, v124

    const/16 v124, 0x18b

    aput v112, v0, v124

    const/16 v124, 0x18c

    aput v18, v0, v124

    const/16 v124, 0x18d

    aput v4, v0, v124

    const/16 v124, 0x18e

    aput v1, v0, v124

    const/16 v124, 0x190

    aput v8, v0, v124

    const/16 v124, 0x191

    aput v100, v0, v124

    const/16 v124, 0x193

    aput v8, v0, v124

    const/16 v124, 0x194

    aput v48, v0, v124

    const/16 v124, 0x196

    aput v12, v0, v124

    const/16 v124, 0x197

    aput v151, v0, v124

    const/16 v124, 0x198

    aput v10, v0, v124

    const/16 v124, 0x199

    aput v4, v0, v124

    const/16 v124, 0x19a

    aput v14, v0, v124

    const/16 v124, 0x19c

    aput v8, v0, v124

    const/16 v124, 0x19d

    aput v88, v0, v124

    const/16 v124, 0x19f

    aput v8, v0, v124

    const/16 v124, 0x1a0

    const/16 v127, 0x21

    aput v127, v0, v124

    .line 66
    const/16 v124, 0x1a2

    aput v12, v0, v124

    const/16 v124, 0x1a3

    const/16 v151, 0xa2

    aput v151, v0, v124

    const/16 v124, 0x1a5

    aput v8, v0, v124

    const/16 v124, 0x1a6

    aput v3, v0, v124

    const/16 v124, 0x1a8

    aput v8, v0, v124

    const/16 v124, 0x1a9

    const/16 v151, 0x81

    aput v151, v0, v124

    const/16 v124, 0x1ab

    aput v8, v0, v124

    const/16 v124, 0x1ac

    aput v63, v0, v124

    const/16 v124, 0x1ae

    aput v12, v0, v124

    const/16 v124, 0x1af

    aput v47, v0, v124

    const/16 v47, 0x1b0

    aput v10, v0, v47

    const/16 v47, 0x1b1

    aput v4, v0, v47

    const/16 v47, 0x1b2

    aput v50, v0, v47

    const/16 v47, 0x1b4

    aput v8, v0, v47

    const/16 v47, 0x1b5

    aput v81, v0, v47

    const/16 v47, 0x1b7

    aput v8, v0, v47

    const/16 v47, 0x1b8

    aput v30, v0, v47

    const/16 v47, 0x1ba

    aput v12, v0, v47

    const/16 v47, 0x1bb

    aput v123, v0, v47

    .line 67
    const/16 v47, 0x1bc

    aput v60, v0, v47

    const/16 v47, 0x1bd

    aput v4, v0, v47

    const/16 v47, 0x1be

    aput v57, v0, v47

    const/16 v47, 0x1c0

    aput v8, v0, v47

    const/16 v47, 0x1c1

    aput v105, v0, v47

    const/16 v47, 0x1c3

    aput v8, v0, v47

    const/16 v47, 0x1c4

    const/16 v123, 0x39

    aput v123, v0, v47

    const/16 v47, 0x1c6

    aput v12, v0, v47

    const/16 v47, 0x1c7

    const/16 v124, 0xd2

    aput v124, v0, v47

    const/16 v47, 0x1c8

    aput v71, v0, v47

    const/16 v47, 0x1c9

    aput v4, v0, v47

    const/16 v47, 0x1ca

    aput v21, v0, v47

    const/16 v47, 0x1cc

    aput v8, v0, v47

    const/16 v47, 0x1cd

    aput v93, v0, v47

    const/16 v47, 0x1cf

    aput v8, v0, v47

    const/16 v47, 0x1d0

    aput v40, v0, v47

    const/16 v47, 0x1d2

    aput v12, v0, v47

    const/16 v47, 0x1d3

    aput v78, v0, v47

    const/16 v47, 0x1d5

    aput v8, v0, v47

    const/16 v47, 0x1d6

    aput v12, v0, v47

    .line 68
    const/16 v47, 0x1d8

    aput v8, v0, v47

    const/16 v47, 0x1d9

    aput v116, v0, v47

    const/16 v47, 0x1db

    aput v8, v0, v47

    const/16 v47, 0x1dc

    aput v72, v0, v47

    const/16 v47, 0x1de

    aput v12, v0, v47

    const/16 v47, 0x1df

    aput v176, v0, v47

    const/16 v47, 0x1e0

    aput v10, v0, v47

    const/16 v47, 0x1e1

    aput v4, v0, v47

    const/16 v47, 0x1e2

    aput v7, v0, v47

    const/16 v47, 0x1e4

    aput v8, v0, v47

    const/16 v47, 0x1e5

    aput v79, v0, v47

    const/16 v47, 0x1e7

    aput v8, v0, v47

    const/16 v47, 0x1e8

    const/16 v78, 0x15

    aput v78, v0, v47

    const/16 v47, 0x1e9

    aput v10, v0, v47

    const/16 v47, 0x1ea

    aput v8, v0, v47

    const/16 v47, 0x1eb

    const/16 v124, 0x102

    aput v124, v0, v47

    const/16 v47, 0x1ec

    aput v60, v0, v47

    const/16 v47, 0x1ed

    aput v4, v0, v47

    const/16 v47, 0x1ee

    aput v42, v0, v47

    const/16 v47, 0x1f0

    aput v8, v0, v47

    .line 69
    const/16 v47, 0x1f1

    const/16 v172, 0x75

    aput v172, v0, v47

    const/16 v47, 0x1f3

    aput v8, v0, v47

    const/16 v47, 0x1f4

    aput v52, v0, v47

    const/16 v47, 0x1f6

    aput v12, v0, v47

    const/16 v47, 0x1f7

    aput v157, v0, v47

    const/16 v47, 0x1f8

    aput v71, v0, v47

    const/16 v47, 0x1f9

    aput v4, v0, v47

    const/16 v47, 0x1fa

    aput v19, v0, v47

    const/16 v47, 0x1fc

    aput v8, v0, v47

    const/16 v47, 0x1fd

    aput v91, v0, v47

    const/16 v47, 0x1ff

    aput v8, v0, v47

    const/16 v47, 0x200

    aput v38, v0, v47

    const/16 v47, 0x202

    aput v12, v0, v47

    const/16 v47, 0x203

    aput v137, v0, v47

    const/16 v47, 0x205

    aput v8, v0, v47

    const/16 v47, 0x206

    aput v9, v0, v47

    const/16 v47, 0x208

    aput v8, v0, v47

    const/16 v47, 0x209

    aput v114, v0, v47

    const/16 v47, 0x20b

    aput v8, v0, v47

    .line 70
    const/16 v47, 0x20c

    const/16 v137, 0x45

    aput v137, v0, v47

    const/16 v47, 0x20e

    aput v12, v0, v47

    const/16 v47, 0x20f

    const/16 v157, 0xea

    aput v157, v0, v47

    const/16 v47, 0x210

    aput v10, v0, v47

    const/16 v47, 0x211

    aput v4, v0, v47

    const/16 v47, 0x212

    aput v8, v0, v47

    const/16 v47, 0x214

    aput v8, v0, v47

    const/16 v47, 0x215

    const/16 v157, 0x5d

    aput v157, v0, v47

    const/16 v47, 0x217

    aput v8, v0, v47

    const/16 v47, 0x218

    aput v33, v0, v47

    const/16 v47, 0x21a

    aput v12, v0, v47

    const/16 v47, 0x21b

    aput v128, v0, v47

    const/16 v47, 0x21c

    aput v13, v0, v47

    const/16 v47, 0x21d

    aput v4, v0, v47

    const/16 v47, 0x21e

    aput v60, v0, v47

    const/16 v47, 0x220

    aput v8, v0, v47

    const/16 v47, 0x221

    aput v108, v0, v47

    const/16 v47, 0x223

    aput v8, v0, v47

    const/16 v47, 0x224

    aput v61, v0, v47

    const/16 v47, 0x226

    aput v12, v0, v47

    .line 71
    const/16 v47, 0x227

    aput v153, v0, v47

    const/16 v47, 0x228

    aput v18, v0, v47

    const/16 v47, 0x229

    aput v4, v0, v47

    const/16 v47, 0x22a

    aput v27, v0, v47

    const/16 v47, 0x22c

    aput v8, v0, v47

    const/16 v47, 0x22d

    aput v98, v0, v47

    const/16 v47, 0x22f

    aput v8, v0, v47

    const/16 v47, 0x230

    const/16 v128, 0x2d

    aput v128, v0, v47

    const/16 v47, 0x232

    aput v12, v0, v47

    const/16 v47, 0x233

    const/16 v153, 0xba

    aput v153, v0, v47

    const/16 v47, 0x235

    aput v8, v0, v47

    const/16 v47, 0x236

    aput v19, v0, v47

    const/16 v47, 0x238

    aput v8, v0, v47

    const/16 v47, 0x239

    const/16 v153, 0x8d

    aput v153, v0, v47

    const/16 v47, 0x23b

    aput v8, v0, v47

    const/16 v47, 0x23c

    aput v75, v0, v47

    const/16 v47, 0x23e

    aput v12, v0, v47

    const/16 v47, 0x23f

    aput v149, v0, v47

    const/16 v47, 0x240

    aput v10, v0, v47

    .line 72
    const/16 v47, 0x241

    aput v4, v0, v47

    const/16 v47, 0x242

    aput v152, v0, v47

    const/16 v47, 0x244

    aput v8, v0, v47

    const/16 v47, 0x245

    aput v60, v0, v47

    const/16 v47, 0x247

    aput v8, v0, v47

    const/16 v47, 0x248

    aput v23, v0, v47

    const/16 v47, 0x249

    aput v79, v0, v47

    const/16 v47, 0x24a

    aput v8, v0, v47

    const/16 v47, 0x24b

    const/16 v149, 0xc3

    aput v149, v0, v47

    const/16 v47, 0x24c

    aput v60, v0, v47

    const/16 v47, 0x24d

    aput v4, v0, v47

    const/16 v47, 0x24e

    aput v36, v0, v47

    const/16 v47, 0x250

    aput v8, v0, v47

    const/16 v47, 0x251

    aput v16, v0, v47

    const/16 v47, 0x253

    aput v8, v0, v47

    const/16 v47, 0x254

    aput v177, v0, v47

    const/16 v47, 0x256

    aput v12, v0, v47

    const/16 v47, 0x257

    const/16 v176, 0xc6

    aput v176, v0, v47

    const/16 v47, 0x258

    aput v71, v0, v47

    const/16 v47, 0x259

    aput v4, v0, v47

    const/16 v47, 0x25a

    aput v15, v0, v47

    .line 73
    const/16 v47, 0x25c

    aput v8, v0, v47

    const/16 v47, 0x25d

    aput v138, v0, v47

    const/16 v47, 0x25f

    aput v8, v0, v47

    const/16 v47, 0x260

    aput v36, v0, v47

    const/16 v47, 0x262

    aput v12, v0, v47

    const/16 v47, 0x263

    aput v134, v0, v47

    const/16 v47, 0x265

    aput v8, v0, v47

    const/16 v47, 0x266

    aput v152, v0, v47

    const/16 v47, 0x268

    aput v8, v0, v47

    const/16 v47, 0x269

    aput v112, v0, v47

    const/16 v47, 0x26b

    aput v8, v0, v47

    const/16 v47, 0x26c

    aput v65, v0, v47

    const/16 v47, 0x26e

    aput v12, v0, v47

    const/16 v47, 0x26f

    aput v170, v0, v47

    const/16 v47, 0x270

    aput v10, v0, v47

    const/16 v47, 0x271

    aput v4, v0, v47

    const/16 v47, 0x272

    aput v4, v0, v47

    const/16 v47, 0x274

    aput v8, v0, v47

    const/16 v47, 0x275

    aput v83, v0, v47

    const/16 v47, 0x277

    aput v8, v0, v47

    .line 74
    const/16 v47, 0x278

    aput v167, v0, v47

    const/16 v47, 0x27a

    aput v12, v0, v47

    const/16 v47, 0x27b

    const/16 v134, 0x96

    aput v134, v0, v47

    const/16 v47, 0x27c

    aput v13, v0, v47

    const/16 v47, 0x27d

    aput v4, v0, v47

    const/16 v47, 0x27e

    aput v65, v0, v47

    const/16 v47, 0x280

    aput v8, v0, v47

    const/16 v47, 0x281

    const/16 v134, 0x7b

    aput v134, v0, v47

    const/16 v47, 0x283

    aput v8, v0, v47

    const/16 v47, 0x284

    aput v57, v0, v47

    const/16 v47, 0x286

    aput v12, v0, v47

    const/16 v47, 0x287

    aput v165, v0, v47

    const/16 v47, 0x288

    aput v18, v0, v47

    const/16 v47, 0x289

    aput v4, v0, v47

    const/16 v47, 0x28a

    aput v23, v0, v47

    const/16 v47, 0x28c

    aput v8, v0, v47

    const/16 v47, 0x28d

    aput v95, v0, v47

    const/16 v47, 0x28f

    aput v8, v0, v47

    const/16 v47, 0x290

    aput v42, v0, v47

    .line 75
    const/16 v47, 0x292

    aput v12, v0, v47

    const/16 v47, 0x293

    aput v144, v0, v47

    const/16 v47, 0x295

    aput v8, v0, v47

    const/16 v47, 0x296

    aput v15, v0, v47

    const/16 v47, 0x298

    aput v8, v0, v47

    const/16 v47, 0x299

    aput v118, v0, v47

    const/16 v47, 0x29b

    aput v8, v0, v47

    const/16 v47, 0x29c

    const/16 v144, 0x4b

    aput v144, v0, v47

    const/16 v47, 0x29e

    aput v12, v0, v47

    const/16 v47, 0x29f

    const/16 v165, 0xf6

    aput v165, v0, v47

    const/16 v47, 0x2a0

    aput v10, v0, v47

    const/16 v47, 0x2a1

    aput v4, v0, v47

    const/16 v47, 0x2a2

    aput v9, v0, v47

    const/16 v47, 0x2a4

    aput v8, v0, v47

    const/16 v47, 0x2a5

    const/16 v165, 0x57

    aput v165, v0, v47

    const/16 v47, 0x2a7

    aput v8, v0, v47

    const/16 v47, 0x2a8

    aput v27, v0, v47

    const/16 v47, 0x2a9

    aput v28, v0, v47

    const/16 v47, 0x2aa

    aput v8, v0, v47

    const/16 v47, 0x2ac

    aput v60, v0, v47

    .line 76
    const/16 v47, 0x2ad

    aput v4, v0, v47

    const/16 v47, 0x2ae

    aput v177, v0, v47

    const/16 v47, 0x2b0

    aput v8, v0, v47

    const/16 v47, 0x2b1

    aput v103, v0, v47

    const/16 v47, 0x2b3

    aput v8, v0, v47

    const/16 v47, 0x2b4

    aput v54, v0, v47

    const/16 v47, 0x2b6

    aput v12, v0, v47

    const/16 v47, 0x2b7

    aput v161, v0, v47

    const/16 v47, 0x2b8

    aput v71, v0, v47

    const/16 v47, 0x2b9

    aput v4, v0, v47

    const/16 v47, 0x2ba

    aput v164, v0, v47

    const/16 v47, 0x2bc

    aput v8, v0, v47

    const/16 v47, 0x2bd

    aput v92, v0, v47

    const/16 v47, 0x2bf

    aput v8, v0, v47

    const/16 v47, 0x2c0

    const/16 v161, 0x27

    aput v161, v0, v47

    const/16 v47, 0x2c2

    aput v12, v0, v47

    const/16 v47, 0x2c3

    const/16 v170, 0xae

    aput v170, v0, v47

    const/16 v47, 0x2c5

    aput v8, v0, v47

    const/16 v47, 0x2c6

    aput v4, v0, v47

    .line 77
    const/16 v47, 0x2c8

    aput v8, v0, v47

    const/16 v47, 0x2c9

    const/16 v170, 0x87

    aput v170, v0, v47

    const/16 v47, 0x2cb

    aput v8, v0, v47

    const/16 v47, 0x2cc

    aput v68, v0, v47

    const/16 v47, 0x2ce

    aput v12, v0, v47

    const/16 v47, 0x2cf

    aput v174, v0, v47

    const/16 v47, 0x2d0

    aput v10, v0, v47

    const/16 v47, 0x2d1

    aput v4, v0, v47

    const/16 v47, 0x2d2

    aput v12, v0, v47

    const/16 v47, 0x2d4

    aput v8, v0, v47

    const/16 v47, 0x2d5

    aput v86, v0, v47

    const/16 v47, 0x2d7

    aput v8, v0, v47

    const/16 v47, 0x2d8

    aput v1, v0, v47

    const/16 v47, 0x2da

    aput v12, v0, v47

    const/16 v47, 0x2db

    aput v131, v0, v47

    const/16 v47, 0x2dc

    aput v13, v0, v47

    const/16 v47, 0x2dd

    aput v4, v0, v47

    const/16 v47, 0x2de

    aput v138, v0, v47

    const/16 v47, 0x2e0

    aput v8, v0, v47

    const/16 v47, 0x2e1

    aput v109, v0, v47

    .line 78
    const/16 v47, 0x2e3

    aput v8, v0, v47

    const/16 v47, 0x2e4

    const/16 v131, 0x3f

    aput v131, v0, v47

    const/16 v47, 0x2e6

    aput v12, v0, v47

    const/16 v47, 0x2e7

    const/16 v174, 0xde

    aput v174, v0, v47

    const/16 v47, 0x2e8

    aput v18, v0, v47

    const/16 v47, 0x2e9

    aput v4, v0, v47

    const/16 v47, 0x2ea

    aput v167, v0, v47

    const/16 v47, 0x2ec

    aput v8, v0, v47

    const/16 v47, 0x2ed

    const/16 v174, 0x6f

    aput v174, v0, v47

    const/16 v47, 0x2ef

    aput v8, v0, v47

    const/16 v47, 0x2f0

    aput v46, v0, v47

    const/16 v47, 0x2f2

    aput v12, v0, v47

    const/16 v47, 0x2f3

    aput v147, v0, v47

    const/16 v47, 0x2f5

    aput v8, v0, v47

    const/16 v47, 0x2f6

    aput v164, v0, v47

    const/16 v47, 0x2f8

    aput v8, v0, v47

    const/16 v47, 0x2f9

    aput v121, v0, v47

    const/16 v47, 0x2fb

    aput v8, v0, v47

    const/16 v47, 0x2fc

    aput v77, v0, v47

    .line 79
    const/16 v47, 0x2fe

    aput v12, v0, v47

    const/16 v47, 0x2ff

    aput v183, v0, v47

    const/16 v47, 0x300

    aput v2, v0, v47

    const/16 v47, 0x301

    aput v4, v0, v47

    const/16 v47, 0x302

    aput v6, v0, v47

    const/16 v47, 0x304

    aput v8, v0, v47

    const/16 v47, 0x305

    aput v10, v0, v47

    const/16 v47, 0x307

    aput v8, v0, v47

    const/16 v47, 0x308

    aput v11, v0, v47

    const/16 v47, 0x309

    aput v13, v0, v47

    const/16 v47, 0x30a

    aput v8, v0, v47

    const/16 v47, 0x30b

    aput v16, v0, v47

    const/16 v47, 0x30c

    aput v18, v0, v47

    const/16 v47, 0x30d

    aput v4, v0, v47

    const/16 v47, 0x30e

    aput v1, v0, v47

    const/16 v47, 0x310

    aput v8, v0, v47

    const/16 v47, 0x311

    aput v22, v0, v47

    const/16 v47, 0x313

    aput v8, v0, v47

    const/16 v47, 0x314

    aput v25, v0, v47

    const/16 v25, 0x316

    aput v12, v0, v25

    const/16 v25, 0x317

    aput v150, v0, v25

    .line 80
    const/16 v25, 0x318

    aput v10, v0, v25

    const/16 v25, 0x319

    aput v4, v0, v25

    const/16 v25, 0x31a

    aput v14, v0, v25

    const/16 v25, 0x31c

    aput v8, v0, v25

    const/16 v25, 0x31d

    aput v2, v0, v25

    const/16 v25, 0x31f

    aput v8, v0, v25

    const/16 v25, 0x320

    aput v34, v0, v25

    const/16 v25, 0x322

    aput v12, v0, v25

    const/16 v25, 0x323

    aput v37, v0, v25

    const/16 v25, 0x325

    aput v8, v0, v25

    const/16 v25, 0x328

    aput v8, v0, v25

    const/16 v25, 0x329

    aput v41, v0, v25

    const/16 v25, 0x32b

    aput v8, v0, v25

    const/16 v25, 0x32c

    aput v44, v0, v25

    const/16 v25, 0x32e

    aput v12, v0, v25

    const/16 v25, 0x32f

    const/16 v34, 0xe1

    aput v34, v0, v25

    const/16 v25, 0x330

    aput v10, v0, v25

    const/16 v25, 0x331

    aput v4, v0, v25

    const/16 v25, 0x332

    aput v50, v0, v25

    .line 81
    const/16 v25, 0x334

    aput v8, v0, v25

    const/16 v25, 0x335

    aput v53, v0, v25

    const/16 v25, 0x337

    aput v8, v0, v25

    const/16 v25, 0x338

    aput v29, v0, v25

    const/16 v25, 0x33a

    aput v12, v0, v25

    const/16 v25, 0x33b

    aput v58, v0, v25

    const/16 v25, 0x33c

    aput v60, v0, v25

    const/16 v25, 0x33d

    aput v4, v0, v25

    const/16 v25, 0x33e

    aput v57, v0, v25

    const/16 v25, 0x340

    aput v8, v0, v25

    const/16 v25, 0x341

    aput v64, v0, v25

    const/16 v25, 0x343

    aput v8, v0, v25

    const/16 v25, 0x344

    aput v55, v0, v25

    const/16 v25, 0x346

    aput v12, v0, v25

    const/16 v25, 0x347

    aput v69, v0, v25

    const/16 v25, 0x348

    aput v71, v0, v25

    const/16 v25, 0x349

    aput v4, v0, v25

    const/16 v25, 0x34a

    aput v21, v0, v25

    const/16 v25, 0x34c

    aput v8, v0, v25

    .line 82
    const/16 v25, 0x34d

    aput v76, v0, v25

    const/16 v25, 0x34f

    aput v8, v0, v25

    const/16 v25, 0x350

    aput v39, v0, v25

    const/16 v25, 0x352

    aput v12, v0, v25

    const/16 v25, 0x353

    const/16 v34, 0xb1

    aput v34, v0, v25

    const/16 v25, 0x355

    aput v8, v0, v25

    const/16 v25, 0x356

    aput v8, v0, v25

    const/16 v25, 0x358

    aput v8, v0, v25

    const/16 v25, 0x359

    aput v82, v0, v25

    const/16 v25, 0x35b

    aput v8, v0, v25

    const/16 v25, 0x35c

    aput v70, v0, v25

    const/16 v25, 0x35e

    aput v12, v0, v25

    const/16 v25, 0x35f

    aput v87, v0, v25

    const/16 v25, 0x360

    aput v10, v0, v25

    const/16 v25, 0x361

    aput v4, v0, v25

    const/16 v25, 0x362

    aput v7, v0, v25

    const/16 v25, 0x364

    aput v8, v0, v25

    const/16 v25, 0x365

    aput v13, v0, v25

    const/16 v25, 0x367

    aput v8, v0, v25

    .line 83
    const/16 v25, 0x368

    aput v24, v0, v25

    const/16 v25, 0x369

    aput v79, v0, v25

    const/16 v25, 0x36a

    aput v8, v0, v25

    const/16 v25, 0x36b

    aput v96, v0, v25

    const/16 v25, 0x36c

    aput v60, v0, v25

    const/16 v25, 0x36d

    aput v4, v0, v25

    const/16 v25, 0x36e

    aput v42, v0, v25

    const/16 v25, 0x370

    aput v8, v0, v25

    const/16 v25, 0x371

    aput v101, v0, v25

    const/16 v25, 0x373

    aput v8, v0, v25

    const/16 v25, 0x374

    aput v51, v0, v25

    const/16 v25, 0x376

    aput v12, v0, v25

    const/16 v25, 0x377

    aput v104, v0, v25

    const/16 v25, 0x378

    aput v71, v0, v25

    const/16 v25, 0x379

    aput v4, v0, v25

    const/16 v25, 0x37a

    aput v19, v0, v25

    const/16 v25, 0x37c

    aput v8, v0, v25

    const/16 v25, 0x37d

    aput v90, v0, v25

    const/16 v25, 0x37f

    aput v8, v0, v25

    const/16 v25, 0x380

    aput v110, v0, v25

    .line 84
    const/16 v25, 0x382

    aput v12, v0, v25

    const/16 v25, 0x383

    aput v113, v0, v25

    const/16 v25, 0x385

    aput v8, v0, v25

    const/16 v25, 0x386

    aput v7, v0, v25

    const/16 v25, 0x388

    aput v8, v0, v25

    const/16 v25, 0x389

    aput v117, v0, v25

    const/16 v25, 0x38b

    aput v8, v0, v25

    const/16 v25, 0x38c

    aput v66, v0, v25

    const/16 v25, 0x38e

    aput v12, v0, v25

    const/16 v25, 0x38f

    aput v122, v0, v25

    const/16 v25, 0x390

    aput v10, v0, v25

    const/16 v25, 0x391

    aput v4, v0, v25

    const/16 v25, 0x392

    aput v8, v0, v25

    const/16 v25, 0x394

    aput v8, v0, v25

    const/16 v25, 0x395

    aput v84, v0, v25

    const/16 v25, 0x397

    aput v8, v0, v25

    const/16 v25, 0x398

    aput v32, v0, v25

    const/16 v25, 0x39a

    aput v12, v0, v25

    const/16 v25, 0x39b

    const/16 v34, 0x99

    aput v34, v0, v25

    const/16 v25, 0x39c

    aput v13, v0, v25

    .line 85
    const/16 v25, 0x39d

    aput v4, v0, v25

    const/16 v25, 0x39e

    aput v60, v0, v25

    const/16 v25, 0x3a0

    aput v8, v0, v25

    const/16 v25, 0x3a1

    aput v107, v0, v25

    const/16 v25, 0x3a3

    aput v8, v0, v25

    const/16 v25, 0x3a4

    aput v59, v0, v25

    const/16 v25, 0x3a6

    aput v12, v0, v25

    const/16 v25, 0x3a7

    aput v136, v0, v25

    const/16 v25, 0x3a8

    aput v18, v0, v25

    const/16 v25, 0x3a9

    aput v4, v0, v25

    const/16 v25, 0x3aa

    aput v27, v0, v25

    const/16 v25, 0x3ac

    aput v8, v0, v25

    const/16 v25, 0x3ad

    aput v97, v0, v25

    const/16 v25, 0x3af

    aput v8, v0, v25

    const/16 v25, 0x3b0

    aput v43, v0, v25

    const/16 v25, 0x3b2

    aput v12, v0, v25

    const/16 v25, 0x3b3

    aput v142, v0, v25

    const/16 v25, 0x3b5

    aput v8, v0, v25

    const/16 v25, 0x3b6

    aput v17, v0, v25

    .line 86
    const/16 v25, 0x3b8

    aput v8, v0, v25

    const/16 v25, 0x3b9

    aput v119, v0, v25

    const/16 v25, 0x3bb

    aput v8, v0, v25

    const/16 v25, 0x3bc

    aput v74, v0, v25

    const/16 v25, 0x3be

    aput v12, v0, v25

    const/16 v25, 0x3bf

    const/16 v34, 0xf9

    aput v34, v0, v25

    const/16 v25, 0x3c0

    aput v10, v0, v25

    const/16 v25, 0x3c1

    aput v4, v0, v25

    const/16 v25, 0x3c2

    aput v152, v0, v25

    const/16 v25, 0x3c4

    aput v8, v0, v25

    const/16 v25, 0x3c5

    aput v18, v0, v25

    const/16 v25, 0x3c7

    aput v8, v0, v25

    const/16 v25, 0x3c8

    aput v156, v0, v25

    const/16 v25, 0x3c9

    aput v79, v0, v25

    const/16 v25, 0x3ca

    aput v8, v0, v25

    const/16 v25, 0x3cb

    aput v132, v0, v25

    const/16 v25, 0x3cc

    aput v60, v0, v25

    const/16 v25, 0x3cd

    aput v4, v0, v25

    const/16 v25, 0x3ce

    aput v36, v0, v25

    const/16 v25, 0x3d0

    aput v8, v0, v25

    const/16 v25, 0x3d1

    aput v162, v0, v25

    .line 87
    const/16 v25, 0x3d3

    aput v8, v0, v25

    const/16 v25, 0x3d4

    aput v49, v0, v25

    const/16 v25, 0x3d6

    aput v12, v0, v25

    const/16 v25, 0x3d7

    aput v154, v0, v25

    const/16 v25, 0x3d8

    aput v71, v0, v25

    const/16 v25, 0x3d9

    aput v4, v0, v25

    const/16 v25, 0x3da

    aput v15, v0, v25

    const/16 v25, 0x3dc

    aput v8, v0, v25

    const/16 v25, 0x3dd

    aput v89, v0, v25

    const/16 v25, 0x3df

    aput v8, v0, v25

    const/16 v25, 0x3e0

    aput v35, v0, v25

    const/16 v25, 0x3e2

    aput v12, v0, v25

    const/16 v25, 0x3e3

    const/16 v34, 0xa5

    aput v34, v0, v25

    const/16 v25, 0x3e5

    aput v8, v0, v25

    const/16 v25, 0x3e6

    const/16 v34, 0x2

    aput v34, v0, v25

    const/16 v25, 0x3e8

    aput v8, v0, v25

    const/16 v25, 0x3e9

    aput v111, v0, v25

    const/16 v25, 0x3eb

    aput v8, v0, v25

    const/16 v25, 0x3ec

    aput v173, v0, v25

    .line 88
    const/16 v25, 0x3ee

    aput v12, v0, v25

    const/16 v25, 0x3ef

    aput v133, v0, v25

    const/16 v25, 0x3f0

    aput v10, v0, v25

    const/16 v25, 0x3f1

    aput v4, v0, v25

    const/16 v25, 0x3f2

    aput v4, v0, v25

    const/16 v25, 0x3f4

    aput v8, v0, v25

    const/16 v25, 0x3f5

    aput v179, v0, v25

    const/16 v25, 0x3f7

    aput v8, v0, v25

    const/16 v25, 0x3f8

    aput v31, v0, v25

    const/16 v25, 0x3fa

    aput v12, v0, v25

    const/16 v25, 0x3fb

    aput v125, v0, v25

    const/16 v25, 0x3fc

    aput v13, v0, v25

    const/16 v25, 0x3fd

    aput v4, v0, v25

    const/16 v25, 0x3fe

    aput v65, v0, v25

    const/16 v25, 0x400

    aput v8, v0, v25

    const/16 v25, 0x401

    aput v106, v0, v25

    const/16 v25, 0x403

    aput v8, v0, v25

    const/16 v25, 0x404

    aput v56, v0, v25

    const/16 v25, 0x406

    aput v12, v0, v25

    const/16 v25, 0x407

    const/16 v34, 0xd5

    aput v34, v0, v25

    .line 89
    const/16 v25, 0x408

    aput v18, v0, v25

    const/16 v25, 0x409

    aput v4, v0, v25

    const/16 v25, 0x40a

    aput v23, v0, v25

    const/16 v25, 0x40c

    aput v8, v0, v25

    const/16 v25, 0x40d

    aput v94, v0, v25

    const/16 v25, 0x40f

    aput v8, v0, v25

    const/16 v25, 0x410

    aput v184, v0, v25

    const/16 v25, 0x412

    aput v12, v0, v25

    const/16 v25, 0x413

    aput v143, v0, v25

    const/16 v25, 0x415

    aput v8, v0, v25

    const/16 v25, 0x416

    aput v14, v0, v25

    const/16 v25, 0x418

    aput v8, v0, v25

    const/16 v25, 0x419

    aput v185, v0, v25

    const/16 v25, 0x41b

    aput v8, v0, v25

    const/16 v25, 0x41c

    aput v73, v0, v25

    const/16 v25, 0x41e

    aput v12, v0, v25

    const/16 v25, 0x41f

    aput v178, v0, v25

    const/16 v25, 0x420

    aput v10, v0, v25

    const/16 v25, 0x421

    aput v4, v0, v25

    const/16 v25, 0x422

    aput v9, v0, v25

    .line 90
    const/16 v25, 0x424

    aput v8, v0, v25

    const/16 v25, 0x425

    aput v80, v0, v25

    const/16 v25, 0x427

    aput v8, v0, v25

    const/16 v25, 0x428

    aput v26, v0, v25

    const/16 v25, 0x429

    aput v28, v0, v25

    const/16 v25, 0x42a

    aput v8, v0, v25

    const/16 v25, 0x42c

    aput v60, v0, v25

    const/16 v25, 0x42d

    aput v4, v0, v25

    const/16 v25, 0x42e

    aput v177, v0, v25

    const/16 v25, 0x430

    aput v8, v0, v25

    const/16 v25, 0x431

    aput v102, v0, v25

    const/16 v25, 0x433

    aput v8, v0, v25

    const/16 v25, 0x434

    aput v186, v0, v25

    const/16 v25, 0x436

    aput v12, v0, v25

    const/16 v25, 0x437

    aput v160, v0, v25

    const/16 v25, 0x438

    aput v71, v0, v25

    const/16 v25, 0x439

    aput v4, v0, v25

    const/16 v25, 0x43a

    aput v164, v0, v25

    const/16 v25, 0x43c

    aput v8, v0, v25

    .line 91
    const/16 v25, 0x43d

    aput v187, v0, v25

    const/16 v25, 0x43f

    aput v8, v0, v25

    const/16 v25, 0x440

    aput v188, v0, v25

    const/16 v25, 0x442

    aput v12, v0, v25

    const/16 v25, 0x443

    aput v139, v0, v25

    const/16 v25, 0x445

    aput v8, v0, v25

    const/16 v25, 0x446

    aput v50, v0, v25

    const/16 v25, 0x448

    aput v8, v0, v25

    const/16 v25, 0x449

    aput v115, v0, v25

    const/16 v25, 0x44b

    aput v8, v0, v25

    const/16 v25, 0x44c

    aput v67, v0, v25

    const/16 v25, 0x44e

    aput v12, v0, v25

    const/16 v25, 0x44f

    const/16 v34, 0xed

    aput v34, v0, v25

    const/16 v25, 0x450

    aput v10, v0, v25

    const/16 v25, 0x451

    aput v4, v0, v25

    const/16 v25, 0x452

    aput v12, v0, v25

    const/16 v25, 0x454

    aput v8, v0, v25

    const/16 v25, 0x455

    aput v85, v0, v25

    const/16 v25, 0x457

    aput v8, v0, v25

    .line 92
    const/16 v25, 0x458

    aput v5, v0, v25

    const/16 v25, 0x45a

    aput v12, v0, v25

    const/16 v25, 0x45b

    aput v130, v0, v25

    const/16 v25, 0x45c

    aput v13, v0, v25

    const/16 v25, 0x45d

    aput v4, v0, v25

    const/16 v25, 0x45e

    aput v138, v0, v25

    const/16 v25, 0x460

    aput v8, v0, v25

    const/16 v25, 0x461

    aput v159, v0, v25

    const/16 v25, 0x463

    aput v8, v0, v25

    const/16 v25, 0x464

    aput v62, v0, v25

    const/16 v25, 0x466

    aput v12, v0, v25

    const/16 v25, 0x467

    aput v168, v0, v25

    const/16 v25, 0x468

    aput v18, v0, v25

    const/16 v25, 0x469

    aput v4, v0, v25

    const/16 v25, 0x46a

    aput v167, v0, v25

    const/16 v25, 0x46c

    aput v8, v0, v25

    const/16 v25, 0x46d

    aput v99, v0, v25

    const/16 v25, 0x46f

    aput v8, v0, v25

    const/16 v25, 0x470

    aput v45, v0, v25

    .line 93
    const/16 v25, 0x472

    aput v12, v0, v25

    const/16 v25, 0x473

    const/16 v34, 0xbd

    aput v34, v0, v25

    const/16 v25, 0x475

    aput v8, v0, v25

    const/16 v25, 0x476

    aput v20, v0, v25

    const/16 v25, 0x478

    aput v8, v0, v25

    const/16 v25, 0x479

    aput v120, v0, v25

    const/16 v25, 0x47b

    aput v8, v0, v25

    const/16 v25, 0x47c

    aput v146, v0, v25

    const/16 v25, 0x47e

    aput v12, v0, v25

    const/16 v25, 0x47f

    aput v182, v0, v25

    const/16 v25, 0x480

    aput v2, v0, v25

    const/16 v25, 0x481

    aput v4, v0, v25

    const/16 v25, 0x482

    aput v6, v0, v25

    const/16 v6, 0x484

    aput v8, v0, v6

    const/16 v6, 0x485

    aput v71, v0, v6

    const/16 v6, 0x487

    aput v8, v0, v6

    const/16 v6, 0x488

    aput v21, v0, v6

    const/16 v6, 0x489

    aput v79, v0, v6

    const/16 v6, 0x48a

    aput v8, v0, v6

    const/16 v6, 0x48b

    aput v112, v0, v6

    .line 94
    const/16 v6, 0x48c

    aput v18, v0, v6

    const/16 v6, 0x48d

    aput v4, v0, v6

    const/16 v6, 0x48e

    aput v1, v0, v6

    const/16 v6, 0x490

    aput v8, v0, v6

    const/16 v6, 0x491

    aput v100, v0, v6

    const/16 v6, 0x493

    aput v8, v0, v6

    const/16 v6, 0x494

    aput v48, v0, v6

    const/16 v6, 0x496

    aput v12, v0, v6

    const/16 v6, 0x497

    aput v149, v0, v6

    const/16 v6, 0x498

    aput v10, v0, v6

    const/16 v6, 0x499

    aput v4, v0, v6

    const/16 v6, 0x49a

    aput v14, v0, v6

    const/16 v6, 0x49c

    aput v8, v0, v6

    const/16 v6, 0x49d

    aput v88, v0, v6

    const/16 v6, 0x49f

    aput v8, v0, v6

    const/16 v6, 0x4a0

    aput v127, v0, v6

    const/16 v6, 0x4a2

    aput v12, v0, v6

    const/16 v6, 0x4a3

    aput v132, v0, v6

    const/16 v6, 0x4a5

    aput v8, v0, v6

    const/16 v6, 0x4a6

    aput v3, v0, v6

    .line 95
    const/16 v6, 0x4a8

    aput v8, v0, v6

    const/16 v6, 0x4a9

    aput v151, v0, v6

    const/16 v6, 0x4ab

    aput v8, v0, v6

    const/16 v6, 0x4ac

    aput v63, v0, v6

    const/16 v6, 0x4ae

    aput v12, v0, v6

    const/16 v6, 0x4af

    aput v96, v0, v6

    const/16 v6, 0x4b0

    aput v10, v0, v6

    const/16 v6, 0x4b1

    aput v4, v0, v6

    const/16 v6, 0x4b2

    aput v50, v0, v6

    const/16 v6, 0x4b4

    aput v8, v0, v6

    const/16 v6, 0x4b5

    aput v81, v0, v6

    const/16 v6, 0x4b7

    aput v8, v0, v6

    const/16 v6, 0x4b8

    aput v30, v0, v6

    const/16 v6, 0x4ba

    aput v12, v0, v6

    const/16 v6, 0x4bb

    const/16 v25, 0x93

    aput v25, v0, v6

    const/16 v6, 0x4bc

    aput v60, v0, v6

    const/16 v6, 0x4bd

    aput v4, v0, v6

    const/16 v6, 0x4be

    aput v57, v0, v6

    const/16 v6, 0x4c0

    aput v8, v0, v6

    const/16 v6, 0x4c1

    aput v105, v0, v6

    .line 96
    const/16 v6, 0x4c3

    aput v8, v0, v6

    const/16 v6, 0x4c4

    aput v123, v0, v6

    const/16 v6, 0x4c6

    aput v12, v0, v6

    const/16 v6, 0x4c7

    aput v163, v0, v6

    const/16 v6, 0x4c8

    aput v71, v0, v6

    const/16 v6, 0x4c9

    aput v4, v0, v6

    const/16 v6, 0x4ca

    aput v21, v0, v6

    const/16 v6, 0x4cc

    aput v8, v0, v6

    const/16 v6, 0x4cd

    aput v93, v0, v6

    const/16 v6, 0x4cf

    aput v8, v0, v6

    const/16 v6, 0x4d0

    aput v40, v0, v6

    const/16 v6, 0x4d2

    aput v12, v0, v6

    const/16 v6, 0x4d3

    aput v141, v0, v6

    const/16 v6, 0x4d5

    aput v8, v0, v6

    const/16 v6, 0x4d6

    aput v12, v0, v6

    const/16 v6, 0x4d8

    aput v8, v0, v6

    const/16 v6, 0x4d9

    aput v116, v0, v6

    const/16 v6, 0x4db

    aput v8, v0, v6

    const/16 v6, 0x4dc

    aput v72, v0, v6

    .line 97
    const/16 v6, 0x4de

    aput v12, v0, v6

    const/16 v6, 0x4df

    const/16 v25, 0xf3

    aput v25, v0, v6

    const/16 v6, 0x4e0

    aput v10, v0, v6

    const/16 v6, 0x4e1

    aput v4, v0, v6

    const/16 v6, 0x4e2

    aput v7, v0, v6

    const/16 v6, 0x4e4

    aput v8, v0, v6

    const/16 v6, 0x4e5

    aput v79, v0, v6

    const/16 v6, 0x4e7

    aput v8, v0, v6

    const/16 v6, 0x4e8

    aput v78, v0, v6

    const/16 v6, 0x4e9

    aput v10, v0, v6

    const/16 v6, 0x4ea

    aput v8, v0, v6

    const/16 v6, 0x4eb

    aput v124, v0, v6

    const/16 v6, 0x4ec

    aput v60, v0, v6

    const/16 v6, 0x4ed

    aput v4, v0, v6

    const/16 v6, 0x4ee

    aput v42, v0, v6

    const/16 v6, 0x4f0

    aput v8, v0, v6

    const/16 v6, 0x4f1

    aput v172, v0, v6

    const/16 v6, 0x4f3

    aput v8, v0, v6

    const/16 v6, 0x4f4

    aput v52, v0, v6

    const/16 v6, 0x4f6

    aput v12, v0, v6

    .line 98
    const/16 v6, 0x4f7

    aput v158, v0, v6

    const/16 v6, 0x4f8

    aput v71, v0, v6

    const/16 v6, 0x4f9

    aput v4, v0, v6

    const/16 v6, 0x4fa

    aput v19, v0, v6

    const/16 v6, 0x4fc

    aput v8, v0, v6

    const/16 v6, 0x4fd

    aput v91, v0, v6

    const/16 v6, 0x4ff

    aput v8, v0, v6

    const/16 v6, 0x500

    aput v38, v0, v6

    const/16 v6, 0x502

    aput v12, v0, v6

    const/16 v6, 0x503

    const/16 v25, 0xab

    aput v25, v0, v6

    const/16 v6, 0x505

    aput v8, v0, v6

    const/16 v6, 0x506

    aput v9, v0, v6

    const/16 v6, 0x508

    aput v8, v0, v6

    const/16 v6, 0x509

    aput v114, v0, v6

    const/16 v6, 0x50b

    aput v8, v0, v6

    const/16 v6, 0x50c

    aput v137, v0, v6

    const/16 v6, 0x50e

    aput v12, v0, v6

    const/16 v6, 0x50f

    aput v171, v0, v6

    const/16 v6, 0x510

    aput v10, v0, v6

    .line 99
    const/16 v6, 0x511

    aput v4, v0, v6

    const/16 v6, 0x512

    aput v8, v0, v6

    const/16 v6, 0x514

    aput v8, v0, v6

    const/16 v6, 0x515

    aput v157, v0, v6

    const/16 v6, 0x517

    aput v8, v0, v6

    const/16 v6, 0x518

    aput v33, v0, v6

    const/16 v6, 0x51a

    aput v12, v0, v6

    const/16 v6, 0x51b

    aput v129, v0, v6

    const/16 v6, 0x51c

    aput v13, v0, v6

    const/16 v6, 0x51d

    aput v4, v0, v6

    const/16 v6, 0x51e

    aput v60, v0, v6

    const/16 v6, 0x520

    aput v8, v0, v6

    const/16 v6, 0x521

    aput v108, v0, v6

    const/16 v6, 0x523

    aput v8, v0, v6

    const/16 v6, 0x524

    aput v61, v0, v6

    const/16 v6, 0x526

    aput v12, v0, v6

    const/16 v6, 0x527

    const/16 v25, 0xdb

    aput v25, v0, v6

    const/16 v6, 0x528

    aput v18, v0, v6

    const/16 v6, 0x529

    aput v4, v0, v6

    const/16 v6, 0x52a

    aput v27, v0, v6

    .line 100
    const/16 v6, 0x52c

    aput v8, v0, v6

    const/16 v6, 0x52d

    aput v98, v0, v6

    const/16 v6, 0x52f

    aput v8, v0, v6

    const/16 v6, 0x530

    aput v128, v0, v6

    const/16 v6, 0x532

    aput v12, v0, v6

    const/16 v6, 0x533

    aput v145, v0, v6

    const/16 v6, 0x535

    aput v8, v0, v6

    const/16 v6, 0x536

    aput v19, v0, v6

    const/16 v6, 0x538

    aput v8, v0, v6

    const/16 v6, 0x539

    aput v153, v0, v6

    const/16 v6, 0x53b

    aput v8, v0, v6

    const/16 v6, 0x53c

    aput v75, v0, v6

    const/16 v6, 0x53e

    aput v12, v0, v6

    const/16 v6, 0x53f

    aput v181, v0, v6

    const/16 v6, 0x540

    aput v10, v0, v6

    const/16 v6, 0x541

    aput v4, v0, v6

    const/16 v6, 0x542

    aput v152, v0, v6

    const/16 v6, 0x544

    aput v8, v0, v6

    const/16 v6, 0x545

    aput v60, v0, v6

    .line 101
    const/16 v6, 0x547

    aput v8, v0, v6

    const/16 v6, 0x548

    aput v23, v0, v6

    const/16 v6, 0x549

    aput v79, v0, v6

    const/16 v6, 0x54a

    aput v8, v0, v6

    const/16 v6, 0x54b

    aput v149, v0, v6

    const/16 v6, 0x54c

    aput v60, v0, v6

    const/16 v6, 0x54d

    aput v4, v0, v6

    const/16 v6, 0x54e

    aput v36, v0, v6

    const/16 v6, 0x550

    aput v8, v0, v6

    const/16 v6, 0x551

    aput v16, v0, v6

    const/16 v6, 0x553

    aput v8, v0, v6

    const/16 v6, 0x554

    aput v177, v0, v6

    const/16 v6, 0x556

    aput v12, v0, v6

    const/16 v6, 0x557

    aput v155, v0, v6

    const/16 v6, 0x558

    aput v71, v0, v6

    const/16 v6, 0x559

    aput v4, v0, v6

    const/16 v6, 0x55a

    aput v15, v0, v6

    const/16 v6, 0x55c

    aput v8, v0, v6

    const/16 v6, 0x55d

    aput v138, v0, v6

    const/16 v6, 0x55f

    aput v8, v0, v6

    const/16 v6, 0x560

    aput v36, v0, v6

    .line 102
    const/16 v6, 0x562

    aput v12, v0, v6

    const/16 v6, 0x563

    aput v135, v0, v6

    const/16 v6, 0x565

    aput v8, v0, v6

    const/16 v6, 0x566

    aput v152, v0, v6

    const/16 v6, 0x568

    aput v8, v0, v6

    const/16 v6, 0x569

    aput v112, v0, v6

    const/16 v6, 0x56b

    aput v8, v0, v6

    const/16 v6, 0x56c

    aput v65, v0, v6

    const/16 v6, 0x56e

    aput v12, v0, v6

    const/16 v6, 0x56f

    const/16 v25, 0xe7

    aput v25, v0, v6

    const/16 v6, 0x570

    aput v10, v0, v6

    const/16 v6, 0x571

    aput v4, v0, v6

    const/16 v6, 0x572

    aput v4, v0, v6

    const/16 v6, 0x574

    aput v8, v0, v6

    const/16 v6, 0x575

    aput v83, v0, v6

    const/16 v6, 0x577

    aput v8, v0, v6

    const/16 v6, 0x578

    aput v167, v0, v6

    const/16 v6, 0x57a

    aput v12, v0, v6

    const/16 v6, 0x57b

    aput v126, v0, v6

    .line 103
    const/16 v6, 0x57c

    aput v13, v0, v6

    const/16 v6, 0x57d

    aput v4, v0, v6

    const/16 v6, 0x57e

    aput v65, v0, v6

    const/16 v6, 0x580

    aput v8, v0, v6

    const/16 v6, 0x581

    aput v134, v0, v6

    const/16 v6, 0x583

    aput v8, v0, v6

    const/16 v6, 0x584

    aput v57, v0, v6

    const/16 v6, 0x586

    aput v12, v0, v6

    const/16 v6, 0x587

    aput v166, v0, v6

    const/16 v6, 0x588

    aput v18, v0, v6

    const/16 v6, 0x589

    aput v4, v0, v6

    const/16 v6, 0x58a

    aput v23, v0, v6

    const/16 v6, 0x58c

    aput v8, v0, v6

    const/16 v6, 0x58d

    aput v95, v0, v6

    const/16 v6, 0x58f

    aput v8, v0, v6

    const/16 v6, 0x590

    aput v42, v0, v6

    const/16 v6, 0x592

    aput v12, v0, v6

    const/16 v6, 0x593    # 2.0E-42f

    const/16 v25, 0xb7

    aput v25, v0, v6

    const/16 v6, 0x595

    aput v8, v0, v6

    .line 104
    const/16 v6, 0x596

    aput v15, v0, v6

    const/16 v6, 0x598

    aput v8, v0, v6

    const/16 v6, 0x599

    aput v118, v0, v6

    const/16 v6, 0x59b

    aput v8, v0, v6

    const/16 v6, 0x59c

    aput v144, v0, v6

    const/16 v6, 0x59e

    aput v12, v0, v6

    const/16 v6, 0x59f

    aput v180, v0, v6

    const/16 v6, 0x5a0

    aput v10, v0, v6

    const/16 v6, 0x5a1

    aput v4, v0, v6

    const/16 v6, 0x5a2

    aput v9, v0, v6

    const/16 v6, 0x5a4

    aput v8, v0, v6

    const/16 v6, 0x5a5

    aput v165, v0, v6

    const/16 v6, 0x5a7

    aput v8, v0, v6

    const/16 v6, 0x5a8

    aput v27, v0, v6

    const/16 v6, 0x5a9

    aput v28, v0, v6

    const/16 v6, 0x5aa

    aput v8, v0, v6

    const/16 v6, 0x5ac

    aput v60, v0, v6

    const/16 v6, 0x5ad

    aput v4, v0, v6

    const/16 v6, 0x5ae

    aput v177, v0, v6

    const/16 v6, 0x5b0

    aput v8, v0, v6

    .line 105
    const/16 v6, 0x5b1

    aput v103, v0, v6

    const/16 v6, 0x5b3

    aput v8, v0, v6

    const/16 v6, 0x5b4

    aput v54, v0, v6

    const/16 v6, 0x5b6

    aput v12, v0, v6

    const/16 v6, 0x5b7

    const/16 v25, 0xcf

    aput v25, v0, v6

    const/16 v6, 0x5b8

    aput v71, v0, v6

    const/16 v6, 0x5b9

    aput v4, v0, v6

    const/16 v6, 0x5ba

    aput v164, v0, v6

    const/16 v6, 0x5bc

    aput v8, v0, v6

    const/16 v6, 0x5bd

    aput v92, v0, v6

    const/16 v6, 0x5bf

    aput v8, v0, v6

    const/16 v6, 0x5c0

    aput v161, v0, v6

    const/16 v6, 0x5c2

    aput v12, v0, v6

    const/16 v6, 0x5c3

    aput v140, v0, v6

    const/16 v6, 0x5c5

    aput v8, v0, v6

    const/16 v6, 0x5c6

    aput v4, v0, v6

    const/16 v6, 0x5c8

    aput v8, v0, v6

    const/16 v6, 0x5c9

    aput v170, v0, v6

    const/16 v6, 0x5cb

    aput v8, v0, v6

    .line 106
    const/16 v6, 0x5cc

    aput v68, v0, v6

    const/16 v6, 0x5ce

    aput v12, v0, v6

    const/16 v6, 0x5cf

    aput v175, v0, v6

    const/16 v6, 0x5d0

    aput v10, v0, v6

    const/16 v6, 0x5d1

    aput v4, v0, v6

    const/16 v6, 0x5d2

    aput v12, v0, v6

    const/16 v6, 0x5d4

    aput v8, v0, v6

    const/16 v6, 0x5d5

    aput v86, v0, v6

    const/16 v6, 0x5d7

    aput v8, v0, v6

    const/16 v6, 0x5d8

    aput v1, v0, v6

    const/16 v6, 0x5da

    aput v12, v0, v6

    const/16 v6, 0x5db

    const/16 v10, 0x9f

    aput v10, v0, v6

    const/16 v6, 0x5dc

    aput v13, v0, v6

    const/16 v6, 0x5dd

    aput v4, v0, v6

    const/16 v6, 0x5de

    aput v138, v0, v6

    const/16 v6, 0x5e0

    aput v8, v0, v6

    const/16 v6, 0x5e1

    aput v109, v0, v6

    const/16 v6, 0x5e3

    aput v8, v0, v6

    const/16 v6, 0x5e4

    aput v131, v0, v6

    const/16 v6, 0x5e6

    aput v12, v0, v6

    .line 107
    const/16 v6, 0x5e7

    aput v169, v0, v6

    const/16 v6, 0x5e8

    aput v18, v0, v6

    const/16 v6, 0x5e9

    aput v4, v0, v6

    const/16 v6, 0x5ea

    aput v167, v0, v6

    const/16 v6, 0x5ec

    aput v8, v0, v6

    const/16 v6, 0x5ed

    aput v174, v0, v6

    const/16 v6, 0x5ef

    aput v8, v0, v6

    const/16 v6, 0x5f0

    aput v46, v0, v6

    const/16 v6, 0x5f2

    aput v12, v0, v6

    const/16 v6, 0x5f3

    aput v148, v0, v6

    const/16 v6, 0x5f5

    aput v8, v0, v6

    const/16 v6, 0x5f6

    aput v164, v0, v6

    const/16 v6, 0x5f8

    aput v8, v0, v6

    const/16 v6, 0x5f9

    aput v121, v0, v6

    const/16 v6, 0x5fb

    aput v8, v0, v6

    const/16 v6, 0x5fc

    aput v77, v0, v6

    const/16 v6, 0x5fe

    aput v12, v0, v6

    const/16 v6, 0x5ff

    const/16 v10, 0xff

    aput v10, v0, v6

    .line 50
    sput-object v0, Lcom/jcraft/jsch/jzlib/InfTree;->fixed_tl:[I

    .line 108
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 108
    sput-object v0, Lcom/jcraft/jsch/jzlib/InfTree;->fixed_td:[I

    .line 115
    new-array v0, v1, [I

    .line 116
    const/4 v2, 0x0

    aput v152, v0, v2

    aput v7, v0, v3

    const/4 v2, 0x2

    aput v9, v0, v2

    aput v50, v0, v152

    aput v4, v0, v7

    aput v8, v0, v9

    aput v12, v0, v50

    aput v14, v0, v4

    aput v15, v0, v8

    aput v19, v0, v12

    aput v164, v0, v14

    aput v21, v0, v15

    aput v23, v0, v17

    aput v27, v0, v19

    aput v167, v0, v20

    aput v1, v0, v164

    aput v36, v0, v11

    aput v42, v0, v21

    aput v177, v0, v156

    aput v57, v0, v23

    aput v65, v0, v24

    aput v60, v0, v78

    aput v138, v0, v26

    aput v16, v0, v27

    aput v112, v0, v29

    .line 117
    aput v132, v0, v30

    aput v149, v0, v31

    aput v96, v0, v167

    aput v124, v0, v32

    .line 115
    sput-object v0, Lcom/jcraft/jsch/jzlib/InfTree;->cplens:[I

    .line 120
    new-array v0, v1, [I

    .line 121
    aput v3, v0, v8

    aput v3, v0, v12

    aput v3, v0, v14

    aput v3, v0, v15

    const/4 v1, 0x2

    aput v1, v0, v17

    aput v1, v0, v19

    aput v1, v0, v20

    aput v1, v0, v164

    aput v152, v0, v11

    aput v152, v0, v21

    aput v152, v0, v156

    aput v152, v0, v23

    aput v7, v0, v24

    aput v7, v0, v78

    aput v7, v0, v26

    aput v7, v0, v27

    aput v9, v0, v29

    aput v9, v0, v30

    aput v9, v0, v31

    aput v9, v0, v167

    aput v22, v0, v33

    .line 122
    aput v22, v0, v5

    .line 120
    sput-object v0, Lcom/jcraft/jsch/jzlib/InfTree;->cplext:[I

    .line 125
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    .line 126
    nop

    .line 127
    nop

    .line 125
    sput-object v0, Lcom/jcraft/jsch/jzlib/InfTree;->cpdist:[I

    .line 129
    new-array v0, v5, [I

    .line 130
    aput v3, v0, v7

    aput v3, v0, v9

    const/4 v1, 0x2

    aput v1, v0, v50

    aput v1, v0, v4

    aput v152, v0, v8

    aput v152, v0, v12

    aput v7, v0, v14

    aput v7, v0, v15

    aput v9, v0, v17

    aput v9, v0, v19

    aput v50, v0, v20

    aput v50, v0, v164

    aput v4, v0, v11

    aput v4, v0, v21

    aput v8, v0, v156

    aput v8, v0, v23

    aput v12, v0, v24

    aput v12, v0, v78

    aput v14, v0, v26

    aput v14, v0, v27

    aput v15, v0, v29

    aput v15, v0, v30

    aput v17, v0, v31

    aput v17, v0, v167

    aput v19, v0, v32

    .line 131
    aput v19, v0, v33

    .line 129
    sput-object v0, Lcom/jcraft/jsch/jzlib/InfTree;->cpdext:[I

    .line 134
    return-void

    nop

    :array_0
    .array-data 4
        0x50
        0x5
        0x1
        0x57
        0x5
        0x101
        0x53
        0x5
        0x11
        0x5b
        0x5
        0x1001
        0x51
        0x5
        0x5
        0x59
        0x5
        0x401
        0x55
        0x5
        0x41
        0x5d
        0x5
        0x4001
        0x50
        0x5
        0x3
        0x58
        0x5
        0x201
        0x54
        0x5
        0x21
        0x5c
        0x5
        0x2001
        0x52
        0x5
        0x9
        0x5a
        0x5
        0x801
        0x56
        0x5
        0x81
        0xc0
        0x5
        0x6001
        0x50
        0x5
        0x2
        0x57
        0x5
        0x181
        0x53
        0x5
        0x19
        0x5b
        0x5
        0x1801
        0x51
        0x5
        0x7
        0x59
        0x5
        0x601
        0x55
        0x5
        0x61
        0x5d
        0x5
        0x6001
        0x50
        0x5
        0x4
        0x58
        0x5
        0x301
        0x54
        0x5
        0x31
        0x5c
        0x5
        0x3001
        0x52
        0x5
        0xd
        0x5a
        0x5
        0xc01
        0x56
        0x5
        0xc1
        0xc0
        0x5
        0x6001
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x7
        0x9
        0xd
        0x11
        0x19
        0x21
        0x31
        0x41
        0x61
        0x81
        0xc1
        0x101
        0x181
        0x201
        0x301
        0x401
        0x601
        0x801
        0xc01
        0x1001
        0x1801
        0x2001
        0x3001
        0x4001
        0x6001
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->hn:[I

    .line 137
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->v:[I

    .line 138
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    .line 139
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    .line 140
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->u:[I

    .line 141
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->x:[I

    .line 33
    return-void
.end method

.method private huft_build([IIII[I[I[I[I[I[I[I)I
    .locals 27

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v7, p9

    .line 178
    nop

    .line 179
    const/4 v11, 0x0

    move v10, v3

    .line 181
    :goto_0
    iget-object v12, v0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    add-int v13, p2, v11

    aget v13, p1, v13

    aget v14, v12, v13

    const/4 v9, 0x1

    add-int/2addr v14, v9

    aput v14, v12, v13

    .line 182
    add-int/lit8 v11, v11, 0x1

    .line 183
    add-int/lit8 v10, v10, -0x1

    .line 184
    if-nez v10, :cond_1d

    .line 186
    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    const/4 v15, 0x0

    aget v10, v10, v15

    const/4 v13, -0x1

    if-ne v10, v3, :cond_0

    .line 187
    aput v13, p7, v15

    .line 188
    aput v15, p8, v15

    .line 189
    return v15

    .line 193
    :cond_0
    aget v14, p8, v15

    .line 194
    move v10, v9

    :goto_1
    const/16 v11, 0xf

    if-le v10, v11, :cond_1

    goto :goto_2

    .line 195
    :cond_1
    iget-object v11, v0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    aget v11, v11, v10

    if-eqz v11, :cond_1c

    .line 196
    nop

    .line 197
    :goto_2
    nop

    .line 198
    if-ge v14, v10, :cond_2

    .line 199
    move v11, v10

    goto :goto_3

    :cond_2
    move v11, v14

    .line 201
    :goto_3
    const/16 v14, 0xf

    :goto_4
    if-nez v14, :cond_3

    goto :goto_5

    .line 202
    :cond_3
    iget-object v12, v0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    aget v12, v12, v14

    if-eqz v12, :cond_1b

    .line 203
    nop

    .line 205
    :goto_5
    nop

    .line 206
    if-le v11, v14, :cond_4

    .line 207
    move v12, v14

    goto :goto_6

    :cond_4
    move v12, v11

    .line 209
    :goto_6
    const/4 v11, 0x0

    aput v12, p8, v11

    .line 212
    shl-int v6, v9, v10

    move v11, v6

    move v6, v10

    :goto_7
    if-lt v6, v14, :cond_19

    .line 217
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    aget v6, v6, v14

    sub-int v16, v11, v6

    if-gez v16, :cond_5

    .line 218
    goto/16 :goto_16

    .line 220
    :cond_5
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    aget v11, v6, v14

    add-int v11, v11, v16

    aput v11, v6, v14

    .line 223
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfTree;->x:[I

    const/4 v11, 0x0

    aput v11, v6, v9

    .line 224
    nop

    .line 225
    nop

    .line 226
    const/16 v17, 0x2

    move/from16 v19, v14

    move/from16 v11, v17

    const/4 v6, 0x0

    move/from16 v18, v9

    .line 226
    :goto_8
    add-int/lit8 v19, v19, -0x1

    if-nez v19, :cond_18

    .line 233
    nop

    .line 234
    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 236
    :goto_9
    add-int v18, p2, v6

    aget v18, p1, v18

    if-eqz v18, :cond_6

    .line 237
    iget-object v13, v0, Lcom/jcraft/jsch/jzlib/InfTree;->x:[I

    aget v19, v13, v18

    add-int v21, v19, v9

    aput v21, v13, v18

    aput v11, p11, v19

    .line 239
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 240
    add-int/lit8 v11, v11, 0x1

    .line 235
    if-lt v11, v3, :cond_17

    .line 241
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/InfTree;->x:[I

    aget v13, v1, v14

    .line 244
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/InfTree;->x:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 245
    nop

    .line 246
    nop

    .line 247
    neg-int v1, v12

    .line 248
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfTree;->u:[I

    aput v2, v3, v2

    .line 249
    nop

    .line 250
    nop

    .line 253
    const/16 v20, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    move/from16 v26, v1

    move v1, v10

    move/from16 v10, v26

    :goto_a
    if-le v1, v14, :cond_8

    .line 332
    const/4 v0, -0x5

    if-eqz v16, :cond_7

    if-eq v14, v9, :cond_7

    move v9, v0

    goto :goto_b

    :cond_7
    const/4 v9, 0x0

    :goto_b
    move v15, v9

    return v15

    .line 254
    :cond_8
    iget-object v9, v0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    aget v9, v9, v1

    .line 255
    move/from16 v26, v3

    move v3, v9

    move v9, v2

    move/from16 v2, v26

    .line 255
    :goto_c
    add-int/lit8 v18, v3, -0x1

    if-nez v3, :cond_9

    .line 253
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v9

    const/4 v9, 0x1

    goto :goto_a

    .line 258
    :cond_9
    :goto_d
    add-int v3, v10, v12

    if-gt v1, v3, :cond_10

    .line 299
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    sub-int v5, v1, v10

    int-to-byte v8, v5

    const/16 v19, 0x1

    aput v8, v3, v19

    .line 300
    if-lt v2, v13, :cond_a

    .line 301
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    const/16 v8, 0xc0

    const/4 v15, 0x0

    aput v8, v3, v15

    .line 302
    move/from16 v22, v13

    move v8, v2

    goto :goto_f

    :cond_a
    aget v3, p11, v2

    if-ge v3, v4, :cond_c

    .line 303
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    aget v8, p11, v2

    const/16 v19, 0x60

    move/from16 v22, v13

    const/16 v13, 0x100

    if-ge v8, v13, :cond_b

    const/4 v8, 0x0

    goto :goto_e

    :cond_b
    move/from16 v8, v19

    :goto_e
    int-to-byte v8, v8

    const/4 v13, 0x0

    aput v8, v3, v13

    .line 304
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    add-int/lit8 v8, v2, 0x1

    aget v2, p11, v2

    aput v2, v3, v17

    .line 305
    goto :goto_f

    :cond_c
    move/from16 v22, v13

    .line 306
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    aget v8, p11, v2

    sub-int/2addr v8, v4

    aget v8, p6, v8

    add-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x40

    int-to-byte v8, v8

    const/4 v15, 0x0

    aput v8, v3, v15

    .line 307
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    add-int/lit8 v8, v2, 0x1

    aget v2, p11, v2

    sub-int/2addr v2, v4

    aget v2, p5, v2

    aput v2, v3, v17

    .line 311
    :goto_f
    const/4 v2, 0x1

    shl-int v5, v2, v5

    .line 312
    ushr-int v3, v9, v10

    :goto_10
    if-lt v3, v11, :cond_f

    .line 317
    sub-int v3, v1, v2

    shl-int v3, v2, v3

    :goto_11
    and-int v5, v9, v3

    if-nez v5, :cond_e

    .line 320
    xor-int v5, v9, v3

    .line 323
    shl-int v3, v2, v10

    sub-int/2addr v3, v2

    .line 324
    nop

    .line 324
    :goto_12
    and-int v2, v5, v3

    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfTree;->x:[I

    aget v3, v3, v20

    if-ne v2, v3, :cond_d

    move/from16 v13, v22

    move/from16 v3, v18

    move v9, v5

    move v2, v8

    goto/16 :goto_c

    .line 325
    :cond_d
    add-int/lit8 v20, v20, -0x1

    .line 326
    sub-int/2addr v10, v12

    .line 327
    const/4 v2, 0x1

    shl-int v3, v2, v10

    sub-int/2addr v3, v2

    goto :goto_12

    .line 318
    :cond_e
    xor-int/2addr v9, v3

    .line 317
    ushr-int/2addr v3, v2

    goto :goto_11

    .line 313
    :cond_f
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    add-int v19, v6, v3

    const/4 v4, 0x3

    move/from16 v23, v6

    mul-int v6, v19, v4

    move/from16 v24, v8

    const/4 v8, 0x0

    invoke-static {v2, v8, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    add-int/2addr v3, v5

    move/from16 v4, p4

    const/4 v2, 0x1

    move/from16 v6, v23

    move/from16 v8, v24

    goto :goto_10

    :cond_10
    move/from16 v22, v13

    .line 259
    add-int/lit8 v20, v20, 0x1

    .line 260
    nop

    .line 262
    sub-int v4, v14, v3

    .line 263
    if-le v4, v12, :cond_11

    move v4, v12

    .line 264
    :cond_11
    sub-int v5, v1, v3

    const/4 v6, 0x1

    shl-int v8, v6, v5

    add-int v10, v18, v6

    if-le v8, v10, :cond_14

    .line 266
    sub-int v6, v8, v10

    .line 267
    nop

    .line 268
    if-ge v5, v4, :cond_14

    .line 269
    move v8, v6

    move v6, v1

    .line 269
    :goto_13
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v4, :cond_12

    goto :goto_14

    .line 270
    :cond_12
    const/4 v10, 0x1

    shl-int/2addr v8, v10

    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    add-int/lit8 v6, v6, 0x1

    aget v10, v10, v6

    if-gt v8, v10, :cond_13

    .line 271
    goto :goto_14

    .line 272
    :cond_13
    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    aget v10, v10, v6

    sub-int/2addr v8, v10

    goto :goto_13

    .line 276
    :cond_14
    :goto_14
    const/4 v4, 0x1

    shl-int v11, v4, v5

    .line 279
    const/4 v4, 0x0

    aget v6, p10, v4

    add-int/2addr v6, v11

    const/16 v10, 0x5a0

    if-le v6, v10, :cond_15

    .line 280
    goto/16 :goto_16

    .line 282
    :cond_15
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfTree;->u:[I

    aget v10, p10, v4

    aput v10, v6, v20

    .line 283
    aget v6, p10, v4

    add-int/2addr v6, v11

    aput v6, p10, v4

    .line 286
    if-eqz v20, :cond_16

    .line 287
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfTree;->x:[I

    aput v9, v6, v20

    .line 288
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    int-to-byte v5, v5

    aput v5, v6, v4

    .line 289
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    int-to-byte v5, v12

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 290
    sub-int v4, v3, v12

    ushr-int v4, v9, v4

    .line 291
    iget-object v5, v0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    move/from16 v25, v1

    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/InfTree;->u:[I

    sub-int v19, v20, v6

    aget v1, v1, v19

    sub-int v1, v10, v1

    sub-int/2addr v1, v4

    aput v1, v5, v17

    .line 292
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    iget-object v5, v0, Lcom/jcraft/jsch/jzlib/InfTree;->u:[I

    aget v5, v5, v19

    add-int/2addr v4, v5

    const/4 v5, 0x3

    mul-int/2addr v4, v5

    const/4 v6, 0x0

    invoke-static {v1, v6, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    goto :goto_15

    :cond_16
    move v6, v4

    move/from16 v25, v1

    .line 294
    aput v10, p7, v6

    :goto_15
    move/from16 v4, p4

    move/from16 v13, v22

    move/from16 v1, v25

    move v6, v10

    move v10, v3

    goto/16 :goto_d

    :cond_17
    const/4 v15, 0x0

    const/4 v13, -0x1

    goto/16 :goto_9

    :cond_18
    const/4 v15, 0x0

    .line 227
    iget-object v5, v0, Lcom/jcraft/jsch/jzlib/InfTree;->x:[I

    iget-object v9, v0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    aget v9, v9, v18

    add-int/2addr v6, v9

    aput v6, v5, v11

    .line 228
    add-int/lit8 v11, v11, 0x1

    .line 229
    add-int/lit8 v18, v18, 0x1

    const/4 v13, -0x1

    move/from16 v4, p4

    const/4 v9, 0x1

    goto/16 :goto_8

    :cond_19
    const/4 v15, 0x0

    .line 213
    iget-object v5, v0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    aget v5, v5, v6

    sub-int v5, v11, v5

    if-gez v5, :cond_1a

    .line 214
    :goto_16
    const/4 v15, -0x3

    return v15

    .line 212
    :cond_1a
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    shl-int v11, v5, v9

    const/4 v13, -0x1

    move/from16 v4, p4

    goto/16 :goto_7

    :cond_1b
    const/4 v15, 0x0

    .line 201
    add-int/lit8 v14, v14, -0x1

    const/4 v13, -0x1

    move/from16 v4, p4

    goto/16 :goto_4

    :cond_1c
    const/4 v15, 0x0

    .line 194
    add-int/lit8 v10, v10, 0x1

    const/4 v13, -0x1

    move/from16 v4, p4

    goto/16 :goto_1

    :cond_1d
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method static inflate_trees_fixed([I[I[[I[[ILcom/jcraft/jsch/jzlib/ZStream;)I
    .locals 1

    .line 407
    const/4 p4, 0x0

    const/16 v0, 0x9

    aput v0, p0, p4

    .line 408
    const/4 p0, 0x5

    aput p0, p1, p4

    .line 409
    sget-object p0, Lcom/jcraft/jsch/jzlib/InfTree;->fixed_tl:[I

    aput-object p0, p2, p4

    .line 410
    sget-object p0, Lcom/jcraft/jsch/jzlib/InfTree;->fixed_td:[I

    aput-object p0, p3, p4

    .line 411
    return p4
.end method

.method private initWorkArea(I)V
    .locals 6

    .line 415
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->hn:[I

    const/16 v1, 0xf

    const/4 v2, 0x3

    const/16 v3, 0x10

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->hn:[I

    .line 417
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->v:[I

    .line 418
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    .line 419
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    .line 420
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->u:[I

    .line 421
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->x:[I

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->v:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 424
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfTree;->v:[I

    .line 426
    :cond_1
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-lt v4, p1, :cond_4

    .line 429
    move p1, v0

    :goto_1
    if-lt p1, v3, :cond_3

    .line 432
    move p1, v0

    :goto_2
    if-lt p1, v2, :cond_2

    .line 435
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InfTree;->u:[I

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/InfTree;->x:[I

    invoke-static {p1, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    return-void

    .line 433
    :cond_2
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/InfTree;->r:[I

    aput v0, v4, p1

    .line 432
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 430
    :cond_3
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/InfTree;->c:[I

    aput v0, v4, p1

    .line 429
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 427
    :cond_4
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/InfTree;->v:[I

    aput v0, v5, v4

    .line 426
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method inflate_trees_bits([I[I[I[ILcom/jcraft/jsch/jzlib/ZStream;)I
    .locals 14

    move-object v0, p0

    move-object/from16 v12, p5

    .line 342
    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/jzlib/InfTree;->initWorkArea(I)V

    .line 343
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/InfTree;->hn:[I

    const/4 v13, 0x0

    aput v13, v1, v13

    .line 344
    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/InfTree;->hn:[I

    iget-object v11, v0, Lcom/jcraft/jsch/jzlib/InfTree;->v:[I

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x13

    move-object v1, p1

    move v3, v4

    move-object v5, v6

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/jcraft/jsch/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    move-result v0

    .line 346
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 347
    const-string v1, "oversubscribed dynamic bit lengths tree"

    iput-object v1, v12, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 348
    return v0

    :cond_0
    const/4 v2, -0x5

    if-eq v0, v2, :cond_1

    aget v2, p2, v13

    if-nez v2, :cond_2

    .line 349
    :cond_1
    const-string v0, "incomplete dynamic bit lengths tree"

    iput-object v0, v12, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 350
    move v0, v1

    .line 352
    :cond_2
    return v0
.end method

.method inflate_trees_dynamic(II[I[I[I[I[I[ILcom/jcraft/jsch/jzlib/ZStream;)I
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v13, p9

    .line 368
    const/16 v14, 0x120

    invoke-direct {v12, v14}, Lcom/jcraft/jsch/jzlib/InfTree;->initWorkArea(I)V

    .line 369
    iget-object v0, v12, Lcom/jcraft/jsch/jzlib/InfTree;->hn:[I

    const/4 v15, 0x0

    aput v15, v0, v15

    .line 370
    sget-object v5, Lcom/jcraft/jsch/jzlib/InfTree;->cplens:[I

    sget-object v6, Lcom/jcraft/jsch/jzlib/InfTree;->cplext:[I

    iget-object v10, v12, Lcom/jcraft/jsch/jzlib/InfTree;->hn:[I

    iget-object v11, v12, Lcom/jcraft/jsch/jzlib/InfTree;->v:[I

    const/4 v2, 0x0

    const/16 v4, 0x101

    move-object v0, v12

    move-object/from16 v1, p3

    move/from16 v3, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lcom/jcraft/jsch/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    move-result v0

    .line 371
    const/4 v11, -0x4

    const/4 v10, -0x3

    if-nez v0, :cond_6

    aget v1, p4, v15

    if-nez v1, :cond_0

    goto :goto_4

    .line 382
    :cond_0
    invoke-direct {v12, v14}, Lcom/jcraft/jsch/jzlib/InfTree;->initWorkArea(I)V

    .line 383
    sget-object v5, Lcom/jcraft/jsch/jzlib/InfTree;->cpdist:[I

    sget-object v6, Lcom/jcraft/jsch/jzlib/InfTree;->cpdext:[I

    iget-object v14, v12, Lcom/jcraft/jsch/jzlib/InfTree;->hn:[I

    iget-object v9, v12, Lcom/jcraft/jsch/jzlib/InfTree;->v:[I

    const/4 v4, 0x0

    move-object v0, v12

    move-object/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p5

    move-object v12, v9

    move-object/from16 v9, p8

    move-object v10, v14

    move v14, v11

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, Lcom/jcraft/jsch/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    move-result v0

    .line 385
    if-nez v0, :cond_2

    aget v1, p5, v15

    if-nez v1, :cond_1

    const/16 v1, 0x101

    move/from16 v2, p1

    if-le v2, v1, :cond_1

    goto :goto_0

    .line 398
    :cond_1
    return v15

    .line 386
    :cond_2
    :goto_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 387
    const-string v1, "oversubscribed distance tree"

    iput-object v1, v13, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 388
    goto :goto_2

    :cond_3
    const/4 v2, -0x5

    if-ne v0, v2, :cond_4

    .line 389
    const-string v0, "incomplete distance tree"

    iput-object v0, v13, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 390
    nop

    .line 391
    goto :goto_1

    :cond_4
    if-eq v0, v14, :cond_5

    .line 392
    const-string v0, "empty distance tree with lengths"

    iput-object v0, v13, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 393
    :goto_1
    move v15, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v15, v0

    .line 395
    :goto_3
    return v15

    :cond_6
    :goto_4
    move v1, v10

    move v14, v11

    .line 372
    if-ne v0, v1, :cond_7

    .line 373
    const-string v1, "oversubscribed literal/length tree"

    iput-object v1, v13, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 374
    goto :goto_5

    :cond_7
    if-eq v0, v14, :cond_8

    .line 375
    const-string v0, "incomplete literal/length tree"

    iput-object v0, v13, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 376
    move v15, v1

    return v15

    :cond_8
    :goto_5
    move v15, v0

    .line 378
    return v15
.end method
