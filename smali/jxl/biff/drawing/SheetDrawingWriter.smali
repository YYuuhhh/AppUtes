.class public Ljxl/biff/drawing/SheetDrawingWriter;
.super Ljava/lang/Object;
.source "SheetDrawingWriter.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private charts:[Ljxl/biff/drawing/Chart;

.field private drawings:Ljava/util/ArrayList;

.field private drawingsModified:Z

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/SheetDrawingWriter;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/WorkbookSettings;)V
    .locals 1
    .param p1, "ws"    # Ljxl/WorkbookSettings;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/drawing/Chart;

    iput-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    .line 71
    return-void
.end method

.method private writeUnmodified(Ljxl/write/biff/File;)V
    .locals 22
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v2, v2

    if-nez v2, :cond_0

    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 303
    return-void

    .line 305
    :cond_0
    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v2, v2

    if-nez v2, :cond_3

    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/DrawingGroupObject;

    .line 311
    .local v3, "d":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v3}, Ljxl/biff/drawing/DrawingGroupObject;->getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 312
    invoke-interface {v3, v1}, Ljxl/biff/drawing/DrawingGroupObject;->writeAdditionalRecords(Ljxl/write/biff/File;)V

    .line 313
    .end local v3    # "d":Ljxl/biff/drawing/DrawingGroupObject;
    goto :goto_0

    .line 315
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_1
    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/DrawingGroupObject;

    .line 318
    .restart local v3    # "d":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v3, v1}, Ljxl/biff/drawing/DrawingGroupObject;->writeTailRecords(Ljxl/write/biff/File;)V

    .line 319
    .end local v3    # "d":Ljxl/biff/drawing/DrawingGroupObject;
    goto :goto_1

    .line 320
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_2
    return-void

    .line 322
    :cond_3
    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v2, v2

    if-eqz v2, :cond_7

    .line 325
    const/4 v2, 0x0

    .line 326
    .local v2, "curChart":Ljxl/biff/drawing/Chart;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v4, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v5, v4

    if-ge v3, v5, :cond_6

    .line 328
    aget-object v2, v4, v3

    .line 329
    invoke-virtual {v2}, Ljxl/biff/drawing/Chart;->getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 331
    invoke-virtual {v2}, Ljxl/biff/drawing/Chart;->getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 334
    :cond_4
    invoke-virtual {v2}, Ljxl/biff/drawing/Chart;->getObjRecord()Ljxl/biff/drawing/ObjRecord;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 336
    invoke-virtual {v2}, Ljxl/biff/drawing/Chart;->getObjRecord()Ljxl/biff/drawing/ObjRecord;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 339
    :cond_5
    invoke-virtual {v1, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 342
    .end local v3    # "i":I
    :cond_6
    return-void

    .line 349
    .end local v2    # "curChart":Ljxl/biff/drawing/Chart;
    :cond_7
    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 350
    .local v2, "numDrawings":I
    const/4 v3, 0x0

    .line 351
    .local v3, "length":I
    iget-object v4, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v5, v4

    add-int/2addr v5, v2

    new-array v5, v5, [Ljxl/biff/drawing/EscherContainer;

    .line 353
    .local v5, "spContainers":[Ljxl/biff/drawing/EscherContainer;
    array-length v4, v4

    add-int/2addr v4, v2

    new-array v4, v4, [Z

    .line 355
    .local v4, "isFormObject":[Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    const/4 v7, 0x1

    if-ge v6, v2, :cond_a

    .line 357
    iget-object v8, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxl/biff/drawing/DrawingGroupObject;

    .line 358
    .local v8, "d":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v8}, Ljxl/biff/drawing/DrawingGroupObject;->getSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v9

    aput-object v9, v5, v6

    .line 360
    if-lez v6, :cond_8

    .line 362
    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljxl/biff/drawing/EscherContainer;->getLength()I

    move-result v9

    add-int/2addr v3, v9

    .line 365
    :cond_8
    invoke-interface {v8}, Ljxl/biff/drawing/DrawingGroupObject;->isFormObject()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 367
    aput-boolean v7, v4, v6

    .line 355
    .end local v8    # "d":Ljxl/biff/drawing/DrawingGroupObject;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 371
    .end local v6    # "i":I
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    iget-object v8, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v9, v8

    if-ge v6, v9, :cond_b

    .line 373
    add-int v9, v6, v2

    aget-object v8, v8, v6

    invoke-virtual {v8}, Ljxl/biff/drawing/Chart;->getSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v8

    aput-object v8, v5, v9

    .line 374
    add-int v8, v6, v2

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljxl/biff/drawing/EscherContainer;->getLength()I

    move-result v8

    add-int/2addr v3, v8

    .line 371
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 378
    .end local v6    # "i":I
    :cond_b
    new-instance v6, Ljxl/biff/drawing/DgContainer;

    invoke-direct {v6}, Ljxl/biff/drawing/DgContainer;-><init>()V

    .line 379
    .local v6, "dgContainer":Ljxl/biff/drawing/DgContainer;
    new-instance v8, Ljxl/biff/drawing/Dg;

    iget-object v9, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v9, v9

    add-int/2addr v9, v2

    invoke-direct {v8, v9}, Ljxl/biff/drawing/Dg;-><init>(I)V

    .line 380
    .local v8, "dg":Ljxl/biff/drawing/Dg;
    invoke-virtual {v6, v8}, Ljxl/biff/drawing/DgContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 382
    new-instance v9, Ljxl/biff/drawing/SpgrContainer;

    invoke-direct {v9}, Ljxl/biff/drawing/SpgrContainer;-><init>()V

    .line 384
    .local v9, "spgrContainer":Ljxl/biff/drawing/SpgrContainer;
    new-instance v10, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v10}, Ljxl/biff/drawing/SpContainer;-><init>()V

    .line 385
    .local v10, "spContainer":Ljxl/biff/drawing/SpContainer;
    new-instance v11, Ljxl/biff/drawing/Spgr;

    invoke-direct {v11}, Ljxl/biff/drawing/Spgr;-><init>()V

    .line 386
    .local v11, "spgr":Ljxl/biff/drawing/Spgr;
    invoke-virtual {v10, v11}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 387
    new-instance v12, Ljxl/biff/drawing/Sp;

    sget-object v13, Ljxl/biff/drawing/ShapeType;->MIN:Ljxl/biff/drawing/ShapeType;

    const/16 v14, 0x400

    const/4 v15, 0x5

    invoke-direct {v12, v13, v14, v15}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/ShapeType;II)V

    .line 388
    .local v12, "sp":Ljxl/biff/drawing/Sp;
    invoke-virtual {v10, v12}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 389
    invoke-virtual {v9, v10}, Ljxl/biff/drawing/SpgrContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 391
    const/4 v13, 0x0

    aget-object v14, v5, v13

    invoke-virtual {v9, v14}, Ljxl/biff/drawing/SpgrContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 393
    invoke-virtual {v6, v9}, Ljxl/biff/drawing/DgContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 395
    invoke-virtual {v6}, Ljxl/biff/drawing/DgContainer;->getData()[B

    move-result-object v14

    .line 398
    .local v14, "firstMsoData":[B
    const/4 v7, 0x4

    aget-byte v13, v14, v7

    aget-byte v15, v14, v15

    const/16 v16, 0x6

    aget-byte v7, v14, v16

    const/16 v16, 0x7

    move-object/from16 v18, v6

    .end local v6    # "dgContainer":Ljxl/biff/drawing/DgContainer;
    .local v18, "dgContainer":Ljxl/biff/drawing/DgContainer;
    aget-byte v6, v14, v16

    invoke-static {v13, v15, v7, v6}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v6

    .line 402
    .local v6, "len":I
    add-int v7, v6, v3

    const/4 v13, 0x4

    invoke-static {v7, v14, v13}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 405
    const/16 v7, 0x1c

    aget-byte v13, v14, v7

    const/16 v15, 0x1d

    aget-byte v15, v14, v15

    const/16 v16, 0x1e

    aget-byte v7, v14, v16

    const/16 v16, 0x1f

    move/from16 v19, v6

    .end local v6    # "len":I
    .local v19, "len":I
    aget-byte v6, v14, v16

    invoke-static {v13, v15, v7, v6}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v6

    .line 409
    .end local v19    # "len":I
    .restart local v6    # "len":I
    add-int v7, v6, v3

    const/16 v13, 0x1c

    invoke-static {v7, v14, v13}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 415
    const/4 v7, 0x0

    aget-boolean v13, v4, v7

    const/4 v15, 0x1

    if-ne v13, v15, :cond_c

    .line 417
    array-length v13, v14

    add-int/lit8 v13, v13, -0x8

    new-array v13, v13, [B

    .line 418
    .local v13, "cbytes":[B
    array-length v15, v13

    invoke-static {v14, v7, v13, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    move-object v14, v13

    .line 423
    .end local v13    # "cbytes":[B
    :cond_c
    new-instance v7, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v7, v14}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>([B)V

    .line 424
    .local v7, "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    invoke-virtual {v1, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 426
    iget-object v13, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljxl/biff/drawing/DrawingGroupObject;

    .line 427
    .local v13, "dgo":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v13, v1}, Ljxl/biff/drawing/DrawingGroupObject;->writeAdditionalRecords(Ljxl/write/biff/File;)V

    .line 430
    const/4 v15, 0x1

    .local v15, "i":I
    :goto_5
    move/from16 v16, v3

    .end local v3    # "length":I
    .local v16, "length":I
    array-length v3, v5

    if-ge v15, v3, :cond_f

    .line 432
    aget-object v3, v5, v15

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherContainer;->getBytes()[B

    move-result-object v3

    .line 433
    .local v3, "bytes":[B
    move/from16 v17, v6

    .end local v6    # "len":I
    .local v17, "len":I
    aget-object v6, v5, v15

    invoke-virtual {v6, v3}, Ljxl/biff/drawing/EscherContainer;->setHeaderData([B)[B

    move-result-object v6

    .line 437
    .local v6, "bytes2":[B
    move-object/from16 v19, v3

    .end local v3    # "bytes":[B
    .local v19, "bytes":[B
    aget-boolean v3, v4, v15

    move-object/from16 v20, v4

    const/4 v4, 0x1

    .end local v4    # "isFormObject":[Z
    .local v20, "isFormObject":[Z
    if-ne v3, v4, :cond_d

    .line 439
    array-length v3, v6

    add-int/lit8 v3, v3, -0x8

    new-array v3, v3, [B

    .line 440
    .local v3, "cbytes":[B
    array-length v4, v3

    move-object/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "spContainers":[Ljxl/biff/drawing/EscherContainer;
    .local v21, "spContainers":[Ljxl/biff/drawing/EscherContainer;
    invoke-static {v6, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    move-object v6, v3

    goto :goto_6

    .line 437
    .end local v3    # "cbytes":[B
    .end local v21    # "spContainers":[Ljxl/biff/drawing/EscherContainer;
    .restart local v5    # "spContainers":[Ljxl/biff/drawing/EscherContainer;
    :cond_d
    move-object/from16 v21, v5

    const/4 v5, 0x0

    .line 444
    .end local v5    # "spContainers":[Ljxl/biff/drawing/EscherContainer;
    .restart local v21    # "spContainers":[Ljxl/biff/drawing/EscherContainer;
    :goto_6
    new-instance v3, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v3, v6}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>([B)V

    move-object v7, v3

    .line 445
    invoke-virtual {v1, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 447
    if-ge v15, v2, :cond_e

    .line 449
    iget-object v3, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/DrawingGroupObject;

    .line 450
    .end local v13    # "dgo":Ljxl/biff/drawing/DrawingGroupObject;
    .local v3, "dgo":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v3, v1}, Ljxl/biff/drawing/DrawingGroupObject;->writeAdditionalRecords(Ljxl/write/biff/File;)V

    move-object v13, v3

    goto :goto_7

    .line 454
    .end local v3    # "dgo":Ljxl/biff/drawing/DrawingGroupObject;
    .restart local v13    # "dgo":Ljxl/biff/drawing/DrawingGroupObject;
    :cond_e
    iget-object v3, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    sub-int v4, v15, v2

    aget-object v3, v3, v4

    .line 455
    .local v3, "chart":Ljxl/biff/drawing/Chart;
    invoke-virtual {v3}, Ljxl/biff/drawing/Chart;->getObjRecord()Ljxl/biff/drawing/ObjRecord;

    move-result-object v4

    .line 456
    .local v4, "objRecord":Ljxl/biff/drawing/ObjRecord;
    invoke-virtual {v1, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 457
    invoke-virtual {v1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 430
    .end local v3    # "chart":Ljxl/biff/drawing/Chart;
    .end local v4    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .end local v6    # "bytes2":[B
    .end local v19    # "bytes":[B
    :goto_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move/from16 v6, v17

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    goto :goto_5

    .end local v17    # "len":I
    .end local v20    # "isFormObject":[Z
    .end local v21    # "spContainers":[Ljxl/biff/drawing/EscherContainer;
    .local v4, "isFormObject":[Z
    .restart local v5    # "spContainers":[Ljxl/biff/drawing/EscherContainer;
    .local v6, "len":I
    :cond_f
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v17, v6

    .line 462
    .end local v4    # "isFormObject":[Z
    .end local v5    # "spContainers":[Ljxl/biff/drawing/EscherContainer;
    .end local v6    # "len":I
    .end local v15    # "i":I
    .restart local v17    # "len":I
    .restart local v20    # "isFormObject":[Z
    .restart local v21    # "spContainers":[Ljxl/biff/drawing/EscherContainer;
    iget-object v3, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 464
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/biff/drawing/DrawingGroupObject;

    .line 465
    .local v4, "dgo2":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v4, v1}, Ljxl/biff/drawing/DrawingGroupObject;->writeTailRecords(Ljxl/write/biff/File;)V

    .line 466
    .end local v4    # "dgo2":Ljxl/biff/drawing/DrawingGroupObject;
    goto :goto_8

    .line 467
    .end local v3    # "i":Ljava/util/Iterator;
    :cond_10
    return-void
.end method


# virtual methods
.method public getCharts()[Ljxl/biff/drawing/Chart;
    .locals 1

    .line 486
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    return-object v0
.end method

.method public setCharts([Ljxl/biff/drawing/Chart;)V
    .locals 0
    .param p1, "ch"    # [Ljxl/biff/drawing/Chart;

    .line 476
    iput-object p1, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    .line 477
    return-void
.end method

.method public setDrawings(Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "dr"    # Ljava/util/ArrayList;
    .param p2, "mod"    # Z

    .line 81
    iput-object p1, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    .line 82
    iput-boolean p2, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawingsModified:Z

    .line 83
    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 22
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 97
    return-void

    .line 101
    :cond_0
    iget-boolean v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawingsModified:Z

    .line 102
    .local v2, "modified":Z
    iget-object v3, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 104
    .local v3, "numImages":I
    iget-object v4, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_2

    .line 106
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/drawing/DrawingGroupObject;

    .line 107
    .local v5, "d":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v5}, Ljxl/biff/drawing/DrawingGroupObject;->getOrigin()Ljxl/biff/drawing/Origin;

    move-result-object v6

    sget-object v7, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v6, v7, :cond_1

    .line 109
    const/4 v2, 0x1

    .line 111
    .end local v5    # "d":Ljxl/biff/drawing/DrawingGroupObject;
    :cond_1
    goto :goto_0

    .line 115
    .end local v4    # "i":Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    if-lez v3, :cond_3

    if-nez v2, :cond_3

    .line 117
    iget-object v5, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/drawing/DrawingGroupObject;

    .line 118
    .local v5, "d2":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v5}, Ljxl/biff/drawing/DrawingGroupObject;->isFirst()Z

    move-result v6

    if-nez v6, :cond_3

    .line 120
    const/4 v2, 0x1

    .line 126
    .end local v5    # "d2":Ljxl/biff/drawing/DrawingGroupObject;
    :cond_3
    if-nez v3, :cond_4

    iget-object v5, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljxl/biff/drawing/Chart;->getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;

    move-result-object v5

    if-nez v5, :cond_4

    .line 130
    const/4 v2, 0x0

    .line 135
    :cond_4
    if-nez v2, :cond_5

    .line 137
    invoke-direct/range {p0 .. p1}, Ljxl/biff/drawing/SheetDrawingWriter;->writeUnmodified(Ljxl/write/biff/File;)V

    .line 138
    return-void

    .line 141
    :cond_5
    iget-object v5, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v5, v5

    add-int/2addr v5, v3

    new-array v5, v5, [Ljava/lang/Object;

    .line 142
    .local v5, "spContainerData":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 143
    .local v6, "length":I
    const/4 v7, 0x0

    .line 147
    .local v7, "firstSpContainer":Ljxl/biff/drawing/EscherContainer;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v3, :cond_8

    .line 149
    iget-object v9, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljxl/biff/drawing/DrawingGroupObject;

    .line 151
    .local v9, "drawing":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v9}, Ljxl/biff/drawing/DrawingGroupObject;->getSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v10

    .line 153
    .local v10, "spc":Ljxl/biff/drawing/EscherContainer;
    if-eqz v10, :cond_7

    .line 155
    invoke-virtual {v10}, Ljxl/biff/drawing/EscherContainer;->getData()[B

    move-result-object v11

    .line 156
    .local v11, "data":[B
    aput-object v11, v5, v8

    .line 158
    if-nez v8, :cond_6

    .line 160
    move-object v7, v10

    goto :goto_2

    .line 164
    :cond_6
    array-length v12, v11

    add-int/2addr v6, v12

    .line 147
    .end local v9    # "drawing":Ljxl/biff/drawing/DrawingGroupObject;
    .end local v10    # "spc":Ljxl/biff/drawing/EscherContainer;
    .end local v11    # "data":[B
    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 170
    .end local v8    # "i":I
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    iget-object v9, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v10, v9

    if-ge v8, v10, :cond_a

    .line 172
    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljxl/biff/drawing/Chart;->getSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v9

    .line 173
    .local v9, "spContainer":Ljxl/biff/drawing/EscherContainer;
    invoke-virtual {v9}, Ljxl/biff/drawing/EscherContainer;->getBytes()[B

    move-result-object v10

    .line 174
    .local v10, "data":[B
    invoke-virtual {v9, v10}, Ljxl/biff/drawing/EscherContainer;->setHeaderData([B)[B

    move-result-object v10

    .line 175
    add-int v11, v8, v3

    aput-object v10, v5, v11

    .line 177
    if-nez v8, :cond_9

    if-nez v3, :cond_9

    .line 179
    move-object v7, v9

    goto :goto_4

    .line 183
    :cond_9
    array-length v11, v10

    add-int/2addr v6, v11

    .line 170
    .end local v9    # "spContainer":Ljxl/biff/drawing/EscherContainer;
    .end local v10    # "data":[B
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 188
    .end local v8    # "i":I
    :cond_a
    new-instance v8, Ljxl/biff/drawing/DgContainer;

    invoke-direct {v8}, Ljxl/biff/drawing/DgContainer;-><init>()V

    .line 189
    .local v8, "dgContainer":Ljxl/biff/drawing/DgContainer;
    new-instance v9, Ljxl/biff/drawing/Dg;

    iget-object v10, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v10, v10

    add-int/2addr v10, v3

    invoke-direct {v9, v10}, Ljxl/biff/drawing/Dg;-><init>(I)V

    .line 190
    .local v9, "dg":Ljxl/biff/drawing/Dg;
    invoke-virtual {v8, v9}, Ljxl/biff/drawing/DgContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 192
    new-instance v10, Ljxl/biff/drawing/SpgrContainer;

    invoke-direct {v10}, Ljxl/biff/drawing/SpgrContainer;-><init>()V

    .line 194
    .local v10, "spgrContainer":Ljxl/biff/drawing/SpgrContainer;
    new-instance v11, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v11}, Ljxl/biff/drawing/SpContainer;-><init>()V

    .line 195
    .local v11, "spContainer":Ljxl/biff/drawing/SpContainer;
    new-instance v12, Ljxl/biff/drawing/Spgr;

    invoke-direct {v12}, Ljxl/biff/drawing/Spgr;-><init>()V

    .line 196
    .local v12, "spgr":Ljxl/biff/drawing/Spgr;
    invoke-virtual {v11, v12}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 197
    new-instance v13, Ljxl/biff/drawing/Sp;

    sget-object v14, Ljxl/biff/drawing/ShapeType;->MIN:Ljxl/biff/drawing/ShapeType;

    const/16 v15, 0x400

    const/4 v4, 0x5

    invoke-direct {v13, v14, v15, v4}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/ShapeType;II)V

    .line 198
    .local v13, "sp":Ljxl/biff/drawing/Sp;
    invoke-virtual {v11, v13}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 199
    invoke-virtual {v10, v11}, Ljxl/biff/drawing/SpgrContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 201
    invoke-virtual {v10, v7}, Ljxl/biff/drawing/SpgrContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 203
    invoke-virtual {v8, v10}, Ljxl/biff/drawing/DgContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 205
    invoke-virtual {v8}, Ljxl/biff/drawing/DgContainer;->getData()[B

    move-result-object v14

    .line 208
    .local v14, "firstMsoData":[B
    const/4 v15, 0x4

    move/from16 v17, v2

    .end local v2    # "modified":Z
    .local v17, "modified":Z
    aget-byte v2, v14, v15

    aget-byte v4, v14, v4

    const/16 v18, 0x6

    aget-byte v15, v14, v18

    const/16 v18, 0x7

    move-object/from16 v20, v7

    .end local v7    # "firstSpContainer":Ljxl/biff/drawing/EscherContainer;
    .local v20, "firstSpContainer":Ljxl/biff/drawing/EscherContainer;
    aget-byte v7, v14, v18

    invoke-static {v2, v4, v15, v7}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v2

    .line 212
    .local v2, "len":I
    add-int v4, v2, v6

    const/4 v7, 0x4

    invoke-static {v4, v14, v7}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 215
    const/16 v4, 0x1c

    aget-byte v7, v14, v4

    const/16 v15, 0x1d

    aget-byte v15, v14, v15

    const/16 v18, 0x1e

    aget-byte v4, v14, v18

    const/16 v18, 0x1f

    move/from16 v21, v2

    .end local v2    # "len":I
    .local v21, "len":I
    aget-byte v2, v14, v18

    invoke-static {v7, v15, v4, v2}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v2

    .line 219
    .end local v21    # "len":I
    .restart local v2    # "len":I
    add-int v4, v2, v6

    const/16 v7, 0x1c

    invoke-static {v4, v14, v7}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 226
    if-lez v3, :cond_b

    iget-object v4, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/biff/drawing/DrawingGroupObject;

    invoke-interface {v4}, Ljxl/biff/drawing/DrawingGroupObject;->isFormObject()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 229
    array-length v4, v14

    add-int/lit8 v4, v4, -0x8

    new-array v4, v4, [B

    .line 230
    .local v4, "msodata2":[B
    array-length v15, v4

    invoke-static {v14, v7, v4, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    move-object v14, v4

    .line 234
    .end local v4    # "msodata2":[B
    :cond_b
    new-instance v4, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v4, v14}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>([B)V

    .line 235
    .local v4, "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    invoke-virtual {v1, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 237
    if-lez v3, :cond_c

    .line 239
    iget-object v7, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljxl/biff/drawing/DrawingGroupObject;

    .line 240
    .local v7, "firstDrawing":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v7, v1}, Ljxl/biff/drawing/DrawingGroupObject;->writeAdditionalRecords(Ljxl/write/biff/File;)V

    .line 241
    .end local v7    # "firstDrawing":Ljxl/biff/drawing/DrawingGroupObject;
    goto :goto_5

    .line 245
    :cond_c
    const/4 v15, 0x0

    iget-object v7, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    aget-object v7, v7, v15

    .line 246
    .local v7, "chart":Ljxl/biff/drawing/Chart;
    invoke-virtual {v7}, Ljxl/biff/drawing/Chart;->getObjRecord()Ljxl/biff/drawing/ObjRecord;

    move-result-object v15

    .line 247
    .local v15, "objRecord":Ljxl/biff/drawing/ObjRecord;
    invoke-virtual {v1, v15}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 248
    invoke-virtual {v1, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 252
    .end local v7    # "chart":Ljxl/biff/drawing/Chart;
    .end local v15    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    :goto_5
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_6
    array-length v15, v5

    if-ge v7, v15, :cond_10

    .line 254
    aget-object v15, v5, v7

    check-cast v15, [B

    check-cast v15, [B

    .line 258
    .local v15, "bytes":[B
    if-ge v7, v3, :cond_e

    move/from16 v18, v2

    .end local v2    # "len":I
    .local v18, "len":I
    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/drawing/DrawingGroupObject;

    invoke-interface {v2}, Ljxl/biff/drawing/DrawingGroupObject;->isFormObject()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 261
    array-length v2, v15

    add-int/lit8 v2, v2, -0x8

    new-array v2, v2, [B

    .line 262
    .local v2, "bytes2":[B
    move-object/from16 v19, v4

    .end local v4    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v19, "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    array-length v4, v2

    move-object/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "spContainerData":[Ljava/lang/Object;
    .local v21, "spContainerData":[Ljava/lang/Object;
    invoke-static {v15, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    move-object v15, v2

    goto :goto_7

    .line 258
    .end local v2    # "bytes2":[B
    .end local v19    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .end local v21    # "spContainerData":[Ljava/lang/Object;
    .restart local v4    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v5    # "spContainerData":[Ljava/lang/Object;
    :cond_d
    move-object/from16 v19, v4

    move-object/from16 v21, v5

    const/4 v5, 0x0

    .end local v4    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .end local v5    # "spContainerData":[Ljava/lang/Object;
    .restart local v19    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v21    # "spContainerData":[Ljava/lang/Object;
    goto :goto_7

    .end local v18    # "len":I
    .end local v19    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .end local v21    # "spContainerData":[Ljava/lang/Object;
    .local v2, "len":I
    .restart local v4    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v5    # "spContainerData":[Ljava/lang/Object;
    :cond_e
    move/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    const/4 v5, 0x0

    .line 266
    .end local v2    # "len":I
    .end local v4    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .end local v5    # "spContainerData":[Ljava/lang/Object;
    .restart local v18    # "len":I
    .restart local v19    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v21    # "spContainerData":[Ljava/lang/Object;
    :goto_7
    new-instance v2, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v2, v15}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>([B)V

    move-object v4, v2

    .line 267
    .end local v19    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v4    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    invoke-virtual {v1, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 269
    if-ge v7, v3, :cond_f

    .line 272
    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/drawing/DrawingGroupObject;

    .line 273
    .local v2, "d":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v2, v1}, Ljxl/biff/drawing/DrawingGroupObject;->writeAdditionalRecords(Ljxl/write/biff/File;)V

    .line 274
    .end local v2    # "d":Ljxl/biff/drawing/DrawingGroupObject;
    goto :goto_8

    .line 277
    :cond_f
    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    sub-int v16, v7, v3

    aget-object v2, v2, v16

    .line 278
    .local v2, "chart":Ljxl/biff/drawing/Chart;
    invoke-virtual {v2}, Ljxl/biff/drawing/Chart;->getObjRecord()Ljxl/biff/drawing/ObjRecord;

    move-result-object v5

    .line 279
    .local v5, "objRecord":Ljxl/biff/drawing/ObjRecord;
    invoke-virtual {v1, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 280
    invoke-virtual {v1, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 252
    .end local v2    # "chart":Ljxl/biff/drawing/Chart;
    .end local v5    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .end local v15    # "bytes":[B
    :goto_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v18

    move-object/from16 v5, v21

    goto :goto_6

    .end local v18    # "len":I
    .end local v21    # "spContainerData":[Ljava/lang/Object;
    .local v2, "len":I
    .local v5, "spContainerData":[Ljava/lang/Object;
    :cond_10
    move/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    .line 285
    .end local v2    # "len":I
    .end local v4    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .end local v5    # "spContainerData":[Ljava/lang/Object;
    .end local v7    # "i":I
    .restart local v18    # "len":I
    .restart local v19    # "msoDrawingRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v21    # "spContainerData":[Ljava/lang/Object;
    iget-object v2, v0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 287
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/biff/drawing/DrawingGroupObject;

    .line 288
    .local v4, "dgo2":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v4, v1}, Ljxl/biff/drawing/DrawingGroupObject;->writeTailRecords(Ljxl/write/biff/File;)V

    .line 289
    .end local v4    # "dgo2":Ljxl/biff/drawing/DrawingGroupObject;
    goto :goto_9

    .line 290
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_11
    return-void
.end method
