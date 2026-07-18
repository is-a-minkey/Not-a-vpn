.class abstract Lcom/jcraft/jsch/DHG16N;
.super Lcom/jcraft/jsch/DHGN;
.source "DHG16N.java"


# static fields
.field static final g:[B

.field static final p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 136

    .line 31
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    sput-object v1, Lcom/jcraft/jsch/DHG16N;->g:[B

    .line 32
    const/16 v1, 0x201

    new-array v1, v1, [B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    aput-byte v2, v1, v3

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    const/4 v5, 0x4

    aput-byte v2, v1, v5

    .line 33
    const/4 v6, 0x5

    aput-byte v2, v1, v6

    const/4 v7, 0x6

    aput-byte v2, v1, v7

    const/4 v8, 0x7

    aput-byte v2, v1, v8

    const/16 v9, 0x8

    aput-byte v2, v1, v9

    const/16 v10, 0x9

    const/16 v11, -0x37

    aput-byte v11, v1, v10

    const/16 v12, 0xa

    const/16 v13, 0xf

    aput-byte v13, v1, v12

    const/16 v14, 0xb

    const/16 v15, -0x26

    aput-byte v15, v1, v14

    .line 34
    const/16 v16, 0xc

    const/16 v17, -0x5e

    aput-byte v17, v1, v16

    const/16 v18, 0xd

    const/16 v19, 0x21

    aput-byte v19, v1, v18

    const/16 v20, 0xe

    const/16 v21, 0x68

    aput-byte v21, v1, v20

    const/16 v22, -0x3e

    aput-byte v22, v1, v13

    const/16 v23, 0x10

    const/16 v24, 0x34

    aput-byte v24, v1, v23

    const/16 v25, 0x11

    const/16 v26, -0x3c

    aput-byte v26, v1, v25

    const/16 v27, 0x12

    const/16 v28, -0x3a

    aput-byte v28, v1, v27

    .line 35
    const/16 v29, 0x13

    const/16 v30, 0x62

    aput-byte v30, v1, v29

    const/16 v31, 0x14

    const/16 v32, -0x75

    aput-byte v32, v1, v31

    const/16 v32, 0x15

    const/16 v33, -0x80

    aput-byte v33, v1, v32

    const/16 v33, 0x16

    const/16 v34, -0x24

    aput-byte v34, v1, v33

    const/16 v35, 0x17

    const/16 v36, 0x1c

    aput-byte v36, v1, v35

    const/16 v37, 0x18

    const/16 v38, -0x2f

    aput-byte v38, v1, v37

    const/16 v39, 0x19

    const/16 v40, 0x29

    aput-byte v40, v1, v39

    .line 36
    const/16 v41, 0x1a

    aput-byte v3, v1, v41

    const/16 v42, 0x1b

    const/16 v43, 0x4e

    aput-byte v43, v1, v42

    aput-byte v9, v1, v36

    const/16 v44, 0x1d

    const/16 v45, -0x76

    aput-byte v45, v1, v44

    const/16 v44, 0x1e

    const/16 v46, 0x67

    aput-byte v46, v1, v44

    const/16 v47, 0x1f

    const/16 v48, -0x34

    aput-byte v48, v1, v47

    const/16 v48, 0x20

    const/16 v49, 0x74

    aput-byte v49, v1, v48

    .line 37
    aput-byte v3, v1, v19

    const/16 v50, 0x22

    aput-byte v14, v1, v50

    const/16 v51, 0x23

    const/16 v52, -0x42

    aput-byte v52, v1, v51

    const/16 v53, 0x24

    const/16 v54, -0x5a

    aput-byte v54, v1, v53

    const/16 v55, 0x25

    const/16 v56, 0x3b

    aput-byte v56, v1, v55

    const/16 v57, 0x26

    aput-byte v29, v1, v57

    const/16 v29, 0x27

    const/16 v58, -0x65

    aput-byte v58, v1, v29

    .line 38
    const/16 v59, 0x28

    aput-byte v50, v1, v59

    const/16 v50, 0x51

    aput-byte v50, v1, v40

    const/16 v60, 0x2a

    const/16 v61, 0x4a

    aput-byte v61, v1, v60

    const/16 v62, 0x2b

    aput-byte v9, v1, v62

    const/16 v63, 0x2c

    const/16 v64, 0x79

    aput-byte v64, v1, v63

    const/16 v65, 0x2d

    const/16 v66, -0x72

    aput-byte v66, v1, v65

    const/16 v67, 0x2e

    aput-byte v24, v1, v67

    .line 39
    const/16 v68, 0x2f

    aput-byte v5, v1, v68

    const/16 v69, 0x30

    const/16 v70, -0x23

    aput-byte v70, v1, v69

    const/16 v71, 0x31

    const/16 v72, -0x11

    aput-byte v72, v1, v71

    const/16 v73, 0x32

    const/16 v74, -0x6b

    aput-byte v74, v1, v73

    const/16 v75, 0x33

    aput-byte v39, v1, v75

    const/16 v39, -0x4d

    aput-byte v39, v1, v24

    const/16 v76, 0x35

    const/16 v77, -0x33

    aput-byte v77, v1, v76

    .line 40
    const/16 v77, 0x36

    const/16 v78, 0x3a

    aput-byte v78, v1, v77

    const/16 v79, 0x37

    const/16 v80, 0x43

    aput-byte v80, v1, v79

    const/16 v81, 0x38

    aput-byte v42, v1, v81

    const/16 v82, 0x39

    aput-byte v69, v1, v82

    aput-byte v62, v1, v78

    aput-byte v12, v1, v56

    const/16 v69, 0x3c

    const/16 v78, 0x6d

    aput-byte v78, v1, v69

    .line 41
    const/16 v83, 0x3d

    const/16 v84, -0xe

    aput-byte v84, v1, v83

    const/16 v84, 0x3e

    const/16 v85, 0x5f

    aput-byte v85, v1, v84

    const/16 v86, 0x3f

    aput-byte v31, v1, v86

    const/16 v87, 0x40

    aput-byte v79, v1, v87

    const/16 v87, 0x41

    const/16 v88, 0x4f

    aput-byte v88, v1, v87

    const/16 v87, 0x42

    const/16 v89, -0x1f

    aput-byte v89, v1, v87

    aput-byte v76, v1, v80

    .line 42
    const/16 v90, 0x44

    aput-byte v78, v1, v90

    const/16 v90, 0x45

    aput-byte v78, v1, v90

    const/16 v91, 0x46

    aput-byte v50, v1, v91

    const/16 v92, 0x47

    aput-byte v22, v1, v92

    const/16 v93, 0x48

    aput-byte v90, v1, v93

    const/16 v90, 0x49

    const/16 v94, -0x1c

    aput-byte v94, v1, v90

    const/16 v95, -0x7b

    aput-byte v95, v1, v61

    .line 43
    const/16 v96, 0x4b

    const/16 v97, -0x4b

    aput-byte v97, v1, v96

    const/16 v98, 0x4c

    const/16 v99, 0x76

    aput-byte v99, v1, v98

    const/16 v100, 0x4d

    aput-byte v30, v1, v100

    const/16 v101, 0x5e

    aput-byte v101, v1, v43

    const/16 v102, 0x7e

    aput-byte v102, v1, v88

    const/16 v103, 0x50

    aput-byte v28, v1, v103

    const/16 v28, -0xc

    aput-byte v28, v1, v50

    .line 44
    const/16 v104, 0x52

    aput-byte v98, v1, v104

    const/16 v105, 0x53

    aput-byte v87, v1, v105

    const/16 v87, 0x54

    const/16 v105, -0x17

    aput-byte v105, v1, v87

    const/16 v87, 0x55

    aput-byte v54, v1, v87

    const/16 v106, 0x56

    aput-byte v79, v1, v106

    const/16 v79, 0x57

    const/16 v107, -0x13

    aput-byte v107, v1, v79

    const/16 v108, 0x58

    const/16 v109, 0x6b

    aput-byte v109, v1, v108

    .line 45
    const/16 v110, 0x59

    aput-byte v14, v1, v110

    const/16 v111, 0x5a

    aput-byte v2, v1, v111

    const/16 v112, 0x5b

    const/16 v113, 0x5c

    aput-byte v113, v1, v112

    const/16 v114, -0x4a

    aput-byte v114, v1, v113

    const/16 v113, 0x5d

    aput-byte v28, v1, v113

    aput-byte v7, v1, v101

    const/16 v115, -0x49

    aput-byte v115, v1, v85

    .line 46
    const/16 v116, 0x60

    aput-byte v107, v1, v116

    const/16 v116, 0x61

    const/16 v117, -0x12

    aput-byte v117, v1, v116

    aput-byte v81, v1, v30

    const/16 v81, 0x63

    aput-byte v109, v1, v81

    const/16 v118, 0x64

    const/16 v119, -0x5

    aput-byte v119, v1, v118

    const/16 v120, 0x65

    aput-byte v111, v1, v120

    const/16 v121, 0x66

    const/16 v122, -0x77

    aput-byte v122, v1, v121

    .line 47
    const/16 v122, -0x61

    aput-byte v122, v1, v46

    const/16 v123, -0x5b

    aput-byte v123, v1, v21

    const/16 v123, 0x69

    const/16 v124, -0x52

    aput-byte v124, v1, v123

    const/16 v125, 0x6a

    aput-byte v122, v1, v125

    aput-byte v53, v1, v109

    const/16 v122, 0x6c

    aput-byte v25, v1, v122

    const/16 v25, 0x7c

    aput-byte v25, v1, v78

    .line 48
    const/16 v126, 0x6e

    aput-byte v96, v1, v126

    const/16 v126, 0x6f

    aput-byte v47, v1, v126

    const/16 v127, 0x70

    const/16 v128, -0x1a

    aput-byte v128, v1, v127

    const/16 v129, 0x71

    aput-byte v90, v1, v129

    const/16 v130, 0x72

    aput-byte v59, v1, v130

    const/16 v131, 0x73

    aput-byte v121, v1, v131

    aput-byte v50, v1, v49

    .line 49
    const/16 v121, 0x75

    const/16 v132, -0x14

    aput-byte v132, v1, v121

    aput-byte v94, v1, v99

    const/16 v121, 0x77

    aput-byte v112, v1, v121

    const/16 v133, 0x78

    aput-byte v83, v1, v133

    aput-byte v22, v1, v64

    const/16 v64, 0x7b

    aput-byte v25, v1, v64

    .line 50
    const/16 v83, -0x48

    aput-byte v83, v1, v25

    const/16 v133, 0x7d

    const/16 v134, -0x5f

    aput-byte v134, v1, v133

    aput-byte v81, v1, v102

    const/16 v81, 0x7f

    const/16 v102, -0x41

    aput-byte v102, v1, v81

    const/16 v81, 0x80

    aput-byte v6, v1, v81

    const/16 v81, 0x81

    const/16 v102, -0x68

    aput-byte v102, v1, v81

    const/16 v81, 0x82

    aput-byte v15, v1, v81

    .line 51
    const/16 v81, 0x83

    aput-byte v93, v1, v81

    const/16 v81, 0x84

    aput-byte v77, v1, v81

    const/16 v81, 0x85

    aput-byte v36, v1, v81

    const/16 v81, 0x86

    aput-byte v87, v1, v81

    const/16 v81, 0x87

    const/16 v135, -0x2d

    aput-byte v135, v1, v81

    const/16 v81, 0x88

    const/16 v135, -0x66

    aput-byte v135, v1, v81

    const/16 v81, 0x89

    aput-byte v123, v1, v81

    .line 52
    const/16 v81, 0x8a

    aput-byte v33, v1, v81

    const/16 v33, 0x8b

    aput-byte v86, v1, v33

    const/16 v33, 0x8c

    const/16 v81, -0x58

    aput-byte v81, v1, v33

    const/16 v33, 0x8d

    const/16 v86, -0x3

    aput-byte v86, v1, v33

    const/16 v33, 0x8e

    aput-byte v53, v1, v33

    const/16 v33, 0x8f

    const/16 v53, -0x31

    aput-byte v53, v1, v33

    const/16 v33, 0x90

    aput-byte v85, v1, v33

    .line 53
    const/16 v33, 0x91

    const/16 v53, -0x7d

    aput-byte v53, v1, v33

    const/16 v33, 0x92

    aput-byte v120, v1, v33

    const/16 v33, 0x93

    aput-byte v113, v1, v33

    const/16 v33, 0x94

    aput-byte v51, v1, v33

    const/16 v33, 0x95

    aput-byte v34, v1, v33

    const/16 v33, 0x96

    const/16 v85, -0x5d

    aput-byte v85, v1, v33

    const/16 v33, 0x97

    const/16 v85, -0x53

    aput-byte v85, v1, v33

    .line 54
    const/16 v33, 0x98

    const/16 v120, -0x6a

    aput-byte v120, v1, v33

    const/16 v33, 0x99

    aput-byte v36, v1, v33

    const/16 v33, 0x9a

    aput-byte v30, v1, v33

    const/16 v30, 0x9b

    const/16 v33, -0xd

    aput-byte v33, v1, v30

    const/16 v30, 0x9c

    aput-byte v106, v1, v30

    const/16 v30, 0x9d

    aput-byte v48, v1, v30

    const/16 v30, 0x9e

    aput-byte v95, v1, v30

    .line 55
    const/16 v30, 0x9f

    aput-byte v104, v1, v30

    const/16 v30, 0xa0

    const/16 v33, -0x45

    aput-byte v33, v1, v30

    const/16 v30, 0xa1

    const/16 v106, -0x62

    aput-byte v106, v1, v30

    const/16 v30, 0xa2

    const/16 v123, -0x2b

    aput-byte v123, v1, v30

    const/16 v30, 0xa3

    aput-byte v40, v1, v30

    const/16 v30, 0xa4

    aput-byte v8, v1, v30

    const/16 v30, 0xa5

    aput-byte v127, v1, v30

    .line 56
    const/16 v30, 0xa6

    aput-byte v120, v1, v30

    const/16 v30, 0xa7

    aput-byte v120, v1, v30

    const/16 v30, 0xa8

    aput-byte v78, v1, v30

    const/16 v30, 0xa9

    aput-byte v46, v1, v30

    const/16 v30, 0xaa

    aput-byte v16, v1, v30

    const/16 v30, 0xab

    aput-byte v76, v1, v30

    const/16 v30, 0xac

    aput-byte v43, v1, v30

    .line 57
    const/16 v30, 0xad

    aput-byte v61, v1, v30

    const/16 v30, 0xae

    const/16 v46, -0x44

    aput-byte v46, v1, v30

    const/16 v30, 0xaf

    aput-byte v102, v1, v30

    const/16 v30, 0xb0

    aput-byte v5, v1, v30

    const/16 v30, 0xb1

    const/16 v46, -0xf

    aput-byte v46, v1, v30

    const/16 v30, 0xb2

    aput-byte v49, v1, v30

    const/16 v30, 0xb3

    aput-byte v122, v1, v30

    .line 58
    const/16 v30, 0xb4

    aput-byte v9, v1, v30

    const/16 v30, 0xb5

    const/16 v78, -0x36

    aput-byte v78, v1, v30

    const/16 v30, 0xb6

    aput-byte v37, v1, v30

    const/16 v30, 0xb7

    aput-byte v19, v1, v30

    const/16 v30, 0xb8

    aput-byte v25, v1, v30

    const/16 v30, 0xb9

    aput-byte v73, v1, v30

    const/16 v30, 0xba

    const/16 v73, -0x70

    aput-byte v73, v1, v30

    .line 59
    const/16 v30, 0xbb

    aput-byte v101, v1, v30

    const/16 v30, 0xbc

    aput-byte v91, v1, v30

    const/16 v30, 0xbd

    aput-byte v67, v1, v30

    const/16 v30, 0xbe

    aput-byte v77, v1, v30

    const/16 v30, 0xbf

    const/16 v77, -0x32

    aput-byte v77, v1, v30

    const/16 v30, 0xc0

    aput-byte v56, v1, v30

    const/16 v30, 0xc1

    const/16 v101, -0x1d

    aput-byte v101, v1, v30

    .line 60
    const/16 v30, 0xc2

    aput-byte v106, v1, v30

    const/16 v30, 0xc3

    aput-byte v121, v1, v30

    const/16 v30, 0xc4

    aput-byte v63, v1, v30

    const/16 v30, 0xc5

    aput-byte v37, v1, v30

    const/16 v30, 0xc6

    aput-byte v20, v1, v30

    const/16 v20, 0xc7

    const/16 v30, -0x7a

    aput-byte v30, v1, v20

    const/16 v20, 0xc8

    aput-byte v4, v1, v20

    .line 61
    const/16 v4, 0xc9

    aput-byte v58, v1, v4

    const/16 v4, 0xca

    aput-byte v29, v1, v4

    const/16 v4, 0xcb

    aput-byte v53, v1, v4

    const/16 v4, 0xcc

    aput-byte v17, v1, v4

    const/16 v4, 0xcd

    aput-byte v132, v1, v4

    const/16 v4, 0xce

    aput-byte v8, v1, v4

    const/16 v4, 0xcf

    aput-byte v17, v1, v4

    .line 62
    const/16 v4, 0xd0

    const/16 v8, -0x71

    aput-byte v8, v1, v4

    const/16 v4, 0xd1

    aput-byte v97, v1, v4

    const/16 v4, 0xd2

    const/16 v20, -0x3b

    aput-byte v20, v1, v4

    const/16 v4, 0xd3

    aput-byte v113, v1, v4

    const/16 v4, 0xd4

    const/16 v20, -0x10

    aput-byte v20, v1, v4

    const/16 v4, 0xd5

    aput-byte v126, v1, v4

    const/16 v4, 0xd6

    aput-byte v98, v1, v4

    .line 63
    const/16 v4, 0xd7

    aput-byte v104, v1, v4

    const/16 v4, 0xd8

    aput-byte v11, v1, v4

    const/16 v4, 0xd9

    const/16 v20, -0x22

    aput-byte v20, v1, v4

    const/16 v4, 0xda

    aput-byte v62, v1, v4

    const/16 v4, 0xdb

    const/16 v58, -0x35

    aput-byte v58, v1, v4

    const/16 v4, 0xdc

    const/16 v58, -0xa

    aput-byte v58, v1, v4

    const/16 v4, 0xdd

    aput-byte v74, v1, v4

    .line 64
    const/16 v4, 0xde

    aput-byte v108, v1, v4

    const/16 v4, 0xdf

    aput-byte v35, v1, v4

    const/16 v4, 0xe0

    aput-byte v37, v1, v4

    const/16 v4, 0xe1

    aput-byte v82, v1, v4

    const/16 v4, 0xe2

    aput-byte v74, v1, v4

    const/16 v4, 0xe3

    aput-byte v90, v1, v4

    const/16 v4, 0xe4

    aput-byte v25, v1, v4

    .line 65
    const/16 v4, 0xe5

    const/16 v58, -0x16

    aput-byte v58, v1, v4

    const/16 v4, 0xe6

    aput-byte v74, v1, v4

    const/16 v4, 0xe7

    aput-byte v125, v1, v4

    const/16 v4, 0xe8

    const/16 v63, -0x1b

    aput-byte v63, v1, v4

    const/16 v4, 0xe9

    aput-byte v32, v1, v4

    const/16 v4, 0xea

    const/16 v74, -0x2e

    aput-byte v74, v1, v4

    const/16 v4, 0xeb

    aput-byte v57, v1, v4

    .line 66
    const/16 v4, 0xec

    aput-byte v37, v1, v4

    const/16 v4, 0xed

    aput-byte v102, v1, v4

    const/16 v4, 0xee

    const/16 v82, -0x6

    aput-byte v82, v1, v4

    const/16 v4, 0xef

    aput-byte v6, v1, v4

    const/16 v4, 0xf0

    aput-byte v23, v1, v4

    const/16 v4, 0xf1

    aput-byte v32, v1, v4

    const/16 v4, 0xf2

    aput-byte v130, v1, v4

    .line 67
    const/16 v4, 0xf3

    aput-byte v66, v1, v4

    const/16 v4, 0xf4

    aput-byte v111, v1, v4

    const/16 v4, 0xf5

    aput-byte v45, v1, v4

    const/16 v4, 0xf6

    const/16 v6, -0x56

    aput-byte v6, v1, v4

    const/16 v4, 0xf7

    aput-byte v26, v1, v4

    const/16 v4, 0xf8

    aput-byte v65, v1, v4

    const/16 v4, 0xf9

    aput-byte v85, v1, v4

    .line 68
    const/16 v4, 0xfa

    aput-byte v75, v1, v4

    const/16 v4, 0xfb

    aput-byte v35, v1, v4

    const/16 v4, 0xfc

    aput-byte v18, v1, v4

    const/16 v4, 0xfd

    aput-byte v5, v1, v4

    const/16 v4, 0xfe

    aput-byte v103, v1, v4

    const/16 v4, 0xff

    const/16 v6, 0x7a

    aput-byte v6, v1, v4

    const/16 v4, 0x100

    aput-byte v75, v1, v4

    .line 69
    const/16 v4, 0x101

    aput-byte v81, v1, v4

    const/16 v4, 0x102

    aput-byte v87, v1, v4

    const/16 v4, 0x103

    aput-byte v19, v1, v4

    const/16 v4, 0x104

    const/16 v18, -0x55

    aput-byte v18, v1, v4

    const/16 v4, 0x105

    const/16 v26, -0x21

    aput-byte v26, v1, v4

    const/16 v4, 0x106

    aput-byte v36, v1, v4

    const/16 v4, 0x107

    const/16 v26, -0x46

    aput-byte v26, v1, v4

    .line 70
    const/16 v4, 0x108

    aput-byte v118, v1, v4

    const/16 v4, 0x109

    aput-byte v132, v1, v4

    const/16 v4, 0x10a

    aput-byte v119, v1, v4

    const/16 v4, 0x10b

    aput-byte v95, v1, v4

    const/16 v4, 0x10c

    aput-byte v5, v1, v4

    const/16 v4, 0x10d

    aput-byte v108, v1, v4

    const/16 v4, 0x10e

    const/16 v65, -0x25

    aput-byte v65, v1, v4

    .line 71
    const/16 v4, 0x10f

    aput-byte v72, v1, v4

    const/16 v4, 0x110

    aput-byte v12, v1, v4

    const/16 v4, 0x111

    aput-byte v45, v1, v4

    const/16 v4, 0x112

    aput-byte v58, v1, v4

    const/16 v4, 0x113

    aput-byte v129, v1, v4

    const/16 v4, 0x114

    aput-byte v79, v1, v4

    const/16 v4, 0x115

    aput-byte v113, v1, v4

    .line 72
    const/16 v4, 0x116

    aput-byte v7, v1, v4

    const/16 v4, 0x117

    aput-byte v16, v1, v4

    const/16 v4, 0x118

    aput-byte v133, v1, v4

    const/16 v4, 0x119

    aput-byte v39, v1, v4

    const/16 v4, 0x11a

    const/16 v12, -0x69

    aput-byte v12, v1, v4

    const/16 v4, 0x11b

    aput-byte v13, v1, v4

    const/16 v4, 0x11c

    aput-byte v95, v1, v4

    .line 73
    const/16 v4, 0x11d

    aput-byte v54, v1, v4

    const/16 v4, 0x11e

    aput-byte v89, v1, v4

    const/16 v4, 0x11f

    aput-byte v94, v1, v4

    const/16 v4, 0x120

    const/16 v12, -0x39

    aput-byte v12, v1, v4

    const/16 v4, 0x121

    aput-byte v18, v1, v4

    const/16 v4, 0x122

    const/16 v12, -0xb

    aput-byte v12, v1, v4

    const/16 v4, 0x123

    aput-byte v124, v1, v4

    .line 74
    const/16 v4, 0x124

    const/16 v12, -0x74

    aput-byte v12, v1, v4

    const/16 v4, 0x125

    aput-byte v65, v1, v4

    const/16 v4, 0x126

    aput-byte v10, v1, v4

    const/16 v4, 0x127

    aput-byte v75, v1, v4

    const/16 v4, 0x128

    const/16 v13, -0x29

    aput-byte v13, v1, v4

    const/16 v4, 0x129

    aput-byte v44, v1, v4

    const/16 v4, 0x12a

    aput-byte v12, v1, v4

    .line 75
    const/16 v4, 0x12b

    const/16 v12, -0x6c

    aput-byte v12, v1, v4

    const/16 v4, 0x12c

    const/16 v39, -0x20

    aput-byte v39, v1, v4

    const/16 v4, 0x12d

    aput-byte v61, v1, v4

    const/16 v4, 0x12e

    aput-byte v55, v1, v4

    const/16 v4, 0x12f

    aput-byte v116, v1, v4

    const/16 v4, 0x130

    const/16 v44, -0x63

    aput-byte v44, v1, v4

    const/16 v4, 0x131

    aput-byte v77, v1, v4

    .line 76
    const/16 v4, 0x132

    aput-byte v101, v1, v4

    const/16 v4, 0x133

    aput-byte v74, v1, v4

    const/16 v4, 0x134

    aput-byte v57, v1, v4

    const/16 v4, 0x135

    aput-byte v41, v1, v4

    const/16 v4, 0x136

    aput-byte v74, v1, v4

    const/16 v4, 0x137

    aput-byte v117, v1, v4

    const/16 v4, 0x138

    aput-byte v109, v1, v4

    .line 77
    const/16 v4, 0x139

    aput-byte v46, v1, v4

    const/16 v4, 0x13a

    aput-byte v68, v1, v4

    const/16 v4, 0x13b

    aput-byte v82, v1, v4

    const/16 v4, 0x13c

    aput-byte v7, v1, v4

    const/16 v4, 0x13d

    const/16 v44, -0x27

    aput-byte v44, v1, v4

    const/16 v4, 0x13e

    aput-byte v45, v1, v4

    const/16 v4, 0x13f

    aput-byte v9, v1, v4

    .line 78
    const/16 v4, 0x140

    aput-byte v118, v1, v4

    const/16 v4, 0x141

    const/16 v45, -0x28

    aput-byte v45, v1, v4

    const/16 v4, 0x142

    aput-byte v99, v1, v4

    const/16 v4, 0x143

    aput-byte v3, v1, v4

    const/16 v3, 0x144

    aput-byte v131, v1, v3

    const/16 v3, 0x145

    aput-byte v84, v1, v3

    const/16 v3, 0x146

    const/16 v4, -0x38

    aput-byte v4, v1, v3

    .line 79
    const/16 v3, 0x147

    aput-byte v125, v1, v3

    const/16 v3, 0x148

    aput-byte v118, v1, v3

    const/16 v3, 0x149

    aput-byte v104, v1, v3

    const/16 v3, 0x14a

    aput-byte v47, v1, v3

    const/16 v3, 0x14b

    aput-byte v62, v1, v3

    const/16 v3, 0x14c

    aput-byte v37, v1, v3

    const/16 v3, 0x14d

    aput-byte v35, v1, v3

    .line 80
    const/16 v3, 0x14e

    aput-byte v64, v1, v3

    const/16 v3, 0x14f

    aput-byte v48, v1, v3

    const/16 v3, 0x150

    aput-byte v16, v1, v3

    const/16 v3, 0x151

    aput-byte v33, v1, v3

    const/16 v3, 0x152

    aput-byte v89, v1, v3

    const/16 v3, 0x153

    aput-byte v35, v1, v3

    const/16 v3, 0x154

    aput-byte v79, v1, v3

    .line 81
    const/16 v3, 0x155

    aput-byte v6, v1, v3

    const/16 v3, 0x156

    aput-byte v116, v1, v3

    const/16 v3, 0x157

    aput-byte v113, v1, v3

    const/16 v3, 0x158

    aput-byte v122, v1, v3

    const/16 v3, 0x159

    aput-byte v121, v1, v3

    const/16 v3, 0x15a

    aput-byte v10, v1, v3

    const/16 v3, 0x15b

    const/16 v4, -0x78

    aput-byte v4, v1, v3

    .line 82
    const/16 v3, 0x15c

    const/16 v6, -0x40

    aput-byte v6, v1, v3

    const/16 v3, 0x15d

    aput-byte v26, v1, v3

    const/16 v3, 0x15e

    aput-byte v44, v1, v3

    const/16 v3, 0x15f

    aput-byte v91, v1, v3

    const/16 v3, 0x160

    const/16 v10, -0x1e

    aput-byte v10, v1, v3

    const/16 v3, 0x161

    aput-byte v9, v1, v3

    const/16 v3, 0x162

    aput-byte v10, v1, v3

    .line 83
    const/16 v3, 0x163

    aput-byte v88, v1, v3

    const/16 v3, 0x164

    const/16 v16, -0x60

    aput-byte v16, v1, v3

    const/16 v3, 0x165

    aput-byte v49, v1, v3

    const/16 v3, 0x166

    aput-byte v63, v1, v3

    const/16 v3, 0x167

    aput-byte v18, v1, v3

    const/16 v3, 0x168

    aput-byte v71, v1, v3

    const/16 v3, 0x169

    aput-byte v80, v1, v3

    .line 84
    const/16 v3, 0x16a

    aput-byte v65, v1, v3

    const/16 v3, 0x16b

    aput-byte v112, v1, v3

    const/16 v3, 0x16c

    const/16 v18, -0x4

    aput-byte v18, v1, v3

    const/16 v3, 0x16d

    aput-byte v39, v1, v3

    const/16 v3, 0x16e

    aput-byte v86, v1, v3

    const/16 v3, 0x16f

    aput-byte v23, v1, v3

    const/16 v3, 0x170

    aput-byte v66, v1, v3

    .line 85
    const/16 v3, 0x171

    aput-byte v96, v1, v3

    const/16 v3, 0x172

    const/16 v35, -0x7e

    aput-byte v35, v1, v3

    const/16 v3, 0x173

    aput-byte v38, v1, v3

    const/16 v3, 0x174

    aput-byte v48, v1, v3

    const/16 v3, 0x175

    const/16 v35, -0x57

    aput-byte v35, v1, v3

    const/16 v3, 0x176

    aput-byte v19, v1, v3

    const/16 v3, 0x177

    aput-byte v9, v1, v3

    .line 86
    const/16 v3, 0x178

    aput-byte v0, v1, v3

    const/16 v0, 0x179

    aput-byte v41, v1, v0

    const/16 v0, 0x17a

    aput-byte v130, v1, v0

    const/16 v0, 0x17b

    aput-byte v69, v1, v0

    const/16 v0, 0x17c

    aput-byte v27, v1, v0

    const/16 v0, 0x17d

    const/16 v3, -0x59

    aput-byte v3, v1, v0

    const/16 v0, 0x17e

    const/16 v3, -0x79

    aput-byte v3, v1, v0

    .line 87
    const/16 v0, 0x17f

    aput-byte v128, v1, v0

    const/16 v0, 0x180

    aput-byte v13, v1, v0

    const/16 v0, 0x181

    aput-byte v4, v1, v0

    const/16 v0, 0x182

    aput-byte v129, v1, v0

    const/16 v0, 0x183

    aput-byte v135, v1, v0

    const/16 v0, 0x184

    aput-byte v23, v1, v0

    const/16 v0, 0x185

    const/16 v3, -0x43

    aput-byte v3, v1, v0

    .line 88
    const/16 v0, 0x186

    aput-byte v26, v1, v0

    const/16 v0, 0x187

    aput-byte v112, v1, v0

    const/16 v0, 0x188

    aput-byte v57, v1, v0

    const/16 v0, 0x189

    const/16 v3, -0x67

    aput-byte v3, v1, v0

    const/16 v0, 0x18a

    const/16 v4, -0x3d

    aput-byte v4, v1, v0

    const/16 v0, 0x18b

    aput-byte v29, v1, v0

    const/16 v0, 0x18c

    aput-byte v37, v1, v0

    .line 89
    const/16 v0, 0x18d

    aput-byte v125, v1, v0

    const/16 v0, 0x18e

    aput-byte v28, v1, v0

    const/16 v0, 0x18f

    aput-byte v10, v1, v0

    const/16 v0, 0x190

    aput-byte v69, v1, v0

    const/16 v0, 0x191

    aput-byte v41, v1, v0

    const/16 v0, 0x192

    aput-byte v12, v1, v0

    const/16 v0, 0x193

    aput-byte v21, v1, v0

    .line 90
    const/16 v0, 0x194

    aput-byte v24, v1, v0

    const/16 v0, 0x195

    aput-byte v114, v1, v0

    const/16 v0, 0x196

    aput-byte v32, v1, v0

    const/16 v0, 0x197

    aput-byte v14, v1, v0

    const/16 v0, 0x198

    aput-byte v15, v1, v0

    const/16 v0, 0x199

    aput-byte v55, v1, v0

    const/16 v0, 0x19a

    aput-byte v53, v1, v0

    .line 91
    const/16 v0, 0x19b

    aput-byte v105, v1, v0

    const/16 v0, 0x19c

    aput-byte v78, v1, v0

    const/16 v0, 0x19d

    aput-byte v60, v1, v0

    const/16 v0, 0x19e

    const/16 v9, -0x2c

    aput-byte v9, v1, v0

    const/16 v0, 0x19f

    aput-byte v98, v1, v0

    const/16 v0, 0x1a0

    const/16 v9, -0x18

    aput-byte v9, v1, v0

    const/16 v0, 0x1a1

    aput-byte v65, v1, v0

    .line 92
    const/16 v0, 0x1a2

    aput-byte v33, v1, v0

    const/16 v0, 0x1a3

    aput-byte v22, v1, v0

    const/16 v0, 0x1a4

    aput-byte v65, v1, v0

    const/16 v0, 0x1a5

    aput-byte v5, v1, v0

    const/16 v0, 0x1a6

    aput-byte v20, v1, v0

    const/16 v0, 0x1a7

    aput-byte v66, v1, v0

    const/16 v0, 0x1a8

    const/4 v5, -0x7

    aput-byte v5, v1, v0

    .line 93
    const/16 v0, 0x1a9

    aput-byte v67, v1, v0

    const/16 v0, 0x1aa

    aput-byte v66, v1, v0

    const/16 v0, 0x1ab

    aput-byte v18, v1, v0

    const/16 v0, 0x1ac

    aput-byte v31, v1, v0

    const/16 v0, 0x1ad

    aput-byte v47, v1, v0

    const/16 v0, 0x1ae

    aput-byte v52, v1, v0

    const/16 v0, 0x1af

    aput-byte v78, v1, v0

    .line 94
    const/16 v0, 0x1b0

    aput-byte v54, v1, v0

    const/16 v0, 0x1b1

    aput-byte v59, v1, v0

    const/16 v0, 0x1b2

    aput-byte v25, v1, v0

    const/16 v0, 0x1b3

    aput-byte v110, v1, v0

    const/16 v0, 0x1b4

    aput-byte v92, v1, v0

    const/16 v0, 0x1b5

    aput-byte v43, v1, v0

    const/16 v0, 0x1b6

    aput-byte v109, v1, v0

    .line 95
    const/16 v0, 0x1b7

    aput-byte v6, v1, v0

    const/16 v0, 0x1b8

    aput-byte v113, v1, v0

    const/16 v0, 0x1b9

    aput-byte v3, v1, v0

    const/16 v0, 0x1ba

    const/16 v5, -0x4e

    aput-byte v5, v1, v0

    const/16 v0, 0x1bb

    aput-byte v120, v1, v0

    const/16 v0, 0x1bc

    aput-byte v88, v1, v0

    const/16 v0, 0x1bd

    aput-byte v16, v1, v0

    .line 96
    const/16 v0, 0x1be

    aput-byte v73, v1, v0

    const/16 v0, 0x1bf

    aput-byte v4, v1, v0

    const/16 v0, 0x1c0

    aput-byte v17, v1, v0

    const/16 v0, 0x1c1

    aput-byte v51, v1, v0

    const/16 v0, 0x1c2

    aput-byte v56, v1, v0

    const/16 v0, 0x1c3

    aput-byte v134, v1, v0

    const/16 v0, 0x1c4

    aput-byte v30, v1, v0

    .line 97
    const/16 v0, 0x1c5

    aput-byte v50, v1, v0

    const/16 v0, 0x1c6

    aput-byte v112, v1, v0

    const/16 v0, 0x1c7

    const/16 v4, -0x19

    aput-byte v4, v1, v0

    const/16 v0, 0x1c8

    aput-byte v107, v1, v0

    const/16 v0, 0x1c9

    aput-byte v47, v1, v0

    const/16 v0, 0x1ca

    aput-byte v116, v1, v0

    const/16 v0, 0x1cb

    aput-byte v40, v1, v0

    .line 98
    const/16 v0, 0x1cc

    aput-byte v127, v1, v0

    const/16 v0, 0x1cd

    aput-byte v77, v1, v0

    const/16 v0, 0x1ce

    aput-byte v10, v1, v0

    const/16 v0, 0x1cf

    aput-byte v13, v1, v0

    const/16 v0, 0x1d0

    const/16 v4, -0x51

    aput-byte v4, v1, v0

    const/16 v0, 0x1d1

    aput-byte v83, v1, v0

    const/16 v0, 0x1d2

    aput-byte v42, v1, v0

    .line 99
    const/16 v0, 0x1d3

    aput-byte v70, v1, v0

    const/16 v0, 0x1d4

    aput-byte v99, v1, v0

    const/16 v0, 0x1d5

    aput-byte v19, v1, v0

    const/16 v0, 0x1d6

    aput-byte v127, v1, v0

    const/16 v0, 0x1d7

    aput-byte v93, v1, v0

    const/16 v0, 0x1d8

    aput-byte v36, v1, v0

    const/16 v0, 0x1d9

    const/16 v4, -0x30

    aput-byte v4, v1, v0

    .line 100
    const/16 v0, 0x1da

    aput-byte v7, v1, v0

    const/16 v0, 0x1db

    const/16 v4, -0x6f

    aput-byte v4, v1, v0

    const/16 v0, 0x1dc

    aput-byte v29, v1, v0

    const/16 v0, 0x1dd

    aput-byte v123, v1, v0

    const/16 v0, 0x1de

    const/16 v4, -0x50

    aput-byte v4, v1, v0

    const/16 v0, 0x1df

    aput-byte v111, v1, v0

    const/16 v0, 0x1e0

    aput-byte v35, v1, v0

    .line 101
    const/16 v0, 0x1e1

    const/16 v4, -0x6d

    aput-byte v4, v1, v0

    const/16 v0, 0x1e2

    const/16 v4, -0x4c

    aput-byte v4, v1, v0

    const/16 v0, 0x1e3

    aput-byte v58, v1, v0

    const/16 v0, 0x1e4

    aput-byte v102, v1, v0

    const/16 v0, 0x1e5

    const/16 v4, -0x73

    aput-byte v4, v1, v0

    const/16 v0, 0x1e6

    aput-byte v8, v1, v0

    const/16 v0, 0x1e7

    aput-byte v70, v1, v0

    .line 102
    const/16 v0, 0x1e8

    const/16 v4, -0x3f

    aput-byte v4, v1, v0

    const/16 v0, 0x1e9

    aput-byte v30, v1, v0

    const/16 v0, 0x1ea

    aput-byte v2, v1, v0

    const/16 v0, 0x1eb

    aput-byte v115, v1, v0

    const/16 v0, 0x1ec

    aput-byte v34, v1, v0

    const/16 v0, 0x1ed

    aput-byte v73, v1, v0

    const/16 v0, 0x1ee

    aput-byte v54, v1, v0

    .line 103
    const/16 v0, 0x1ef

    aput-byte v6, v1, v0

    const/16 v0, 0x1f0

    aput-byte v8, v1, v0

    const/16 v0, 0x1f1

    aput-byte v100, v1, v0

    const/16 v0, 0x1f2

    aput-byte v28, v1, v0

    const/16 v0, 0x1f3

    aput-byte v76, v1, v0

    const/16 v0, 0x1f4

    aput-byte v11, v1, v0

    const/16 v0, 0x1f5

    aput-byte v24, v1, v0

    .line 104
    const/16 v0, 0x1f6

    aput-byte v7, v1, v0

    const/16 v0, 0x1f7

    aput-byte v71, v1, v0

    const/16 v0, 0x1f8

    aput-byte v3, v1, v0

    const/16 v0, 0x1f9

    aput-byte v2, v1, v0

    const/16 v0, 0x1fa

    aput-byte v2, v1, v0

    const/16 v0, 0x1fb

    aput-byte v2, v1, v0

    const/16 v0, 0x1fc

    aput-byte v2, v1, v0

    .line 105
    const/16 v0, 0x1fd

    aput-byte v2, v1, v0

    const/16 v0, 0x1fe

    aput-byte v2, v1, v0

    const/16 v0, 0x1ff

    aput-byte v2, v1, v0

    const/16 v0, 0x200

    aput-byte v2, v1, v0

    .line 32
    sput-object v1, Lcom/jcraft/jsch/DHG16N;->p:[B

    .line 105
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/DHGN;-><init>()V

    return-void
.end method


# virtual methods
.method G()[B
    .locals 1

    .line 109
    sget-object v0, Lcom/jcraft/jsch/DHG16N;->g:[B

    return-object v0
.end method

.method P()[B
    .locals 1

    .line 114
    sget-object v0, Lcom/jcraft/jsch/DHG16N;->p:[B

    return-object v0
.end method
