.class final Ljxl/write/biff/CompoundFile;
.super Ljxl/biff/BaseCompoundFile;
.source "CompoundFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    }
.end annotation


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private additionalPropertyBlocks:I

.field private additionalPropertySets:Ljava/util/ArrayList;

.field private bbdPos:I

.field private bbdStartBlock:I

.field private bigBlockDepot:[B

.field private excelData:Ljxl/write/biff/ExcelDataOutput;

.field private excelDataBlocks:I

.field private excelDataStartBlock:I

.field private extensionBlock:I

.field private numBigBlockDepotBlocks:I

.field private numExtensionBlocks:I

.field private numPropertySets:I

.field private numRootEntryBlocks:I

.field private numSmallBlockDepotBlocks:I

.field private numSmallBlockDepotChainBlocks:I

.field private numSmallBlocks:I

.field private out:Ljava/io/OutputStream;

.field private requiredSize:I

.field private rootStartBlock:I

.field private sbdStartBlock:I

.field private sbdStartBlockChain:I

.field private size:I

.field private standardPropertySets:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Ljxl/write/biff/CompoundFile;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/CompoundFile;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/ExcelDataOutput;ILjava/io/OutputStream;Ljxl/read/biff/CompoundFile;)V
    .locals 18
    .param p1, "data"    # Ljxl/write/biff/ExcelDataOutput;
    .param p2, "l"    # I
    .param p3, "os"    # Ljava/io/OutputStream;
    .param p4, "rcf"    # Ljxl/read/biff/CompoundFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/CopyAdditionalPropertySetsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Ljxl/biff/BaseCompoundFile;-><init>()V

    .line 206
    iput v1, v0, Ljxl/write/biff/CompoundFile;->size:I

    .line 207
    move-object/from16 v2, p1

    iput-object v2, v0, Ljxl/write/biff/CompoundFile;->excelData:Ljxl/write/biff/ExcelDataOutput;

    .line 209
    move-object/from16 v3, p4

    invoke-direct {v0, v3}, Ljxl/write/biff/CompoundFile;->readAdditionalPropertySets(Ljxl/read/biff/CompoundFile;)V

    .line 211
    const/4 v4, 0x1

    iput v4, v0, Ljxl/write/biff/CompoundFile;->numRootEntryBlocks:I

    .line 212
    iget-object v5, v0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    add-int/lit8 v5, v5, 0x4

    iput v5, v0, Ljxl/write/biff/CompoundFile;->numPropertySets:I

    .line 216
    iget-object v5, v0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 218
    iget v5, v0, Ljxl/write/biff/CompoundFile;->numSmallBlocks:I

    mul-int/lit8 v5, v5, 0x4

    invoke-direct {v0, v5}, Ljxl/write/biff/CompoundFile;->getBigBlocksRequired(I)I

    move-result v5

    iput v5, v0, Ljxl/write/biff/CompoundFile;->numSmallBlockDepotChainBlocks:I

    .line 219
    iget v5, v0, Ljxl/write/biff/CompoundFile;->numSmallBlocks:I

    mul-int/lit8 v5, v5, 0x40

    invoke-direct {v0, v5}, Ljxl/write/biff/CompoundFile;->getBigBlocksRequired(I)I

    move-result v5

    iput v5, v0, Ljxl/write/biff/CompoundFile;->numSmallBlockDepotBlocks:I

    .line 222
    iget v5, v0, Ljxl/write/biff/CompoundFile;->numRootEntryBlocks:I

    iget-object v7, v0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/lit16 v7, v7, 0x80

    invoke-direct {v0, v7}, Ljxl/write/biff/CompoundFile;->getBigBlocksRequired(I)I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v0, Ljxl/write/biff/CompoundFile;->numRootEntryBlocks:I

    .line 227
    :cond_1
    invoke-direct {v0, v1}, Ljxl/write/biff/CompoundFile;->getBigBlocksRequired(I)I

    move-result v5

    .line 231
    .local v5, "blocks":I
    const/16 v7, 0x1000

    if-ge v1, v7, :cond_2

    .line 233
    iput v7, v0, Ljxl/write/biff/CompoundFile;->requiredSize:I

    goto :goto_1

    .line 237
    :cond_2
    mul-int/lit16 v7, v5, 0x200

    iput v7, v0, Ljxl/write/biff/CompoundFile;->requiredSize:I

    .line 240
    :goto_1
    move-object/from16 v7, p3

    iput-object v7, v0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    .line 244
    iget v8, v0, Ljxl/write/biff/CompoundFile;->requiredSize:I

    div-int/lit16 v8, v8, 0x200

    iput v8, v0, Ljxl/write/biff/CompoundFile;->excelDataBlocks:I

    .line 245
    iput v4, v0, Ljxl/write/biff/CompoundFile;->numBigBlockDepotBlocks:I

    .line 247
    const/16 v9, 0x6d

    .line 249
    .local v9, "blockChainLength":I
    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v8, v8, 0x8

    iget v10, v0, Ljxl/write/biff/CompoundFile;->additionalPropertyBlocks:I

    add-int/2addr v8, v10

    iget v10, v0, Ljxl/write/biff/CompoundFile;->numSmallBlockDepotBlocks:I

    add-int/2addr v8, v10

    iget v10, v0, Ljxl/write/biff/CompoundFile;->numSmallBlockDepotChainBlocks:I

    add-int/2addr v8, v10

    iget v10, v0, Ljxl/write/biff/CompoundFile;->numRootEntryBlocks:I

    add-int/2addr v8, v10

    .line 257
    .local v8, "startTotalBlocks":I
    add-int/lit8 v10, v8, 0x1

    .line 260
    .local v10, "totalBlocks":I
    int-to-double v11, v10

    const-wide/high16 v13, 0x4060000000000000L    # 128.0

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    iput v11, v0, Ljxl/write/biff/CompoundFile;->numBigBlockDepotBlocks:I

    .line 264
    add-int/2addr v11, v8

    .line 267
    .end local v10    # "totalBlocks":I
    .local v11, "totalBlocks":I
    move v12, v5

    .end local v5    # "blocks":I
    .local v12, "blocks":I
    int-to-double v4, v11

    div-double/2addr v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v0, Ljxl/write/biff/CompoundFile;->numBigBlockDepotBlocks:I

    .line 271
    add-int v5, v8, v4

    .line 275
    .end local v11    # "totalBlocks":I
    .local v5, "totalBlocks":I
    add-int/lit8 v11, v9, -0x1

    const/4 v15, -0x2

    if-le v4, v11, :cond_3

    .line 279
    iput v6, v0, Ljxl/write/biff/CompoundFile;->extensionBlock:I

    .line 282
    sub-int/2addr v4, v9

    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 284
    .local v4, "bbdBlocksLeft":I
    int-to-double v10, v4

    const-wide v16, 0x405fc00000000000L    # 127.0

    div-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    iput v6, v0, Ljxl/write/biff/CompoundFile;->numExtensionBlocks:I

    .line 289
    add-int/2addr v6, v8

    iget v10, v0, Ljxl/write/biff/CompoundFile;->numBigBlockDepotBlocks:I

    add-int/2addr v6, v10

    .line 292
    .end local v5    # "totalBlocks":I
    .local v6, "totalBlocks":I
    int-to-double v10, v6

    div-double/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    iput v5, v0, Ljxl/write/biff/CompoundFile;->numBigBlockDepotBlocks:I

    .line 296
    iget v10, v0, Ljxl/write/biff/CompoundFile;->numExtensionBlocks:I

    add-int/2addr v10, v8

    add-int/2addr v5, v10

    .line 299
    .end local v4    # "bbdBlocksLeft":I
    .end local v6    # "totalBlocks":I
    .restart local v5    # "totalBlocks":I
    goto :goto_2

    .line 302
    :cond_3
    iput v15, v0, Ljxl/write/biff/CompoundFile;->extensionBlock:I

    .line 303
    iput v6, v0, Ljxl/write/biff/CompoundFile;->numExtensionBlocks:I

    .line 308
    :goto_2
    iget v4, v0, Ljxl/write/biff/CompoundFile;->numExtensionBlocks:I

    iput v4, v0, Ljxl/write/biff/CompoundFile;->excelDataStartBlock:I

    .line 311
    iput v15, v0, Ljxl/write/biff/CompoundFile;->sbdStartBlock:I

    .line 312
    iget-object v6, v0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    iget v6, v0, Ljxl/write/biff/CompoundFile;->numSmallBlockDepotBlocks:I

    if-eqz v6, :cond_4

    .line 314
    iget v6, v0, Ljxl/write/biff/CompoundFile;->excelDataBlocks:I

    add-int/2addr v6, v4

    iget v10, v0, Ljxl/write/biff/CompoundFile;->additionalPropertyBlocks:I

    add-int/2addr v6, v10

    add-int/lit8 v6, v6, 0x10

    iput v6, v0, Ljxl/write/biff/CompoundFile;->sbdStartBlock:I

    .line 322
    :cond_4
    iput v15, v0, Ljxl/write/biff/CompoundFile;->sbdStartBlockChain:I

    .line 324
    iget v6, v0, Ljxl/write/biff/CompoundFile;->sbdStartBlock:I

    if-eq v6, v15, :cond_5

    .line 326
    iget v10, v0, Ljxl/write/biff/CompoundFile;->numSmallBlockDepotBlocks:I

    add-int/2addr v6, v10

    iput v6, v0, Ljxl/write/biff/CompoundFile;->sbdStartBlockChain:I

    .line 330
    :cond_5
    iget v6, v0, Ljxl/write/biff/CompoundFile;->sbdStartBlockChain:I

    if-eq v6, v15, :cond_6

    .line 332
    iget v4, v0, Ljxl/write/biff/CompoundFile;->numSmallBlockDepotChainBlocks:I

    add-int/2addr v6, v4

    iput v6, v0, Ljxl/write/biff/CompoundFile;->bbdStartBlock:I

    goto :goto_3

    .line 337
    :cond_6
    iget v6, v0, Ljxl/write/biff/CompoundFile;->excelDataBlocks:I

    add-int/2addr v4, v6

    iget v6, v0, Ljxl/write/biff/CompoundFile;->additionalPropertyBlocks:I

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x10

    iput v4, v0, Ljxl/write/biff/CompoundFile;->bbdStartBlock:I

    .line 344
    :goto_3
    iget v4, v0, Ljxl/write/biff/CompoundFile;->bbdStartBlock:I

    iget v6, v0, Ljxl/write/biff/CompoundFile;->numBigBlockDepotBlocks:I

    add-int/2addr v4, v6

    iput v4, v0, Ljxl/write/biff/CompoundFile;->rootStartBlock:I

    .line 348
    iget v6, v0, Ljxl/write/biff/CompoundFile;->numRootEntryBlocks:I

    add-int/2addr v4, v6

    if-eq v5, v4, :cond_7

    .line 350
    sget-object v4, Ljxl/write/biff/CompoundFile;->logger:Ljxl/common/Logger;

    const-string v6, "Root start block and total blocks are inconsistent  generated file may be corrupt"

    invoke-virtual {v4, v6}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 352
    sget-object v4, Ljxl/write/biff/CompoundFile;->logger:Ljxl/common/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RootStartBlock "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v0, Ljxl/write/biff/CompoundFile;->rootStartBlock:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " totalBlocks "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 354
    :cond_7
    return-void
