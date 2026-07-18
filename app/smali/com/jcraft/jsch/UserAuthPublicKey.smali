.class Lcom/jcraft/jsch/UserAuthPublicKey;
.super Lcom/jcraft/jsch/UserAuth;
.source "UserAuthPublicKey.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method

.method private _start(Lcom/jcraft/jsch/Session;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jcraft/jsch/Session;",
            "Ljava/util/List<",
            "Lcom/jcraft/jsch/Identity;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 128
    iget v3, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    iget v4, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    .line 129
    goto/16 :goto_d

    .line 132
    :cond_0
    const-string v3, "enable_pubkey_auth_query"

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 134
    const-string v4, "try_additional_pubkey_algorithms"

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "yes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 133
    nop

    .line 136
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 138
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 139
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_27

    .line 154
    iget-object v10, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->username:Ljava/lang/String;

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v11

    .line 158
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 158
    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 383
    goto/16 :goto_d

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jcraft/jsch/Identity;

    .line 160
    iget v13, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    iget v14, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    if-lt v13, v14, :cond_3

    .line 161
    goto/16 :goto_d

    .line 165
    :cond_3
    invoke-direct {v0, v1, v10}, Lcom/jcraft/jsch/UserAuthPublicKey;->decryptKey(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Identity;)V

    .line 168
    invoke-interface {v10}, Lcom/jcraft/jsch/Identity;->getAlgName()Ljava/lang/String;

    move-result-object v13

    .line 169
    nop

    .line 170
    const-string v14, "ssh-rsa"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 171
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 172
    goto :goto_2

    :cond_4
    const-string v14, "ssh-rsa-cert-v01@openssh.com"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 173
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 174
    goto :goto_2

    :cond_5
    invoke-interface {v9, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 175
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    .line 178
    :goto_2
    if-eqz v14, :cond_25

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    goto/16 :goto_f

    .line 186
    :cond_7
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 187
    iget v13, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    iget v15, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    .line 186
    if-lt v13, v15, :cond_8

    goto :goto_1

    .line 188
    :cond_8
    invoke-interface {v10}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v13

    .line 189
    nop

    .line 191
    if-eqz v13, :cond_11

    if-eqz v3, :cond_11

    .line 192
    nop

    .line 193
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 194
    const/16 v16, 0x33

    .line 194
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_9

    move/from16 v19, v3

    move-object/from16 v20, v12

    move/from16 v3, v16

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 195
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Ljava/lang/String;

    .line 196
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 198
    invoke-static {v6, v2, v10, v1}, Lcom/jcraft/jsch/UserAuthPublicKey;->isAlgorithmUnavailable(Ljava/lang/String;Ljava/util/List;Lcom/jcraft/jsch/Identity;Lcom/jcraft/jsch/Session;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 199
    goto :goto_4

    .line 210
    :cond_a
    iget-object v15, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v15}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 211
    iget-object v15, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    move/from16 v19, v3

    const/16 v3, 0x32

    invoke-virtual {v15, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 212
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v11}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 213
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v15, "ssh-connection"

    invoke-static {v15}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 214
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v15, "publickey"

    invoke-static {v15}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 215
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 216
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 217
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v13}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 218
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 221
    :goto_5
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v3

    iput-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    .line 222
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 224
    const/16 v15, 0x3c

    if-ne v3, v15, :cond_c

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    const/4 v15, 0x0

    invoke-interface {v5, v15}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v12

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " preauth success"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    invoke-interface {v5, v15, v12}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object/from16 v20, v12

    .line 228
    :goto_6
    new-instance v5, Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    move-object v15, v5

    .line 259
    :goto_7
    const/16 v12, 0x3c

    if-eq v3, v12, :cond_12

    .line 260
    const/4 v5, 0x1

    goto/16 :goto_9

    :cond_c
    move-object/from16 v20, v12

    move v12, v15

    .line 231
    const/16 v15, 0x33

    if-ne v3, v15, :cond_d

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v12

    const/4 v15, 0x0

    invoke-interface {v12, v15}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " preauth failure"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    invoke-interface {v12, v15, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 235
    goto :goto_8

    .line 236
    :cond_d
    const/16 v15, 0x35

    if-ne v3, v15, :cond_f

    .line 237
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 238
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 239
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 240
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    .line 241
    iget-object v15, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v15}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 242
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v3

    .line 243
    iget-object v15, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v15, :cond_e

    .line 244
    iget-object v15, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v15, v3}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 246
    :cond_e
    move-object/from16 v12, v20

    goto/16 :goto_5

    .line 250
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v12

    const/4 v15, 0x0

    invoke-interface {v12, v15}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v12

    .line 252
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " preauth failure command ("

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 251
    const/4 v15, 0x0

    invoke-interface {v12, v15, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_10
    :goto_8
    move-object/from16 v12, v20

    move/from16 v16, v3

    move/from16 v3, v19

    goto/16 :goto_4

    :cond_11
    move/from16 v19, v3

    move-object/from16 v20, v12

    const/4 v15, 0x0

    .line 264
    :cond_12
    invoke-interface {v10}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 265
    const/4 v5, 0x1

    :goto_9
    move/from16 v3, v19

    goto/16 :goto_10

    .line 266
    :cond_13
    if-nez v13, :cond_14

    .line 267
    invoke-interface {v10}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v13

    .line 271
    :cond_14
    if-nez v13, :cond_15

    .line 272
    const/4 v5, 0x1

    goto :goto_9

    .line 273
    :cond_15
    if-nez v15, :cond_16

    .line 274
    move-object v15, v14

    .line 275
    :cond_16
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 276
    const/4 v5, 0x1

    goto :goto_9

    .line 278
    :cond_17
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 279
    nop

    .line 279
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    iget v5, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    iget v6, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    if-lt v5, v6, :cond_18

    goto/16 :goto_e

    .line 280
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 281
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 283
    invoke-static {v5, v2, v10, v1}, Lcom/jcraft/jsch/UserAuthPublicKey;->isAlgorithmUnavailable(Ljava/lang/String;Ljava/util/List;Lcom/jcraft/jsch/Identity;Lcom/jcraft/jsch/Session;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 284
    goto :goto_a

    .line 296
    :cond_19
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 297
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v12, 0x32

    invoke-virtual {v6, v12}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 298
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6, v11}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 299
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v15, "ssh-connection"

    invoke-static {v15}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 300
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v15, "publickey"

    invoke-static {v15}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 301
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 302
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 303
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6, v13}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getSessionId()[B

    move-result-object v6

    .line 310
    array-length v15, v6

    .line 311
    const/4 v12, 0x4

    add-int v2, v12, v15

    iget-object v12, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    iget v12, v12, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v12, v2

    move-object/from16 v21, v3

    const/4 v3, 0x5

    sub-int/2addr v12, v3

    new-array v12, v12, [B

    .line 312
    ushr-int/lit8 v3, v15, 0x18

    int-to-byte v3, v3

    const/16 v16, 0x0

    aput-byte v3, v12, v16

    .line 313
    ushr-int/lit8 v3, v15, 0x10

    int-to-byte v3, v3

    const/16 v16, 0x1

    aput-byte v3, v12, v16

    .line 314
    ushr-int/lit8 v3, v15, 0x8

    int-to-byte v3, v3

    const/16 v16, 0x2

    aput-byte v3, v12, v16

    .line 315
    int-to-byte v3, v15

    const/16 v16, 0x3

    aput-byte v3, v12, v16

    .line 316
    const/4 v3, 0x0

    move-object/from16 v22, v11

    const/4 v11, 0x4

    invoke-static {v6, v3, v12, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v6, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    iget v6, v6, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v11, 0x5

    sub-int/2addr v6, v11

    invoke-static {v3, v11, v12, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    invoke-interface {v10, v12, v5}, Lcom/jcraft/jsch/Identity;->getSignature([BLjava/lang/String;)[B

    move-result-object v2

    .line 319
    if-nez v2, :cond_1b

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " signature failure"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 323
    :cond_1a
    :goto_b
    move-object/from16 v2, p4

    move-object/from16 v3, v21

    move-object/from16 v11, v22

    goto/16 :goto_a

    .line 325
    :cond_1b
    iget-object v3, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 326
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 329
    :cond_1c
    :goto_c
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    iput-object v2, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    .line 330
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 332
    const/16 v3, 0x34

    if-ne v2, v3, :cond_1e

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " auth success"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 336
    :cond_1d
    const/16 v18, 0x1

    return v18

    .line 337
    :cond_1e
    const/16 v3, 0x35

    if-ne v2, v3, :cond_1f

    .line 338
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 339
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 340
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 341
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    .line 342
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 343
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v2

    .line 344
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v6, :cond_1c

    .line 345
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v6, v2}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 347
    goto :goto_c

    .line 348
    :cond_1f
    const/16 v6, 0x33

    if-ne v2, v6, :cond_23

    .line 349
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 350
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 351
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 352
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    .line 353
    iget-object v11, v0, Lcom/jcraft/jsch/UserAuthPublicKey;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v11

    .line 356
    if-eqz v11, :cond_20

    .line 357
    new-instance v0, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_20
    iget v2, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    const/4 v11, 0x1

    add-int/2addr v2, v11

    iput v2, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v12, 0x0

    invoke-interface {v2, v12}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 361
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " auth failure"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v12, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 364
    :cond_21
    iget v2, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    iget v5, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    if-lt v2, v5, :cond_22

    .line 365
    :goto_d
    const/16 v18, 0x0

    return v18

    .line 366
    :cond_22
    if-eqz v4, :cond_26

    .line 367
    goto/16 :goto_b

    :cond_23
    const/4 v11, 0x1

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v12

    const/4 v15, 0x0

    invoke-interface {v12, v15}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v12

    .line 376
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " auth failure command ("

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    const/4 v5, 0x0

    invoke-interface {v12, v5, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_b

    :cond_24
    :goto_e
    const/4 v5, 0x1

    move/from16 v3, v19

    move-object/from16 v12, v20

    goto/16 :goto_3

    :cond_25
    :goto_f
    move/from16 v19, v3

    move-object/from16 v22, v11

    move-object/from16 v20, v12

    move v11, v5

    const/4 v5, 0x0

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " cannot be used as public key type for identity "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    const/4 v5, 0x0

    invoke-interface {v2, v5, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 183
    :cond_26
    move-object/from16 v2, p4

    move v5, v11

    move/from16 v3, v19

    move-object/from16 v11, v22

    :goto_10
    move-object/from16 v12, v20

    goto/16 :goto_1

    :cond_27
    move v11, v5

    move/from16 v19, v3

    const/4 v5, 0x0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    const-string v3, "ssh-rsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "rsa-sha2-256"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 141
    const-string v3, "rsa-sha2-512"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "ssh-rsa-sha224@ssh.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 142
    const-string v3, "ssh-rsa-sha256@ssh.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "ssh-rsa-sha384@ssh.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 143
    const-string v3, "ssh-rsa-sha512@ssh.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_12

    :cond_28
    const-string v3, "ssh-rsa-cert-v01@openssh.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 146
    const-string v3, "rsa-sha2-256-cert-v01@openssh.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 147
    const-string v3, "rsa-sha2-512-cert-v01@openssh.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_11

    .line 150
    :cond_29
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p4

    goto :goto_13

    .line 148
    :cond_2a
    :goto_11
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    move-object/from16 v2, p4

    goto :goto_13

    .line 144
    :cond_2b
    :goto_12
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    move-object/from16 v2, p4

    :goto_13
    move v5, v11

    move/from16 v3, v19

    goto/16 :goto_0
.end method

.method private decryptKey(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Identity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 412
    nop

    .line 413
    const/4 v0, 0x5

    .line 415
    :cond_0
    invoke-interface {p2}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 416
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-nez v1, :cond_1

    .line 417
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "USERAUTH fail"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :cond_1
    invoke-interface {p2}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->userinfo:Lcom/jcraft/jsch/UserInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Passphrase for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/jcraft/jsch/UserInfo;->promptPassphrase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 420
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string p2, "publickey"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v1}, Lcom/jcraft/jsch/UserInfo;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    .line 425
    if-eqz v1, :cond_3

    .line 426
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 430
    :goto_0
    invoke-interface {p2}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_6

    .line 431
    :cond_4
    invoke-interface {p2, v1}, Lcom/jcraft/jsch/Identity;->setPassphrase([B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 432
    if-eqz v1, :cond_5

    .line 433
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object p2

    instance-of p2, p2, Lcom/jcraft/jsch/IdentityRepositoryWrapper;

    if-eqz p2, :cond_5

    .line 434
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/IdentityRepositoryWrapper;

    invoke-virtual {p1}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->check()V

    .line 436
    :cond_5
    move-object v2, v1

    goto :goto_1

    .line 439
    :cond_6
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 440
    nop

    .line 441
    add-int/lit8 v0, v0, -0x1

    .line 442
    if-nez v0, :cond_0

    .line 446
    :goto_1
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 447
    nop

    .line 448
    return-void
.end method

.method private static isAlgorithmUnavailable(Ljava/lang/String;Ljava/util/List;Lcom/jcraft/jsch/Identity;Lcom/jcraft/jsch/Session;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/jcraft/jsch/Identity;",
            "Lcom/jcraft/jsch/Session;",
            ")Z"
        }
    .end annotation

    .line 400
    invoke-static {p0}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->getBaseKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    instance-of p1, p2, Lcom/jcraft/jsch/AgentIdentity;

    if-nez p1, :cond_1

    .line 402
    invoke-virtual {p3}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p3}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    .line 404
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " not available for identity "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 403
    invoke-interface {p1, v1, p0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 406
    :cond_0
    move v1, v0

    return v1

    .line 408
    :cond_1
    return v1
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 40
    invoke-super/range {p0 .. p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v3

    invoke-interface {v3}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    move-result-object v3

    .line 44
    monitor-enter v3

    .line 45
    :try_start_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v6, 0x0

    if-gtz v4, :cond_0

    .line 46
    monitor-exit v3

    goto :goto_1

    .line 49
    :cond_0
    const-string v4, "PubkeyAcceptedAlgorithms"

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "PubkeyAcceptedAlgorithms = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 54
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getUnavailableSignatures()[Ljava/lang/String;

    move-result-object v7

    .line 55
    if-eqz v7, :cond_2

    array-length v8, v7

    if-lez v8, :cond_2

    .line 56
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 55
    :goto_0
    nop

    .line 58
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v8

    .line 61
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Signature algorithms unavailable for non-agent identities = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 60
    invoke-interface {v8, v6, v9}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 65
    :cond_3
    const-string v8, ","

    invoke-static {v4, v8}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 66
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 67
    monitor-exit v3

    :goto_1
    move v5, v6

    return v5

    .line 70
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getServerSigAlgs()[Ljava/lang/String;

    move-result-object v8

    .line 71
    if-eqz v8, :cond_d

    array-length v9, v8

    if-lez v9, :cond_d

    .line 72
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 74
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_8

    .line 93
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v8

    .line 96
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "PubkeyAcceptedAlgorithms in server-sig-algs = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 95
    invoke-interface {v8, v6, v11}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 100
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v8

    .line 103
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "PubkeyAcceptedAlgorithms not in server-sig-algs = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 102
    invoke-interface {v8, v6, v11}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 107
    :cond_6
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 108
    invoke-direct {v1, v2, v3, v9, v7}, Lcom/jcraft/jsch/UserAuthPublicKey;->_start(Lcom/jcraft/jsch/Session;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    .line 109
    if-eqz v4, :cond_7

    .line 110
    monitor-exit v3

    const/4 v5, 0x1

    return v5

    .line 113
    :cond_7
    invoke-direct {v1, v2, v3, v10, v7}, Lcom/jcraft/jsch/UserAuthPublicKey;->_start(Lcom/jcraft/jsch/Session;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    :goto_3
    monitor-exit v3

    return v5

    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 75
    nop

    .line 76
    array-length v13, v8

    move v14, v6

    :goto_4
    if-lt v14, v13, :cond_9

    move v5, v6

    goto :goto_6

    :cond_9
    aget-object v15, v8, v14

    .line 78
    invoke-static {v12}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->getRawKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 80
    if-eqz v5, :cond_a

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    .line 76
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 81
    :cond_b
    :goto_5
    nop

    .line 82
    const/4 v5, 0x1

    .line 86
    :goto_6
    if-eqz v5, :cond_c

    .line 87
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    goto/16 :goto_2

    .line 89
    :cond_c
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 116
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "No server-sig-algs found, using PubkeyAcceptedAlgorithms = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 117
    invoke-interface {v5, v6, v8}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 122
    :cond_e
    invoke-direct {v1, v2, v3, v4, v7}, Lcom/jcraft/jsch/UserAuthPublicKey;->_start(Lcom/jcraft/jsch/Session;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    goto :goto_3

    return v5

    .line 44
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 44
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
