.class Lcz/msebera/android/httpclient/extras/Base64$Decoder;
.super Lcz/msebera/android/httpclient/extras/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/extras/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->DECODE:[I

    .line 204
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .line 241
    invoke-direct {p0}, Lcz/msebera/android/httpclient/extras/Base64$Coder;-><init>()V

    .line 242
    iput-object p2, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->output:[B

    .line 244
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    sget-object v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->DECODE:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->DECODE_WEBSAFE:[I

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->alphabet:[I

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 246
    iput v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->value:I

    .line 247
    return-void
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .line 254
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 16
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .line 264
    move-object/from16 v0, p0

    iget v1, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    return v2

    .line 266
    :cond_0
    move/from16 v1, p2

    .line 267
    .local v1, "p":I
    add-int v4, p3, p2

    .line 274
    .end local p3    # "len":I
    .local v4, "len":I
    iget v5, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 275
    .local v5, "state":I
    iget v6, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->value:I

    .line 276
    .local v6, "value":I
    const/4 v7, 0x0

    .line 277
    .local v7, "op":I
    iget-object v8, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->output:[B

    .line 278
    .local v8, "output":[B
    iget-object v9, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->alphabet:[I

    .line 280
    .local v9, "alphabet":[I
    :goto_0
    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v1, v4, :cond_11

    .line 295
    if-nez v5, :cond_2

    .line 296
    :goto_1
    add-int/lit8 v14, v1, 0x4

    if-gt v14, v4, :cond_1

    aget-byte v14, p1, v1

    and-int/lit16 v14, v14, 0xff

    aget v14, v9, v14

    shl-int/lit8 v14, v14, 0x12

    add-int/lit8 v15, v1, 0x1

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v9, v15

    shl-int/lit8 v15, v15, 0xc

    or-int/2addr v14, v15

    add-int/lit8 v15, v1, 0x2

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v9, v15

    shl-int/2addr v15, v3

    or-int/2addr v14, v15

    add-int/lit8 v15, v1, 0x3

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v9, v15

    or-int/2addr v14, v15

    move v6, v14

    if-ltz v14, :cond_1

    .line 301
    add-int/lit8 v14, v7, 0x2

    int-to-byte v15, v6

    aput-byte v15, v8, v14

    .line 302
    add-int/lit8 v14, v7, 0x1

    shr-int/lit8 v15, v6, 0x8

    int-to-byte v15, v15

    aput-byte v15, v8, v14

    .line 303
    shr-int/lit8 v14, v6, 0x10

    int-to-byte v14, v14

    aput-byte v14, v8, v7

    .line 304
    add-int/lit8 v7, v7, 0x3

    .line 305
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 307
    :cond_1
    if-lt v1, v4, :cond_2

    goto/16 :goto_3

    .line 315
    :cond_2
    add-int/lit8 v14, v1, 0x1

    .end local v1    # "p":I
    .local v14, "p":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v9, v1

    .line 317
    .local v1, "d":I
    const/4 v15, -0x1

    if-eqz v5, :cond_e

    if-eq v5, v13, :cond_c

    const/4 v13, -0x2

    if-eq v5, v12, :cond_9

    if-eq v5, v10, :cond_6

    if-eq v5, v11, :cond_4

    const/4 v10, 0x5

    if-eq v5, v10, :cond_3

    goto/16 :goto_2

    .line 385
    :cond_3
    if-eq v1, v15, :cond_10

    .line 386
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 387
    return v2

    .line 376
    :cond_4
    if-ne v1, v13, :cond_5

    .line 377
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 378
    :cond_5
    if-eq v1, v15, :cond_10

    .line 379
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 380
    return v2

    .line 354
    :cond_6
    if-ltz v1, :cond_7

    .line 356
    shl-int/lit8 v10, v6, 0x6

    or-int v6, v10, v1

    .line 357
    add-int/lit8 v10, v7, 0x2

    int-to-byte v11, v6

    aput-byte v11, v8, v10

    .line 358
    add-int/lit8 v10, v7, 0x1

    shr-int/lit8 v11, v6, 0x8

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    .line 359
    shr-int/lit8 v10, v6, 0x10

    int-to-byte v10, v10

    aput-byte v10, v8, v7

    .line 360
    add-int/lit8 v7, v7, 0x3

    .line 361
    const/4 v5, 0x0

    goto :goto_2

    .line 362
    :cond_7
    if-ne v1, v13, :cond_8

    .line 365
    add-int/lit8 v10, v7, 0x1

    shr-int/lit8 v11, v6, 0x2

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    .line 366
    shr-int/lit8 v10, v6, 0xa

    int-to-byte v10, v10

    aput-byte v10, v8, v7

    .line 367
    add-int/lit8 v7, v7, 0x2

    .line 368
    const/4 v5, 0x5

    goto :goto_2

    .line 369
    :cond_8
    if-eq v1, v15, :cond_10

    .line 370
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 371
    return v2

    .line 339
    :cond_9
    if-ltz v1, :cond_a

    .line 340
    shl-int/lit8 v10, v6, 0x6

    or-int v6, v10, v1

    .line 341
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 342
    :cond_a
    if-ne v1, v13, :cond_b

    .line 345
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "op":I
    .local v10, "op":I
    shr-int/lit8 v11, v6, 0x4

    int-to-byte v11, v11

    aput-byte v11, v8, v7

    .line 346
    const/4 v5, 0x4

    move v7, v10

    goto :goto_2

    .line 347
    .end local v10    # "op":I
    .restart local v7    # "op":I
    :cond_b
    if-eq v1, v15, :cond_10

    .line 348
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 349
    return v2

    .line 329
    :cond_c
    if-ltz v1, :cond_d

    .line 330
    shl-int/lit8 v10, v6, 0x6

    or-int v6, v10, v1

    .line 331
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 332
    :cond_d
    if-eq v1, v15, :cond_10

    .line 333
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 334
    return v2

    .line 319
    :cond_e
    if-ltz v1, :cond_f

    .line 320
    move v6, v1

    .line 321
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 322
    :cond_f
    if-eq v1, v15, :cond_10

    .line 323
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 324
    return v2

    .line 391
    .end local v1    # "d":I
    :cond_10
    :goto_2
    move v1, v14

    goto/16 :goto_0

    .line 393
    .end local v14    # "p":I
    .local v1, "p":I
    :cond_11
    :goto_3
    if-nez p4, :cond_12

    .line 396
    iput v5, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 397
    iput v6, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->value:I

    .line 398
    iput v7, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->op:I

    .line 399
    return v13

    .line 405
    :cond_12
    if-eq v5, v13, :cond_16

    if-eq v5, v12, :cond_15

    if-eq v5, v10, :cond_14

    if-eq v5, v11, :cond_13

    goto :goto_4

    .line 427
    :cond_13
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 428
    return v2

    .line 422
    :cond_14
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "op":I
    .local v2, "op":I
    shr-int/lit8 v3, v6, 0xa

    int-to-byte v3, v3

    aput-byte v3, v8, v7

    .line 423
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "op":I
    .restart local v7    # "op":I
    shr-int/lit8 v3, v6, 0x2

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    .line 424
    goto :goto_4

    .line 417
    :cond_15
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "op":I
    .restart local v2    # "op":I
    shr-int/lit8 v3, v6, 0x4

    int-to-byte v3, v3

    aput-byte v3, v8, v7

    .line 418
    move v7, v2

    .line 435
    .end local v2    # "op":I
    .restart local v7    # "op":I
    :goto_4
    iput v5, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 436
    iput v7, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->op:I

    .line 437
    return v13

    .line 412
    :cond_16
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 413
    return v2
.end method