.end method

.method private checkBbdPos()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    iget v0, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 665
    iget-object v0, p0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 668
    new-array v0, v1, [B

    iput-object v0, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    .line 669
    const/4 v0, 0x0

    iput v0, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    .line 671
    :cond_0
    return-void
.end method

.method private getBigBlocksRequired(I)I
    .locals 2
    .param p1, "length"    # I

    .line 907
    div-int/lit16 v0, p1, 0x200

    .line 909
    .local v0, "blocks":I
    rem-int/lit16 v1, p1, 0x200

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private getSmallBlocksRequired(I)I
    .locals 2
    .param p1, "length"    # I

    .line 921
    div-int/lit8 v0, p1, 0x40

    .line 923
    .local v0, "blocks":I
    rem-int/lit8 v1, p1, 0x40

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private readAdditionalPropertySets(Ljxl/read/biff/CompoundFile;)V
    .locals 11
    .param p1, "readCompoundFile"    # Ljxl/read/biff/CompoundFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/CopyAdditionalPropertySetsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    if-nez p1, :cond_0

    .line 369
    return-void

    .line 372
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    .line 373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/CompoundFile;->standardPropertySets:Ljava/util/HashMap;

    .line 374
    const/4 v0, 0x0

    .line 376
    .local v0, "blocksRequired":I
    invoke-virtual {p1}, Ljxl/read/biff/CompoundFile;->getNumberOfPropertySets()I

    move-result v1

    .line 378
    .local v1, "numPropertySets":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_8

    .line 380
    invoke-virtual {p1, v2}, Ljxl/read/biff/CompoundFile;->getPropertySet(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v3

    .line 382
    .local v3, "ps":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    const/4 v4, 0x0

    .line 384
    .local v4, "standard":Z
    iget-object v5, v3, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    const-string v6, "Root Entry"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 386
    const/4 v4, 0x1

    .line 387
    new-instance v5, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    invoke-direct {v5, v3, v7, v2}, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;-><init>(Ljxl/biff/BaseCompoundFile$PropertyStorage;[BI)V

    .line 388
    .local v5, "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    iget-object v8, p0, Ljxl/write/biff/CompoundFile;->standardPropertySets:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .end local v5    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    :cond_1
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    sget-object v6, Ljxl/write/biff/CompoundFile;->STANDARD_PROPERTY_SETS:[Ljava/lang/String;

    array-length v6, v6

    const/4 v8, 0x0

    if-ge v5, v6, :cond_4

    if-nez v4, :cond_4

    .line 394
    iget-object v6, v3, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    sget-object v9, Ljxl/write/biff/CompoundFile;->STANDARD_PROPERTY_SETS:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 397
    iget-object v6, v3, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljxl/read/biff/CompoundFile;->findPropertyStorage(Ljava/lang/String;)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v6

    .line 398
    .local v6, "ps2":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    if-eqz v6, :cond_2

    const/4 v8, 0x1

    :cond_2
    invoke-static {v8}, Ljxl/common/Assert;->verify(Z)V

    .line 400
    if-ne v6, v3, :cond_3

    .line 402
    const/4 v4, 0x1

    .line 403
    new-instance v8, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    invoke-direct {v8, v3, v7, v2}, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;-><init>(Ljxl/biff/BaseCompoundFile$PropertyStorage;[BI)V

    .line 404
    .local v8, "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    iget-object v9, p0, Ljxl/write/biff/CompoundFile;->standardPropertySets:Ljava/util/HashMap;

    sget-object v10, Ljxl/write/biff/CompoundFile;->STANDARD_PROPERTY_SETS:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .end local v6    # "ps2":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .end local v8    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 409
    .end local v5    # "j":I
    :cond_4
    if-nez v4, :cond_7

    .line 413
    const/4 v5, 0x0

    .line 414
    .local v5, "data":[B
    :try_start_0
    iget v6, v3, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    if-lez v6, :cond_5

    .line 416
    invoke-virtual {p1, v2}, Ljxl/read/biff/CompoundFile;->getStream(I)[B

    move-result-object v6

    move-object v5, v6

    goto :goto_2

    .line 420
    :cond_5
    new-array v6, v8, [B

    move-object v5, v6

    .line 422
    :goto_2
    new-instance v6, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    invoke-direct {v6, v3, v5, v2}, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;-><init>(Ljxl/biff/BaseCompoundFile$PropertyStorage;[BI)V

    .line 423
    .local v6, "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    iget-object v7, p0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    array-length v7, v5

    const/16 v8, 0x1000

    if-le v7, v8, :cond_6

    .line 427
    array-length v7, v5

    invoke-direct {p0, v7}, Ljxl/write/biff/CompoundFile;->getBigBlocksRequired(I)I

    move-result v7

    .line 428
    .local v7, "blocks":I
    add-int/2addr v0, v7

    .line 429
    .end local v7    # "blocks":I
    goto :goto_3

    .line 432
    :cond_6
    array-length v7, v5

    invoke-direct {p0, v7}, Ljxl/write/biff/CompoundFile;->getSmallBlocksRequired(I)I

    move-result v7

    .line 433
    .restart local v7    # "blocks":I
    iget v8, p0, Ljxl/write/biff/CompoundFile;->numSmallBlocks:I

    add-int/2addr v8, v7

    iput v8, p0, Ljxl/write/biff/CompoundFile;->numSmallBlocks:I
    :try_end_0
    .catch Ljxl/read/biff/BiffException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v5    # "data":[B
    .end local v6    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    .end local v7    # "blocks":I
    :goto_3
    goto :goto_4

    .line 436
    :catch_0
    move-exception v5

    .line 438
    .local v5, "e":Ljxl/read/biff/BiffException;
    sget-object v6, Ljxl/write/biff/CompoundFile;->logger:Ljxl/common/Logger;

    invoke-virtual {v6, v5}, Ljxl/common/Logger;->error(Ljava/lang/Object;)V

    .line 439
    new-instance v6, Ljxl/write/biff/CopyAdditionalPropertySetsException;

    invoke-direct {v6}, Ljxl/write/biff/CopyAdditionalPropertySetsException;-><init>()V

    throw v6

    .line 378
    .end local v3    # "ps":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .end local v4    # "standard":Z
    .end local v5    # "e":Ljxl/read/biff/BiffException;
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 444
    .end local v2    # "i":I
    :cond_8
    iput v0, p0, Ljxl/write/biff/CompoundFile;->additionalPropertyBlocks:I

    .line 445
    return-void
.end method

.method private writeAdditionalPropertySetBlockChains()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    iget-object v0, p0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 716
    return-void

    .line 719
    :cond_0
    iget v1, p0, Ljxl/write/biff/CompoundFile;->excelDataStartBlock:I

    iget v2, p0, Ljxl/write/biff/CompoundFile;->excelDataBlocks:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    .line 720
    .local v1, "blockNumber":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 722
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    .line 723
    .local v2, "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    iget-object v3, v2, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    array-length v3, v3

    const/16 v4, 0x1000

    if-le v3, v4, :cond_1

    .line 725
    iget-object v3, v2, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    array-length v3, v3

    invoke-direct {p0, v3}, Ljxl/write/biff/CompoundFile;->getBigBlocksRequired(I)I

    move-result v3

    .line 727
    .local v3, "numBlocks":I
    invoke-direct {p0, v1, v3}, Ljxl/write/biff/CompoundFile;->writeBlockChain(II)V

    .line 728
    add-int/2addr v1, v3

    .line 730
    .end local v2    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    .end local v3    # "numBlocks":I
    :cond_1
    goto :goto_0

    .line 731
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private writeAdditionalPropertySets()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 475
    return-void

    .line 478
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    .line 481
    .local v1, "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    iget-object v2, v1, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    .line 483
    .local v2, "data":[B
    array-length v3, v2

    const/16 v4, 0x1000

    if-le v3, v4, :cond_1

    .line 485
    array-length v3, v2

    invoke-direct {p0, v3}, Ljxl/write/biff/CompoundFile;->getBigBlocksRequired(I)I

    move-result v3

    .line 486
    .local v3, "numBlocks":I
    mul-int/lit16 v4, v3, 0x200

    .line 488
    .local v4, "requiredSize":I
    iget-object v5, p0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    array-length v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 490
    array-length v5, v2

    sub-int v5, v4, v5

    new-array v5, v5, [B

    .line 491
    .local v5, "padding":[B
    iget-object v6, p0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    array-length v8, v5

    invoke-virtual {v6, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 493
    .end local v1    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    .end local v2    # "data":[B
    .end local v3    # "numBlocks":I
    .end local v4    # "requiredSize":I
    .end local v5    # "padding":[B
    :cond_1
    goto :goto_0

    .line 494
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private writeBigBlockDepot()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    const/16 v0, 0x200

    new-array v1, v0, [B

    iput-object v1, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    .line 819
    const/4 v1, 0x0

    iput v1, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    .line 822
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljxl/write/biff/CompoundFile;->numExtensionBlocks:I

    const/4 v3, -0x3

    if-ge v1, v2, :cond_0

    .line 824
    iget-object v2, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    iget v4, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    invoke-static {v3, v2, v4}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 825
    iget v2, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    .line 826
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->checkBbdPos()V

    .line 822
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Ljxl/write/biff/CompoundFile;->excelDataStartBlock:I

    iget v2, p0, Ljxl/write/biff/CompoundFile;->excelDataBlocks:I

    invoke-direct {p0, v1, v2}, Ljxl/write/biff/CompoundFile;->writeBlockChain(II)V

    .line 834
    iget v1, p0, Ljxl/write/biff/CompoundFile;->excelDataStartBlock:I

    iget v2, p0, Ljxl/write/biff/CompoundFile;->excelDataBlocks:I

    add-int/2addr v1, v2

    iget v2, p0, Ljxl/write/biff/CompoundFile;->additionalPropertyBlocks:I

    add-int/2addr v1, v2

    .line 838
    .local v1, "summaryInfoBlock":I
    move v2, v1

    .local v2, "i":I
    :goto_1
    add-int/lit8 v4, v1, 0x7

    if-ge v2, v4, :cond_1

    .line 840
    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    iget v6, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    invoke-static {v4, v5, v6}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 841
    iget v4, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    .line 842
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->checkBbdPos()V

    .line 838
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 846
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    iget v4, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    const/4 v5, -0x2

    invoke-static {v5, v2, v4}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 847
    iget v2, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    .line 848
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->checkBbdPos()V

    .line 851
    add-int/lit8 v2, v1, 0x8

    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v4, v1, 0xf

    if-ge v2, v4, :cond_2

    .line 853
    add-int/lit8 v4, v2, 0x1

    iget-object v6, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    iget v7, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    invoke-static {v4, v6, v7}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 854
    iget v4, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    .line 855
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->checkBbdPos()V

    .line 851
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 859
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    iget v4, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    invoke-static {v5, v2, v4}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 860
    iget v2, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    .line 861
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->checkBbdPos()V

    .line 864
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->writeAdditionalPropertySetBlockChains()V

    .line 866
    iget v2, p0, Ljxl/write/biff/CompoundFile;->sbdStartBlock:I

    if-eq v2, v5, :cond_3

    .line 869
    iget v4, p0, Ljxl/write/biff/CompoundFile;->numSmallBlockDepotBlocks:I

    invoke-direct {p0, v2, v4}, Ljxl/write/biff/CompoundFile;->writeBlockChain(II)V

    .line 872
    iget v2, p0, Ljxl/write/biff/CompoundFile;->sbdStartBlockChain:I

    iget v4, p0, Ljxl/write/biff/CompoundFile;->numSmallBlockDepotChainBlocks:I

    invoke-direct {p0, v2, v4}, Ljxl/write/biff/CompoundFile;->writeBlockChain(II)V

    .line 877
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget v4, p0, Ljxl/write/biff/CompoundFile;->numBigBlockDepotBlocks:I

    if-ge v2, v4, :cond_4

    .line 879
    iget-object v4, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    iget v5, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    invoke-static {v3, v4, v5}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 880
    iget v4, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    .line 881
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->checkBbdPos()V

    .line 877
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 885
    .end local v2    # "i":I
    :cond_4
    iget v2, p0, Ljxl/write/biff/CompoundFile;->rootStartBlock:I

    iget v3, p0, Ljxl/write/biff/CompoundFile;->numRootEntryBlocks:I

    invoke-direct {p0, v2, v3}, Ljxl/write/biff/CompoundFile;->writeBlockChain(II)V

    .line 888
    iget v2, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    if-eqz v2, :cond_6

    .line 890
    iget v2, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_5

    .line 892
    iget-object v3, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    .line 890
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 894
    .end local v2    # "i":I
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 896
    :cond_6
    return-void
.end method

.method private writeBlockChain(II)V
    .locals 6
    .param p1, "startBlock"    # I
    .param p2, "numBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    add-int/lit8 v0, p2, -0x1

    .line 684
    .local v0, "blocksToWrite":I
    add-int/lit8 v1, p1, 0x1

    .line 686
    .local v1, "blockNumber":I
    :goto_0
    if-lez v0, :cond_1

    .line 688
    iget v2, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    rsub-int v2, v2, 0x200

    div-int/lit8 v2, v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 690
    .local v2, "bbdBlocks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 692
    iget-object v4, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    iget v5, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    invoke-static {v1, v4, v5}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 693
    iget v4, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    .line 694
    add-int/lit8 v1, v1, 0x1

    .line 690
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 697
    .end local v3    # "i":I
    :cond_0
    sub-int/2addr v0, v2

    .line 698
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->checkBbdPos()V

    .line 699
    .end local v2    # "bbdBlocks":I
    goto :goto_0

    .line 702
    :cond_1
    const/4 v2, -0x2

    iget-object v3, p0, Ljxl/write/biff/CompoundFile;->bigBlockDepot:[B

    iget v4, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    invoke-static {v2, v3, v4}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 703
    iget v2, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljxl/write/biff/CompoundFile;->bbdPos:I

    .line 704
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->checkBbdPos()V

    .line 705
    return-void
.end method

.method private writeDocumentSummaryData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 521
    .local v0, "padding":[B
    iget-object v1, p0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 522
    return-void
.end method

.method private writeExcelData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Ljxl/write/biff/CompoundFile;->excelData:Ljxl/write/biff/ExcelDataOutput;

    iget-object v1, p0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    invoke-interface {v0, v1}, Ljxl/write/biff/ExcelDataOutput;->writeData(Ljava/io/OutputStream;)V

    .line 507
    iget v0, p0, Ljxl/write/biff/CompoundFile;->requiredSize:I

    iget v1, p0, Ljxl/write/biff/CompoundFile;->size:I

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 508
    .local v0, "padding":[B
    iget-object v1, p0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 509
    return-void
.end method

.method private writeHeader()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 546
    .local v1, "headerBlock":[B
    iget v2, p0, Ljxl/write/biff/CompoundFile;->numExtensionBlocks:I

    mul-int/2addr v2, v0

    new-array v2, v2, [B

    .line 549
    .local v2, "extensionBlockData":[B
    sget-object v3, Ljxl/write/biff/CompoundFile;->IDENTIFIER:[B

    sget-object v4, Ljxl/write/biff/CompoundFile;->IDENTIFIER:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 552
    const/16 v3, 0x18

    const/16 v4, 0x3e

    aput-byte v4, v1, v3

    .line 553
    const/16 v3, 0x1a

    const/4 v4, 0x3

    aput-byte v4, v1, v3

    .line 554
    const/16 v3, 0x1c

    const/4 v4, -0x2

    aput-byte v4, v1, v3

    .line 555
    const/16 v3, 0x1d

    const/4 v5, -0x1

    aput-byte v5, v1, v3

    .line 556
    const/16 v3, 0x1e

    const/16 v6, 0x9

    aput-byte v6, v1, v3

    .line 557
    const/16 v3, 0x20

    const/4 v6, 0x6

    aput-byte v6, v1, v3

    .line 558
    const/16 v3, 0x39

    const/16 v6, 0x10

    aput-byte v6, v1, v3

    .line 561
    iget v3, p0, Ljxl/write/biff/CompoundFile;->numBigBlockDepotBlocks:I

    const/16 v6, 0x2c

    invoke-static {v3, v1, v6}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 566
    iget v3, p0, Ljxl/write/biff/CompoundFile;->sbdStartBlockChain:I

    const/16 v6, 0x3c

    invoke-static {v3, v1, v6}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 571
    iget v3, p0, Ljxl/write/biff/CompoundFile;->numSmallBlockDepotChainBlocks:I

    const/16 v6, 0x40

    invoke-static {v3, v1, v6}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 576
    iget v3, p0, Ljxl/write/biff/CompoundFile;->extensionBlock:I

    const/16 v6, 0x44

    invoke-static {v3, v1, v6}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 581
    iget v3, p0, Ljxl/write/biff/CompoundFile;->numExtensionBlocks:I

    const/16 v6, 0x48

    invoke-static {v3, v1, v6}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 586
    iget v3, p0, Ljxl/write/biff/CompoundFile;->rootStartBlock:I

    const/16 v6, 0x30

    invoke-static {v3, v1, v6}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 592
    const/16 v3, 0x4c

    .line 595
    .local v3, "pos":I
    iget v6, p0, Ljxl/write/biff/CompoundFile;->numBigBlockDepotBlocks:I

    const/16 v7, 0x6d

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 598
    .local v6, "blocksToWrite":I
    const/4 v7, 0x0

    .line 600
    .local v7, "blocksWritten":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 602
    iget v9, p0, Ljxl/write/biff/CompoundFile;->bbdStartBlock:I

    add-int/2addr v9, v8

    invoke-static {v9, v1, v3}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 605
    add-int/lit8 v3, v3, 0x4

    .line 606
    add-int/lit8 v7, v7, 0x1

    .line 600
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 610
    .end local v8    # "i":I
    :cond_0
    move v8, v3

    .restart local v8    # "i":I
    :goto_1
    if-ge v8, v0, :cond_1

    .line 612
    aput-byte v5, v1, v8

    .line 610
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 615
    .end local v8    # "i":I
    :cond_1
    iget-object v0, p0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 618
    const/4 v0, 0x0

    .line 620
    .end local v3    # "pos":I
    .local v0, "pos":I
    const/4 v3, 0x0

    .local v3, "extBlock":I
    :goto_2
    iget v8, p0, Ljxl/write/biff/CompoundFile;->numExtensionBlocks:I

    if-ge v3, v8, :cond_4

    .line 622
    iget v8, p0, Ljxl/write/biff/CompoundFile;->numBigBlockDepotBlocks:I

    sub-int/2addr v8, v7

    const/16 v9, 0x7f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 625
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v8, v6, :cond_2

    .line 627
    iget v9, p0, Ljxl/write/biff/CompoundFile;->bbdStartBlock:I

    add-int/2addr v9, v7

    add-int/2addr v9, v8

    invoke-static {v9, v2, v0}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 630
    add-int/lit8 v0, v0, 0x4

    .line 625
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 633
    .end local v8    # "j":I
    :cond_2
    add-int/2addr v7, v6

    .line 636
    iget v8, p0, Ljxl/write/biff/CompoundFile;->numBigBlockDepotBlocks:I

    if-ne v7, v8, :cond_3

    move v8, v4

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v3, 0x1

    .line 638
    .local v8, "nextBlock":I
    :goto_4
    invoke-static {v8, v2, v0}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 639
    nop

    .end local v8    # "nextBlock":I
    add-int/lit8 v0, v0, 0x4

    .line 620
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 642
    .end local v3    # "extBlock":I
    :cond_4
    if-lez v8, :cond_6

    .line 645
    move v3, v0

    .local v3, "i":I
    :goto_5
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 647
    aput-byte v5, v2, v3

    .line 645
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 650
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 652
    :cond_6
    return-void
.end method

.method private writePropertySets()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 933
    move-object/from16 v0, p0

    iget v1, v0, Ljxl/write/biff/CompoundFile;->numRootEntryBlocks:I

    mul-int/lit16 v1, v1, 0x200

    new-array v1, v1, [B

    .line 935
    .local v1, "propertySetStorage":[B
    const/4 v2, 0x0

    .line 936
    .local v2, "pos":I
    const/4 v3, 0x0

    .line 939
    .local v3, "mappings":[I
    iget-object v4, v0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 941
    iget v4, v0, Ljxl/write/biff/CompoundFile;->numPropertySets:I

    new-array v3, v4, [I

    .line 944
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v5, Ljxl/write/biff/CompoundFile;->STANDARD_PROPERTY_SETS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 946
    iget-object v5, v0, Ljxl/write/biff/CompoundFile;->standardPropertySets:Ljava/util/HashMap;

    sget-object v6, Ljxl/write/biff/CompoundFile;->STANDARD_PROPERTY_SETS:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    .line 949
    .local v5, "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    if-eqz v5, :cond_0

    .line 951
    iget v6, v5, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->number:I

    aput v4, v3, v6

    goto :goto_1

    .line 955
    :cond_0
    sget-object v6, Ljxl/write/biff/CompoundFile;->logger:Ljxl/common/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Standard property set "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljxl/write/biff/CompoundFile;->STANDARD_PROPERTY_SETS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not present in source file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 944
    .end local v5    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 961
    .end local v4    # "i":I
    :cond_1
    sget-object v4, Ljxl/write/biff/CompoundFile;->STANDARD_PROPERTY_SETS:[Ljava/lang/String;

    array-length v4, v4

    .line 962
    .local v4, "newMapping":I
    iget-object v5, v0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 964
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    .line 965
    .local v6, "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    iget v7, v6, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->number:I

    aput v4, v3, v7

    .line 966
    nop

    .end local v6    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    add-int/lit8 v4, v4, 0x1

    .line 967
    goto :goto_2

    .line 970
    .end local v4    # "newMapping":I
    .end local v5    # "i":Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    .line 971
    .local v4, "child":I
    const/4 v5, 0x0

    .line 972
    .local v5, "previous":I
    const/4 v6, 0x0

    .line 975
    .local v6, "next":I
    const/4 v7, 0x0

    .line 977
    .local v7, "size":I
    iget-object v8, v0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    const/16 v9, 0x1000

    if-eqz v8, :cond_5

    .line 980
    iget v8, v0, Ljxl/write/biff/CompoundFile;->requiredSize:I

    invoke-direct {v0, v8}, Ljxl/write/biff/CompoundFile;->getBigBlocksRequired(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x200

    add-int/2addr v7, v8

    .line 983
    invoke-direct {v0, v9}, Ljxl/write/biff/CompoundFile;->getBigBlocksRequired(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x200

    add-int/2addr v7, v8

    .line 984
    invoke-direct {v0, v9}, Ljxl/write/biff/CompoundFile;->getBigBlocksRequired(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x200

    add-int/2addr v7, v8

    .line 987
    iget-object v8, v0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 989
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    .line 990
    .local v10, "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    iget-object v11, v10, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v11, v11, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 992
    iget-object v11, v10, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v11, v11, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    if-lt v11, v9, :cond_3

    .line 994
    iget-object v11, v10, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v11, v11, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    invoke-direct {v0, v11}, Ljxl/write/biff/CompoundFile;->getBigBlocksRequired(I)I

    move-result v11

    mul-int/lit16 v11, v11, 0x200

    add-int/2addr v7, v11

    goto :goto_4

    .line 999
    :cond_3
    iget-object v11, v10, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v11, v11, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    invoke-direct {v0, v11}, Ljxl/write/biff/CompoundFile;->getSmallBlocksRequired(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x40

    add-int/2addr v7, v11

    .line 1003
    .end local v10    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    :cond_4
    :goto_4
    goto :goto_3

    .line 1007
    .end local v8    # "i":Ljava/util/Iterator;
    :cond_5
    new-instance v8, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    const-string v10, "Root Entry"

    invoke-direct {v8, v0, v10}, Ljxl/biff/BaseCompoundFile$PropertyStorage;-><init>(Ljxl/biff/BaseCompoundFile;Ljava/lang/String;)V

    .line 1008
    .local v8, "ps":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    const/4 v11, 0x5

    invoke-virtual {v8, v11}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setType(I)V

    .line 1009
    iget v11, v0, Ljxl/write/biff/CompoundFile;->sbdStartBlock:I

    invoke-virtual {v8, v11}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setStartBlock(I)V

    .line 1010
    invoke-virtual {v8, v7}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setSize(I)V

    .line 1011
    const/4 v11, -0x1

    invoke-virtual {v8, v11}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setPrevious(I)V

    .line 1012
    invoke-virtual {v8, v11}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setNext(I)V

    .line 1013
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setColour(I)V

    .line 1015
    const/4 v4, 0x1

    .line 1016
    iget-object v13, v0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    if-eqz v13, :cond_6

    .line 1018
    iget-object v13, v0, Ljxl/write/biff/CompoundFile;->standardPropertySets:Ljava/util/HashMap;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    .line 1020
    .restart local v10    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    iget-object v13, v10, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v13, v13, Ljxl/biff/BaseCompoundFile$PropertyStorage;->child:I

    aget v4, v3, v13

    .line 1022
    .end local v10    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    :cond_6
    invoke-virtual {v8, v4}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setChild(I)V

    .line 1024
    iget-object v10, v8, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v13, 0x80

    invoke-static {v10, v12, v1, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1027
    add-int/2addr v2, v13

    .line 1031
    new-instance v10, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    const-string v14, "Workbook"

    invoke-direct {v10, v0, v14}, Ljxl/biff/BaseCompoundFile$PropertyStorage;-><init>(Ljxl/biff/BaseCompoundFile;Ljava/lang/String;)V

    move-object v8, v10

    .line 1032
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setType(I)V

    .line 1033
    iget v15, v0, Ljxl/write/biff/CompoundFile;->excelDataStartBlock:I

    invoke-virtual {v8, v15}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setStartBlock(I)V

    .line 1035
    iget v15, v0, Ljxl/write/biff/CompoundFile;->requiredSize:I

    invoke-virtual {v8, v15}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setSize(I)V

    .line 1039
    const/4 v5, 0x3

    .line 1040
    const/4 v6, -0x1

    .line 1042
    iget-object v15, v0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    if-eqz v15, :cond_9

    .line 1044
    iget-object v15, v0, Ljxl/write/biff/CompoundFile;->standardPropertySets:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    .line 1046
    .local v14, "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    iget-object v15, v14, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v15, v15, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    if-eq v15, v11, :cond_7

    iget-object v15, v14, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v15, v15, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    aget v15, v3, v15

    goto :goto_5

    :cond_7
    move v15, v11

    :goto_5
    move v5, v15

    .line 1048
    iget-object v15, v14, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v15, v15, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    if-eq v15, v11, :cond_8

    iget-object v15, v14, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v15, v15, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    aget v15, v3, v15

    goto :goto_6

    :cond_8
    move v15, v11

    :goto_6
    move v6, v15

    .line 1052
    .end local v14    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    :cond_9
    invoke-virtual {v8, v5}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setPrevious(I)V

    .line 1053
    invoke-virtual {v8, v6}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setNext(I)V

    .line 1054
    invoke-virtual {v8, v11}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setChild(I)V

    .line 1056
    iget-object v14, v8, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    invoke-static {v14, v12, v1, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1059
    add-int/2addr v2, v13

    .line 1062
    new-instance v14, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    const-string v15, "\u0005SummaryInformation"

    invoke-direct {v14, v0, v15}, Ljxl/biff/BaseCompoundFile$PropertyStorage;-><init>(Ljxl/biff/BaseCompoundFile;Ljava/lang/String;)V

    move-object v8, v14

    .line 1063
    invoke-virtual {v8, v10}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setType(I)V

    .line 1064
    iget v14, v0, Ljxl/write/biff/CompoundFile;->excelDataStartBlock:I

    iget v10, v0, Ljxl/write/biff/CompoundFile;->excelDataBlocks:I

    add-int/2addr v14, v10

    invoke-virtual {v8, v14}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setStartBlock(I)V

    .line 1065
    invoke-virtual {v8, v9}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setSize(I)V

    .line 1067
    const/4 v5, 0x1

    .line 1068
    const/4 v6, 0x3

    .line 1070
    iget-object v10, v0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    if-eqz v10, :cond_c

    .line 1072
    iget-object v10, v0, Ljxl/write/biff/CompoundFile;->standardPropertySets:Ljava/util/HashMap;

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    .line 1075
    .restart local v10    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    if-eqz v10, :cond_c

    .line 1077
    iget-object v14, v10, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v14, v14, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    if-eq v14, v11, :cond_a

    iget-object v14, v10, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v14, v14, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    aget v14, v3, v14

    goto :goto_7

    :cond_a
    move v14, v11

    :goto_7
    move v5, v14

    .line 1079
    iget-object v14, v10, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v14, v14, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    if-eq v14, v11, :cond_b

    iget-object v14, v10, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v14, v14, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    aget v14, v3, v14

    goto :goto_8

    :cond_b
    move v14, v11

    :goto_8
    move v6, v14

    .line 1084
    .end local v10    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    :cond_c
    invoke-virtual {v8, v5}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setPrevious(I)V

    .line 1085
    invoke-virtual {v8, v6}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setNext(I)V

    .line 1086
    invoke-virtual {v8, v11}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setChild(I)V

    .line 1088
    iget-object v10, v8, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    invoke-static {v10, v12, v1, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1091
    add-int/2addr v2, v13

    .line 1094
    new-instance v10, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    const-string v14, "\u0005DocumentSummaryInformation"

    invoke-direct {v10, v0, v14}, Ljxl/biff/BaseCompoundFile$PropertyStorage;-><init>(Ljxl/biff/BaseCompoundFile;Ljava/lang/String;)V

    move-object v8, v10

    .line 1095
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setType(I)V

    .line 1096
    iget v10, v0, Ljxl/write/biff/CompoundFile;->excelDataStartBlock:I

    iget v14, v0, Ljxl/write/biff/CompoundFile;->excelDataBlocks:I

    add-int/2addr v10, v14

    add-int/lit8 v10, v10, 0x8

    invoke-virtual {v8, v10}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setStartBlock(I)V

    .line 1097
    invoke-virtual {v8, v9}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setSize(I)V

    .line 1098
    invoke-virtual {v8, v11}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setPrevious(I)V

    .line 1099
    invoke-virtual {v8, v11}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setNext(I)V

    .line 1100
    invoke-virtual {v8, v11}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setChild(I)V

    .line 1102
    iget-object v10, v8, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    invoke-static {v10, v12, v1, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1105
    add-int/2addr v2, v13

    .line 1110
    iget-object v10, v0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    if-nez v10, :cond_d

    .line 1112
    iget-object v9, v0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    invoke-virtual {v9, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1113
    return-void

    .line 1116
    :cond_d
    iget v14, v0, Ljxl/write/biff/CompoundFile;->excelDataStartBlock:I

    iget v15, v0, Ljxl/write/biff/CompoundFile;->excelDataBlocks:I

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x10

    .line 1117
    .local v14, "bigBlock":I
    const/4 v15, 0x0

    .line 1119
    .local v15, "smallBlock":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    .line 1121
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    .line 1123
    .local v12, "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    iget-object v13, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    array-length v13, v13

    if-le v13, v9, :cond_e

    move v13, v14

    goto :goto_a

    :cond_e
    move v13, v15

    .line 1126
    .local v13, "block":I
    :goto_a
    new-instance v9, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget-object v11, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget-object v11, v11, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-direct {v9, v0, v11}, Ljxl/biff/BaseCompoundFile$PropertyStorage;-><init>(Ljxl/biff/BaseCompoundFile;Ljava/lang/String;)V

    move-object v8, v9

    .line 1127
    iget-object v9, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v9, v9, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    invoke-virtual {v8, v9}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setType(I)V

    .line 1128
    invoke-virtual {v8, v13}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setStartBlock(I)V

    .line 1129
    iget-object v9, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v9, v9, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    invoke-virtual {v8, v9}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setSize(I)V

    .line 1132
    iget-object v9, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v9, v9, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    const/4 v11, -0x1

    if-eq v9, v11, :cond_f

    iget-object v9, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v9, v9, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    aget v9, v3, v9

    goto :goto_b

    :cond_f
    const/4 v9, -0x1

    :goto_b
    move v5, v9

    .line 1134
    iget-object v9, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v9, v9, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    const/4 v11, -0x1

    if-eq v9, v11, :cond_10

    iget-object v9, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v9, v9, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    aget v11, v3, v9

    goto :goto_c

    :cond_10
    const/4 v11, -0x1

    :goto_c
    move v6, v11

    .line 1136
    iget-object v9, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v9, v9, Ljxl/biff/BaseCompoundFile$PropertyStorage;->child:I

    const/4 v11, -0x1

    if-eq v9, v11, :cond_11

    iget-object v9, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->propertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v9, v9, Ljxl/biff/BaseCompoundFile$PropertyStorage;->child:I

    aget v9, v3, v9

    goto :goto_d

    :cond_11
    move v9, v11

    :goto_d
    move v4, v9

    .line 1139
    invoke-virtual {v8, v5}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setPrevious(I)V

    .line 1140
    invoke-virtual {v8, v6}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setNext(I)V

    .line 1141
    invoke-virtual {v8, v4}, Ljxl/biff/BaseCompoundFile$PropertyStorage;->setChild(I)V

    .line 1143
    iget-object v9, v8, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    move-object/from16 v16, v3

    const/16 v3, 0x80

    const/4 v11, 0x0

    .end local v3    # "mappings":[I
    .local v16, "mappings":[I
    invoke-static {v9, v11, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1146
    add-int/lit16 v2, v2, 0x80

    .line 1148
    iget-object v9, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    array-length v9, v9

    const/16 v3, 0x1000

    if-le v9, v3, :cond_12

    .line 1150
    iget-object v9, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    array-length v9, v9

    invoke-direct {v0, v9}, Ljxl/write/biff/CompoundFile;->getBigBlocksRequired(I)I

    move-result v9

    add-int/2addr v14, v9

    goto :goto_e

    .line 1154
    :cond_12
    iget-object v9, v12, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    array-length v9, v9

    invoke-direct {v0, v9}, Ljxl/write/biff/CompoundFile;->getSmallBlocksRequired(I)I

    move-result v9

    add-int/2addr v15, v9

    .line 1156
    .end local v12    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    .end local v13    # "block":I
    :goto_e
    move v9, v3

    move v12, v11

    move-object/from16 v3, v16

    const/4 v11, -0x1

    const/16 v13, 0x80

    goto/16 :goto_9

    .line 1119
    .end local v16    # "mappings":[I
    .restart local v3    # "mappings":[I
    :cond_13
    move-object/from16 v16, v3

    .line 1158
    .end local v3    # "mappings":[I
    .end local v10    # "i":Ljava/util/Iterator;
    .restart local v16    # "mappings":[I
    iget-object v3, v0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1159
    return-void
.end method

.method private writeSmallBlockDepot()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 783
    iget-object v0, p0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 785
    return-void

    .line 788
    :cond_0
    iget v1, p0, Ljxl/write/biff/CompoundFile;->numSmallBlockDepotBlocks:I

    mul-int/lit16 v1, v1, 0x200

    new-array v1, v1, [B

    .line 791
    .local v1, "smallBlockDepot":[B
    const/4 v2, 0x0

    .line 793
    .local v2, "pos":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 795
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    .line 797
    .local v3, "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    iget-object v4, v3, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    array-length v4, v4

    const/16 v5, 0x1000

    if-gt v4, v5, :cond_1

    .line 799
    iget-object v4, v3, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    array-length v4, v4

    invoke-direct {p0, v4}, Ljxl/write/biff/CompoundFile;->getSmallBlocksRequired(I)I

    move-result v4

    .line 800
    .local v4, "smallBlocks":I
    mul-int/lit8 v5, v4, 0x40

    .line 801
    .local v5, "length":I
    iget-object v6, v3, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    const/4 v7, 0x0

    iget-object v8, v3, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    array-length v8, v8

    invoke-static {v6, v7, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    add-int/2addr v2, v5

    .line 804
    .end local v3    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    .end local v4    # "smallBlocks":I
    .end local v5    # "length":I
    :cond_1
    goto :goto_0

    .line 806
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 807
    return-void
.end method

.method private writeSmallBlockDepotChain()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    iget v0, p0, Ljxl/write/biff/CompoundFile;->sbdStartBlockChain:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 740
    return-void

    .line 743
    :cond_0
    iget v0, p0, Ljxl/write/biff/CompoundFile;->numSmallBlockDepotChainBlocks:I

    mul-int/lit16 v0, v0, 0x200

    new-array v0, v0, [B

    .line 746
    .local v0, "smallBlockDepotChain":[B
    const/4 v2, 0x0

    .line 747
    .local v2, "pos":I
    const/4 v3, 0x1

    .line 749
    .local v3, "sbdBlockNumber":I
    iget-object v4, p0, Ljxl/write/biff/CompoundFile;->additionalPropertySets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 751
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;

    .line 753
    .local v5, "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    iget-object v6, v5, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    array-length v6, v6

    const/16 v7, 0x1000

    if-gt v6, v7, :cond_2

    iget-object v6, v5, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    array-length v6, v6

    if-eqz v6, :cond_2

    .line 756
    iget-object v6, v5, Ljxl/write/biff/CompoundFile$ReadPropertyStorage;->data:[B

    array-length v6, v6

    invoke-direct {p0, v6}, Ljxl/write/biff/CompoundFile;->getSmallBlocksRequired(I)I

    move-result v6

    .line 757
    .local v6, "numSmallBlocks":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_1

    .line 759
    invoke-static {v3, v0, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 762
    add-int/lit8 v2, v2, 0x4

    .line 763
    add-int/lit8 v3, v3, 0x1

    .line 757
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 767
    .end local v7    # "j":I
    :cond_1
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 768
    add-int/lit8 v2, v2, 0x4

    .line 769
    add-int/lit8 v3, v3, 0x1

    .line 771
    .end local v5    # "rps":Ljxl/write/biff/CompoundFile$ReadPropertyStorage;
    .end local v6    # "numSmallBlocks":I
    :cond_2
    goto :goto_0

    .line 773
    .end local v4    # "i":Ljava/util/Iterator;
    :cond_3
    iget-object v1, p0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 774
    return-void
.end method

.method private writeSummaryData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 534
    .local v0, "padding":[B
    iget-object v1, p0, Ljxl/write/biff/CompoundFile;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 535
    return-void
.end method


# virtual methods
.method public write()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->writeHeader()V

    .line 455
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->writeExcelData()V

    .line 456
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->writeDocumentSummaryData()V

    .line 457
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->writeSummaryData()V

    .line 458
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->writeAdditionalPropertySets()V

    .line 459
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->writeSmallBlockDepot()V

    .line 460
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->writeSmallBlockDepotChain()V

    .line 461
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->writeBigBlockDepot()V

    .line 462
    invoke-direct {p0}, Ljxl/write/biff/CompoundFile;->writePropertySets()V

    .line 466
    return-void
.end method
