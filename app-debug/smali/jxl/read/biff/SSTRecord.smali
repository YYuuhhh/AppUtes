.class Ljxl/read/biff/SSTRecord;
.super Ljxl/biff/RecordData;
.source "SSTRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/SSTRecord$BooleanHolder;,
        Ljxl/read/biff/SSTRecord$ByteArrayHolder;
    }
.end annotation


# instance fields
.field private continuationBreaks:[I

.field private strings:[Ljava/lang/String;

.field private totalStrings:I

.field private uniqueStrings:I


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;[Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V
    .locals 8
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "continuations"    # [Ljxl/read/biff/Record;
    .param p3, "ws"    # Ljxl/WorkbookSettings;

    .line 82
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "totalRecordLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 92
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljxl/read/biff/Record;->getLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljxl/read/biff/SSTRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    new-array v1, v0, [B

    .line 99
    .local v1, "data":[B
    const/4 v2, 0x0

    .line 100
    .local v2, "pos":I
    invoke-virtual {p0}, Ljxl/read/biff/SSTRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v3

    invoke-virtual {p0}, Ljxl/read/biff/SSTRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/read/biff/Record;->getLength()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    invoke-virtual {p0}, Ljxl/read/biff/SSTRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/read/biff/Record;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 105
    array-length v3, p2

    new-array v3, v3, [I

    iput-object v3, p0, Ljxl/read/biff/SSTRecord;->continuationBreaks:[I

    .line 106
    const/4 v3, 0x0

    .line 107
    .local v3, "r":Ljxl/read/biff/Record;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, p2

    if-ge v4, v6, :cond_1

    .line 109
    aget-object v3, p2, v4

    .line 110
    invoke-virtual {v3}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v6

    invoke-virtual {v3}, Ljxl/read/biff/Record;->getLength()I

    move-result v7

    invoke-static {v6, v5, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object v6, p0, Ljxl/read/biff/SSTRecord;->continuationBreaks:[I

    aput v2, v6, v4

    .line 114
    invoke-virtual {v3}, Ljxl/read/biff/Record;->getLength()I

    move-result v6

    add-int/2addr v2, v6

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 117
    .end local v4    # "i":I
    :cond_1
    aget-byte v4, v1, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    const/4 v7, 0x3

    aget-byte v7, v1, v7

    invoke-static {v4, v5, v6, v7}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v4

    iput v4, p0, Ljxl/read/biff/SSTRecord;->totalStrings:I

    .line 119
    const/4 v4, 0x4

    aget-byte v4, v1, v4

    const/4 v5, 0x5

    aget-byte v5, v1, v5

    const/4 v6, 0x6

    aget-byte v6, v1, v6

    const/4 v7, 0x7

    aget-byte v7, v1, v7

    invoke-static {v4, v5, v6, v7}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v4

    iput v4, p0, Ljxl/read/biff/SSTRecord;->uniqueStrings:I

    .line 122
    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Ljxl/read/biff/SSTRecord;->strings:[Ljava/lang/String;

    .line 123
    const/16 v4, 0x8

    invoke-direct {p0, v1, v4, p3}, Ljxl/read/biff/SSTRecord;->readStrings([BILjxl/WorkbookSettings;)V

    .line 124
    return-void
.end method

.method private getChars([BLjxl/read/biff/SSTRecord$ByteArrayHolder;ILjxl/read/biff/SSTRecord$BooleanHolder;I)I
    .locals 18
    .param p1, "source"    # [B
    .param p2, "bah"    # Ljxl/read/biff/SSTRecord$ByteArrayHolder;
    .param p3, "pos"    # I
    .param p4, "ascii"    # Ljxl/read/biff/SSTRecord$BooleanHolder;
    .param p5, "numChars"    # I

    .line 230
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    const/4 v0, 0x0

    .line 231
    .local v0, "i":I
    const/4 v1, 0x0

    .line 233
    .local v1, "spansBreak":Z
    iget-boolean v2, v11, Ljxl/read/biff/SSTRecord$BooleanHolder;->value:Z

    if-eqz v2, :cond_0

    .line 235
    new-array v2, v12, [B

    iput-object v2, v9, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    goto :goto_0

    .line 239
    :cond_0
    mul-int/lit8 v2, v12, 0x2

    new-array v2, v2, [B

    iput-object v2, v9, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    .line 242
    :goto_0
    move v13, v0

    move v14, v1

    .end local v0    # "i":I
    .end local v1    # "spansBreak":Z
    .local v13, "i":I
    .local v14, "spansBreak":Z
    :cond_1
    :goto_1
    iget-object v0, v7, Ljxl/read/biff/SSTRecord;->continuationBreaks:[I

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v13, v1, :cond_3

    if-nez v14, :cond_3

    .line 244
    aget v0, v0, v13

    if-gt v10, v0, :cond_2

    iget-object v0, v9, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    array-length v0, v0

    add-int/2addr v0, v10

    iget-object v1, v7, Ljxl/read/biff/SSTRecord;->continuationBreaks:[I

    aget v1, v1, v13

    if-le v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    move v14, v2

    .line 247
    if-nez v14, :cond_1

    .line 249
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 255
    :cond_3
    if-nez v14, :cond_4

    .line 257
    iget-object v0, v9, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    iget-object v1, v9, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    array-length v1, v1

    invoke-static {v8, v10, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v0, v9, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    array-length v0, v0

    return v0

    .line 262
    :cond_4
    aget v15, v0, v13

    .line 263
    .local v15, "breakpos":I
    iget-object v0, v9, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    sub-int v1, v15, v10

    invoke-static {v8, v10, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    sub-int v16, v15, v10

    .line 267
    .local v16, "bytesRead":I
    iget-boolean v0, v11, Ljxl/read/biff/SSTRecord$BooleanHolder;->value:Z

    if-eqz v0, :cond_5

    .line 269
    move/from16 v0, v16

    move/from16 v17, v0

    .local v0, "charsRead":I
    goto :goto_2

    .line 273
    .end local v0    # "charsRead":I
    :cond_5
    div-int/lit8 v0, v16, 0x2

    move/from16 v17, v0

    .line 276
    .local v17, "charsRead":I
    :goto_2
    sub-int v6, v12, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v16

    move v4, v13

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/SSTRecord;->getContinuedString([BLjxl/read/biff/SSTRecord$ByteArrayHolder;IILjxl/read/biff/SSTRecord$BooleanHolder;I)I

    move-result v0

    add-int v16, v16, v0

    .line 282
    return v16
.end method

.method private getContinuedString([BLjxl/read/biff/SSTRecord$ByteArrayHolder;IILjxl/read/biff/SSTRecord$BooleanHolder;I)I
    .locals 9
    .param p1, "source"    # [B
    .param p2, "bah"    # Ljxl/read/biff/SSTRecord$ByteArrayHolder;
    .param p3, "destPos"    # I
    .param p4, "contBreakIndex"    # I
    .param p5, "ascii"    # Ljxl/read/biff/SSTRecord$BooleanHolder;
    .param p6, "charsLeft"    # I

    .line 303
    iget-object v0, p0, Ljxl/read/biff/SSTRecord;->continuationBreaks:[I

    aget v0, v0, p4

    .line 304
    .local v0, "breakpos":I
    const/4 v1, 0x0

    .line 306
    .local v1, "bytesRead":I
    :cond_0
    :goto_0
    if-lez p6, :cond_b

    .line 308
    iget-object v2, p0, Ljxl/read/biff/SSTRecord;->continuationBreaks:[I

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p4, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v5, "continuation break index"

    invoke-static {v2, v5}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    .line 311
    iget-boolean v2, p5, Ljxl/read/biff/SSTRecord$BooleanHolder;->value:Z

    if-eqz v2, :cond_3

    aget-byte v2, p1, v0

    if-nez v2, :cond_3

    .line 315
    iget-object v2, p0, Ljxl/read/biff/SSTRecord;->continuationBreaks:[I

    array-length v3, v2

    sub-int/2addr v3, v4

    if-ne p4, v3, :cond_2

    move v2, p6

    goto :goto_2

    :cond_2
    add-int/lit8 v3, p4, 0x1

    aget v2, v2, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    invoke-static {p6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 321
    .local v2, "length":I
    :goto_2
    add-int/lit8 v3, v0, 0x1

    iget-object v5, p2, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    invoke-static {p1, v3, v5, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    add-int/2addr p3, v2

    .line 327
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v3

    .line 328
    sub-int/2addr p6, v2

    .line 329
    iput-boolean v4, p5, Ljxl/read/biff/SSTRecord$BooleanHolder;->value:Z

    .line 330
    .end local v2    # "length":I
    goto/16 :goto_8

    .line 331
    :cond_3
    iget-boolean v2, p5, Ljxl/read/biff/SSTRecord$BooleanHolder;->value:Z

    if-nez v2, :cond_5

    aget-byte v2, p1, v0

    if-eqz v2, :cond_5

    .line 335
    iget-object v2, p0, Ljxl/read/biff/SSTRecord;->continuationBreaks:[I

    array-length v5, v2

    sub-int/2addr v5, v4

    if-ne p4, v5, :cond_4

    mul-int/lit8 v2, p6, 0x2

    goto :goto_3

    :cond_4
    mul-int/lit8 v5, p6, 0x2

    add-int/lit8 v6, p4, 0x1

    aget v2, v2, v6

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 342
    .restart local v2    # "length":I
    :goto_3
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p2, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    invoke-static {p1, v4, v5, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    add-int/2addr p3, v2

    .line 349
    add-int/lit8 v4, v2, 0x1

    add-int/2addr v1, v4

    .line 350
    div-int/lit8 v4, v2, 0x2

    sub-int/2addr p6, v4

    .line 351
    iput-boolean v3, p5, Ljxl/read/biff/SSTRecord$BooleanHolder;->value:Z

    .line 352
    .end local v2    # "length":I
    goto/16 :goto_8

    .line 353
    :cond_5
    iget-boolean v2, p5, Ljxl/read/biff/SSTRecord$BooleanHolder;->value:Z

    if-nez v2, :cond_8

    aget-byte v2, p1, v0

    if-nez v2, :cond_8

    .line 357
    iget-object v2, p0, Ljxl/read/biff/SSTRecord;->continuationBreaks:[I

    array-length v5, v2

    sub-int/2addr v5, v4

    if-ne p4, v5, :cond_6

    move v2, p6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, p4, 0x1

    aget v2, v2, v5

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    invoke-static {p6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 363
    .local v2, "chars":I
    :goto_4
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    if-ge v5, v2, :cond_7

    .line 365
    iget-object v6, p2, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    add-int v7, v0, v5

    add-int/2addr v7, v4

    aget-byte v7, p1, v7

    aput-byte v7, v6, p3

    .line 366
    add-int/lit8 p3, p3, 0x2

    .line 363
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 369
    .end local v5    # "j":I
    :cond_7
    add-int/lit8 v4, v2, 0x1

    add-int/2addr v1, v4

    .line 370
    sub-int/2addr p6, v2

    .line 371
    iput-boolean v3, p5, Ljxl/read/biff/SSTRecord$BooleanHolder;->value:Z

    .line 372
    .end local v2    # "chars":I
    goto :goto_8

    .line 380
    :cond_8
    iget-object v2, p2, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    .line 381
    .local v2, "oldBytes":[B
    mul-int/lit8 v5, p3, 0x2

    mul-int/lit8 v6, p6, 0x2

    add-int/2addr v5, v6

    new-array v5, v5, [B

    iput-object v5, p2, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    .line 382
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_6
    if-ge v5, p3, :cond_9

    .line 384
    iget-object v6, p2, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    mul-int/lit8 v7, v5, 0x2

    aget-byte v8, v2, v5

    aput-byte v8, v6, v7

    .line 382
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 387
    .end local v5    # "j":I
    :cond_9
    mul-int/lit8 p3, p3, 0x2

    .line 389
    iget-object v5, p0, Ljxl/read/biff/SSTRecord;->continuationBreaks:[I

    array-length v6, v5

    sub-int/2addr v6, v4

    if-ne p4, v6, :cond_a

    mul-int/lit8 v4, p6, 0x2

    goto :goto_7

    :cond_a
    mul-int/lit8 v6, p6, 0x2

    add-int/lit8 v7, p4, 0x1

    aget v5, v5, v7

    sub-int/2addr v5, v0

    sub-int/2addr v5, v4

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 395
    .local v4, "length":I
    :goto_7
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p2, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    invoke-static {p1, v5, v6, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    add-int/2addr p3, v4

    .line 402
    add-int/lit8 v5, v4, 0x1

    add-int/2addr v1, v5

    .line 403
    div-int/lit8 v5, v4, 0x2

    sub-int/2addr p6, v5

    .line 404
    iput-boolean v3, p5, Ljxl/read/biff/SSTRecord$BooleanHolder;->value:Z

    .line 407
    .end local v2    # "oldBytes":[B
    .end local v4    # "length":I
    :goto_8
    add-int/lit8 p4, p4, 0x1

    .line 409
    iget-object v2, p0, Ljxl/read/biff/SSTRecord;->continuationBreaks:[I

    array-length v3, v2

    if-ge p4, v3, :cond_0

    .line 411
    aget v0, v2, p4

    goto/16 :goto_0

    .line 415
    :cond_b
    return v1
.end method

.method private readStrings([BILjxl/WorkbookSettings;)V
    .locals 21
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "ws"    # Ljxl/WorkbookSettings;

    .line 135
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    .line 138
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 139
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .line 140
    .local v2, "asciiEncoding":Z
    const/4 v3, 0x0

    .line 141
    .local v3, "richString":Z
    const/4 v4, 0x0

    .line 142
    .local v4, "extendedString":Z
    const/4 v5, 0x0

    .line 143
    .local v5, "formattingRuns":I
    const/4 v8, 0x0

    .line 145
    .local v8, "extendedRunLength":I
    const/4 v9, 0x0

    move/from16 v20, v8

    move-object v8, v1

    move/from16 v1, v20

    .local v1, "extendedRunLength":I
    .local v8, "s":Ljava/lang/String;
    .local v9, "i":I
    :goto_0
    iget v10, v6, Ljxl/read/biff/SSTRecord;->uniqueStrings:I

    if-ge v9, v10, :cond_9

    .line 148
    aget-byte v10, v7, v0

    add-int/lit8 v11, v0, 0x1

    aget-byte v11, v7, v11

    invoke-static {v10, v11}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v10

    .line 149
    .local v10, "numChars":I
    add-int/lit8 v0, v0, 0x2

    .line 150
    aget-byte v11, v7, v0

    .line 151
    .local v11, "optionFlags":B
    const/4 v12, 0x1

    add-int/2addr v0, v12

    .line 154
    and-int/lit8 v13, v11, 0x4

    if-eqz v13, :cond_0

    move v13, v12

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    .line 157
    .end local v4    # "extendedString":Z
    .local v13, "extendedString":Z
    :goto_1
    and-int/lit8 v4, v11, 0x8

    if-eqz v4, :cond_1

    move v4, v12

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    move v15, v4

    .line 159
    .end local v3    # "richString":Z
    .local v15, "richString":Z
    if-eqz v15, :cond_2

    .line 162
    aget-byte v3, v7, v0

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v7, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    .line 163
    .end local v5    # "formattingRuns":I
    .local v3, "formattingRuns":I
    add-int/lit8 v0, v0, 0x2

    move/from16 v16, v3

    goto :goto_3

    .line 159
    .end local v3    # "formattingRuns":I
    .restart local v5    # "formattingRuns":I
    :cond_2
    move/from16 v16, v5

    .line 166
    .end local v5    # "formattingRuns":I
    .local v16, "formattingRuns":I
    :goto_3
    if-eqz v13, :cond_3

    .line 169
    aget-byte v3, v7, v0

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v7, v4

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, v7, v5

    add-int/lit8 v17, v0, 0x3

    aget-byte v12, v7, v17

    invoke-static {v3, v4, v5, v12}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v1

    .line 171
    add-int/lit8 v0, v0, 0x4

    move v12, v0

    move/from16 v17, v1

    goto :goto_4

    .line 166
    :cond_3
    move v12, v0

    move/from16 v17, v1

    .line 175
    .end local v0    # "pos":I
    .end local v1    # "extendedRunLength":I
    .local v12, "pos":I
    .local v17, "extendedRunLength":I
    :goto_4
    and-int/lit8 v0, v11, 0x1

    if-nez v0, :cond_4

    const/16 v18, 0x1

    goto :goto_5

    :cond_4
    const/16 v18, 0x0

    :goto_5
    move/from16 v5, v18

    .line 177
    .end local v2    # "asciiEncoding":Z
    .local v5, "asciiEncoding":Z
    new-instance v0, Ljxl/read/biff/SSTRecord$ByteArrayHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/SSTRecord$ByteArrayHolder;-><init>(Ljxl/read/biff/SSTRecord$1;)V

    move-object v4, v0

    .line 178
    .local v4, "bah":Ljxl/read/biff/SSTRecord$ByteArrayHolder;
    new-instance v0, Ljxl/read/biff/SSTRecord$BooleanHolder;

    invoke-direct {v0, v1}, Ljxl/read/biff/SSTRecord$BooleanHolder;-><init>(Ljxl/read/biff/SSTRecord$1;)V

    move-object v3, v0

    .line 179
    .local v3, "bh":Ljxl/read/biff/SSTRecord$BooleanHolder;
    iput-boolean v5, v3, Ljxl/read/biff/SSTRecord$BooleanHolder;->value:Z

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v18, v3

    .end local v3    # "bh":Ljxl/read/biff/SSTRecord$BooleanHolder;
    .local v18, "bh":Ljxl/read/biff/SSTRecord$BooleanHolder;
    move v3, v12

    move-object v14, v4

    .end local v4    # "bah":Ljxl/read/biff/SSTRecord$ByteArrayHolder;
    .local v14, "bah":Ljxl/read/biff/SSTRecord$ByteArrayHolder;
    move-object/from16 v4, v18

    move/from16 v19, v5

    .end local v5    # "asciiEncoding":Z
    .local v19, "asciiEncoding":Z
    move v5, v10

    invoke-direct/range {v0 .. v5}, Ljxl/read/biff/SSTRecord;->getChars([BLjxl/read/biff/SSTRecord$ByteArrayHolder;ILjxl/read/biff/SSTRecord$BooleanHolder;I)I

    move-result v0

    add-int/2addr v12, v0

    .line 181
    move-object/from16 v0, v18

    .end local v18    # "bh":Ljxl/read/biff/SSTRecord$BooleanHolder;
    .local v0, "bh":Ljxl/read/biff/SSTRecord$BooleanHolder;
    iget-boolean v2, v0, Ljxl/read/biff/SSTRecord$BooleanHolder;->value:Z

    .line 183
    .end local v19    # "asciiEncoding":Z
    .restart local v2    # "asciiEncoding":Z
    if-eqz v2, :cond_5

    .line 185
    iget-object v1, v14, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    move-object/from16 v3, p3

    const/4 v4, 0x0

    invoke-static {v1, v10, v4, v3}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .end local v8    # "s":Ljava/lang/String;
    .local v1, "s":Ljava/lang/String;
    goto :goto_6

    .line 189
    .end local v1    # "s":Ljava/lang/String;
    .restart local v8    # "s":Ljava/lang/String;
    :cond_5
    move-object/from16 v3, p3

    const/4 v4, 0x0

    iget-object v1, v14, Ljxl/read/biff/SSTRecord$ByteArrayHolder;->bytes:[B

    invoke-static {v1, v10, v4}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 192
    :goto_6
    iget-object v1, v6, Ljxl/read/biff/SSTRecord;->strings:[Ljava/lang/String;

    aput-object v8, v1, v9

    .line 195
    if-eqz v15, :cond_6

    .line 197
    mul-int/lit8 v1, v16, 0x4

    add-int/2addr v12, v1

    .line 201
    :cond_6
    if-eqz v13, :cond_7

    .line 203
    add-int v12, v12, v17

    .line 206
    :cond_7
    array-length v1, v7

    if-le v12, v1, :cond_8

    .line 208
    const-string v1, "pos exceeds record length"

    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    .line 145
    .end local v0    # "bh":Ljxl/read/biff/SSTRecord$BooleanHolder;
    .end local v14    # "bah":Ljxl/read/biff/SSTRecord$ByteArrayHolder;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    move v0, v12

    move v4, v13

    move v3, v15

    move/from16 v5, v16

    move/from16 v1, v17

    goto/16 :goto_0

    .line 211
    .end local v9    # "i":I
    .end local v10    # "numChars":I
    .end local v11    # "optionFlags":B
    .end local v12    # "pos":I
    .end local v13    # "extendedString":Z
    .end local v15    # "richString":Z
    .end local v16    # "formattingRuns":I
    .end local v17    # "extendedRunLength":I
    .local v0, "pos":I
    .local v1, "extendedRunLength":I
    .local v3, "richString":Z
    .local v4, "extendedString":Z
    .local v5, "formattingRuns":I
    :cond_9
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 426
    iget v0, p0, Ljxl/read/biff/SSTRecord;->uniqueStrings:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 427
    iget-object v0, p0, Ljxl/read/biff/SSTRecord;->strings:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
