.class public Lcz/msebera/android/httpclient/impl/auth/DigestScheme;
.super Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;
.source "DigestScheme.java"


# static fields
.field private static final HEXADECIMAL:[C

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I = 0x0

.field private static final QOP_UNKNOWN:I = -0x1

.field private static final serialVersionUID:J = 0x35e669eae4be3904L


# instance fields
.field private a1:Ljava/lang/String;

.field private a2:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private lastNonce:Ljava/lang/String;

.field private nounceCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 125
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;-><init>(Ljava/nio/charset/Charset;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V
    .locals 0
    .param p1, "challengeState"    # Lcz/msebera/android/httpclient/auth/ChallengeState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;-><init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "credentialsCharset"    # Ljava/nio/charset/Charset;

    .line 107
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;-><init>(Ljava/nio/charset/Charset;)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->complete:Z

    .line 109
    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 3

    .line 477
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 478
    .local v0, "rnd":Ljava/security/SecureRandom;
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 479
    .local v1, "tmp":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 480
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createDigestHeader(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;
    .locals 36
    .param p1, "credentials"    # Lcz/msebera/android/httpclient/auth/Credentials;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 252
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string/jumbo v0, "uri"

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "uri":Ljava/lang/String;
    const-string v4, "realm"

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "realm":Ljava/lang/String;
    const-string v6, "nonce"

    invoke-virtual {v1, v6}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, "nonce":Ljava/lang/String;
    const-string v8, "opaque"

    invoke-virtual {v1, v8}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, "opaque":Ljava/lang/String;
    const-string v10, "methodname"

    invoke-virtual {v1, v10}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 257
    .local v10, "method":Ljava/lang/String;
    const-string v11, "algorithm"

    invoke-virtual {v1, v11}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 259
    .local v12, "algorithm":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 260
    const-string v12, "MD5"

    .line 263
    :cond_0
    new-instance v13, Ljava/util/HashSet;

    const/16 v14, 0x8

    invoke-direct {v13, v14}, Ljava/util/HashSet;-><init>(I)V

    .line 264
    .local v13, "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v14, -0x1

    .line 265
    .local v14, "qop":I
    const-string v15, "qop"

    move/from16 v16, v14

    .end local v14    # "qop":I
    .local v16, "qop":I
    invoke-virtual {v1, v15}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 266
    .local v14, "qoplist":Ljava/lang/String;
    move-object/from16 v17, v8

    const-string v8, "auth-int"

    move-object/from16 v18, v9

    .end local v9    # "opaque":Ljava/lang/String;
    .local v18, "opaque":Ljava/lang/String;
    const-string v9, "auth"

    if-eqz v14, :cond_4

    .line 267
    move-object/from16 v19, v11

    new-instance v11, Ljava/util/StringTokenizer;

    move-object/from16 v20, v15

    const-string v15, ","

    invoke-direct {v11, v14, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .local v11, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 269
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 270
    .local v15, "variant":Ljava/lang/String;
    move-object/from16 v21, v11

    .end local v11    # "tok":Ljava/util/StringTokenizer;
    .local v21, "tok":Ljava/util/StringTokenizer;
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v15, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v15    # "variant":Ljava/lang/String;
    move-object/from16 v11, v21

    goto :goto_0

    .line 272
    .end local v21    # "tok":Ljava/util/StringTokenizer;
    .restart local v11    # "tok":Ljava/util/StringTokenizer;
    :cond_1
    move-object/from16 v21, v11

    .end local v11    # "tok":Ljava/util/StringTokenizer;
    .restart local v21    # "tok":Ljava/util/StringTokenizer;
    instance-of v11, v2, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v11, :cond_2

    invoke-interface {v13, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 273
    const/4 v11, 0x1

    .end local v16    # "qop":I
    .local v11, "qop":I
    goto :goto_1

    .line 274
    .end local v11    # "qop":I
    .restart local v16    # "qop":I
    :cond_2
    invoke-interface {v13, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 275
    const/4 v11, 0x2

    .end local v16    # "qop":I
    .restart local v11    # "qop":I
    goto :goto_1

    .line 274
    .end local v11    # "qop":I
    .restart local v16    # "qop":I
    :cond_3
    move/from16 v11, v16

    .line 277
    .end local v16    # "qop":I
    .end local v21    # "tok":Ljava/util/StringTokenizer;
    .restart local v11    # "qop":I
    :goto_1
    goto :goto_2

    .line 278
    .end local v11    # "qop":I
    .restart local v16    # "qop":I
    :cond_4
    move-object/from16 v19, v11

    move-object/from16 v20, v15

    const/4 v11, 0x0

    .line 281
    .end local v16    # "qop":I
    .restart local v11    # "qop":I
    :goto_2
    const/4 v15, -0x1

    if-eq v11, v15, :cond_1b

    .line 285
    const-string v15, "charset"

    invoke-virtual {v1, v15}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 286
    .local v15, "charset":Ljava/lang/String;
    if-nez v15, :cond_5

    .line 287
    const-string v15, "ISO-8859-1"

    .line 290
    :cond_5
    move-object/from16 v16, v12

    .line 291
    .local v16, "digAlg":Ljava/lang/String;
    move-object/from16 v21, v8

    const-string v8, "MD5-sess"

    move-object/from16 v22, v14

    move-object/from16 v14, v16

    .end local v16    # "digAlg":Ljava/lang/String;
    .local v14, "digAlg":Ljava/lang/String;
    .local v22, "qoplist":Ljava/lang/String;
    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 292
    const-string v16, "MD5"

    move-object/from16 v14, v16

    .line 297
    :cond_6
    :try_start_0
    invoke-static {v14}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v16
    :try_end_0
    .catch Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v23, v16

    .line 300
    .local v23, "digester":Ljava/security/MessageDigest;
    nop

    .line 302
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v16

    move-object/from16 v24, v14

    .end local v14    # "digAlg":Ljava/lang/String;
    .local v24, "digAlg":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v14

    .line 303
    .local v14, "uname":Ljava/lang/String;
    move-object/from16 v16, v6

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, "pwd":Ljava/lang/String;
    move-object/from16 v25, v0

    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v26, v3

    .end local v3    # "uri":Ljava/lang/String;
    .local v26, "uri":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 306
    iget-wide v2, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    move-object/from16 v29, v9

    move-object/from16 v28, v10

    const-wide/16 v9, 0x1

    .end local v10    # "method":Ljava/lang/String;
    .local v28, "method":Ljava/lang/String;
    add-long/2addr v2, v9

    iput-wide v2, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    goto :goto_3

    .line 308
    .end local v28    # "method":Ljava/lang/String;
    .restart local v10    # "method":Ljava/lang/String;
    :cond_7
    move-object/from16 v29, v9

    move-object/from16 v28, v10

    const-wide/16 v9, 0x1

    .end local v10    # "method":Ljava/lang/String;
    .restart local v28    # "method":Ljava/lang/String;
    iput-wide v9, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    .line 309
    const/4 v0, 0x0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 310
    iput-object v7, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    .line 312
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 313
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Formatter;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v2, v9}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 314
    .local v3, "formatter":Ljava/util/Formatter;
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    move-object/from16 v27, v10

    iget-wide v9, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v27, v10

    const-string v9, "%08x"

    move-object/from16 v0, v27

    invoke-virtual {v3, v9, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 315
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 316
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 318
    .local v9, "nc":Ljava/lang/String;
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 319
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 322
    :cond_8
    const/4 v0, 0x0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 323
    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    .line 325
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v8, 0x3a

    if-eqz v0, :cond_9

    .line 331
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 332
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    move-object/from16 v8, v23

    .end local v23    # "digester":Ljava/security/MessageDigest;
    .local v8, "digester":Ljava/security/MessageDigest;
    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "checksum":Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 335
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v30, v0

    const/16 v0, 0x3a

    .end local v0    # "checksum":Ljava/lang/String;
    .local v30, "checksum":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 337
    .end local v30    # "checksum":Ljava/lang/String;
    goto :goto_4

    .line 339
    .end local v8    # "digester":Ljava/security/MessageDigest;
    .restart local v23    # "digester":Ljava/security/MessageDigest;
    :cond_9
    move-object/from16 v8, v23

    .end local v23    # "digester":Ljava/security/MessageDigest;
    .restart local v8    # "digester":Ljava/security/MessageDigest;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 340
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 344
    :goto_4
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    invoke-static {v0, v15}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v10

    .line 346
    .local v10, "hasha1":Ljava/lang/String;
    const/4 v0, 0x2

    if-ne v11, v0, :cond_a

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v3

    move-object/from16 v3, v28

    .end local v28    # "method":Ljava/lang/String;
    .local v3, "method":Ljava/lang/String;
    .local v30, "formatter":Ljava/util/Formatter;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v28, v6

    const/16 v6, 0x3a

    .end local v6    # "pwd":Ljava/lang/String;
    .local v28, "pwd":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, v26

    .end local v26    # "uri":Ljava/lang/String;
    .local v6, "uri":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    move/from16 v26, v11

    move-object/from16 v31, v13

    goto/16 :goto_9

    .line 349
    .end local v30    # "formatter":Ljava/util/Formatter;
    .local v3, "formatter":Ljava/util/Formatter;
    .local v6, "pwd":Ljava/lang/String;
    .restart local v26    # "uri":Ljava/lang/String;
    .local v28, "method":Ljava/lang/String;
    :cond_a
    move-object/from16 v30, v3

    move-object/from16 v3, v28

    move-object/from16 v28, v6

    move-object/from16 v6, v26

    .end local v26    # "uri":Ljava/lang/String;
    .local v3, "method":Ljava/lang/String;
    .local v6, "uri":Ljava/lang/String;
    .local v28, "pwd":Ljava/lang/String;
    .restart local v30    # "formatter":Ljava/util/Formatter;
    const/4 v0, 0x1

    if-ne v11, v0, :cond_f

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    move-object/from16 v31, v0

    move/from16 v26, v11

    move-object/from16 v11, p2

    .end local v0    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .end local v11    # "qop":I
    .local v26, "qop":I
    .local v31, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    instance-of v0, v11, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_b

    .line 353
    move-object v0, v11

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    move-object v11, v0

    .end local v31    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .restart local v0    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    goto :goto_5

    .line 352
    .end local v0    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .restart local v31    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    :cond_b
    move-object/from16 v11, v31

    .line 355
    .end local v31    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .local v11, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    :goto_5
    if-eqz v11, :cond_d

    invoke-interface {v11}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_d

    .line 357
    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 358
    const/16 v26, 0x2

    .line 359
    move-object/from16 v29, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v31, v13

    const/16 v13, 0x3a

    .end local v13    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v31, "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    move/from16 v11, v26

    goto :goto_7

    .line 361
    .end local v31    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string v4, "Qop auth-int cannot be used with a non-repeatable entity"

    invoke-direct {v0, v4}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_d
    move-object/from16 v31, v13

    .line 365
    .end local v13    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v31    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;

    invoke-direct {v0, v8}, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;-><init>(Ljava/security/MessageDigest;)V

    move-object v13, v0

    .line 367
    .local v13, "entityDigester":Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;
    if-eqz v11, :cond_e

    .line 368
    :try_start_1
    invoke-interface {v11, v13}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 371
    :catch_0
    move-exception v0

    move-object/from16 v32, v11

    goto :goto_8

    .line 370
    :cond_e
    :goto_6
    :try_start_2
    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 373
    nop

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v32, v11

    const/16 v11, 0x3a

    .end local v11    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .local v32, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->getDigest()[B

    move-result-object v11

    invoke-static {v11}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    move/from16 v11, v26

    .line 376
    .end local v13    # "entityDigester":Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;
    .end local v26    # "qop":I
    .end local v32    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .local v11, "qop":I
    :goto_7
    goto :goto_a

    .line 371
    .local v11, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .restart local v13    # "entityDigester":Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;
    .restart local v26    # "qop":I
    :catch_1
    move-exception v0

    move-object/from16 v32, v11

    .line 372
    .end local v11    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v32    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    :goto_8
    new-instance v4, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string v11, "I/O error reading entity content"

    invoke-direct {v4, v11, v0}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 377
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v26    # "qop":I
    .end local v31    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v32    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .local v11, "qop":I
    .local v13, "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    move/from16 v26, v11

    move-object/from16 v31, v13

    .end local v11    # "qop":I
    .end local v13    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26    # "qop":I
    .restart local v31    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v11, 0x3a

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    .line 380
    .end local v26    # "qop":I
    .end local v31    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "qop":I
    .restart local v13    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_9
    move/from16 v11, v26

    .end local v13    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v31    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_a
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    invoke-static {v0, v15}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "hasha2":Ljava/lang/String;
    if-nez v11, :cond_10

    .line 386
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 387
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v32, v3

    const/16 v3, 0x3a

    .end local v3    # "method":Ljava/lang/String;
    .local v32, "method":Ljava/lang/String;
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "digestValue":Ljava/lang/String;
    goto :goto_c

    .line 390
    .end local v32    # "method":Ljava/lang/String;
    .local v3, "method":Ljava/lang/String;
    :cond_10
    move-object/from16 v32, v3

    const/16 v3, 0x3a

    .end local v3    # "method":Ljava/lang/String;
    .restart local v32    # "method":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 391
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v3, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 392
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v13, 0x3a

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v13, 0x1

    if-ne v11, v13, :cond_11

    move-object/from16 v13, v21

    goto :goto_b

    :cond_11
    move-object/from16 v13, v29

    :goto_b
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 393
    const/16 v13, 0x3a

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "digestValue":Ljava/lang/String;
    :goto_c
    invoke-static {v3}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v13

    invoke-static {v13}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v13

    .line 399
    .local v13, "digest":Ljava/lang/String;
    move-object/from16 v26, v0

    .end local v0    # "hasha2":Ljava/lang/String;
    .local v26, "hasha2":Ljava/lang/String;
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-object/from16 v27, v2

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .local v27, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x80

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 400
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 401
    const-string v2, "Proxy-Authorization"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_d

    .line 403
    :cond_12
    const-string v2, "Authorization"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 405
    :goto_d
    const-string v2, ": Digest "

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 407
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v33, v3

    .end local v3    # "digestValue":Ljava/lang/String;
    .local v33, "digestValue":Ljava/lang/String;
    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/message/BasicNameValuePair;>;"
    new-instance v3, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    move-object/from16 v34, v8

    .end local v8    # "digester":Ljava/security/MessageDigest;
    .local v34, "digester":Ljava/security/MessageDigest;
    const-string/jumbo v8, "username"

    invoke-direct {v3, v8, v14}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v3, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v3, v4, v5}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v3, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    move-object/from16 v4, v16

    invoke-direct {v3, v4, v7}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v3, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    move-object/from16 v4, v25

    invoke-direct {v3, v4, v6}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v3, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v4, "response"

    invoke-direct {v3, v4, v13}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    const-string v3, "nc"

    if-eqz v11, :cond_14

    .line 415
    new-instance v4, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const/4 v8, 0x1

    if-ne v11, v8, :cond_13

    move-object/from16 v8, v21

    goto :goto_e

    :cond_13
    move-object/from16 v8, v29

    :goto_e
    move-object/from16 v16, v5

    move-object/from16 v5, v20

    .end local v5    # "realm":Ljava/lang/String;
    .local v16, "realm":Ljava/lang/String;
    invoke-direct {v4, v5, v8}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v4, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v4, v3, v9}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v4, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    iget-object v8, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    const-string v1, "cnonce"

    invoke-direct {v4, v1, v8}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 414
    .end local v16    # "realm":Ljava/lang/String;
    .restart local v5    # "realm":Ljava/lang/String;
    :cond_14
    move-object/from16 v16, v5

    move-object/from16 v5, v20

    .line 420
    .end local v5    # "realm":Ljava/lang/String;
    .restart local v16    # "realm":Ljava/lang/String;
    :goto_f
    new-instance v1, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    move-object/from16 v4, v19

    invoke-direct {v1, v4, v12}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    if-eqz v18, :cond_15

    .line 422
    new-instance v1, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    move-object/from16 v8, v18

    move-object/from16 v35, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v35

    .end local v6    # "uri":Ljava/lang/String;
    .end local v18    # "opaque":Ljava/lang/String;
    .local v8, "opaque":Ljava/lang/String;
    .local v17, "uri":Ljava/lang/String;
    invoke-direct {v1, v6, v8}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 421
    .end local v8    # "opaque":Ljava/lang/String;
    .end local v17    # "uri":Ljava/lang/String;
    .restart local v6    # "uri":Ljava/lang/String;
    .restart local v18    # "opaque":Ljava/lang/String;
    :cond_15
    move-object/from16 v17, v6

    move-object/from16 v8, v18

    .line 425
    .end local v6    # "uri":Ljava/lang/String;
    .end local v18    # "opaque":Ljava/lang/String;
    .restart local v8    # "opaque":Ljava/lang/String;
    .restart local v17    # "uri":Ljava/lang/String;
    :goto_10
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1a

    .line 426
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    .line 427
    .local v6, "param":Lcz/msebera/android/httpclient/message/BasicNameValuePair;
    if-lez v1, :cond_16

    .line 428
    move-object/from16 v18, v2

    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/message/BasicNameValuePair;>;"
    .local v18, "params":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/message/BasicNameValuePair;>;"
    const-string v2, ", "

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_12

    .line 427
    .end local v18    # "params":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/message/BasicNameValuePair;>;"
    .restart local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/message/BasicNameValuePair;>;"
    :cond_16
    move-object/from16 v18, v2

    .line 430
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/message/BasicNameValuePair;>;"
    .restart local v18    # "params":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/message/BasicNameValuePair;>;"
    :goto_12
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_18

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_18

    .line 432
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    goto :goto_13

    :cond_17
    const/16 v19, 0x0

    goto :goto_14

    :cond_18
    :goto_13
    const/16 v19, 0x1

    .line 433
    .local v19, "noQuotes":Z
    :goto_14
    move-object/from16 v20, v2

    .end local v2    # "name":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    sget-object v2, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    move-object/from16 v21, v3

    if-nez v19, :cond_19

    const/4 v3, 0x1

    goto :goto_15

    :cond_19
    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v2, v0, v6, v3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 425
    .end local v6    # "param":Lcz/msebera/android/httpclient/message/BasicNameValuePair;
    .end local v19    # "noQuotes":Z
    .end local v20    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    goto :goto_11

    .line 435
    .end local v1    # "i":I
    .end local v18    # "params":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/message/BasicNameValuePair;>;"
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/message/BasicNameValuePair;>;"
    :cond_1a
    new-instance v1, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-object v1

    .line 298
    .end local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/message/BasicNameValuePair;>;"
    .end local v8    # "opaque":Ljava/lang/String;
    .end local v9    # "nc":Ljava/lang/String;
    .end local v16    # "realm":Ljava/lang/String;
    .end local v17    # "uri":Ljava/lang/String;
    .end local v24    # "digAlg":Ljava/lang/String;
    .end local v26    # "hasha2":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    .end local v28    # "pwd":Ljava/lang/String;
    .end local v30    # "formatter":Ljava/util/Formatter;
    .end local v31    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v32    # "method":Ljava/lang/String;
    .end local v33    # "digestValue":Ljava/lang/String;
    .end local v34    # "digester":Ljava/security/MessageDigest;
    .local v3, "uri":Ljava/lang/String;
    .restart local v5    # "realm":Ljava/lang/String;
    .local v10, "method":Ljava/lang/String;
    .local v13, "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v14, "digAlg":Ljava/lang/String;
    .local v18, "opaque":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v16, v5

    move-object/from16 v32, v10

    move/from16 v26, v11

    move-object/from16 v31, v13

    move-object/from16 v24, v14

    move-object/from16 v8, v18

    move-object v1, v0

    .end local v3    # "uri":Ljava/lang/String;
    .end local v5    # "realm":Ljava/lang/String;
    .end local v10    # "method":Ljava/lang/String;
    .end local v11    # "qop":I
    .end local v13    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "digAlg":Ljava/lang/String;
    .end local v18    # "opaque":Ljava/lang/String;
    .restart local v8    # "opaque":Ljava/lang/String;
    .restart local v16    # "realm":Ljava/lang/String;
    .restart local v17    # "uri":Ljava/lang/String;
    .restart local v24    # "digAlg":Ljava/lang/String;
    .local v26, "qop":I
    .restart local v31    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v32    # "method":Ljava/lang/String;
    move-object v0, v1

    .line 299
    .local v0, "ex":Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;
    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsuppported digest algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v14, v24

    .end local v24    # "digAlg":Ljava/lang/String;
    .restart local v14    # "digAlg":Ljava/lang/String;
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    .end local v0    # "ex":Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;
    .end local v8    # "opaque":Ljava/lang/String;
    .end local v15    # "charset":Ljava/lang/String;
    .end local v16    # "realm":Ljava/lang/String;
    .end local v17    # "uri":Ljava/lang/String;
    .end local v22    # "qoplist":Ljava/lang/String;
    .end local v26    # "qop":I
    .end local v31    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v32    # "method":Ljava/lang/String;
    .restart local v3    # "uri":Ljava/lang/String;
    .restart local v5    # "realm":Ljava/lang/String;
    .restart local v10    # "method":Ljava/lang/String;
    .restart local v11    # "qop":I
    .restart local v13    # "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v14, "qoplist":Ljava/lang/String;
    .restart local v18    # "opaque":Ljava/lang/String;
    :cond_1b
    move-object/from16 v22, v14

    .end local v14    # "qoplist":Ljava/lang/String;
    .restart local v22    # "qoplist":Ljava/lang/String;
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None of the qop methods is supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v22

    .end local v22    # "qoplist":Ljava/lang/String;
    .local v2, "qoplist":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "digAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;
        }
    .end annotation

    .line 234
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static encode([B)Ljava/lang/String;
    .locals 8
    .param p0, "binaryData"    # [B

    .line 458
    array-length v0, p0

    .line 459
    .local v0, "n":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    .line 460
    .local v1, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 461
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    .line 462
    .local v3, "low":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 463
    .local v4, "high":I
    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v7, v6, v4

    aput-char v7, v1, v5

    .line 464
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v6, v6, v3

    aput-char v6, v1, v5

    .line 460
    .end local v3    # "low":I
    .end local v4    # "high":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method public authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;
    .locals 1
    .param p1, "credentials"    # Lcz/msebera/android/httpclient/auth/Credentials;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;
    .locals 4
    .param p1, "credentials"    # Lcz/msebera/android/httpclient/auth/Credentials;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 213
    const-string v0, "Credentials"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 218
    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "methodname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "charset":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getCredentialsCharset(Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->createDigestHeader(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0

    .line 219
    .end local v1    # "charset":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string v1, "missing nonce in challenge"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string v1, "missing realm in challenge"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getA1()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    return-object v0
.end method

.method getA2()Ljava/lang/String;
    .locals 1

    .line 447
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    return-object v0
.end method

.method getCnonce()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .line 165
    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .line 154
    const-string v0, "stale"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->complete:Z

    :goto_0
    return v1
.end method

.method public isConnectionBased()Z
    .locals 1

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public processChallenge(Lcz/msebera/android/httpclient/Header;)V
    .locals 2
    .param p1, "header"    # Lcz/msebera/android/httpclient/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 139
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->processChallenge(Lcz/msebera/android/httpclient/Header;)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->complete:Z

    .line 141
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    return-void

    .line 142
    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string v1, "Authentication challenge is empty"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "DIGEST [complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->complete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 487
    const-string v2, ", nonce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 488
    const-string v2, ", nc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 489
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
