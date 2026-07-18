.class public Lcom/jcraft/jsch/jbcrypt/BCrypt;
.super Ljava/lang/Object;
.source "BCrypt.java"


# static fields
.field private static final BCRYPT_SALT_LEN:I = 0x10

.field private static final BLOWFISH_NUM_ROUNDS:I = 0x10

.field private static final GENSALT_DEFAULT_LOG2_ROUNDS:I = 0xa

.field private static final P_orig:[I

.field private static final S_orig:[I

.field private static final base64_code:[C

.field private static final bf_crypt_ciphertext:[I

.field private static final index_64:[B

.field private static final openbsd_iv:[I


# instance fields
.field private P:[I

.field private S:[I


# direct methods
.method static constructor <clinit>()V
    .locals 61

    .line 79
    const/16 v0, 0x12

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 80
    nop

    .line 81
    nop

    .line 79
    sput-object v1, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P_orig:[I

    .line 82
    const/16 v1, 0x400

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 86
    nop

    .line 87
    nop

    .line 88
    nop

    .line 89
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 94
    nop

    .line 95
    nop

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 108
    nop

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 131
    nop

    .line 132
    nop

    .line 133
    nop

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 138
    nop

    .line 139
    nop

    .line 140
    nop

    .line 141
    nop

    .line 142
    nop

    .line 143
    nop

    .line 144
    nop

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 155
    nop

    .line 156
    nop

    .line 157
    nop

    .line 158
    nop

    .line 159
    nop

    .line 160
    nop

    .line 161
    nop

    .line 162
    nop

    .line 163
    nop

    .line 164
    nop

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 169
    nop

    .line 170
    nop

    .line 171
    nop

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
    nop

    .line 176
    nop

    .line 177
    nop

    .line 178
    nop

    .line 179
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 184
    nop

    .line 185
    nop

    .line 186
    nop

    .line 187
    nop

    .line 188
    nop

    .line 189
    nop

    .line 190
    nop

    .line 191
    nop

    .line 192
    nop

    .line 193
    nop

    .line 194
    nop

    .line 195
    nop

    .line 196
    nop

    .line 197
    nop

    .line 198
    nop

    .line 199
    nop

    .line 200
    nop

    .line 201
    nop

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 211
    nop

    .line 212
    nop

    .line 213
    nop

    .line 214
    nop

    .line 215
    nop

    .line 216
    nop

    .line 217
    nop

    .line 218
    nop

    .line 219
    nop

    .line 220
    nop

    .line 221
    nop

    .line 222
    nop

    .line 223
    nop

    .line 224
    nop

    .line 225
    nop

    .line 226
    nop

    .line 227
    nop

    .line 228
    nop

    .line 82
    sput-object v1, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S_orig:[I

    .line 231
    const/16 v1, 0x8

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    .line 232
    nop

    .line 231
    sput-object v2, Lcom/jcraft/jsch/jbcrypt/BCrypt;->openbsd_iv:[I

    .line 238
    const/4 v2, 0x6

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    .line 237
    sput-object v3, Lcom/jcraft/jsch/jbcrypt/BCrypt;->bf_crypt_ciphertext:[I

    .line 241
    const/16 v3, 0x40

    new-array v4, v3, [C

    fill-array-data v4, :array_4

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 241
    sput-object v4, Lcom/jcraft/jsch/jbcrypt/BCrypt;->base64_code:[C

    .line 247
    const/16 v4, 0x80

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    aput-byte v6, v4, v5

    const/4 v7, 0x2

    aput-byte v6, v4, v7

    const/4 v8, 0x3

    aput-byte v6, v4, v8

    const/4 v9, 0x4

    aput-byte v6, v4, v9

    const/4 v10, 0x5

    aput-byte v6, v4, v10

    aput-byte v6, v4, v2

    const/4 v11, 0x7

    aput-byte v6, v4, v11

    aput-byte v6, v4, v1

    const/16 v12, 0x9

    aput-byte v6, v4, v12

    const/16 v13, 0xa

    aput-byte v6, v4, v13

    const/16 v14, 0xb

    aput-byte v6, v4, v14

    const/16 v15, 0xc

    aput-byte v6, v4, v15

    const/16 v16, 0xd

    aput-byte v6, v4, v16

    .line 248
    const/16 v17, 0xe

    aput-byte v6, v4, v17

    const/16 v18, 0xf

    aput-byte v6, v4, v18

    const/16 v19, 0x10

    aput-byte v6, v4, v19

    const/16 v20, 0x11

    aput-byte v6, v4, v20

    aput-byte v6, v4, v0

    const/16 v21, 0x13

    aput-byte v6, v4, v21

    const/16 v22, 0x14

    aput-byte v6, v4, v22

    const/16 v23, 0x15

    aput-byte v6, v4, v23

    const/16 v24, 0x16

    aput-byte v6, v4, v24

    const/16 v25, 0x17

    aput-byte v6, v4, v25

    const/16 v26, 0x18

    aput-byte v6, v4, v26

    const/16 v27, 0x19

    aput-byte v6, v4, v27

    const/16 v28, 0x1a

    aput-byte v6, v4, v28

    const/16 v29, 0x1b

    aput-byte v6, v4, v29

    const/16 v30, 0x1c

    aput-byte v6, v4, v30

    const/16 v31, 0x1d

    aput-byte v6, v4, v31

    const/16 v32, 0x1e

    aput-byte v6, v4, v32

    const/16 v33, 0x1f

    aput-byte v6, v4, v33

    const/16 v34, 0x20

    aput-byte v6, v4, v34

    const/16 v35, 0x21

    aput-byte v6, v4, v35

    const/16 v36, 0x22

    aput-byte v6, v4, v36

    const/16 v37, 0x23

    aput-byte v6, v4, v37

    const/16 v38, 0x24

    aput-byte v6, v4, v38

    .line 249
    const/16 v39, 0x25

    aput-byte v6, v4, v39

    const/16 v40, 0x26

    aput-byte v6, v4, v40

    const/16 v41, 0x27

    aput-byte v6, v4, v41

    const/16 v42, 0x28

    aput-byte v6, v4, v42

    const/16 v43, 0x29

    aput-byte v6, v4, v43

    const/16 v44, 0x2a

    aput-byte v6, v4, v44

    const/16 v45, 0x2b

    aput-byte v6, v4, v45

    const/16 v46, 0x2c

    aput-byte v6, v4, v46

    const/16 v47, 0x2d

    aput-byte v6, v4, v47

    const/16 v48, 0x2f

    aput-byte v5, v4, v48

    const/16 v5, 0x30

    const/16 v49, 0x36

    aput-byte v49, v4, v5

    const/16 v50, 0x31

    const/16 v51, 0x37

    aput-byte v51, v4, v50

    const/16 v52, 0x32

    const/16 v53, 0x38

    aput-byte v53, v4, v52

    const/16 v54, 0x33

    const/16 v55, 0x39

    aput-byte v55, v4, v54

    const/16 v56, 0x34

    const/16 v57, 0x3a

    aput-byte v57, v4, v56

    const/16 v58, 0x35

    const/16 v59, 0x3b

    aput-byte v59, v4, v58

    const/16 v60, 0x3c

    aput-byte v60, v4, v49

    const/16 v49, 0x3d

    aput-byte v49, v4, v51

    const/16 v51, 0x3e

    aput-byte v51, v4, v53

    const/16 v53, 0x3f

    aput-byte v53, v4, v55

    aput-byte v6, v4, v57

    aput-byte v6, v4, v59

    aput-byte v6, v4, v60

    .line 250
    aput-byte v6, v4, v49

    aput-byte v6, v4, v51

    aput-byte v6, v4, v53

    aput-byte v6, v4, v3

    const/16 v3, 0x41

    aput-byte v7, v4, v3

    const/16 v3, 0x42

    aput-byte v8, v4, v3

    const/16 v3, 0x43

    aput-byte v9, v4, v3

    const/16 v3, 0x44

    aput-byte v10, v4, v3

    const/16 v3, 0x45

    aput-byte v2, v4, v3

    const/16 v2, 0x46

    aput-byte v11, v4, v2

    const/16 v2, 0x47

    aput-byte v1, v4, v2

    const/16 v1, 0x48

    aput-byte v12, v4, v1

    const/16 v1, 0x49

    aput-byte v13, v4, v1

    const/16 v1, 0x4a

    aput-byte v14, v4, v1

    const/16 v1, 0x4b

    aput-byte v15, v4, v1

    const/16 v1, 0x4c

    aput-byte v16, v4, v1

    const/16 v1, 0x4d

    aput-byte v17, v4, v1

    const/16 v1, 0x4e

    aput-byte v18, v4, v1

    const/16 v1, 0x4f

    aput-byte v19, v4, v1

    const/16 v1, 0x50

    aput-byte v20, v4, v1

    const/16 v1, 0x51

    aput-byte v0, v4, v1

    const/16 v0, 0x52

    aput-byte v21, v4, v0

    const/16 v0, 0x53

    aput-byte v22, v4, v0

    const/16 v0, 0x54

    aput-byte v23, v4, v0

    const/16 v0, 0x55

    aput-byte v24, v4, v0

    .line 251
    const/16 v0, 0x56

    aput-byte v25, v4, v0

    const/16 v0, 0x57

    aput-byte v26, v4, v0

    const/16 v0, 0x58

    aput-byte v27, v4, v0

    const/16 v0, 0x59

    aput-byte v28, v4, v0

    const/16 v0, 0x5a

    aput-byte v29, v4, v0

    const/16 v0, 0x5b

    aput-byte v6, v4, v0

    const/16 v0, 0x5c

    aput-byte v6, v4, v0

    const/16 v0, 0x5d

    aput-byte v6, v4, v0

    const/16 v0, 0x5e

    aput-byte v6, v4, v0

    const/16 v0, 0x5f

    aput-byte v6, v4, v0

    const/16 v0, 0x60

    aput-byte v6, v4, v0

    const/16 v0, 0x61

    aput-byte v30, v4, v0

    const/16 v0, 0x62

    aput-byte v31, v4, v0

    const/16 v0, 0x63

    aput-byte v32, v4, v0

    const/16 v0, 0x64

    aput-byte v33, v4, v0

    const/16 v0, 0x65

    aput-byte v34, v4, v0

    const/16 v0, 0x66

    aput-byte v35, v4, v0

    const/16 v0, 0x67

    aput-byte v36, v4, v0

    const/16 v0, 0x68

    aput-byte v37, v4, v0

    const/16 v0, 0x69

    aput-byte v38, v4, v0

    const/16 v0, 0x6a

    aput-byte v39, v4, v0

    const/16 v0, 0x6b

    aput-byte v40, v4, v0

    const/16 v0, 0x6c

    aput-byte v41, v4, v0

    .line 252
    const/16 v0, 0x6d

    aput-byte v42, v4, v0

    const/16 v0, 0x6e

    aput-byte v43, v4, v0

    const/16 v0, 0x6f

    aput-byte v44, v4, v0

    const/16 v0, 0x70

    aput-byte v45, v4, v0

    const/16 v0, 0x71

    aput-byte v46, v4, v0

    const/16 v0, 0x72

    aput-byte v47, v4, v0

    const/16 v0, 0x2e

    const/16 v1, 0x73

    aput-byte v0, v4, v1

    const/16 v0, 0x74

    aput-byte v48, v4, v0

    const/16 v0, 0x75

    aput-byte v5, v4, v0

    const/16 v0, 0x76

    aput-byte v50, v4, v0

    const/16 v0, 0x77

    aput-byte v52, v4, v0

    const/16 v0, 0x78

    aput-byte v54, v4, v0

    const/16 v0, 0x79

    aput-byte v56, v4, v0

    const/16 v0, 0x7a

    aput-byte v58, v4, v0

    const/16 v0, 0x7b

    aput-byte v6, v4, v0

    const/16 v0, 0x7c

    aput-byte v6, v4, v0

    const/16 v0, 0x7d

    aput-byte v6, v4, v0

    const/16 v0, 0x7e

    aput-byte v6, v4, v0

    const/16 v0, 0x7f

    aput-byte v6, v4, v0

    .line 247
    sput-object v4, Lcom/jcraft/jsch/jbcrypt/BCrypt;->index_64:[B

    .line 252
    return-void

    nop

    :array_0
    .array-data 4
        0x243f6a88
        -0x7a5cf72d
        0x13198a2e
        0x3707344
        -0x5bf6c7de
        0x299f31d0
        0x82efa98
        -0x13b19377
        0x452821e6
        0x38d01377
        -0x41ab9931
        0x34e90c6c
        -0x3f53d649
        -0x3683af23
        0x3f84d5b5
        -0x4ab8f6e9
        -0x6de92a27
        -0x768604e5
    .end array-data

    :array_1
    .array-data 4
        -0x2ecef45a
        -0x67204a54
        0x2ffd72db
        -0x2fe52049
        -0x471e5013
        0x6a267e96
        -0x45836fbb
        -0xed38067
        0x24a19947
        -0x4c6e9309
        0x801f2e2
        -0x7a7103ea
        0x636920d8
        0x71574e69
        -0x5ba7015d
        -0xb6cc282
        0xd95748f
        0x728eb658
        0x718bcd58
        -0x7deab512
        0x7b54a41d
        -0x3da5a64b
        -0x63cf2ac7
        0x2af26013
        -0x3a2e4fdd
        0x286085f0
        -0x35be86e8    # -3169862.0f
        -0x4724c711
        -0x71862350
        0x603a180e
        0x6c9e0e8b
        -0x4fe175c2
        -0x28ea883f
        -0x42ceb4d9
        0x78af2fda
        0x55605c60
        -0x19aada0d
        -0x55aa546c
        0x57489862
        0x63e81440
        0x55ca396a
        0x2aab10b6
        -0x4b33a3cc
        0x1141e8ce
        -0x5eab7951
        0x7c72e993
        -0x4c11ebef
        0x636fbc2a
        0x2ba9c55d
        0x741831f6
        -0x31a3c1ea
        -0x64786ce2
        -0x502945cd
        0x6c24cf5c
        0x7a325381
        0x28958677
        0x3b8f4898
        0x6b4bb9af
        -0x3b4017e5
        0x66282193
        0x61d809cc
        -0x4de566f
        0x487cac60    # 258737.5f
        0x5dec8032
        -0x107ba2a3
        -0x167a8a4f
        -0x23d9dcfe
        -0x149ae478
        0x23893e81
        -0x2c69533b
        0xf6d6ff3
        -0x7c0bbdc7
        0x2e0b4482
        -0x5b7bdffc
        0x69c8f04a
        -0x61e064a2
        0x21c66842
        -0x9169366
        0x670c9c61
        -0x542c7710
        0x6a51a0d2
        -0x27abd098
        -0x69f058d8
        -0x54aecc5d
        0x6eef0b6c
        0x137a3be4
        -0x45c40fb0
        0x7efb2a98
        -0x5e0e9ae3
        0x39af0176
        0x66ca593e
        -0x7dbcf178
        -0x731179e7
        0x456f9fb4
        0x7d84a5c3
        0x3b8b5ebe
        -0x1f908a28
        -0x7a3edf8d
        0x401a449f
        0x56c16aa6
        0x4ed3aa62
        0x363f7706
        0x1bfedf72
        0x429b023d
        0x37d0d724
        -0x2ff5edb8
        -0x24f0152d
        0x49f1c09b
        0x75372c9
        -0x7f66e485
        0x25d479d8
        -0x9172109
        -0x1c01afe6
        -0x4986b3c5
        -0x68931f43
        0x4c006ba
        -0x3e56b04a
        0x409f60c4
        0x5e5c9ec2
        0x196a2463
        0x68fb6faf
        0x3e6c53b5
        0x1339b2eb
        0x3b52ec6f
        0x6dfc511f
        -0x64cf6ad4
        -0x337ebabc    # -6.777501E7f
        -0x50a142f7
        -0x411c2ffc
        -0x21ccb503
        0x660f2807
        0x192e4bb3
        -0x3f3457a9
        0x45c8740f
        -0x2df4a0c7
        -0x462c0425
        0x5579c0bd
        0x1a60320a
        -0x295eff3a
        0x402c7279
        0x679f25fe
        -0x4e05c34
        -0x715a1608
        -0x24cddd08
        0x3c7516df
        -0x29e94eb
        0x2f501ec8
        -0x52faad55
        0x323db5fa
        -0x2dc78a0
        0x53317b48
        0x3e00df82
        -0x61a3a845
        -0x35907360    # -3924776.0f
        0x1a87562e
        -0x20e89625
        -0x2abd570a
        0x287effc3
        -0x5398cd3a
        -0x73b0aa8d
        0x695b27b0
        -0x4435a738
        -0x1e005ca3
        -0x470fee60
        0x10fa3d98
        -0x2de7c48
        0x4afcb56c    # 8280758.0f
        0x2dd1d35b
        -0x65ac1b87
        -0x4907ba9b
        -0x2d71b644
        0x4bfb9790    # 3.2976672E7f
        -0x1e220d26
        -0x5b3481cd
        0x62fb1341
        -0x311b3918
        -0x10df3526
        0x36774c01
        -0x2f816102
        0x2bf11fb4
        -0x6a2425b3
        -0x516f6e68
        -0x1552718f
        0x6b93d5a0
        -0x2f712e30
        -0x5038da20
        -0x71c3a4d1
        -0x718a6b49
        -0x70091d05
        -0xdedd49c
        -0x777747ee
        -0x6ff20fe4
        0x4fad5ea0
        0x688fc31c
        -0x2e300e6f
        -0x4c573e53
        0x2f2f2218
        -0x41f1e889
        -0x158ad202
        -0x74fde05f
        -0x1a5f33f1
        -0x4a908b18
        0x18acf3d6
        -0x31761d67
        -0x4b57b020
        -0x2ec1f49
        0x7cc43b81
        -0x2d525727
        0x165fa266
        -0x7f6a88fb
        -0x6c338cec
        0x211a1477
        -0x1952df9b
        0x77b5fa86
        -0x38abbd0b
        -0x462ca31
        -0x143250f4
        0x7b3e89a0
        -0x29bee42d
        -0x51e181b7
        0x250e2d
        0x2071b35e
        0x226800bb
        0x57b8e0af
        0x2464369b
        -0xff646e2
        0x5563911d
        0x59dfa6aa
        0x78c14389
        -0x26a5ac81
        0x207d5ba2
        0x2e5b9c5
        -0x7cd9fc8a
        0x6295cfa9
        0x11c81968
        0x4e734a41
        -0x4cb8d236
        0x7b14a94a
        0x1b510052
        -0x65acd6eb
        -0x29f0a8c1
        -0x4364391c
        0x2b60a476
        -0x7e198c00
        0x8ba6fb5
        0x571be91f
        -0xd691395
        0x2a0dd915
        -0x499c9adf
        -0x1846064a
        -0xcbfad2
        -0x3a7aa99c
        0x53b02d5d
        -0x5660705f
        0x8ba4799
        0x6e85076a
        0x4b7a70e9    # 1.6412905E7f
        -0x4a4cd6bc
        -0x248af6d2
        -0x3be6d9dd
        -0x52915950
        0x49a7df7d
        -0x63119f48
        -0x70124d9a
        -0x1355738f
        0x699a17ff
        0x5664526c
        -0x3d4e611f
        0x193602a5
        0x75094c29
        -0x5fa6ecc0
        -0x1be7c5c2
        0x3f54989a
        0x5b429d65
        0x6b8fe4d6
        -0x6608c02a
        -0x5e2d63f9
        -0x1017cf0b
        0x4d2d38e6    # 1.816367E8f
        -0xfdaa23f
        0x4cdd2086    # 1.1593426E8f
        -0x7b8f14da
        0x6382e9c6
        0x21ecc5e
        0x9686b3f
        0x3ebaefc9
        0x3c971814
        0x6b6a70a1
        0x687f3584
        0x52a0e286    # 3.454976E11f
        -0x4863acfb
        -0x55aff8c9
        0x3e07841c
        0x7fdeae5c
        -0x7182bb14
        0x5716f2b8
        -0x4fc525c9
        -0xfaff3f3
        -0xfe3e0fc
        0x200b3ff
        -0x51f30ae6    # -3.205001E-11f
        0x3cb574b2
        0x25837a58
        -0x23f6de43
        -0x2e6eec07
        0x7ca92ff6
        -0x6bcdb88d    # -9.000794E-27f
        0x22f54701
        0x3ae5e581
        0x37c2dadc
        -0x374a89cc
        -0x650c2259
        -0x56bb9eba
        0xfd0030e
        -0x133738c2
        -0x5b8ae1bf
        -0x1dc73267
        0x3bea0e2f
        0x3280bba1
        0x183eb331
        0x4e548b38    # 8.914734E8f
        0x4f6db908    # 3.9883264E9f
        0x6f420d03
        -0x9f5fb41
        0x2cb81290
        0x24977c79
        0x5679b072
        -0x43507651
        -0x216588e1
        -0x266cf7f0
        -0x4c7451ee
        -0x2330c0d2
        0x5512721f
        0x2e6b7124
        0x501adde6
        -0x607b3279
        0x7a584718
        0x7408da17
        -0x43606544
        -0x16b48274
        -0x138513c6
        -0x247ae206
        0x63094366
        -0x3b9b3c2e
        -0x10e3e7b9
        0x3215d908
        -0x22bcc4c9
        0x24c2ba16
        0x12a14d43
        0x2a65c451
        0x50940002
        0x133ae4dd
        0x71dff89e
        0x10314e55
        -0x7e53882a
        0x5f11199b
        0x43556f1
        -0x285c3895
        0x3c11183b
        0x5924a509
        -0xd701913
        -0x680e0406
        -0x614540d4
        0x1e153c6e
        -0x791cba90
        -0x1516904f
        -0x79f1a1f6
        0x5a3e2ab3
        0x771fe71c
        0x4e3d06fa    # 7.9283776E8f
        0x2965dcb9
        -0x6618e2f1
        -0x7fc1762a
        0x5266c825    # 2.4780009E11f
        0x2e4cc978
        -0x63ef4c96
        -0x39eaf146
        -0x6b1d1588
        -0x5a03c3ad
        0x1e0a2df4
        -0xd08b159
        0x361d2b3d    # 2.341999E-6f
        0x1939260f
        0x19c27960
        0x5223a708
        -0x8eced4a
        -0x14520192
        -0x153ce09a
        -0x1c43ba6b
        -0x5984377d
        -0x4e80c82f
        0x18cff28
        -0x3ccd2211
        -0x4193a55b
        0x65582185
        0x68ab9802
        -0x11315af1
        -0x24d06ac5
        0x2aef7dad
        0x5b6e2f84
        0x1521b628
        0x29076170
        -0x1322b88b
        0x619f1510
        0x13cca830
        -0x149e426a
        0x334fe1e
        -0x55fc9c31
        -0x4a8ca370
        0x4c70a239    # 6.3080676E7f
        -0x2a6161f5
        -0x345521ec    # -2.2395944E7f
        -0x11337944
        0x60622ca7
        -0x6354a355
        -0x4d0c7b92
        0x648b1eaf
        0x19bdf0ca
        -0x5fdc9647
        0x655abb50    # 6.45582E22f
        0x40685a32
        0x3c2ab4b3
        0x319ee9d5
        -0x3fde4709
        -0x64abf4e7
        -0x78a05f67
        -0x6a086682    # -1.00004673E-25f
        0x623d7da8
        -0x7c87766
        -0x681cd289
        0x11ed935f
        0x16681281
        0xe358829
        -0x3819e02a
        -0x6921205f
        0x7858ba99
        0x57f584a5
        0x1b227263
        -0x647c3c01
        0x1ac24696
        -0x324cf515
        0x532e3054
        -0x7026b71c
        0x6dbc3128
        0x58ebf2ef
        0x34c6ffea
        -0x1d7129f
        -0x1183c38d
        0x5d4a14d9
        -0x179b481d
        0x42105d14
        0x203e13e0
        0x45eee2b6
        -0x5c555416
        -0x2493b0eb
        -0x534b030
        -0x38bd0bbe
        -0x1095444b
        0x654f3b1d
        0x41cd2105
        -0x27e18662
        -0x797ab239
        -0x1bb4b896    # -1.499934E22f
        0x3d816250
        -0x309d5e0e
        0x5b8d2646
        -0x3777c60
        -0x3e38495d
        0x7f1524c3
        0x69cb7492
        0x47848a0b
        0x5692b285
        0x95bbf00
        -0x52e6b763
        0x1462b174
        0x23820e00
        0x58428d2a
        0xc55f5ea
        0x1dadf43e
        0x233f7061
        0x3372f092
        -0x726c81bf
        -0x29a0130f
        0x6c223bdb
        0x7cde3759
        -0x34118ba0    # -3.125472E7f
        0x4085f2a7
        -0x3188cd92
        -0x59f87f7c
        0x19f8509e
        -0x171027ab
        0x61d99735
        -0x56965856
        -0x3af3f93e
        0x5a04abfc
        -0x7ff43524
        -0x61bb85d2
        -0x3cbacb7c
        -0x22a98fb
        0xe1e9ec9
        -0x248c242d
        0x105588cd
        0x675fda79
        -0x1c98bcc0
        -0x3a3bcb9b
        0x713e38d8
        0x3d28f89e
        -0xe9200e0
        0x153e21e7
        -0x704fc2b6
        -0x191c60d5
        -0x247c5209
        -0x16c2a598
        -0x6b7ebf09
        -0x9b3d9e4
        -0x6b96d6cc
        0x411520f7
        0x7602d4f7
        -0x430b94d2
        -0x2b5dff98
        -0x2bf7db8f
        0x3320f46a
        0x43b7d4b7
        0x500061af    # 8.615542E9f
        0x1e39f62e
        -0x68dbbaba
        0x14214f74
        -0x407477c0
        0x4d95fc1d    # 3.1454096E8f
        -0x694a6e51
        0x70f4ddd3
        0x66a02f45
        -0x4043f614
        0x3bd9785
        0x7fac6dd0
        0x31cb8504
        -0x6914d84d
        0x55fd3941
        -0x25dab81a
        -0x5435f566
        0x28507825
        0x530429f4
        0xa2c86da
        -0x16499205
        0x68dc1462
        -0x28b79700
        0x680ec0a4
        0x27a18dee
        0x4f3ffea2
        -0x17785274
        -0x4a731ffa
        0x7af4d6b6
        -0x5531e184
        -0x2cc8a014
        -0x31875c67
        0x406b2a42
        0x20fe9e35
        -0x260c7a47
        -0x11c62855
        0x3b124e8b
        0x1dc9faf7
        0x4b6d1856    # 1.5538262E7f
        0x26a36631
        -0x151c684e
        0x3a6efa74    # 9.1163E-4f
        -0x22a4bcce
        0x6841e7f7
        -0x3587df05
        -0x4f50ab2
        -0x27014c69
        0x454056ac
        -0x45b76ad9
        0x55533a3a
        0x20838d87
        -0x1945649
        -0x2f696ab5
        0x55a867bc
        -0x5eea65a8
        -0x3356d69d    # -8.868943E7f
        -0x661e24cd
        -0x59d5b5aa
        0x3f3125f9
        0x5ef47e1c
        -0x6fd6ce84
        -0x20717fe
        0x4272f70
        -0x7f44eaa4    # -1.71809E-38f
        0x5282ce3
        -0x6a3eeab8
        -0x1b3992de
        0x48c1133f
        -0x38f07924
        0x7f9c9ee
        0x41041f0f
        0x404779a4
        0x5d886e17
        0x325f51eb
        -0x2a643f2f
        -0xd433e71
        0x41113564
        0x257b7834
        0x602a9c60
        -0x2007175d
        0x1f636c1b
        0xe12b4c2
        0x2e1329e
        -0x5099b02f
        -0x352e7eeb    # -6865034.5f
        0x6b2395e0
        0x333e92e1
        0x3b240b62
        -0x114146de
        -0x7a4d5df2
        -0x1945f267
        -0x218df374
        0x2da2f728
        -0x2fed87bb
        -0x6a486b03
        0x647d0862
        -0x18330a10
        0x5449a36f
        -0x7882b706
        -0x3c6202d9
        -0xcc172e2
        0xa476341
        -0x66d1008c
        0x3a6f6eab
        -0xb0702c9
        -0x57ed23a0
        -0x5e142208
        -0x66e41eb4
        -0x249194f3
        -0x3984aaf0
        0x6d672c37
        0x2765d43b
        -0x232f17fc
        -0xed6f239
        -0x33ff005d    # -3.3816204E7f
        -0x4ac6f06e
        0x690fed0b
        0x667b9ffb
        -0x31248264
        -0x5f6e30f5
        -0x26eaa15d
        -0x44ecd078
        0x515bad24
        0x7b9479bf
        0x763bd6eb
        0x37392eb3
        -0x33eea687    # -3.81025E7f
        -0x7fd91d69
        -0xbd1ced3
        0x6842ada7
        -0x3995d4c5
        0x12754ccc
        0x782ef11c
        0x6a124237
        -0x486dae19
        0x6a1bbe6
        0x4bfb6350    # 3.294992E7f
        0x1a6b1018
        0x11caedfa
        0x3d25bdd8
        -0x1d1e3c37
        0x44421659
        0xa121386
        -0x26f31392
        -0x2a5415d6
        0x64af674e
        -0x257957a1
        -0x41401678
        0x64e4c3fe
        -0x62437fa9
        -0xf083f7a
        0x60787bf8
        0x6003604d
        -0x2e027cba
        -0x9c7e050
        0x7745ae04
        -0x28c90334
        -0x7cbd94cd
        -0xfe1548f
        -0x4f7fbe79
        0x3c005e5f    # 0.007835f
        0x77a057be
        -0x421751dc
        0x55464299
        -0x40a7d19f
        0x4e58f48f    # 9.099765E8f
        -0xd22025e
        -0xb8b10c8
        -0x7876423e
        0x5366f9c3
        -0x374c718c
        -0x4b8a0dab
        0x46fcd9b9
        0x7aeb2661
        -0x74e2207c
        -0x7b95f187
        -0x6ea06a1e
        0x466e598e
        0x20b45770
        -0x732aaa6f
        -0x36fd21b4
        -0x46f4531f
        -0x447dfa30
        0x11a86248
        0x7574a99e
        -0x4880e64a
        -0x1f5623f7
        0x662d09a1
        -0x3bcdb9cd
        -0x17a5e0fe
        0x9f0be8c
        0x4a99a025    # 5034002.5f
        0x1d6efe10
        0x1ab93d1d
        0xba5a4df
        -0x5e790df1
        0x2868f169
        -0x2348257d
        0x573906fe
        -0x5e1d3165
        0x4fcd7f52
        0x50115e01    # 9.755428E9f
        -0x58f97c06
        -0x5ffd4a3c
        0xde6d027
        -0x650773d9
        0x773f8641
        -0x3c9fb3fa
        0x61a806b5
        -0xfe885d8
        -0x3f0a7920
        0x6058aa
        0x30dc7d62
        0x11e69ed7
        0x2338ea63
        0x53c2dd94
        -0x3d3de9cc
        -0x443411aa
        -0x6f434922
        -0x1403825f
        -0x31a6e28a
        0x6f05e409
        0x4b7c0188    # 1.6515464E7f
        0x39720a3d
        0x7c927c24
        -0x791c8da1
        0x724d9db9
        0x1ac15bb4
        -0x2c614704
        -0x12abaa88
        0x8fca5b5
        -0x27c2832d
        0x4dad0fc4    # 3.6293645E8f
        0x1e50ef5e
        -0x4e9e1908
        -0x5d7aeb27
        0x6c51133c
        0x6fd5c7e7
        0x56e14ec4
        0x362abfce
        -0x223937c9
        -0x2865cdcc
        -0x6d9c7dee
        0x670efa8e
        0x406000e0    # 3.5000534f
        0x3a39ce37
        -0x2c050a31
        -0x543d88c9
        0x5ac52d1b
        0x5cb0679e
        0x4fa33742
        -0x2c7dd8c0
        -0x66436442
        -0x2aee7163    # -1.0002607E13f
        -0x40f08ceb
        -0x29d2e382
        -0x38ff3b85
        -0x4873e495
        0x21a19045
        -0x4d914e42
        0x6a366eb4
        0x5748ab2f
        -0x436b9187
        -0x395c892e
        0x6549c2c8
        0x530ff8ee
        0x468dde7d
        -0x2a8cf5e3
        0x4cd04dc6    # 1.0921118E8f
        0x2939bbdb
        -0x5645b9b0
        -0x536ad918
        -0x41a11cfc
        -0x5e052a10
        0x6a2d519a
        0x63ef8ce2
        -0x657911de
        -0x3f763d48
        0x43242ef6
        -0x5ae1fc56
        -0x630d2f5c
        -0x7c3f9e46
        -0x641695b3
        -0x701aeab0
        -0x459ba42a
        0x2826a2f9
        -0x58c5c51f
        0x4ba99586    # 2.2227724E7f
        -0x10aa9d17
        -0x38d0102d
        -0x8ad0826
        0x3f046f69
        0x77fa0a59
        -0x7f1b56eb    # -2.0999148E-38f
        -0x784f79ff
        -0x64f61953
        0x3b3ee593
        -0x166f02a6
        -0x61cb2869
        0x2cf0b7d9
        0x22b8b51
        -0x692a53c6
        0x17da67d
        -0x2e30c12a
        0x7c7d2d28
        0x1f9f25cf
        -0x520d4765
        0x5ad6b472
        0x5a88f54c
        -0x1fd6538f
        -0x1fe65a1a
        0x47b0acfd
        -0x126c0565
        -0x172c3b73    # -8.0003604E24f
        0x283b57cc
        -0x72a99d7
        0x79132e28
        0x785f0191
        -0x128a9fab
        -0x869f1bc
        -0x1c2ca174
        0x15056dd4
        -0x770b9246
        0x3a16125
        0x564f0bd
        -0x3c1461eb
        0x3c9057a2
        -0x68d8e514
        -0x56c5f8d6
        0x1b3f6d9b
        0x1e6321f5
        -0xa639905
        0x26dcf319
        0x7533d928
        -0x4eaa020b
        0x3563482
        -0x7545c345
        0x28517711
        -0x3df52608
        -0x5433ae99
        -0x33526da1    # -9.100159E7f
        0x4de81751    # 4.8673027E8f
        0x3830dc8e
        0x379d5862
        -0x6cdf066f
        -0x15856f3e
        -0x4c18432
        0x5121ce64
        0x774fbe32
        -0x57491c82
        -0x3cd6c2ba
        0x48de5369
        0x6413e680
        -0x5d51f7f0
        -0x22924ddc
        0x69852dfd
        0x9072166
        -0x4c65b9f6
        0x6445c0dd
        0x586cdecf
        0x1c20c8ae
        0x5bbef7dd
        0x1b588d40
        -0x332dfe81
        0x6bb4e3bb
        -0x225d9582
        0x3a59ff45
        0x3e350a44
        -0x434b322b
        0x72eacea8
        -0x59b7b45
        -0x7299ed52
        -0x40c390b9
        -0x2d641b9d
        0x542f5d9e
        -0x513d88e5
        -0x9b19c90
        0x740e0d8d
        -0x18a4eca9
        -0x78de98f
        -0x50ac82a3
        0x4040cb08
        0x4eb4e2cc    # 1.5173811E9f
        0x34d2466a
        0x115af84
        -0x1e4ffbd8
        -0x6a67c5e3
        0x6b89fb4
        -0x31915fb8    # -1.0008704E9f
        0x6f3f3b82
        0x3520ab82
        0x11a1d4b
        0x277227f8
        0x611560b1
        -0x186cc024
        -0x44c586d5
        0x344525bd
        -0x5f77c61f
        0x51ce794b
        0x2f32c9b7
        -0x5fe04537
        -0x1fe33782
        -0x43382e0a
        -0x30feee3d
        -0x5e175539
        0x1a908749
        -0x2bb04266
        -0x2f252135
        -0x2af525c8
        0x339c32a
        -0x396ec999
        -0x7206ce84
        -0x1f4ed4b1
        -0x861a649
        0x43f5bb3a
        -0xd2ae601
        0x27d9459c
        -0x4068ddd4
        0x15e6fc2a
        0xf91fc71
        -0x646beadb
        -0x51a6c9f
        -0x31496315
        -0x3d579ba7
        0x12baa8d1
        -0x493ef8a2
        -0x1cfa95f4
        0x10d25065
        -0x34fc5bbe    # -8627266.0f
        -0x1f1391f2
        0x1698db3b
        0x4c98a0be    # 8.002098E7f
        0x3278e964
        -0x60e06ace
        -0x1f2c6d21
        -0x2c5fcbd5    # -1.37614E12f
        -0x768e0de2
        0x1b0a7441
        0x4ba3348c    # 2.139164E7f
        -0x3a418ee0
        -0x3c89cd28
        -0x20ca6073
        -0x6466d0d2
        -0x19f490b9
        0xfe3f11d
        -0x1ab325ac
        0x1edad891
        -0x319d8631
        -0x32c18191
        0x1618b166
        -0x2d3e2fb
        -0x7b702d3b
        -0x904dd67
        -0xadc0ca9
        -0x59cd89dd
        -0x6c57cacf
        0x56cccd02
        -0x530f7e9e
        0x5a75ebb5
        0x6e163697
        -0x772d8c34
        -0x21699d6e
        -0x7e46b630
        0x4c50901b    # 5.4673516E7f
        0x71c65614
        -0x19393843
        0x327a140a
        0x45e1d006
        -0x3c0d8466
        -0x3655ac03
        0x62a80f00
        -0x44da401e
        0x35bdd2f6
        0x71126905
        -0x4dfbfdde
        -0x49343084
        -0x328963d5    # -2.5858936E8f
        0x53113ec0
        0x1640e3d3
        0x38abbd60
        0x2547adf0
        -0x45c7df64
        -0x8b9318a
        0x77afa1c5
        0x20756060
        -0x7a3401b2
        -0x75177228
        0x7aaaf9b0
        0x4cf9aa7e    # 1.3089688E8f
        0x1948c25c
        0x2fb8a8c
        0x1c36ae4
        -0x29141e07
        -0x6f2b0797
        -0x59a32160
        0x3f09252d
        -0x3df71961
        -0x48b19ece
        -0x31881da5
        0x578fdfe3
        0x3ac372e6
    .end array-data

    :array_2
    .array-data 4
        0x4f787963
        0x68726f6d
        0x61746963
        0x426c6f77
        0x66697368
        0x53776174
        0x44796e61
        0x6d697465
    .end array-data

    :array_3
    .array-data 4
        0x4f727068
        0x65616e42
        0x65686f6c
        0x64657253
        0x63727944
        0x6f756274
    .end array-data

    :array_4
    .array-data 2
        0x2es
        0x2fs
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static char64(C)B
    .locals 2

    .line 307
    const/4 v0, -0x1

    if-ltz p0, :cond_1

    sget-object v1, Lcom/jcraft/jsch/jbcrypt/BCrypt;->index_64:[B

    array-length v1, v1

    if-le p0, v1, :cond_0

    return v0

    .line 309
    :cond_0
    sget-object v0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->index_64:[B

    aget-byte v0, v0, p0

    return v0

    .line 308
    :cond_1
    return v0
.end method

.method public static checkpw(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 708
    invoke-static {p0, p1}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->hashpw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 709
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 710
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 711
    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 712
    return v3

    .line 713
    :cond_0
    nop

    .line 714
    move v1, v3

    move v0, v1

    :goto_0
    array-length v4, p0

    if-lt v1, v4, :cond_2

    .line 716
    if-nez v0, :cond_1

    move v3, v2

    :cond_1
    return v3

    .line 715
    :cond_2
    aget-byte v4, p1, v1

    aget-byte v5, p0, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    or-int/2addr v0, v4

    int-to-byte v0, v0

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static decode_base64(Ljava/lang/String;I)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 327
    if-gtz p1, :cond_0

    .line 328
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid maxolen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 330
    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-ge v3, v5, :cond_6

    if-lt v4, p1, :cond_1

    goto/16 :goto_1

    .line 331
    :cond_1
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->char64(C)B

    move-result v3

    .line 332
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->char64(C)B

    move-result v5

    .line 333
    const/4 v7, -0x1

    if-eq v3, v7, :cond_6

    if-ne v5, v7, :cond_2

    .line 334
    goto :goto_1

    .line 335
    :cond_2
    shl-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    .line 336
    and-int/lit8 v8, v5, 0x30

    shr-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    or-int/2addr v3, v8

    int-to-byte v3, v3

    .line 337
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v4, v4, 0x1

    if-ge v4, p1, :cond_6

    if-lt v6, v1, :cond_3

    .line 339
    goto :goto_1

    .line 340
    :cond_3
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->char64(C)B

    move-result v6

    .line 341
    if-ne v6, v7, :cond_4

    .line 342
    goto :goto_1

    .line 343
    :cond_4
    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    .line 344
    and-int/lit8 v7, v6, 0x3c

    shr-int/lit8 v7, v7, 0x2

    int-to-byte v7, v7

    or-int/2addr v5, v7

    int-to-byte v5, v5

    .line 345
    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    add-int/lit8 v4, v4, 0x1

    if-ge v4, p1, :cond_6

    if-lt v3, v1, :cond_5

    .line 347
    goto :goto_1

    .line 348
    :cond_5
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->char64(C)B

    move-result v3

    .line 349
    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x6

    int-to-byte v6, v6

    .line 350
    or-int/2addr v3, v6

    int-to-byte v3, v3

    .line 351
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_0

    .line 355
    :cond_6
    :goto_1
    new-array p0, v4, [B

    .line 356
    :goto_2
    if-lt v2, v4, :cond_7

    .line 358
    return-object p0

    .line 357
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, p0, v2

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private ekskey([B[B)V
    .locals 11

    .line 453
    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v2, v0, [I

    .line 454
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 455
    iget-object v4, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    array-length v5, v5

    .line 457
    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v4, :cond_2

    .line 460
    move p2, v6

    :goto_1
    if-lt p2, v4, :cond_1

    .line 468
    move p2, v6

    :goto_2
    if-lt p2, v5, :cond_0

    .line 475
    return-void

    .line 469
    :cond_0
    aget v1, v3, v6

    invoke-static {p1, v2}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->streamtoword([B[I)I

    move-result v4

    xor-int/2addr v1, v4

    aput v1, v3, v6

    .line 470
    aget v1, v3, v0

    invoke-static {p1, v2}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->streamtoword([B[I)I

    move-result v4

    xor-int/2addr v1, v4

    aput v1, v3, v0

    .line 471
    invoke-direct {p0, v3, v6}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->encipher([II)V

    .line 472
    iget-object v1, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    aget v4, v3, v6

    aput v4, v1, p2

    .line 473
    iget-object v1, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    add-int v4, p2, v0

    aget v7, v3, v0

    aput v7, v1, v4

    .line 468
    add-int/lit8 p2, p2, 0x2

    goto :goto_2

    .line 461
    :cond_1
    aget v1, v3, v6

    invoke-static {p1, v2}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->streamtoword([B[I)I

    move-result v7

    xor-int/2addr v1, v7

    aput v1, v3, v6

    .line 462
    aget v1, v3, v0

    invoke-static {p1, v2}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->streamtoword([B[I)I

    move-result v7

    xor-int/2addr v1, v7

    aput v1, v3, v0

    .line 463
    invoke-direct {p0, v3, v6}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->encipher([II)V

    .line 464
    iget-object v1, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    aget v7, v3, v6

    aput v7, v1, p2

    .line 465
    iget-object v1, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    add-int v7, p2, v0

    aget v8, v3, v0

    aput v8, v1, v7

    .line 460
    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 458
    :cond_2
    iget-object v8, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    iget-object v9, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    aget v9, v9, v7

    invoke-static {p2, v1}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->streamtoword([B[I)I

    move-result v10

    xor-int/2addr v9, v10

    aput v9, v8, v7

    .line 457
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private final encipher([II)V
    .locals 10

    .line 368
    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v2, p1, v1

    .line 370
    iget-object v3, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    xor-int/2addr v0, v3

    .line 371
    nop

    .line 371
    :goto_0
    const/16 v3, 0xe

    if-le v4, v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, p1, p2

    .line 387
    aput v0, p1, v1

    .line 388
    return-void

    .line 373
    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    shr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    .line 374
    iget-object v5, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x100

    or-int/2addr v6, v7

    aget v5, v5, v6

    add-int/2addr v3, v5

    .line 375
    iget-object v5, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    const/16 v8, 0x200

    or-int/2addr v6, v8

    aget v5, v5, v6

    xor-int/2addr v3, v5

    .line 376
    iget-object v5, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    and-int/lit16 v6, v0, 0xff

    const/16 v9, 0x300

    or-int/2addr v6, v9

    aget v5, v5, v6

    add-int/2addr v3, v5

    .line 377
    iget-object v5, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    add-int/lit8 v4, v4, 0x1

    aget v5, v5, v4

    xor-int/2addr v3, v5

    xor-int/2addr v2, v3

    .line 380
    iget-object v3, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    .line 381
    iget-object v5, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    shr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v7

    aget v5, v5, v6

    add-int/2addr v3, v5

    .line 382
    iget-object v5, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v8

    aget v5, v5, v6

    xor-int/2addr v3, v5

    .line 383
    iget-object v5, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    and-int/lit16 v6, v2, 0xff

    or-int/2addr v6, v9

    aget v5, v5, v6

    add-int/2addr v3, v5

    .line 384
    iget-object v5, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    add-int/lit8 v4, v4, 0x1

    aget v5, v5, v4

    xor-int/2addr v3, v5

    xor-int/2addr v0, v3

    goto :goto_0
.end method

.method private static encode_base64([BI)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 268
    nop

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    if-lez p1, :cond_4

    array-length v1, p0

    if-le p1, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 275
    :goto_0
    if-lt v1, p1, :cond_1

    goto :goto_1

    .line 276
    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 277
    sget-object v3, Lcom/jcraft/jsch/jbcrypt/BCrypt;->base64_code:[C

    shr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x4

    .line 279
    if-lt v2, p1, :cond_2

    .line 280
    sget-object p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->base64_code:[C

    and-int/lit8 p1, v1, 0x3f

    aget-char p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    goto :goto_1

    .line 283
    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 284
    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v1, v4

    .line 285
    sget-object v4, Lcom/jcraft/jsch/jbcrypt/BCrypt;->base64_code:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    and-int/lit8 v1, v2, 0xf

    shl-int/lit8 v1, v1, 0x2

    .line 287
    if-lt v3, p1, :cond_3

    .line 288
    sget-object p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->base64_code:[C

    and-int/lit8 p1, v1, 0x3f

    aget-char p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    nop

    .line 296
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 291
    :cond_3
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 292
    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v1, v4

    .line 293
    sget-object v4, Lcom/jcraft/jsch/jbcrypt/BCrypt;->base64_code:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    sget-object v1, Lcom/jcraft/jsch/jbcrypt/BCrypt;->base64_code:[C

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 273
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid len"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static gensalt()Ljava/lang/String;
    .locals 1

    .line 697
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->gensalt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gensalt(I)Ljava/lang/String;
    .locals 1

    .line 687
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {p0, v0}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->gensalt(ILjava/security/SecureRandom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static gensalt(ILjava/security/SecureRandom;)Ljava/lang/String;
    .locals 2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 665
    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 667
    const-string p1, "$2a$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const/16 p1, 0xa

    if-ge p0, p1, :cond_0

    .line 669
    const-string p1, "0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    :cond_0
    const/16 p1, 0x1e

    if-le p0, p1, :cond_1

    .line 671
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "log_rounds exceeds maximum (30)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 673
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string p0, "$"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    array-length p0, v1

    invoke-static {v1, p0}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->encode_base64([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hashpw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 609
    nop

    .line 610
    nop

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x32

    if-eq v4, v5, :cond_0

    goto/16 :goto_3

    .line 615
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x4

    const/16 v7, 0x61

    const/4 v8, 0x3

    if-ne v5, v3, :cond_1

    .line 616
    move v5, v1

    move v1, v8

    goto :goto_0

    .line 618
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 619
    if-ne v1, v7, :cond_8

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_2

    goto/16 :goto_2

    .line 621
    :cond_2
    move v5, v1

    move v1, v6

    .line 625
    :goto_0
    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-le v9, v3, :cond_3

    .line 626
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing salt rounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 627
    :cond_3
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 629
    add-int v4, v1, v8

    add-int/lit8 v1, v1, 0x19

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lt v5, v7, :cond_4

    const-string p0, "\u0000"

    goto :goto_1

    :cond_4
    const-string p0, ""

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 632
    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->decode_base64(Ljava/lang/String;I)[B

    move-result-object p1

    .line 634
    new-instance v1, Lcom/jcraft/jsch/jbcrypt/BCrypt;

    invoke-direct {v1}, Lcom/jcraft/jsch/jbcrypt/BCrypt;-><init>()V

    .line 635
    sget-object v4, Lcom/jcraft/jsch/jbcrypt/BCrypt;->bf_crypt_ciphertext:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-virtual {v1, p0, p1, v3, v4}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->crypt_raw([B[BI[I)[B

    move-result-object p0

    .line 637
    const-string v1, "$2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    if-lt v5, v7, :cond_5

    .line 639
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    :cond_5
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const/16 v1, 0xa

    if-ge v3, v1, :cond_6

    .line 642
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :cond_6
    const/16 v1, 0x1e

    if-le v3, v1, :cond_7

    .line 644
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rounds exceeds maximum (30)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 646
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    array-length v1, p1

    invoke-static {p1, v1}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->encode_base64([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    sget-object p1, Lcom/jcraft/jsch/jbcrypt/BCrypt;->bf_crypt_ciphertext:[I

    array-length p1, p1

    mul-int/2addr p1, v6

    sub-int/2addr p1, v2

    invoke-static {p0, p1}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->encode_base64([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 620
    :cond_8
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid salt revision"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 614
    :cond_9
    :goto_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid salt version"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init_key()V
    .locals 1

    .line 413
    sget-object v0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P_orig:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    .line 414
    sget-object v0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S_orig:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    .line 415
    return-void
.end method

.method private key([B)V
    .locals 10

    .line 424
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 425
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 426
    iget-object v3, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    array-length v4, v4

    .line 428
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v3, :cond_2

    .line 431
    move p1, v5

    :goto_1
    if-lt p1, v3, :cond_1

    .line 437
    move p1, v5

    :goto_2
    if-lt p1, v4, :cond_0

    .line 442
    return-void

    .line 438
    :cond_0
    invoke-direct {p0, v2, v5}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->encipher([II)V

    .line 439
    iget-object v1, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    aget v3, v2, v5

    aput v3, v1, p1

    .line 440
    iget-object v1, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->S:[I

    add-int v3, p1, v0

    aget v6, v2, v0

    aput v6, v1, v3

    .line 437
    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    .line 432
    :cond_1
    invoke-direct {p0, v2, v5}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->encipher([II)V

    .line 433
    iget-object v1, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    aget v6, v2, v5

    aput v6, v1, p1

    .line 434
    iget-object v1, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    add-int v6, p1, v0

    aget v7, v2, v0

    aput v7, v1, v6

    .line 431
    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    .line 429
    :cond_2
    iget-object v7, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    iget-object v8, p0, Lcom/jcraft/jsch/jbcrypt/BCrypt;->P:[I

    aget v8, v8, v6

    invoke-static {p1, v1}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->streamtoword([B[I)I

    move-result v9

    xor-int/2addr v8, v9

    aput v8, v7, v6

    .line 428
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private static streamtoword([B[I)I
    .locals 5

    .line 399
    nop

    .line 400
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 402
    move v3, v0

    move v2, v3

    :goto_0
    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 407
    aput v1, p1, v0

    .line 408
    return v2

    .line 403
    :cond_0
    shl-int/lit8 v2, v2, 0x8

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 404
    add-int/lit8 v1, v1, 0x1

    array-length v4, p0

    rem-int/2addr v1, v4

    .line 402
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public crypt_raw([B[BI[I)[B
    .locals 7

    .line 567
    array-length v0, p4

    .line 570
    const/4 v1, 0x4

    if-lt p3, v1, :cond_6

    const/16 v2, 0x1e

    if-le p3, v2, :cond_0

    goto/16 :goto_4

    .line 572
    :cond_0
    const/4 v2, 0x1

    shl-int p3, v2, p3

    .line 573
    array-length v3, p2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 574
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad salt length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 576
    :cond_1
    invoke-direct {p0}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->init_key()V

    .line 577
    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->ekskey([B[B)V

    .line 578
    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ne v5, p3, :cond_5

    .line 583
    move v6, v3

    :goto_1
    const/16 p1, 0x40

    if-lt v6, p1, :cond_3

    .line 588
    mul-int p1, v0, v1

    new-array p1, p1, [B

    .line 589
    move p2, v3

    :goto_2
    if-lt p2, v0, :cond_2

    .line 595
    return-object p1

    .line 590
    :cond_2
    add-int/lit8 p3, v3, 0x1

    aget v1, p4, p2

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    .line 591
    add-int/lit8 v1, p3, 0x1

    aget v2, p4, p2

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p3

    .line 592
    add-int/lit8 p3, v1, 0x1

    aget v2, p4, p2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 593
    add-int/lit8 v3, p3, 0x1

    aget v1, p4, p2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p3

    .line 589
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 584
    :cond_3
    move p1, v3

    :goto_3
    shr-int p2, v0, v2

    if-lt p1, p2, :cond_4

    .line 583
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 585
    :cond_4
    shl-int p2, p1, v2

    invoke-direct {p0, p4, p2}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->encipher([II)V

    .line 584
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 579
    :cond_5
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->key([B)V

    .line 580
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->key([B)V

    .line 578
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 571
    :cond_6
    :goto_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad number of rounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hash([B[B[B)V
    .locals 5

    .line 479
    invoke-direct {p0}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->init_key()V

    .line 480
    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->ekskey([B[B)V

    .line 481
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x40

    if-lt v1, v2, :cond_3

    .line 486
    sget-object p1, Lcom/jcraft/jsch/jbcrypt/BCrypt;->openbsd_iv:[I

    array-length p1, p1

    new-array v3, p1, [I

    .line 487
    sget-object p1, Lcom/jcraft/jsch/jbcrypt/BCrypt;->openbsd_iv:[I

    sget-object p2, Lcom/jcraft/jsch/jbcrypt/BCrypt;->openbsd_iv:[I

    array-length p2, p2

    invoke-static {p1, v0, v3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    move v4, v0

    :goto_1
    const/16 p1, 0x8

    if-lt v4, p1, :cond_1

    .line 494
    move p2, v0

    :goto_2
    array-length v1, v3

    if-lt v0, v1, :cond_0

    .line 501
    return-void

    .line 496
    :cond_0
    add-int/lit8 v1, p2, 0x1

    aget v2, v3, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p3, p2

    .line 497
    add-int/lit8 p2, v1, 0x1

    aget v2, v3, v0

    shr-int/2addr v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 498
    add-int/lit8 v1, p2, 0x1

    aget v2, v3, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p3, p2

    .line 499
    add-int/lit8 p2, v1, 0x1

    aget v2, v3, v0

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 489
    :cond_1
    move p1, v0

    :goto_3
    if-lt p1, v2, :cond_2

    .line 488
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 490
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->encipher([II)V

    .line 489
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 482
    :cond_3
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->key([B)V

    .line 483
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->key([B)V

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public pbkdf([B[BI[B)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 506
    :try_start_0
    const-string v3, "SHA-512"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 508
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x20

    div-int/2addr v4, v5

    .line 509
    move-object/from16 v6, p1

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 511
    const/16 v7, 0x40

    new-array v7, v7, [B

    .line 512
    const/4 v8, 0x4

    new-array v8, v8, [B

    .line 513
    new-array v9, v5, [B

    .line 514
    new-array v5, v5, [B

    .line 515
    const/4 v10, 0x1

    move v11, v10

    :goto_0
    if-le v11, v4, :cond_0

    .line 549
    nop

    .line 554
    return-void

    .line 517
    :cond_0
    shr-int/lit8 v12, v11, 0x18

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    const/4 v13, 0x0

    aput-byte v12, v8, v13

    .line 518
    shr-int/lit8 v12, v11, 0x10

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v8, v10

    .line 519
    shr-int/lit8 v12, v11, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    const/4 v14, 0x2

    aput-byte v12, v8, v14

    .line 520
    and-int/lit16 v12, v11, 0xff

    int-to-byte v12, v12

    const/4 v14, 0x3

    aput-byte v12, v8, v14

    .line 522
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 523
    move-object/from16 v12, p2

    invoke-virtual {v3, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 524
    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 525
    array-length v14, v7

    invoke-virtual {v3, v7, v13, v14}, Ljava/security/MessageDigest;->digest([BII)I

    .line 527
    invoke-virtual {v1, v6, v7, v9}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->hash([B[B[B)V

    .line 528
    array-length v14, v9

    invoke-static {v9, v13, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    move/from16 v15, p3

    move v14, v10

    :goto_1
    if-lt v14, v15, :cond_3

    .line 542
    :goto_2
    array-length v14, v9

    if-lt v13, v14, :cond_1

    .line 515
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 543
    :cond_1
    mul-int v14, v13, v4

    sub-int v16, v11, v10

    add-int v14, v14, v16

    .line 544
    array-length v10, v2

    if-ge v14, v10, :cond_2

    .line 545
    aget-byte v10, v9, v13

    aput-byte v10, v2, v14

    .line 542
    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    goto :goto_2

    .line 531
    :cond_3
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 532
    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 533
    array-length v10, v7

    invoke-virtual {v3, v7, v13, v10}, Ljava/security/MessageDigest;->digest([BII)I

    .line 535
    invoke-virtual {v1, v6, v7, v5}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->hash([B[B[B)V

    .line 537
    move v10, v13

    :goto_3
    array-length v13, v5

    if-lt v10, v13, :cond_4

    .line 530
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto :goto_1

    .line 538
    :cond_4
    aget-byte v13, v9, v10

    aget-byte v16, v5, v10

    xor-int v13, v13, v16

    int-to-byte v13, v13

    aput-byte v13, v9, v10

    .line 537
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 551
    :catch_0
    move-exception v0

    move-object v1, v0
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    nop

    .line 552
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 550
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
