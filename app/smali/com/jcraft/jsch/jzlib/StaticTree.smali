.class final Lcom/jcraft/jsch/jzlib/StaticTree;
.super Ljava/lang/Object;
.source "StaticTree.java"


# static fields
.field private static final BL_CODES:I = 0x13

.field private static final D_CODES:I = 0x1e

.field private static final LENGTH_CODES:I = 0x1d

.field private static final LITERALS:I = 0x100

.field private static final L_CODES:I = 0x11e

.field private static final MAX_BITS:I = 0xf

.field static final MAX_BL_BITS:I = 0x7

.field static static_bl_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

.field static static_d_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

.field static final static_dtree:[S

.field static static_l_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

.field static final static_ltree:[S


# instance fields
.field elems:I

.field extra_base:I

.field extra_bits:[I

.field max_length:I

.field static_tree:[S


# direct methods
.method static constructor <clinit>()V
    .locals 155

    .line 45
    const/16 v0, 0x240

    new-array v0, v0, [S

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput-short v2, v0, v1

    const/4 v1, 0x1

    const/16 v3, 0x8

    aput-short v3, v0, v1

    const/4 v4, 0x2

    const/16 v5, 0x8c

    aput-short v5, v0, v4

    const/4 v6, 0x3

    aput-short v3, v0, v6

    const/4 v7, 0x4

    const/16 v8, 0x4c

    aput-short v8, v0, v7

    const/4 v9, 0x5

    aput-short v3, v0, v9

    const/4 v10, 0x6

    const/16 v11, 0xcc

    aput-short v11, v0, v10

    const/4 v12, 0x7

    aput-short v3, v0, v12

    const/16 v13, 0x2c

    aput-short v13, v0, v3

    const/16 v14, 0x9

    aput-short v3, v0, v14

    const/16 v15, 0xa

    const/16 v16, 0xac

    aput-short v16, v0, v15

    const/16 v17, 0xb

    aput-short v3, v0, v17

    const/16 v18, 0x6c

    aput-short v18, v0, v2

    const/16 v19, 0xd

    aput-short v3, v0, v19

    const/16 v20, 0xe

    const/16 v21, 0xec

    aput-short v21, v0, v20

    const/16 v22, 0xf

    aput-short v3, v0, v22

    .line 46
    const/16 v23, 0x10

    const/16 v24, 0x1c

    aput-short v24, v0, v23

    const/16 v25, 0x11

    aput-short v3, v0, v25

    const/16 v26, 0x12

    const/16 v27, 0x9c

    aput-short v27, v0, v26

    const/16 v28, 0x13

    aput-short v3, v0, v28

    const/16 v29, 0x14

    const/16 v30, 0x5c

    aput-short v30, v0, v29

    const/16 v31, 0x15

    aput-short v3, v0, v31

    const/16 v32, 0x16

    const/16 v33, 0xdc

    aput-short v33, v0, v32

    const/16 v34, 0x17

    aput-short v3, v0, v34

    const/16 v35, 0x18

    const/16 v2, 0x3c

    aput-short v2, v0, v35

    const/16 v36, 0x19

    aput-short v3, v0, v36

    const/16 v37, 0x1a

    const/16 v38, 0xbc

    aput-short v38, v0, v37

    const/16 v39, 0x1b

    aput-short v3, v0, v39

    const/16 v40, 0x7c

    aput-short v40, v0, v24

    const/16 v41, 0x1d

    aput-short v3, v0, v41

    const/16 v42, 0x1e

    const/16 v43, 0xfc

    aput-short v43, v0, v42

    const/16 v44, 0x1f

    aput-short v3, v0, v44

    const/16 v45, 0x20

    aput-short v4, v0, v45

    const/16 v46, 0x21

    aput-short v3, v0, v46

    const/16 v47, 0x22

    const/16 v48, 0x82

    aput-short v48, v0, v47

    const/16 v49, 0x23

    aput-short v3, v0, v49

    const/16 v50, 0x24

    const/16 v51, 0x42

    aput-short v51, v0, v50

    const/16 v52, 0x25

    aput-short v3, v0, v52

    const/16 v53, 0x26

    const/16 v54, 0xc2

    aput-short v54, v0, v53

    const/16 v55, 0x27

    aput-short v3, v0, v55

    const/16 v56, 0x28

    aput-short v47, v0, v56

    .line 47
    const/16 v57, 0x29

    aput-short v3, v0, v57

    const/16 v58, 0x2a

    const/16 v59, 0xa2

    aput-short v59, v0, v58

    const/16 v60, 0x2b

    aput-short v3, v0, v60

    const/16 v61, 0x62

    aput-short v61, v0, v13

    const/16 v62, 0x2d

    aput-short v3, v0, v62

    const/16 v63, 0x2e

    const/16 v64, 0xe2

    aput-short v64, v0, v63

    const/16 v65, 0x2f

    aput-short v3, v0, v65

    const/16 v66, 0x30

    aput-short v26, v0, v66

    const/16 v67, 0x31

    aput-short v3, v0, v67

    const/16 v68, 0x32

    const/16 v69, 0x92

    aput-short v69, v0, v68

    const/16 v70, 0x33

    aput-short v3, v0, v70

    const/16 v71, 0x34

    const/16 v72, 0x52

    aput-short v72, v0, v71

    const/16 v73, 0x35

    aput-short v3, v0, v73

    const/16 v74, 0x36

    const/16 v75, 0xd2

    aput-short v75, v0, v74

    const/16 v76, 0x37

    aput-short v3, v0, v76

    const/16 v77, 0x38

    aput-short v68, v0, v77

    const/16 v78, 0x39

    aput-short v3, v0, v78

    const/16 v79, 0x3a

    const/16 v80, 0xb2

    aput-short v80, v0, v79

    const/16 v81, 0x3b

    aput-short v3, v0, v81

    const/16 v82, 0x72

    aput-short v82, v0, v2

    const/16 v83, 0x3d

    aput-short v3, v0, v83

    const/16 v84, 0x3e

    const/16 v85, 0xf2

    aput-short v85, v0, v84

    const/16 v86, 0x3f

    aput-short v3, v0, v86

    const/16 v87, 0x40

    aput-short v15, v0, v87

    const/16 v88, 0x41

    aput-short v3, v0, v88

    .line 48
    const/16 v89, 0x8a

    aput-short v89, v0, v51

    const/16 v51, 0x43

    aput-short v3, v0, v51

    const/16 v90, 0x44

    const/16 v91, 0x4a

    aput-short v91, v0, v90

    const/16 v92, 0x45

    aput-short v3, v0, v92

    const/16 v93, 0x46

    const/16 v94, 0xca

    aput-short v94, v0, v93

    const/16 v95, 0x47

    aput-short v3, v0, v95

    const/16 v96, 0x48

    aput-short v58, v0, v96

    const/16 v97, 0x49

    aput-short v3, v0, v97

    const/16 v98, 0xaa

    aput-short v98, v0, v91

    const/16 v91, 0x4b

    aput-short v3, v0, v91

    const/16 v99, 0x6a

    aput-short v99, v0, v8

    const/16 v8, 0x4d

    aput-short v3, v0, v8

    const/16 v100, 0x4e

    const/16 v101, 0xea

    aput-short v101, v0, v100

    const/16 v102, 0x4f

    aput-short v3, v0, v102

    const/16 v103, 0x50

    aput-short v37, v0, v103

    const/16 v104, 0x51

    aput-short v3, v0, v104

    const/16 v105, 0x9a

    aput-short v105, v0, v72

    const/16 v72, 0x53

    aput-short v3, v0, v72

    const/16 v106, 0x54

    const/16 v107, 0x5a

    aput-short v107, v0, v106

    const/16 v108, 0x55

    aput-short v3, v0, v108

    const/16 v109, 0x56

    const/16 v110, 0xda

    aput-short v110, v0, v109

    const/16 v111, 0x57

    aput-short v3, v0, v111

    const/16 v112, 0x58

    aput-short v79, v0, v112

    const/16 v113, 0x59

    aput-short v3, v0, v113

    .line 49
    const/16 v114, 0xba

    aput-short v114, v0, v107

    const/16 v107, 0x5b

    aput-short v3, v0, v107

    const/16 v115, 0x7a

    aput-short v115, v0, v30

    const/16 v30, 0x5d

    aput-short v3, v0, v30

    const/16 v116, 0x5e

    const/16 v117, 0xfa

    aput-short v117, v0, v116

    const/16 v118, 0x5f

    aput-short v3, v0, v118

    const/16 v119, 0x60

    aput-short v10, v0, v119

    const/16 v120, 0x61

    aput-short v3, v0, v120

    const/16 v121, 0x86

    aput-short v121, v0, v61

    const/16 v61, 0x63

    aput-short v3, v0, v61

    const/16 v122, 0x64

    aput-short v93, v0, v122

    const/16 v93, 0x65

    aput-short v3, v0, v93

    const/16 v123, 0x66

    const/16 v124, 0xc6

    aput-short v124, v0, v123

    const/16 v125, 0x67

    aput-short v3, v0, v125

    const/16 v126, 0x68

    aput-short v53, v0, v126

    const/16 v127, 0x69

    aput-short v3, v0, v127

    const/16 v128, 0xa6

    aput-short v128, v0, v99

    const/16 v99, 0x6b

    aput-short v3, v0, v99

    aput-short v123, v0, v18

    const/16 v18, 0x6d

    aput-short v3, v0, v18

    const/16 v123, 0x6e

    const/16 v129, 0xe6

    aput-short v129, v0, v123

    const/16 v130, 0x6f

    aput-short v3, v0, v130

    const/16 v131, 0x70

    aput-short v32, v0, v131

    const/16 v132, 0x71

    aput-short v3, v0, v132

    .line 50
    const/16 v133, 0x96

    aput-short v133, v0, v82

    const/16 v82, 0x73

    aput-short v3, v0, v82

    const/16 v134, 0x74

    aput-short v109, v0, v134

    const/16 v109, 0x75

    aput-short v3, v0, v109

    const/16 v135, 0x76

    const/16 v136, 0xd6

    aput-short v136, v0, v135

    const/16 v137, 0x77

    aput-short v3, v0, v137

    const/16 v138, 0x78

    aput-short v74, v0, v138

    const/16 v139, 0x79

    aput-short v3, v0, v139

    const/16 v140, 0xb6

    aput-short v140, v0, v115

    const/16 v115, 0x7b

    aput-short v3, v0, v115

    aput-short v135, v0, v40

    const/16 v40, 0x7d

    aput-short v3, v0, v40

    const/16 v135, 0x7e

    const/16 v141, 0xf6

    aput-short v141, v0, v135

    const/16 v142, 0x7f

    aput-short v3, v0, v142

    const/16 v143, 0x80

    aput-short v20, v0, v143

    const/16 v143, 0x81

    aput-short v3, v0, v143

    const/16 v144, 0x8e

    aput-short v144, v0, v48

    const/16 v48, 0x83

    aput-short v3, v0, v48

    const/16 v145, 0x84

    aput-short v100, v0, v145

    const/16 v100, 0x85

    aput-short v3, v0, v100

    const/16 v145, 0xce

    aput-short v145, v0, v121

    const/16 v121, 0x87

    aput-short v3, v0, v121

    const/16 v146, 0x88

    aput-short v63, v0, v146

    const/16 v146, 0x89

    aput-short v3, v0, v146

    .line 51
    const/16 v147, 0xae

    aput-short v147, v0, v89

    const/16 v89, 0x8b

    aput-short v3, v0, v89

    aput-short v123, v0, v5

    const/16 v5, 0x8d

    aput-short v3, v0, v5

    const/16 v123, 0xee

    aput-short v123, v0, v144

    const/16 v144, 0x8f

    aput-short v3, v0, v144

    const/16 v148, 0x90

    aput-short v42, v0, v148

    const/16 v148, 0x91

    aput-short v3, v0, v148

    const/16 v149, 0x9e

    aput-short v149, v0, v69

    const/16 v69, 0x93

    aput-short v3, v0, v69

    const/16 v150, 0x94

    aput-short v116, v0, v150

    const/16 v116, 0x95

    aput-short v3, v0, v116

    const/16 v150, 0xde

    aput-short v150, v0, v133

    const/16 v133, 0x97

    aput-short v3, v0, v133

    const/16 v151, 0x98

    aput-short v84, v0, v151

    const/16 v84, 0x99

    aput-short v3, v0, v84

    const/16 v151, 0xbe

    aput-short v151, v0, v105

    const/16 v105, 0x9b

    aput-short v3, v0, v105

    aput-short v135, v0, v27

    const/16 v27, 0x9d

    aput-short v3, v0, v27

    const/16 v135, 0xfe

    aput-short v135, v0, v149

    const/16 v149, 0x9f

    aput-short v3, v0, v149

    const/16 v152, 0xa0

    aput-short v1, v0, v152

    const/16 v152, 0xa1

    aput-short v3, v0, v152

    .line 52
    aput-short v143, v0, v59

    const/16 v59, 0xa3

    aput-short v3, v0, v59

    const/16 v143, 0xa4

    aput-short v88, v0, v143

    const/16 v88, 0xa5

    aput-short v3, v0, v88

    const/16 v143, 0xc1

    aput-short v143, v0, v128

    const/16 v128, 0xa7

    aput-short v3, v0, v128

    const/16 v153, 0xa8

    aput-short v46, v0, v153

    const/16 v153, 0xa9

    aput-short v3, v0, v153

    aput-short v152, v0, v98

    const/16 v98, 0xab

    aput-short v3, v0, v98

    aput-short v120, v0, v16

    const/16 v16, 0xad

    aput-short v3, v0, v16

    const/16 v120, 0xe1

    aput-short v120, v0, v147

    const/16 v147, 0xaf

    aput-short v3, v0, v147

    const/16 v152, 0xb0

    aput-short v25, v0, v152

    const/16 v152, 0xb1

    aput-short v3, v0, v152

    aput-short v148, v0, v80

    const/16 v80, 0xb3

    aput-short v3, v0, v80

    const/16 v148, 0xb4

    aput-short v104, v0, v148

    const/16 v104, 0xb5

    aput-short v3, v0, v104

    const/16 v148, 0xd1

    aput-short v148, v0, v140

    const/16 v140, 0xb7

    aput-short v3, v0, v140

    const/16 v154, 0xb8

    aput-short v67, v0, v154

    const/16 v154, 0xb9

    aput-short v3, v0, v154

    aput-short v152, v0, v114

    .line 53
    const/16 v114, 0xbb

    aput-short v3, v0, v114

    aput-short v132, v0, v38

    const/16 v38, 0xbd

    aput-short v3, v0, v38

    const/16 v132, 0xf1

    aput-short v132, v0, v151

    const/16 v151, 0xbf

    aput-short v3, v0, v151

    const/16 v152, 0xc0

    aput-short v14, v0, v152

    aput-short v3, v0, v143

    aput-short v146, v0, v54

    const/16 v54, 0xc3

    aput-short v3, v0, v54

    const/16 v143, 0xc4

    aput-short v97, v0, v143

    const/16 v97, 0xc5

    aput-short v3, v0, v97

    const/16 v143, 0xc9

    aput-short v143, v0, v124

    const/16 v124, 0xc7

    aput-short v3, v0, v124

    const/16 v146, 0xc8

    aput-short v57, v0, v146

    aput-short v3, v0, v143

    aput-short v153, v0, v94

    const/16 v94, 0xcb

    aput-short v3, v0, v94

    aput-short v127, v0, v11

    const/16 v11, 0xcd

    aput-short v3, v0, v11

    const/16 v127, 0xe9

    aput-short v127, v0, v145

    const/16 v143, 0xcf

    aput-short v3, v0, v143

    const/16 v145, 0xd0

    aput-short v36, v0, v145

    aput-short v3, v0, v148

    aput-short v84, v0, v75

    const/16 v75, 0xd3

    aput-short v3, v0, v75

    .line 54
    const/16 v84, 0xd4

    aput-short v113, v0, v84

    const/16 v84, 0xd5

    aput-short v3, v0, v84

    const/16 v113, 0xd9

    aput-short v113, v0, v136

    const/16 v136, 0xd7

    aput-short v3, v0, v136

    const/16 v145, 0xd8

    aput-short v78, v0, v145

    aput-short v3, v0, v113

    aput-short v154, v0, v110

    const/16 v110, 0xdb

    aput-short v3, v0, v110

    aput-short v139, v0, v33

    const/16 v33, 0xdd

    aput-short v3, v0, v33

    const/16 v113, 0xf9

    aput-short v113, v0, v150

    const/16 v139, 0xdf

    aput-short v3, v0, v139

    const/16 v145, 0xe0

    aput-short v9, v0, v145

    aput-short v3, v0, v120

    aput-short v100, v0, v64

    const/16 v64, 0xe3

    aput-short v3, v0, v64

    const/16 v100, 0xe4

    aput-short v92, v0, v100

    const/16 v92, 0xe5

    aput-short v3, v0, v92

    aput-short v97, v0, v129

    const/16 v97, 0xe7

    aput-short v3, v0, v97

    const/16 v100, 0xe8

    aput-short v52, v0, v100

    aput-short v3, v0, v127

    aput-short v88, v0, v101

    const/16 v88, 0xeb

    aput-short v3, v0, v88

    aput-short v93, v0, v21

    .line 55
    const/16 v21, 0xed

    aput-short v3, v0, v21

    aput-short v92, v0, v123

    const/16 v92, 0xef

    aput-short v3, v0, v92

    const/16 v93, 0xf0

    aput-short v31, v0, v93

    aput-short v3, v0, v132

    aput-short v116, v0, v85

    const/16 v85, 0xf3

    aput-short v3, v0, v85

    const/16 v93, 0xf4

    aput-short v108, v0, v93

    const/16 v93, 0xf5

    aput-short v3, v0, v93

    aput-short v84, v0, v141

    const/16 v84, 0xf7

    aput-short v3, v0, v84

    const/16 v100, 0xf8

    aput-short v73, v0, v100

    aput-short v3, v0, v113

    aput-short v104, v0, v117

    const/16 v100, 0xfb

    aput-short v3, v0, v100

    aput-short v109, v0, v43

    const/16 v43, 0xfd

    aput-short v3, v0, v43

    aput-short v93, v0, v135

    const/16 v93, 0xff

    aput-short v3, v0, v93

    const/16 v101, 0x100

    aput-short v19, v0, v101

    const/16 v101, 0x101

    aput-short v3, v0, v101

    const/16 v101, 0x102

    aput-short v5, v0, v101

    const/16 v5, 0x103

    aput-short v3, v0, v5

    const/16 v5, 0x104

    aput-short v8, v0, v5

    const/16 v5, 0x105

    aput-short v3, v0, v5

    .line 56
    const/16 v5, 0x106

    aput-short v11, v0, v5

    const/16 v5, 0x107

    aput-short v3, v0, v5

    const/16 v8, 0x108

    aput-short v62, v0, v8

    const/16 v8, 0x109

    aput-short v3, v0, v8

    const/16 v8, 0x10a

    aput-short v16, v0, v8

    const/16 v8, 0x10b

    aput-short v3, v0, v8

    const/16 v11, 0x10c

    aput-short v18, v0, v11

    const/16 v11, 0x10d

    aput-short v3, v0, v11

    const/16 v11, 0x10e

    aput-short v21, v0, v11

    const/16 v11, 0x10f

    aput-short v3, v0, v11

    const/16 v16, 0x110

    aput-short v41, v0, v16

    const/16 v16, 0x111

    aput-short v3, v0, v16

    const/16 v16, 0x112

    aput-short v27, v0, v16

    const/16 v16, 0x113

    aput-short v3, v0, v16

    const/16 v18, 0x114

    aput-short v30, v0, v18

    const/16 v18, 0x115

    aput-short v3, v0, v18

    const/16 v18, 0x116

    aput-short v33, v0, v18

    const/16 v18, 0x117

    aput-short v3, v0, v18

    const/16 v21, 0x118

    aput-short v83, v0, v21

    const/16 v21, 0x119

    aput-short v3, v0, v21

    const/16 v21, 0x11a

    aput-short v38, v0, v21

    const/16 v21, 0x11b

    aput-short v3, v0, v21

    const/16 v27, 0x11c

    aput-short v40, v0, v27

    const/16 v27, 0x11d

    aput-short v3, v0, v27

    .line 57
    const/16 v27, 0x11e

    aput-short v43, v0, v27

    const/16 v27, 0x11f

    aput-short v3, v0, v27

    const/16 v30, 0x120

    aput-short v28, v0, v30

    const/16 v30, 0x121

    aput-short v14, v0, v30

    const/16 v30, 0x122

    aput-short v16, v0, v30

    const/16 v16, 0x123

    aput-short v14, v0, v16

    const/16 v16, 0x124

    aput-short v69, v0, v16

    const/16 v16, 0x125

    aput-short v14, v0, v16

    const/16 v16, 0x126

    const/16 v30, 0x193

    aput-short v30, v0, v16

    const/16 v16, 0x127

    aput-short v14, v0, v16

    const/16 v33, 0x128

    aput-short v72, v0, v33

    const/16 v33, 0x129

    aput-short v14, v0, v33

    const/16 v33, 0x12a

    const/16 v38, 0x153

    aput-short v38, v0, v33

    const/16 v33, 0x12b

    aput-short v14, v0, v33

    const/16 v40, 0x12c

    aput-short v75, v0, v40

    const/16 v40, 0x12d

    aput-short v14, v0, v40

    const/16 v40, 0x12e

    const/16 v43, 0x1d3

    aput-short v43, v0, v40

    const/16 v40, 0x12f

    aput-short v14, v0, v40

    const/16 v69, 0x130

    aput-short v70, v0, v69

    const/16 v69, 0x131

    aput-short v14, v0, v69

    const/16 v69, 0x132

    const/16 v72, 0x133

    aput-short v72, v0, v69

    aput-short v14, v0, v72

    const/16 v69, 0x134

    aput-short v80, v0, v69

    const/16 v69, 0x135

    aput-short v14, v0, v69

    .line 58
    const/16 v69, 0x136

    const/16 v72, 0x1b3

    aput-short v72, v0, v69

    const/16 v69, 0x137

    aput-short v14, v0, v69

    const/16 v75, 0x138

    aput-short v82, v0, v75

    const/16 v75, 0x139

    aput-short v14, v0, v75

    const/16 v75, 0x13a

    const/16 v80, 0x173

    aput-short v80, v0, v75

    const/16 v75, 0x13b

    aput-short v14, v0, v75

    const/16 v82, 0x13c

    aput-short v85, v0, v82

    const/16 v82, 0x13d

    aput-short v14, v0, v82

    const/16 v82, 0x13e

    const/16 v83, 0x1f3

    aput-short v83, v0, v82

    const/16 v82, 0x13f

    aput-short v14, v0, v82

    const/16 v85, 0x140

    aput-short v17, v0, v85

    const/16 v85, 0x141

    aput-short v14, v0, v85

    const/16 v85, 0x142

    aput-short v8, v0, v85

    const/16 v8, 0x143

    aput-short v14, v0, v8

    const/16 v8, 0x144

    aput-short v89, v0, v8

    const/16 v8, 0x145

    aput-short v14, v0, v8

    const/16 v8, 0x146

    const/16 v85, 0x18b

    aput-short v85, v0, v8

    const/16 v8, 0x147

    aput-short v14, v0, v8

    const/16 v89, 0x148

    aput-short v91, v0, v89

    const/16 v89, 0x149

    aput-short v14, v0, v89

    const/16 v89, 0x14a

    const/16 v91, 0x14b

    aput-short v91, v0, v89

    aput-short v14, v0, v91

    const/16 v89, 0x14c

    aput-short v94, v0, v89

    const/16 v89, 0x14d

    aput-short v14, v0, v89

    .line 59
    const/16 v89, 0x14e

    const/16 v91, 0x1cb

    aput-short v91, v0, v89

    const/16 v89, 0x14f

    aput-short v14, v0, v89

    const/16 v94, 0x150

    aput-short v60, v0, v94

    const/16 v94, 0x151

    aput-short v14, v0, v94

    const/16 v94, 0x152

    aput-short v33, v0, v94

    aput-short v14, v0, v38

    const/16 v33, 0x154

    aput-short v98, v0, v33

    const/16 v33, 0x155

    aput-short v14, v0, v33

    const/16 v33, 0x156

    const/16 v38, 0x1ab

    aput-short v38, v0, v33

    const/16 v33, 0x157

    aput-short v14, v0, v33

    const/16 v94, 0x158

    aput-short v99, v0, v94

    const/16 v94, 0x159

    aput-short v14, v0, v94

    const/16 v94, 0x15a

    const/16 v98, 0x16b

    aput-short v98, v0, v94

    const/16 v94, 0x15b

    aput-short v14, v0, v94

    const/16 v99, 0x15c

    aput-short v88, v0, v99

    const/16 v88, 0x15d

    aput-short v14, v0, v88

    const/16 v88, 0x15e

    const/16 v99, 0x1eb

    aput-short v99, v0, v88

    const/16 v88, 0x15f

    aput-short v14, v0, v88

    const/16 v101, 0x160

    aput-short v39, v0, v101

    const/16 v101, 0x161

    aput-short v14, v0, v101

    const/16 v101, 0x162

    aput-short v21, v0, v101

    const/16 v21, 0x163

    aput-short v14, v0, v21

    const/16 v21, 0x164

    aput-short v105, v0, v21

    const/16 v21, 0x165

    aput-short v14, v0, v21

    .line 60
    const/16 v21, 0x166

    const/16 v101, 0x19b

    aput-short v101, v0, v21

    const/16 v21, 0x167

    aput-short v14, v0, v21

    const/16 v104, 0x168

    aput-short v107, v0, v104

    const/16 v104, 0x169

    aput-short v14, v0, v104

    const/16 v104, 0x16a

    aput-short v94, v0, v104

    aput-short v14, v0, v98

    const/16 v94, 0x16c

    aput-short v110, v0, v94

    const/16 v94, 0x16d

    aput-short v14, v0, v94

    const/16 v94, 0x16e

    const/16 v98, 0x1db

    aput-short v98, v0, v94

    const/16 v94, 0x16f

    aput-short v14, v0, v94

    const/16 v104, 0x170

    aput-short v81, v0, v104

    const/16 v104, 0x171

    aput-short v14, v0, v104

    const/16 v104, 0x172

    aput-short v75, v0, v104

    aput-short v14, v0, v80

    const/16 v75, 0x174

    aput-short v114, v0, v75

    const/16 v75, 0x175

    aput-short v14, v0, v75

    const/16 v75, 0x176

    const/16 v80, 0x1bb

    aput-short v80, v0, v75

    const/16 v75, 0x177

    aput-short v14, v0, v75

    const/16 v104, 0x178

    aput-short v115, v0, v104

    const/16 v104, 0x179

    aput-short v14, v0, v104

    const/16 v104, 0x17a

    const/16 v105, 0x17b

    aput-short v105, v0, v104

    aput-short v14, v0, v105

    const/16 v104, 0x17c

    aput-short v100, v0, v104

    const/16 v100, 0x17d

    aput-short v14, v0, v100

    .line 61
    const/16 v100, 0x17e

    const/16 v104, 0x1fb

    aput-short v104, v0, v100

    const/16 v100, 0x17f

    aput-short v14, v0, v100

    const/16 v105, 0x180

    aput-short v12, v0, v105

    const/16 v105, 0x181

    aput-short v14, v0, v105

    const/16 v105, 0x182

    aput-short v5, v0, v105

    const/16 v5, 0x183

    aput-short v14, v0, v5

    const/16 v5, 0x184

    aput-short v121, v0, v5

    const/16 v5, 0x185

    aput-short v14, v0, v5

    const/16 v5, 0x186

    const/16 v105, 0x187

    aput-short v105, v0, v5

    aput-short v14, v0, v105

    const/16 v5, 0x188

    aput-short v95, v0, v5

    const/16 v5, 0x189

    aput-short v14, v0, v5

    const/16 v5, 0x18a

    aput-short v8, v0, v5

    aput-short v14, v0, v85

    const/16 v5, 0x18c

    aput-short v124, v0, v5

    const/16 v5, 0x18d

    aput-short v14, v0, v5

    const/16 v5, 0x18e

    const/16 v8, 0x1c7

    aput-short v8, v0, v5

    const/16 v5, 0x18f

    aput-short v14, v0, v5

    const/16 v85, 0x190

    aput-short v55, v0, v85

    const/16 v85, 0x191

    aput-short v14, v0, v85

    const/16 v85, 0x192

    aput-short v16, v0, v85

    aput-short v14, v0, v30

    const/16 v16, 0x194

    aput-short v128, v0, v16

    const/16 v16, 0x195

    aput-short v14, v0, v16

    .line 62
    const/16 v16, 0x196

    const/16 v30, 0x1a7

    aput-short v30, v0, v16

    const/16 v16, 0x197

    aput-short v14, v0, v16

    const/16 v85, 0x198

    aput-short v125, v0, v85

    const/16 v85, 0x199

    aput-short v14, v0, v85

    const/16 v85, 0x19a

    aput-short v21, v0, v85

    aput-short v14, v0, v101

    const/16 v21, 0x19c

    aput-short v97, v0, v21

    const/16 v21, 0x19d

    aput-short v14, v0, v21

    const/16 v21, 0x19e

    const/16 v85, 0x1e7

    aput-short v85, v0, v21

    const/16 v21, 0x19f

    aput-short v14, v0, v21

    const/16 v95, 0x1a0

    aput-short v34, v0, v95

    const/16 v95, 0x1a1

    aput-short v14, v0, v95

    const/16 v95, 0x1a2

    aput-short v18, v0, v95

    const/16 v18, 0x1a3

    aput-short v14, v0, v18

    const/16 v18, 0x1a4

    aput-short v133, v0, v18

    const/16 v18, 0x1a5

    aput-short v14, v0, v18

    const/16 v18, 0x1a6

    aput-short v16, v0, v18

    aput-short v14, v0, v30

    const/16 v16, 0x1a8

    aput-short v111, v0, v16

    const/16 v16, 0x1a9

    aput-short v14, v0, v16

    const/16 v16, 0x1aa

    aput-short v33, v0, v16

    aput-short v14, v0, v38

    const/16 v16, 0x1ac

    aput-short v136, v0, v16

    const/16 v16, 0x1ad

    aput-short v14, v0, v16

    .line 63
    const/16 v16, 0x1ae

    const/16 v18, 0x1d7

    aput-short v18, v0, v16

    const/16 v16, 0x1af

    aput-short v14, v0, v16

    const/16 v30, 0x1b0

    aput-short v76, v0, v30

    const/16 v30, 0x1b1

    aput-short v14, v0, v30

    const/16 v30, 0x1b2

    aput-short v69, v0, v30

    aput-short v14, v0, v72

    const/16 v30, 0x1b4

    aput-short v140, v0, v30

    const/16 v30, 0x1b5

    aput-short v14, v0, v30

    const/16 v30, 0x1b6

    const/16 v33, 0x1b7

    aput-short v33, v0, v30

    aput-short v14, v0, v33

    const/16 v30, 0x1b8

    aput-short v137, v0, v30

    const/16 v30, 0x1b9

    aput-short v14, v0, v30

    const/16 v30, 0x1ba

    aput-short v75, v0, v30

    aput-short v14, v0, v80

    const/16 v30, 0x1bc

    aput-short v84, v0, v30

    const/16 v30, 0x1bd

    aput-short v14, v0, v30

    const/16 v30, 0x1be

    const/16 v33, 0x1f7

    aput-short v33, v0, v30

    const/16 v30, 0x1bf

    aput-short v14, v0, v30

    const/16 v38, 0x1c0

    aput-short v22, v0, v38

    const/16 v38, 0x1c1

    aput-short v14, v0, v38

    const/16 v38, 0x1c2

    aput-short v11, v0, v38

    const/16 v11, 0x1c3

    aput-short v14, v0, v11

    const/16 v11, 0x1c4

    aput-short v144, v0, v11

    const/16 v11, 0x1c5

    aput-short v14, v0, v11

    .line 64
    const/16 v11, 0x1c6

    aput-short v5, v0, v11

    aput-short v14, v0, v8

    const/16 v5, 0x1c8

    aput-short v102, v0, v5

    const/16 v5, 0x1c9

    aput-short v14, v0, v5

    const/16 v5, 0x1ca

    aput-short v89, v0, v5

    aput-short v14, v0, v91

    const/16 v5, 0x1cc

    aput-short v143, v0, v5

    const/16 v5, 0x1cd

    aput-short v14, v0, v5

    const/16 v5, 0x1ce

    const/16 v8, 0x1cf

    aput-short v8, v0, v5

    aput-short v14, v0, v8

    const/16 v5, 0x1d0

    aput-short v65, v0, v5

    const/16 v5, 0x1d1

    aput-short v14, v0, v5

    const/16 v5, 0x1d2

    aput-short v40, v0, v5

    aput-short v14, v0, v43

    const/16 v5, 0x1d4

    aput-short v147, v0, v5

    const/16 v5, 0x1d5

    aput-short v14, v0, v5

    const/16 v5, 0x1d6

    aput-short v16, v0, v5

    aput-short v14, v0, v18

    const/16 v5, 0x1d8

    aput-short v130, v0, v5

    const/16 v5, 0x1d9

    aput-short v14, v0, v5

    const/16 v5, 0x1da

    aput-short v94, v0, v5

    aput-short v14, v0, v98

    const/16 v5, 0x1dc

    aput-short v92, v0, v5

    const/16 v5, 0x1dd

    aput-short v14, v0, v5

    .line 65
    const/16 v5, 0x1de

    const/16 v8, 0x1ef

    aput-short v8, v0, v5

    const/16 v5, 0x1df

    aput-short v14, v0, v5

    const/16 v11, 0x1e0

    aput-short v44, v0, v11

    const/16 v11, 0x1e1

    aput-short v14, v0, v11

    const/16 v11, 0x1e2

    aput-short v27, v0, v11

    const/16 v11, 0x1e3

    aput-short v14, v0, v11

    const/16 v11, 0x1e4

    aput-short v149, v0, v11

    const/16 v11, 0x1e5

    aput-short v14, v0, v11

    const/16 v11, 0x1e6

    aput-short v21, v0, v11

    aput-short v14, v0, v85

    const/16 v11, 0x1e8

    aput-short v118, v0, v11

    const/16 v11, 0x1e9

    aput-short v14, v0, v11

    const/16 v11, 0x1ea

    aput-short v88, v0, v11

    aput-short v14, v0, v99

    const/16 v11, 0x1ec

    aput-short v139, v0, v11

    const/16 v11, 0x1ed

    aput-short v14, v0, v11

    const/16 v11, 0x1ee

    aput-short v5, v0, v11

    aput-short v14, v0, v8

    const/16 v5, 0x1f0

    aput-short v86, v0, v5

    const/16 v5, 0x1f1

    aput-short v14, v0, v5

    const/16 v5, 0x1f2

    aput-short v82, v0, v5

    aput-short v14, v0, v83

    const/16 v5, 0x1f4

    aput-short v151, v0, v5

    const/16 v5, 0x1f5

    aput-short v14, v0, v5

    .line 66
    const/16 v5, 0x1f6

    aput-short v30, v0, v5

    aput-short v14, v0, v33

    const/16 v5, 0x1f8

    aput-short v142, v0, v5

    const/16 v5, 0x1f9

    aput-short v14, v0, v5

    const/16 v5, 0x1fa

    aput-short v100, v0, v5

    aput-short v14, v0, v104

    const/16 v5, 0x1fc

    aput-short v93, v0, v5

    const/16 v5, 0x1fd

    aput-short v14, v0, v5

    const/16 v5, 0x1fe

    const/16 v8, 0x1ff

    aput-short v8, v0, v5

    aput-short v14, v0, v8

    const/16 v5, 0x201

    aput-short v12, v0, v5

    const/16 v5, 0x202

    aput-short v87, v0, v5

    const/16 v5, 0x203

    aput-short v12, v0, v5

    const/16 v5, 0x204

    aput-short v45, v0, v5

    const/16 v5, 0x205

    aput-short v12, v0, v5

    const/16 v5, 0x206

    aput-short v119, v0, v5

    const/16 v5, 0x207

    aput-short v12, v0, v5

    const/16 v5, 0x208

    aput-short v23, v0, v5

    const/16 v5, 0x209

    aput-short v12, v0, v5

    const/16 v5, 0x20a

    aput-short v103, v0, v5

    const/16 v5, 0x20b

    aput-short v12, v0, v5

    const/16 v5, 0x20c

    aput-short v66, v0, v5

    const/16 v5, 0x20d

    aput-short v12, v0, v5

    const/16 v5, 0x20e

    aput-short v131, v0, v5

    .line 67
    const/16 v5, 0x20f

    aput-short v12, v0, v5

    const/16 v5, 0x210

    aput-short v3, v0, v5

    const/16 v5, 0x211

    aput-short v12, v0, v5

    const/16 v5, 0x212

    aput-short v96, v0, v5

    const/16 v5, 0x213

    aput-short v12, v0, v5

    const/16 v5, 0x214

    aput-short v56, v0, v5

    const/16 v5, 0x215

    aput-short v12, v0, v5

    const/16 v5, 0x216

    aput-short v126, v0, v5

    const/16 v5, 0x217

    aput-short v12, v0, v5

    const/16 v5, 0x218

    aput-short v35, v0, v5

    const/16 v5, 0x219

    aput-short v12, v0, v5

    const/16 v5, 0x21a

    aput-short v112, v0, v5

    const/16 v5, 0x21b

    aput-short v12, v0, v5

    const/16 v5, 0x21c

    aput-short v77, v0, v5

    const/16 v5, 0x21d

    aput-short v12, v0, v5

    const/16 v5, 0x21e

    aput-short v138, v0, v5

    const/16 v5, 0x21f

    aput-short v12, v0, v5

    const/16 v5, 0x220

    aput-short v7, v0, v5

    const/16 v5, 0x221

    aput-short v12, v0, v5

    const/16 v5, 0x222

    aput-short v90, v0, v5

    const/16 v5, 0x223

    aput-short v12, v0, v5

    const/16 v5, 0x224

    aput-short v50, v0, v5

    const/16 v5, 0x225

    aput-short v12, v0, v5

    const/16 v5, 0x226

    aput-short v122, v0, v5

    const/16 v5, 0x227

    aput-short v12, v0, v5

    const/16 v5, 0x228

    aput-short v29, v0, v5

    const/16 v5, 0x229

    aput-short v12, v0, v5

    .line 68
    const/16 v5, 0x22a

    aput-short v106, v0, v5

    const/16 v5, 0x22b

    aput-short v12, v0, v5

    const/16 v5, 0x22c

    aput-short v71, v0, v5

    const/16 v5, 0x22d

    aput-short v12, v0, v5

    const/16 v5, 0x22e

    aput-short v134, v0, v5

    const/16 v5, 0x22f

    aput-short v12, v0, v5

    const/16 v5, 0x230

    aput-short v6, v0, v5

    const/16 v5, 0x231

    aput-short v3, v0, v5

    const/16 v5, 0x232

    aput-short v48, v0, v5

    const/16 v5, 0x233

    aput-short v3, v0, v5

    const/16 v5, 0x234

    aput-short v51, v0, v5

    const/16 v5, 0x235

    aput-short v3, v0, v5

    const/16 v5, 0x236

    aput-short v54, v0, v5

    const/16 v5, 0x237

    aput-short v3, v0, v5

    const/16 v5, 0x238

    aput-short v49, v0, v5

    const/16 v5, 0x239

    aput-short v3, v0, v5

    const/16 v5, 0x23a

    aput-short v59, v0, v5

    const/16 v5, 0x23b

    aput-short v3, v0, v5

    const/16 v5, 0x23c

    aput-short v61, v0, v5

    const/16 v5, 0x23d

    aput-short v3, v0, v5

    const/16 v5, 0x23e

    aput-short v64, v0, v5

    const/16 v5, 0x23f

    aput-short v3, v0, v5

    .line 45
    sput-object v0, Lcom/jcraft/jsch/jzlib/StaticTree;->static_ltree:[S

    .line 70
    new-array v0, v2, [S

    aput-short v9, v0, v1

    aput-short v23, v0, v4

    aput-short v9, v0, v6

    aput-short v3, v0, v7

    aput-short v9, v0, v9

    aput-short v35, v0, v10

    aput-short v9, v0, v12

    aput-short v7, v0, v3

    aput-short v9, v0, v14

    aput-short v29, v0, v15

    aput-short v9, v0, v17

    const/16 v2, 0xc

    aput-short v2, v0, v2

    aput-short v9, v0, v19

    aput-short v24, v0, v20

    aput-short v9, v0, v22

    aput-short v4, v0, v23

    aput-short v9, v0, v25

    .line 71
    aput-short v26, v0, v26

    aput-short v9, v0, v28

    aput-short v15, v0, v29

    aput-short v9, v0, v31

    aput-short v37, v0, v32

    aput-short v9, v0, v34

    aput-short v10, v0, v35

    aput-short v9, v0, v36

    aput-short v32, v0, v37

    aput-short v9, v0, v39

    aput-short v20, v0, v24

    aput-short v9, v0, v41

    aput-short v42, v0, v42

    aput-short v9, v0, v44

    aput-short v1, v0, v45

    aput-short v9, v0, v46

    aput-short v25, v0, v47

    aput-short v9, v0, v49

    aput-short v14, v0, v50

    aput-short v9, v0, v52

    aput-short v36, v0, v53

    aput-short v9, v0, v55

    aput-short v9, v0, v56

    aput-short v9, v0, v57

    aput-short v31, v0, v58

    aput-short v9, v0, v60

    aput-short v19, v0, v13

    aput-short v9, v0, v62

    .line 72
    aput-short v41, v0, v63

    aput-short v9, v0, v65

    aput-short v6, v0, v66

    aput-short v9, v0, v67

    aput-short v28, v0, v68

    aput-short v9, v0, v70

    aput-short v17, v0, v71

    aput-short v9, v0, v73

    aput-short v39, v0, v74

    aput-short v9, v0, v76

    aput-short v12, v0, v77

    aput-short v9, v0, v78

    aput-short v34, v0, v79

    aput-short v9, v0, v81

    .line 70
    sput-object v0, Lcom/jcraft/jsch/jzlib/StaticTree;->static_dtree:[S

    .line 75
    new-instance v0, Lcom/jcraft/jsch/jzlib/StaticTree;

    sget-object v83, Lcom/jcraft/jsch/jzlib/StaticTree;->static_ltree:[S

    sget-object v84, Lcom/jcraft/jsch/jzlib/Tree;->extra_lbits:[I

    const/16 v85, 0x101

    const/16 v86, 0x11e

    const/16 v87, 0xf

    move-object/from16 v82, v0

    invoke-direct/range {v82 .. v87}, Lcom/jcraft/jsch/jzlib/StaticTree;-><init>([S[IIII)V

    .line 74
    sput-object v0, Lcom/jcraft/jsch/jzlib/StaticTree;->static_l_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    .line 78
    new-instance v0, Lcom/jcraft/jsch/jzlib/StaticTree;

    sget-object v2, Lcom/jcraft/jsch/jzlib/StaticTree;->static_dtree:[S

    sget-object v3, Lcom/jcraft/jsch/jzlib/Tree;->extra_dbits:[I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    const/16 v6, 0xf

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/jzlib/StaticTree;-><init>([S[IIII)V

    .line 77
    sput-object v0, Lcom/jcraft/jsch/jzlib/StaticTree;->static_d_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    .line 81
    new-instance v0, Lcom/jcraft/jsch/jzlib/StaticTree;

    sget-object v9, Lcom/jcraft/jsch/jzlib/Tree;->extra_blbits:[I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x13

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jcraft/jsch/jzlib/StaticTree;-><init>([S[IIII)V

    .line 80
    sput-object v0, Lcom/jcraft/jsch/jzlib/StaticTree;->static_bl_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    .line 81
    return-void
.end method

.method private constructor <init>([S[IIII)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/StaticTree;->static_tree:[S

    .line 92
    iput-object p2, p0, Lcom/jcraft/jsch/jzlib/StaticTree;->extra_bits:[I

    .line 93
    iput p3, p0, Lcom/jcraft/jsch/jzlib/StaticTree;->extra_base:I

    .line 94
    iput p4, p0, Lcom/jcraft/jsch/jzlib/StaticTree;->elems:I

    .line 95
    iput p5, p0, Lcom/jcraft/jsch/jzlib/StaticTree;->max_length:I

    .line 96
    return-void
.end method
