.class Lcom/jcraft/jsch/DHG1;
.super Lcom/jcraft/jsch/DHGN;
.source "DHG1.java"


# static fields
.field static final g:[B

.field static final p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 31
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    sput-object v1, Lcom/jcraft/jsch/DHG1;->g:[B

    .line 32
    const/16 v1, 0x81

    new-array v1, v1, [B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    aput-byte v2, v1, v3

    const/4 v0, 0x3

    aput-byte v2, v1, v0

    const/4 v0, 0x4

    aput-byte v2, v1, v0

    .line 33
    const/4 v4, 0x5

    aput-byte v2, v1, v4

    const/4 v4, 0x6

    aput-byte v2, v1, v4

    const/4 v5, 0x7

    aput-byte v2, v1, v5

    const/16 v5, 0x8

    aput-byte v2, v1, v5

    const/16 v6, 0x9

    const/16 v7, -0x37

    aput-byte v7, v1, v6

    const/16 v6, 0xa

    const/16 v7, 0xf

    aput-byte v7, v1, v6

    const/16 v8, 0xb

    const/16 v9, -0x26

    aput-byte v9, v1, v8

    .line 34
    const/16 v9, 0xc

    const/16 v10, -0x5e

    aput-byte v10, v1, v9

    const/16 v9, 0xd

    const/16 v10, 0x21

    aput-byte v10, v1, v9

    const/16 v9, 0xe

    const/16 v11, 0x68

    aput-byte v11, v1, v9

    const/16 v9, -0x3e

    aput-byte v9, v1, v7

    const/16 v7, 0x10

    const/16 v12, 0x34

    aput-byte v12, v1, v7

    const/16 v7, 0x11

    const/16 v13, -0x3c

    aput-byte v13, v1, v7

    const/16 v13, 0x12

    const/16 v14, -0x3a

    aput-byte v14, v1, v13

    .line 35
    const/16 v13, 0x13

    const/16 v15, 0x62

    aput-byte v15, v1, v13

    const/16 v16, 0x14

    const/16 v17, -0x75

    aput-byte v17, v1, v16

    const/16 v17, 0x15

    const/16 v18, -0x80

    aput-byte v18, v1, v17

    const/16 v17, 0x16

    const/16 v18, -0x24

    aput-byte v18, v1, v17

    const/16 v17, 0x17

    const/16 v18, 0x1c

    aput-byte v18, v1, v17

    const/16 v17, 0x18

    const/16 v19, -0x2f

    aput-byte v19, v1, v17

    const/16 v17, 0x19

    const/16 v19, 0x29

    aput-byte v19, v1, v17

    .line 36
    const/16 v20, 0x1a

    aput-byte v3, v1, v20

    const/16 v20, 0x1b

    const/16 v21, 0x4e

    aput-byte v21, v1, v20

    aput-byte v5, v1, v18

    const/16 v18, 0x1d

    const/16 v22, -0x76

    aput-byte v22, v1, v18

    const/16 v18, 0x1e

    const/16 v22, 0x67

    aput-byte v22, v1, v18

    const/16 v18, 0x1f

    const/16 v23, -0x34

    aput-byte v23, v1, v18

    const/16 v23, 0x20

    const/16 v24, 0x74

    aput-byte v24, v1, v23

    .line 37
    aput-byte v3, v1, v10

    const/16 v3, 0x22

    aput-byte v8, v1, v3

    const/16 v10, 0x23

    const/16 v23, -0x42

    aput-byte v23, v1, v10

    const/16 v10, 0x24

    const/16 v23, -0x5a

    aput-byte v23, v1, v10

    const/16 v25, 0x25

    const/16 v26, 0x3b

    aput-byte v26, v1, v25

    const/16 v25, 0x26

    aput-byte v13, v1, v25

    const/16 v13, 0x27

    const/16 v25, -0x65

    aput-byte v25, v1, v13

    .line 38
    const/16 v13, 0x28

    aput-byte v3, v1, v13

    const/16 v3, 0x51

    aput-byte v3, v1, v19

    const/16 v19, 0x2a

    const/16 v25, 0x4a

    aput-byte v25, v1, v19

    const/16 v19, 0x2b

    aput-byte v5, v1, v19

    const/16 v5, 0x2c

    const/16 v27, 0x79

    aput-byte v27, v1, v5

    const/16 v5, 0x2d

    const/16 v28, -0x72

    aput-byte v28, v1, v5

    const/16 v5, 0x2e

    aput-byte v12, v1, v5

    .line 39
    const/16 v5, 0x2f

    aput-byte v0, v1, v5

    const/16 v0, 0x30

    const/16 v5, -0x23

    aput-byte v5, v1, v0

    const/16 v5, 0x31

    const/16 v28, -0x11

    aput-byte v28, v1, v5

    const/16 v5, 0x32

    const/16 v28, -0x6b

    aput-byte v28, v1, v5

    const/16 v5, 0x33

    aput-byte v17, v1, v5

    const/16 v5, -0x4d

    aput-byte v5, v1, v12

    const/16 v5, 0x35

    const/16 v12, -0x33

    aput-byte v12, v1, v5

    .line 40
    const/16 v12, 0x36

    const/16 v17, 0x3a

    aput-byte v17, v1, v12

    const/16 v12, 0x37

    const/16 v28, 0x43

    aput-byte v28, v1, v12

    const/16 v29, 0x38

    aput-byte v20, v1, v29

    const/16 v20, 0x39

    aput-byte v0, v1, v20

    aput-byte v19, v1, v17

    aput-byte v6, v1, v26

    const/16 v0, 0x3c

    const/16 v6, 0x6d

    aput-byte v6, v1, v0

    .line 41
    const/16 v0, 0x3d

    const/16 v17, -0xe

    aput-byte v17, v1, v0

    const/16 v0, 0x3e

    const/16 v17, 0x5f

    aput-byte v17, v1, v0

    const/16 v0, 0x3f

    aput-byte v16, v1, v0

    const/16 v0, 0x40

    aput-byte v12, v1, v0

    const/16 v0, 0x41

    const/16 v16, 0x4f

    aput-byte v16, v1, v0

    const/16 v0, 0x42

    const/16 v19, -0x1f

    aput-byte v19, v1, v0

    aput-byte v5, v1, v28

    .line 42
    const/16 v5, 0x44

    aput-byte v6, v1, v5

    const/16 v5, 0x45

    aput-byte v6, v1, v5

    const/16 v19, 0x46

    aput-byte v3, v1, v19

    const/16 v19, 0x47

    aput-byte v9, v1, v19

    const/16 v9, 0x48

    aput-byte v5, v1, v9

    const/16 v5, 0x49

    const/16 v9, -0x1c

    aput-byte v9, v1, v5

    const/16 v9, -0x7b

    aput-byte v9, v1, v25

    .line 43
    const/16 v9, 0x4b

    const/16 v19, -0x4b

    aput-byte v19, v1, v9

    const/16 v19, 0x4c

    const/16 v20, 0x76

    aput-byte v20, v1, v19

    const/16 v25, 0x4d

    aput-byte v15, v1, v25

    const/16 v25, 0x5e

    aput-byte v25, v1, v21

    const/16 v21, 0x7e

    aput-byte v21, v1, v16

    const/16 v16, 0x50

    aput-byte v14, v1, v16

    const/16 v14, -0xc

    aput-byte v14, v1, v3

    .line 44
    const/16 v16, 0x52

    aput-byte v19, v1, v16

    const/16 v16, 0x53

    aput-byte v0, v1, v16

    const/16 v0, 0x54

    const/16 v19, -0x17

    aput-byte v19, v1, v0

    const/16 v0, 0x55

    aput-byte v23, v1, v0

    const/16 v0, 0x56

    aput-byte v12, v1, v0

    const/16 v0, 0x57

    const/16 v12, -0x13

    aput-byte v12, v1, v0

    const/16 v0, 0x58

    const/16 v19, 0x6b

    aput-byte v19, v1, v0

    .line 45
    const/16 v0, 0x59

    aput-byte v8, v1, v0

    const/16 v0, 0x5a

    aput-byte v2, v1, v0

    const/16 v8, 0x5b

    const/16 v23, 0x5c

    aput-byte v23, v1, v8

    const/16 v8, -0x4a

    aput-byte v8, v1, v23

    const/16 v8, 0x5d

    aput-byte v14, v1, v8

    aput-byte v4, v1, v25

    const/16 v4, -0x49

    aput-byte v4, v1, v17

    .line 46
    const/16 v4, 0x60

    aput-byte v12, v1, v4

    const/16 v4, 0x61

    const/16 v8, -0x12

    aput-byte v8, v1, v4

    aput-byte v29, v1, v15

    const/16 v4, 0x63

    aput-byte v19, v1, v4

    const/16 v4, 0x64

    const/4 v8, -0x5

    aput-byte v8, v1, v4

    const/16 v4, 0x65

    aput-byte v0, v1, v4

    const/16 v0, 0x66

    const/16 v4, -0x77

    aput-byte v4, v1, v0

    .line 47
    const/16 v4, -0x61

    aput-byte v4, v1, v22

    const/16 v8, -0x5b

    aput-byte v8, v1, v11

    const/16 v8, 0x69

    const/16 v11, -0x52

    aput-byte v11, v1, v8

    const/16 v8, 0x6a

    aput-byte v4, v1, v8

    aput-byte v10, v1, v19

    const/16 v4, 0x6c

    aput-byte v7, v1, v4

    const/16 v4, 0x7c

    aput-byte v4, v1, v6

    .line 48
    const/16 v6, 0x6e

    aput-byte v9, v1, v6

    const/16 v6, 0x6f

    aput-byte v18, v1, v6

    const/16 v6, 0x70

    const/16 v7, -0x1a

    aput-byte v7, v1, v6

    const/16 v6, 0x71

    aput-byte v5, v1, v6

    const/16 v5, 0x72

    aput-byte v13, v1, v5

    const/16 v5, 0x73

    aput-byte v0, v1, v5

    aput-byte v3, v1, v24

    .line 49
    const/16 v0, 0x75

    const/16 v3, -0x14

    aput-byte v3, v1, v0

    aput-byte v7, v1, v20

    const/16 v0, 0x77

    aput-byte v16, v1, v0

    const/16 v0, 0x78

    const/16 v3, -0x7f

    aput-byte v3, v1, v0

    aput-byte v2, v1, v27

    const/16 v0, 0x7a

    aput-byte v2, v1, v0

    const/16 v0, 0x7b

    aput-byte v2, v1, v0

    .line 50
    aput-byte v2, v1, v4

    const/16 v0, 0x7d

    aput-byte v2, v1, v0

    aput-byte v2, v1, v21

    const/16 v0, 0x7f

    aput-byte v2, v1, v0

    const/16 v0, 0x80

    aput-byte v2, v1, v0

    .line 32
    sput-object v1, Lcom/jcraft/jsch/DHG1;->p:[B

    .line 50
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

    .line 54
    sget-object v0, Lcom/jcraft/jsch/DHG1;->g:[B

    return-object v0
.end method

.method P()[B
    .locals 1

    .line 59
    sget-object v0, Lcom/jcraft/jsch/DHG1;->p:[B

    return-object v0
.end method

.method sha_name()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "sha-1"

    return-object v0
.end method
