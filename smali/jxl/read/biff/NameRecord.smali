.class public Ljxl/read/biff/NameRecord;
.super Ljxl/biff/RecordData;
.source "NameRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/NameRecord$NameRange;,
        Ljxl/read/biff/NameRecord$Biff7;
    }
.end annotation


# static fields
.field private static final areaReference:I = 0x3b

.field public static biff7:Ljxl/read/biff/NameRecord$Biff7; = null

.field private static final builtIn:I = 0x20

.field private static final cellReference:I = 0x3a

.field private static final commandMacro:I = 0xc

.field private static logger:Ljxl/common/Logger; = null

.field private static final subExpression:I = 0x29

.field private static final union:I = 0x10


# instance fields
.field private builtInName:Ljxl/biff/BuiltInName;

.field private index:I

.field private isbiff8:Z

.field private name:Ljava/lang/String;

.field private ranges:Ljava/util/ArrayList;

.field private sheetRef:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-class v0, Ljxl/read/biff/NameRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/NameRecord;->logger:Ljxl/common/Logger;

    .line 74
    new-instance v0, Ljxl/read/biff/NameRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/NameRecord$Biff7;-><init>(Ljxl/read/biff/NameRecord$1;)V

    sput-object v0, Ljxl/read/biff/NameRecord;->biff7:Ljxl/read/biff/NameRecord$Biff7;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;I)V
    .locals 22
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "ws"    # Ljxl/WorkbookSettings;
    .param p3, "ind"    # I

    .line 199
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 63
    const/4 v0, 0x0

    iput v0, v8, Ljxl/read/biff/NameRecord;->sheetRef:I

    .line 200
    move/from16 v9, p3

    iput v9, v8, Ljxl/read/biff/NameRecord;->index:I

    .line 201
    const/4 v10, 0x1

    iput-boolean v10, v8, Ljxl/read/biff/NameRecord;->isbiff8:Z

    .line 205
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    .line 207
    invoke-virtual/range {p0 .. p0}, Ljxl/read/biff/NameRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v1

    move-object v11, v1

    .line 208
    .local v11, "data":[B
    aget-byte v1, v11, v0

    aget-byte v2, v11, v10

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    move v12, v1

    .line 209
    .local v12, "option":I
    const/4 v1, 0x3

    aget-byte v1, v11, v1

    move v13, v1

    .line 210
    .local v13, "length":I
    const/16 v1, 0x8

    aget-byte v1, v11, v1

    const/16 v2, 0x9

    aget-byte v2, v11, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, v8, Ljxl/read/biff/NameRecord;->sheetRef:I

    .line 212
    and-int/lit8 v1, v12, 0x20

    const/16 v2, 0xf

    if-eqz v1, :cond_0

    .line 214
    aget-byte v1, v11, v2

    invoke-static {v1}, Ljxl/biff/BuiltInName;->getBuiltInName(I)Ljxl/biff/BuiltInName;

    move-result-object v1

    iput-object v1, v8, Ljxl/read/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p2

    goto :goto_0

    .line 218
    :cond_0
    move-object/from16 v14, p2

    :try_start_1
    invoke-static {v11, v13, v2, v14}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    .line 221
    :goto_0
    and-int/lit8 v1, v12, 0xc

    if-eqz v1, :cond_1

    .line 224
    return-void

    .line 227
    :cond_1
    add-int/lit8 v15, v13, 0xf

    .line 229
    .local v15, "pos":I
    aget-byte v1, v11, v15

    const/16 v6, 0x3a

    const/high16 v16, 0xc0000

    if-ne v1, v6, :cond_3

    .line 231
    add-int/lit8 v1, v15, 0x1

    aget-byte v1, v11, v1

    add-int/lit8 v2, v15, 0x2

    aget-byte v2, v11, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    .line 232
    .local v3, "sheet":I
    add-int/lit8 v1, v15, 0x3

    aget-byte v1, v11, v1

    add-int/lit8 v2, v15, 0x4

    aget-byte v2, v11, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    .line 233
    .local v5, "row":I
    add-int/lit8 v1, v15, 0x5

    aget-byte v1, v11, v1

    add-int/lit8 v2, v15, 0x6

    aget-byte v2, v11, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    move v7, v1

    .line 234
    .local v7, "columnMask":I
    and-int/lit16 v6, v7, 0xff

    .line 237
    .local v6, "column":I
    and-int v1, v7, v16

    if-nez v1, :cond_2

    move v0, v10

    :cond_2
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 239
    new-instance v0, Ljxl/read/biff/NameRecord$NameRange;

    move-object v1, v0

    move-object/from16 v2, p0

    move v4, v6

    move v10, v6

    .end local v6    # "column":I
    .local v10, "column":I
    move/from16 v16, v7

    .end local v7    # "columnMask":I
    .local v16, "columnMask":I
    move v7, v5

    invoke-direct/range {v1 .. v7}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 240
    .local v0, "r":Ljxl/read/biff/NameRecord$NameRange;
    iget-object v1, v8, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    nop

    .end local v0    # "r":Ljxl/read/biff/NameRecord$NameRange;
    .end local v3    # "sheet":I
    .end local v5    # "row":I
    .end local v10    # "column":I
    .end local v16    # "columnMask":I
    goto/16 :goto_8

    .line 242
    :cond_3
    aget-byte v1, v11, v15

    const/16 v4, 0x3b

    if-ne v1, v4, :cond_7

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "sheet1":I
    const/4 v2, 0x0

    .line 246
    .local v2, "r1":I
    const/4 v3, 0x0

    .line 247
    .local v3, "columnMask":I
    const/4 v4, 0x0

    .line 248
    .local v4, "c1":I
    const/4 v5, 0x0

    .line 249
    .local v5, "r2":I
    const/4 v6, 0x0

    .line 250
    .local v6, "c2":I
    const/4 v7, 0x0

    move-object/from16 v17, v7

    move v7, v5

    move v5, v15

    move v15, v6

    move v6, v4

    move v4, v3

    .line 252
    .end local v3    # "columnMask":I
    .local v4, "columnMask":I
    .local v5, "pos":I
    .local v6, "c1":I
    .local v7, "r2":I
    .local v15, "c2":I
    .local v17, "range":Ljxl/read/biff/NameRecord$NameRange;
    :goto_1
    array-length v3, v11

    if-ge v5, v3, :cond_6

    .line 254
    add-int/lit8 v3, v5, 0x1

    aget-byte v3, v11, v3

    add-int/lit8 v18, v5, 0x2

    aget-byte v0, v11, v18

    invoke-static {v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    .line 255
    .end local v1    # "sheet1":I
    .local v3, "sheet1":I
    add-int/lit8 v0, v5, 0x3

    aget-byte v0, v11, v0

    add-int/lit8 v1, v5, 0x4

    aget-byte v1, v11, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    move/from16 v18, v5

    .end local v5    # "pos":I
    .local v18, "pos":I
    move v5, v0

    .line 256
    .end local v2    # "r1":I
    .local v5, "r1":I
    add-int/lit8 v0, v18, 0x5

    aget-byte v0, v11, v0

    add-int/lit8 v1, v18, 0x6

    aget-byte v1, v11, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    move v7, v0

    .line 258
    add-int/lit8 v0, v18, 0x7

    aget-byte v0, v11, v0

    add-int/lit8 v1, v18, 0x8

    aget-byte v1, v11, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 259
    .end local v4    # "columnMask":I
    .local v0, "columnMask":I
    and-int/lit16 v6, v0, 0xff

    .line 262
    and-int v1, v0, v16

    if-nez v1, :cond_4

    move v1, v10

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 264
    add-int/lit8 v1, v18, 0x9

    aget-byte v1, v11, v1

    add-int/lit8 v2, v18, 0xa

    aget-byte v2, v11, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    move v0, v1

    .line 265
    and-int/lit16 v15, v0, 0xff

    .line 268
    and-int v1, v0, v16

    if-nez v1, :cond_5

    move v1, v10

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 270
    new-instance v19, Ljxl/read/biff/NameRecord$NameRange;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move v4, v6

    move/from16 v20, v6

    .end local v6    # "c1":I
    .local v20, "c1":I
    move v6, v15

    invoke-direct/range {v1 .. v7}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    move-object/from16 v1, v19

    .line 271
    .end local v17    # "range":Ljxl/read/biff/NameRecord$NameRange;
    .local v1, "range":Ljxl/read/biff/NameRecord$NameRange;
    iget-object v2, v8, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v2, v18, 0xb

    move v4, v0

    move-object/from16 v17, v1

    move v1, v3

    move/from16 v6, v20

    const/4 v0, 0x0

    move/from16 v21, v5

    move v5, v2

    move/from16 v2, v21

    .end local v18    # "pos":I
    .local v2, "pos":I
    goto :goto_1

    .line 252
    .end local v0    # "columnMask":I
    .end local v3    # "sheet1":I
    .end local v20    # "c1":I
    .local v1, "sheet1":I
    .local v2, "r1":I
    .restart local v4    # "columnMask":I
    .local v5, "pos":I
    .restart local v6    # "c1":I
    .restart local v17    # "range":Ljxl/read/biff/NameRecord$NameRange;
    :cond_6
    move/from16 v18, v5

    .line 275
    .end local v1    # "sheet1":I
    .end local v2    # "r1":I
    .end local v4    # "columnMask":I
    .end local v5    # "pos":I
    .end local v6    # "c1":I
    .end local v7    # "r2":I
    .end local v15    # "c2":I
    .end local v17    # "range":Ljxl/read/biff/NameRecord$NameRange;
    .restart local v18    # "pos":I
    goto/16 :goto_8

    .line 276
    .end local v18    # "pos":I
    .local v15, "pos":I
    :cond_7
    aget-byte v0, v11, v15

    const/16 v2, 0x29

    if-ne v0, v2, :cond_11

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "sheet1":I
    const/4 v1, 0x0

    .line 280
    .local v1, "r1":I
    const/4 v3, 0x0

    .line 281
    .local v3, "columnMask":I
    const/4 v5, 0x0

    .line 282
    .local v5, "c1":I
    const/4 v7, 0x0

    .line 283
    .restart local v7    # "r2":I
    const/16 v17, 0x0

    .line 284
    .local v17, "c2":I
    const/16 v18, 0x0

    .line 287
    .local v18, "range":Ljxl/read/biff/NameRecord$NameRange;
    array-length v10, v11

    const/16 v2, 0x10

    if-ge v15, v10, :cond_9

    aget-byte v10, v11, v15

    if-eq v10, v6, :cond_9

    aget-byte v10, v11, v15

    if-eq v10, v4, :cond_9

    .line 291
    aget-byte v10, v11, v15

    const/16 v4, 0x29

    if-ne v10, v4, :cond_8

    .line 293
    add-int/lit8 v15, v15, 0x3

    move v10, v3

    move/from16 v21, v15

    move v15, v5

    move/from16 v5, v21

    goto :goto_4

    .line 295
    :cond_8
    aget-byte v10, v11, v15

    if-ne v10, v2, :cond_a

    .line 297
    add-int/lit8 v15, v15, 0x1

    move v10, v3

    move/from16 v21, v15

    move v15, v5

    move/from16 v5, v21

    goto :goto_4

    .line 287
    :cond_9
    const/16 v4, 0x29

    .line 301
    :cond_a
    move v10, v3

    move/from16 v21, v15

    move v15, v5

    move/from16 v5, v21

    .end local v3    # "columnMask":I
    .local v5, "pos":I
    .local v10, "columnMask":I
    .local v15, "c1":I
    :goto_4
    array-length v3, v11

    if-ge v5, v3, :cond_10

    .line 303
    add-int/lit8 v3, v5, 0x1

    aget-byte v3, v11, v3

    add-int/lit8 v20, v5, 0x2

    aget-byte v2, v11, v20

    invoke-static {v3, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    .line 304
    .end local v0    # "sheet1":I
    .local v3, "sheet1":I
    add-int/lit8 v0, v5, 0x3

    aget-byte v0, v11, v0

    add-int/lit8 v2, v5, 0x4

    aget-byte v2, v11, v2

    invoke-static {v0, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    move/from16 v20, v5

    .end local v5    # "pos":I
    .local v20, "pos":I
    move v5, v0

    .line 305
    .end local v1    # "r1":I
    .local v5, "r1":I
    add-int/lit8 v0, v20, 0x5

    aget-byte v0, v11, v0

    add-int/lit8 v1, v20, 0x6

    aget-byte v1, v11, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    move v7, v0

    .line 307
    add-int/lit8 v0, v20, 0x7

    aget-byte v0, v11, v0

    add-int/lit8 v1, v20, 0x8

    aget-byte v1, v11, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 308
    .end local v10    # "columnMask":I
    .local v0, "columnMask":I
    and-int/lit16 v15, v0, 0xff

    .line 311
    and-int v1, v0, v16

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 313
    add-int/lit8 v1, v20, 0x9

    aget-byte v1, v11, v1

    add-int/lit8 v2, v20, 0xa

    aget-byte v2, v11, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    move v10, v1

    .line 314
    .end local v0    # "columnMask":I
    .restart local v10    # "columnMask":I
    and-int/lit16 v0, v10, 0xff

    .line 317
    .end local v17    # "c2":I
    .local v0, "c2":I
    and-int v1, v10, v16

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 319
    new-instance v17, Ljxl/read/biff/NameRecord$NameRange;

    move-object/from16 v1, v17

    move v9, v4

    const/16 v4, 0x10

    move-object/from16 v2, p0

    const/16 v9, 0x3b

    move v4, v15

    move v9, v6

    move v6, v0

    invoke-direct/range {v1 .. v7}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    move-object/from16 v1, v17

    .line 320
    .end local v18    # "range":Ljxl/read/biff/NameRecord$NameRange;
    .local v1, "range":Ljxl/read/biff/NameRecord$NameRange;
    iget-object v2, v8, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v2, v20, 0xb

    .line 325
    .end local v20    # "pos":I
    .local v2, "pos":I
    array-length v4, v11

    if-ge v2, v4, :cond_e

    aget-byte v4, v11, v2

    if-eq v4, v9, :cond_e

    aget-byte v4, v11, v2

    const/16 v6, 0x3b

    if-eq v4, v6, :cond_e

    .line 329
    aget-byte v4, v11, v2

    const/16 v6, 0x29

    if-ne v4, v6, :cond_d

    .line 331
    add-int/lit8 v2, v2, 0x3

    move/from16 v17, v0

    move-object/from16 v18, v1

    move v0, v3

    move v1, v5

    move v4, v6

    move v6, v9

    move/from16 v9, p3

    move v5, v2

    const/16 v2, 0x10

    goto/16 :goto_4

    .line 333
    :cond_d
    aget-byte v4, v11, v2

    const/16 v6, 0x10

    if-ne v4, v6, :cond_f

    .line 335
    add-int/lit8 v2, v2, 0x1

    move/from16 v17, v0

    move-object/from16 v18, v1

    move v0, v3

    move v1, v5

    const/16 v4, 0x29

    move v5, v2

    move v2, v6

    move v6, v9

    move/from16 v9, p3

    goto/16 :goto_4

    .line 325
    :cond_e
    const/16 v6, 0x10

    .line 301
    :cond_f
    move/from16 v17, v0

    move-object/from16 v18, v1

    move v0, v3

    move v1, v5

    const/16 v4, 0x29

    move v5, v2

    move v2, v6

    move v6, v9

    move/from16 v9, p3

    goto/16 :goto_4

    .end local v2    # "pos":I
    .end local v3    # "sheet1":I
    .local v0, "sheet1":I
    .local v1, "r1":I
    .local v5, "pos":I
    .restart local v17    # "c2":I
    .restart local v18    # "range":Ljxl/read/biff/NameRecord$NameRange;
    :cond_10
    move/from16 v20, v5

    .line 339
    .end local v0    # "sheet1":I
    .end local v1    # "r1":I
    .end local v5    # "pos":I
    .end local v7    # "r2":I
    .end local v10    # "columnMask":I
    .end local v15    # "c1":I
    .end local v17    # "c2":I
    .end local v18    # "range":Ljxl/read/biff/NameRecord$NameRange;
    .restart local v20    # "pos":I
    goto :goto_8

    .line 342
    .end local v20    # "pos":I
    .local v15, "pos":I
    :cond_11
    iget-object v0, v8, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    if-eqz v0, :cond_12

    goto :goto_7

    :cond_12
    iget-object v0, v8, Ljxl/read/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    invoke-virtual {v0}, Ljxl/biff/BuiltInName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "n":Ljava/lang/String;
    :goto_7
    sget-object v1, Ljxl/read/biff/NameRecord;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot read name ranges for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - setting to empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 345
    new-instance v9, Ljxl/read/biff/NameRecord$NameRange;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    move-object v1, v9

    .line 346
    .local v1, "range":Ljxl/read/biff/NameRecord$NameRange;
    iget-object v2, v8, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    .end local v0    # "n":Ljava/lang/String;
    .end local v1    # "range":Ljxl/read/biff/NameRecord$NameRange;
    .end local v11    # "data":[B
    .end local v12    # "option":I
    .end local v13    # "length":I
    .end local v15    # "pos":I
    :goto_8
    goto :goto_a

    .line 349
    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v14, p2

    .line 354
    .local v0, "t1":Ljava/lang/Throwable;
    :goto_9
    sget-object v1, Ljxl/read/biff/NameRecord;->logger:Ljxl/common/Logger;

    const-string v2, "Cannot read name"

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 355
    const-string v1, "ERROR"

    iput-object v1, v8, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    .line 357
    .end local v0    # "t1":Ljava/lang/Throwable;
    :goto_a
    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;ILjxl/read/biff/NameRecord$Biff7;)V
    .locals 18
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "ws"    # Ljxl/WorkbookSettings;
    .param p3, "ind"    # I
    .param p4, "dummy"    # Ljxl/read/biff/NameRecord$Biff7;

    .line 369
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 63
    const/4 v0, 0x0

    iput v0, v8, Ljxl/read/biff/NameRecord;->sheetRef:I

    .line 370
    move/from16 v9, p3

    iput v9, v8, Ljxl/read/biff/NameRecord;->index:I

    .line 371
    iput-boolean v0, v8, Ljxl/read/biff/NameRecord;->isbiff8:Z

    .line 375
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    .line 376
    invoke-virtual/range {p0 .. p0}, Ljxl/read/biff/NameRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 377
    .local v0, "data":[B
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    move v10, v1

    .line 378
    .local v10, "length":I
    const/16 v1, 0x8

    aget-byte v1, v0, v1

    const/16 v2, 0x9

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, v8, Ljxl/read/biff/NameRecord;->sheetRef:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 379
    const/16 v1, 0xe

    move-object/from16 v11, p2

    :try_start_1
    invoke-static {v0, v10, v1, v11}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    .line 381
    add-int/lit8 v12, v10, 0xe

    .line 383
    .local v12, "pos":I
    array-length v1, v0

    if-lt v12, v1, :cond_0

    .line 386
    return-void

    .line 389
    :cond_0
    aget-byte v1, v0, v12

    const/16 v13, 0x3a

    if-ne v1, v13, :cond_1

    .line 391
    add-int/lit8 v1, v12, 0xb

    aget-byte v1, v0, v1

    add-int/lit8 v2, v12, 0xc

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    .line 392
    .local v3, "sheet":I
    add-int/lit8 v1, v12, 0xf

    aget-byte v1, v0, v1

    add-int/lit8 v2, v12, 0x10

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    .line 393
    .local v5, "row":I
    add-int/lit8 v1, v12, 0x11

    aget-byte v4, v0, v1

    .line 395
    .local v4, "column":I
    new-instance v13, Ljxl/read/biff/NameRecord$NameRange;

    move-object v1, v13

    move-object/from16 v2, p0

    move v6, v4

    move v7, v5

    invoke-direct/range {v1 .. v7}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    move-object v1, v13

    .line 396
    .local v1, "r":Ljxl/read/biff/NameRecord$NameRange;
    iget-object v2, v8, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    nop

    .end local v1    # "r":Ljxl/read/biff/NameRecord$NameRange;
    .end local v3    # "sheet":I
    .end local v4    # "column":I
    .end local v5    # "row":I
    goto/16 :goto_2

    .line 398
    :cond_1
    aget-byte v1, v0, v12

    const/16 v14, 0x3b

    if-ne v1, v14, :cond_3

    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, "sheet1":I
    const/4 v2, 0x0

    .line 402
    .local v2, "r1":I
    const/4 v3, 0x0

    .line 403
    .local v3, "c1":I
    const/4 v4, 0x0

    .line 404
    .local v4, "r2":I
    const/4 v5, 0x0

    .line 405
    .local v5, "c2":I
    const/4 v6, 0x0

    move v7, v4

    move v13, v12

    move v4, v3

    move-object v12, v6

    move v6, v5

    .line 407
    .end local v3    # "c1":I
    .end local v5    # "c2":I
    .local v4, "c1":I
    .local v6, "c2":I
    .local v7, "r2":I
    .local v12, "range":Ljxl/read/biff/NameRecord$NameRange;
    .local v13, "pos":I
    :goto_0
    array-length v3, v0

    if-ge v13, v3, :cond_2

    .line 409
    add-int/lit8 v3, v13, 0xb

    aget-byte v3, v0, v3

    add-int/lit8 v5, v13, 0xc

    aget-byte v5, v0, v5

    invoke-static {v3, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    .line 410
    .end local v1    # "sheet1":I
    .local v3, "sheet1":I
    add-int/lit8 v1, v13, 0xf

    aget-byte v1, v0, v1

    add-int/lit8 v5, v13, 0x10

    aget-byte v5, v0, v5

    invoke-static {v1, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    .line 411
    .end local v2    # "r1":I
    .local v5, "r1":I
    add-int/lit8 v1, v13, 0x11

    aget-byte v1, v0, v1

    add-int/lit8 v2, v13, 0x12

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    move v7, v1

    .line 413
    add-int/lit8 v1, v13, 0x13

    aget-byte v1, v0, v1

    move v4, v1

    .line 414
    add-int/lit8 v1, v13, 0x14

    aget-byte v1, v0, v1

    move v6, v1

    .line 416
    new-instance v14, Ljxl/read/biff/NameRecord$NameRange;

    move-object v1, v14

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    move-object v12, v14

    .line 417
    iget-object v1, v8, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v13, v13, 0x15

    move v1, v3

    move v2, v5

    goto :goto_0

    .line 421
    .end local v3    # "sheet1":I
    .end local v4    # "c1":I
    .end local v5    # "r1":I
    .end local v6    # "c2":I
    .end local v7    # "r2":I
    .end local v12    # "range":Ljxl/read/biff/NameRecord$NameRange;
    :cond_2
    goto/16 :goto_2

    .line 422
    .end local v13    # "pos":I
    .local v12, "pos":I
    :cond_3
    aget-byte v1, v0, v12

    const/16 v15, 0x29

    if-ne v1, v15, :cond_9

    .line 424
    const/4 v1, 0x0

    .line 425
    .restart local v1    # "sheet1":I
    const/16 v16, 0x0

    .line 426
    .local v16, "sheet2":I
    const/4 v2, 0x0

    .line 427
    .restart local v2    # "r1":I
    const/4 v3, 0x0

    .line 428
    .local v3, "c1":I
    const/4 v4, 0x0

    .line 429
    .local v4, "r2":I
    const/4 v5, 0x0

    .line 430
    .local v5, "c2":I
    const/4 v6, 0x0

    .line 433
    .local v6, "range":Ljxl/read/biff/NameRecord$NameRange;
    array-length v7, v0

    const/16 v15, 0x10

    if-ge v12, v7, :cond_5

    aget-byte v7, v0, v12

    if-eq v7, v13, :cond_5

    aget-byte v7, v0, v12

    if-eq v7, v14, :cond_5

    .line 437
    aget-byte v7, v0, v12

    const/16 v14, 0x29

    if-ne v7, v14, :cond_4

    .line 439
    add-int/lit8 v12, v12, 0x3

    move v7, v4

    move v14, v12

    move v4, v3

    move-object v12, v6

    move v6, v5

    goto :goto_1

    .line 441
    :cond_4
    aget-byte v7, v0, v12

    if-ne v7, v15, :cond_5

    .line 443
    add-int/lit8 v12, v12, 0x1

    move v7, v4

    move v14, v12

    move v4, v3

    move-object v12, v6

    move v6, v5

    goto :goto_1

    .line 447
    :cond_5
    move v7, v4

    move v14, v12

    move v4, v3

    move-object v12, v6

    move v6, v5

    .end local v3    # "c1":I
    .end local v5    # "c2":I
    .local v4, "c1":I
    .local v6, "c2":I
    .restart local v7    # "r2":I
    .local v12, "range":Ljxl/read/biff/NameRecord$NameRange;
    .local v14, "pos":I
    :goto_1
    array-length v3, v0

    if-ge v14, v3, :cond_9

    .line 449
    add-int/lit8 v3, v14, 0xb

    aget-byte v3, v0, v3

    add-int/lit8 v5, v14, 0xc

    aget-byte v5, v0, v5

    invoke-static {v3, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    .line 450
    .end local v1    # "sheet1":I
    .local v3, "sheet1":I
    add-int/lit8 v1, v14, 0xf

    aget-byte v1, v0, v1

    add-int/lit8 v5, v14, 0x10

    aget-byte v5, v0, v5

    invoke-static {v1, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    .line 451
    .end local v2    # "r1":I
    .local v5, "r1":I
    add-int/lit8 v1, v14, 0x11

    aget-byte v1, v0, v1

    add-int/lit8 v2, v14, 0x12

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    move v7, v1

    .line 453
    add-int/lit8 v1, v14, 0x13

    aget-byte v1, v0, v1

    move v4, v1

    .line 454
    add-int/lit8 v1, v14, 0x14

    aget-byte v1, v0, v1

    move v6, v1

    .line 456
    new-instance v17, Ljxl/read/biff/NameRecord$NameRange;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    move-object/from16 v12, v17

    .line 457
    iget-object v1, v8, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v14, v14, 0x15

    .line 462
    array-length v1, v0

    if-ge v14, v1, :cond_7

    aget-byte v1, v0, v14

    if-eq v1, v13, :cond_7

    aget-byte v1, v0, v14

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_7

    .line 466
    aget-byte v1, v0, v14

    const/16 v2, 0x29

    if-ne v1, v2, :cond_6

    .line 468
    add-int/lit8 v14, v14, 0x3

    move v1, v3

    move v2, v5

    goto :goto_1

    .line 470
    :cond_6
    aget-byte v1, v0, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v15, :cond_8

    .line 472
    add-int/lit8 v14, v14, 0x1

    move v1, v3

    move v2, v5

    goto :goto_1

    .line 462
    :cond_7
    const/16 v2, 0x29

    .line 447
    :cond_8
    move v1, v3

    move v2, v5

    goto :goto_1

    .line 485
    .end local v0    # "data":[B
    .end local v3    # "sheet1":I
    .end local v4    # "c1":I
    .end local v5    # "r1":I
    .end local v6    # "c2":I
    .end local v7    # "r2":I
    .end local v10    # "length":I
    .end local v12    # "range":Ljxl/read/biff/NameRecord$NameRange;
    .end local v14    # "pos":I
    .end local v16    # "sheet2":I
    :cond_9
    :goto_2
    goto :goto_4

    .line 478
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v11, p2

    .line 483
    .local v0, "t1":Ljava/lang/Throwable;
    :goto_3
    sget-object v1, Ljxl/read/biff/NameRecord;->logger:Ljxl/common/Logger;

    const-string v2, "Cannot read name."

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 484
    const-string v1, "ERROR"

    iput-object v1, v8, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    .line 486
    .end local v0    # "t1":Ljava/lang/Throwable;
    :goto_4
    return-void
.end method


# virtual methods
.method public getBuiltInName()Ljxl/biff/BuiltInName;
    .locals 1

    .line 505
    iget-object v0, p0, Ljxl/read/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 557
    invoke-virtual {p0}, Ljxl/read/biff/NameRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method getIndex()I
    .locals 1

    .line 527
    iget v0, p0, Ljxl/read/biff/NameRecord;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object v0, p0, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRanges()[Ljxl/read/biff/NameRecord$NameRange;
    .locals 2

    .line 516
    iget-object v0, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/NameRecord$NameRange;

    .line 517
    .local v0, "nr":[Ljxl/read/biff/NameRecord$NameRange;
    iget-object v1, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljxl/read/biff/NameRecord$NameRange;

    check-cast v1, [Ljxl/read/biff/NameRecord$NameRange;

    return-object v1
.end method

.method public getSheetRef()I
    .locals 1

    .line 538
    iget v0, p0, Ljxl/read/biff/NameRecord;->sheetRef:I

    return v0
.end method

.method public isBiff8()Z
    .locals 1

    .line 567
    iget-boolean v0, p0, Ljxl/read/biff/NameRecord;->isbiff8:Z

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    .line 577
    iget v0, p0, Ljxl/read/biff/NameRecord;->sheetRef:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSheetRef(I)V
    .locals 0
    .param p1, "i"    # I

    .line 547
    iput p1, p0, Ljxl/read/biff/NameRecord;->sheetRef:I

    .line 548
    return-void
.end method
