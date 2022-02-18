.class public final Ljxl/read/biff/CompoundFile;
.super Ljxl/biff/BaseCompoundFile;
.source "CompoundFile.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private bigBlockChain:[I

.field private bigBlockDepotBlocks:[I

.field private data:[B

.field private extensionBlock:I

.field private numBigBlockDepotBlocks:I

.field private numExtensionBlocks:I

.field private propertySets:Ljava/util/ArrayList;

.field private rootEntry:[B

.field private rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

.field private rootStartBlock:I

.field private sbdStartBlock:I

.field private settings:Ljxl/WorkbookSettings;

.field private smallBlockChain:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Ljxl/read/biff/CompoundFile;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>([BLjxl/WorkbookSettings;)V
    .locals 10
    .param p1, "d"    # [B
    .param p2, "ws"    # Ljxl/WorkbookSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljxl/biff/BaseCompoundFile;-><init>()V

    .line 108
    iput-object p1, p0, Ljxl/read/biff/CompoundFile;->data:[B

    .line 109
    iput-object p2, p0, Ljxl/read/biff/CompoundFile;->settings:Ljxl/WorkbookSettings;

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Ljxl/read/biff/CompoundFile;->IDENTIFIER:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v1, p0, Ljxl/read/biff/CompoundFile;->data:[B

    aget-byte v1, v1, v0

    sget-object v2, Ljxl/read/biff/CompoundFile;->IDENTIFIER:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    new-instance v1, Ljxl/read/biff/BiffException;

    sget-object v2, Ljxl/read/biff/BiffException;->unrecognizedOLEFile:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v1, v2}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v1

    .line 120
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/CompoundFile;->propertySets:Ljava/util/ArrayList;

    .line 121
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->data:[B

    const/16 v1, 0x2c

    aget-byte v1, v0, v1

    const/16 v2, 0x2d

    aget-byte v2, v0, v2

    const/16 v3, 0x2e

    aget-byte v3, v0, v3

    const/16 v4, 0x2f

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    .line 126
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->data:[B

    const/16 v1, 0x3c

    aget-byte v1, v0, v1

    const/16 v2, 0x3d

    aget-byte v2, v0, v2

    const/16 v3, 0x3e

    aget-byte v3, v0, v3

    const/16 v4, 0x3f

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/CompoundFile;->sbdStartBlock:I

    .line 131
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->data:[B

    const/16 v1, 0x30

    aget-byte v1, v0, v1

    const/16 v2, 0x31

    aget-byte v2, v0, v2

    const/16 v3, 0x32

    aget-byte v3, v0, v3

    const/16 v4, 0x33

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/CompoundFile;->rootStartBlock:I

    .line 136
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->data:[B

    const/16 v1, 0x44

    aget-byte v1, v0, v1

    const/16 v2, 0x45

    aget-byte v2, v0, v2

    const/16 v3, 0x46

    aget-byte v3, v0, v3

    const/16 v4, 0x47

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/CompoundFile;->extensionBlock:I

    .line 141
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->data:[B

    const/16 v1, 0x48

    aget-byte v1, v0, v1

    const/16 v2, 0x49

    aget-byte v2, v0, v2

    const/16 v3, 0x4a

    aget-byte v3, v0, v3

    const/16 v4, 0x4b

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/CompoundFile;->numExtensionBlocks:I

    .line 147
    iget v1, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    new-array v1, v1, [I

    iput-object v1, p0, Ljxl/read/biff/CompoundFile;->bigBlockDepotBlocks:[I

    .line 149
    const/16 v1, 0x4c

    .line 151
    .local v1, "pos":I
    iget v2, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    .line 153
    .local v2, "bbdBlocks":I
    if-eqz v0, :cond_2

    .line 155
    const/16 v2, 0x6d

    .line 158
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 160
    iget-object v3, p0, Ljxl/read/biff/CompoundFile;->bigBlockDepotBlocks:[I

    aget-byte v4, p1, v1

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p1, v6

    add-int/lit8 v7, v1, 0x3

    aget-byte v7, p1, v7

    invoke-static {v4, v5, v6, v7}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v4

    aput v4, v3, v0

    .line 162
    add-int/lit8 v1, v1, 0x4

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    iget v3, p0, Ljxl/read/biff/CompoundFile;->numExtensionBlocks:I

    if-ge v0, v3, :cond_6

    .line 167
    iget v3, p0, Ljxl/read/biff/CompoundFile;->extensionBlock:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v3, v3, 0x200

    .line 168
    .end local v1    # "pos":I
    .local v3, "pos":I
    iget v1, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    sub-int/2addr v1, v2

    const/16 v4, 0x7f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 171
    .local v1, "blocksToRead":I
    move v4, v2

    .local v4, "i":I
    :goto_3
    add-int v5, v2, v1

    if-ge v4, v5, :cond_4

    .line 173
    iget-object v5, p0, Ljxl/read/biff/CompoundFile;->bigBlockDepotBlocks:[I

    aget-byte v6, p1, v3

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p1, v7

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, p1, v8

    add-int/lit8 v9, v3, 0x3

    aget-byte v9, p1, v9

    invoke-static {v6, v7, v8, v9}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v6

    aput v6, v5, v4

    .line 175
    add-int/lit8 v3, v3, 0x4

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 178
    .end local v4    # "i":I
    :cond_4
    add-int/2addr v2, v1

    .line 179
    iget v4, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    if-ge v2, v4, :cond_5

    .line 181
    aget-byte v4, p1, v3

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p1, v5

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p1, v6

    add-int/lit8 v7, v3, 0x3

    aget-byte v7, p1, v7

    invoke-static {v4, v5, v6, v7}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v4

    iput v4, p0, Ljxl/read/biff/CompoundFile;->extensionBlock:I

    .line 165
    .end local v1    # "blocksToRead":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_2

    .line 186
    .end local v0    # "j":I
    .end local v3    # "pos":I
    .local v1, "pos":I
    :cond_6
    invoke-direct {p0}, Ljxl/read/biff/CompoundFile;->readBigBlockDepot()V

    .line 187
    invoke-direct {p0}, Ljxl/read/biff/CompoundFile;->readSmallBlockDepot()V

    .line 189
    iget v0, p0, Ljxl/read/biff/CompoundFile;->rootStartBlock:I

    invoke-direct {p0, v0}, Ljxl/read/biff/CompoundFile;->readData(I)[B

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/CompoundFile;->rootEntry:[B

    .line 190
    invoke-direct {p0}, Ljxl/read/biff/CompoundFile;->readPropertySets()V

    .line 191
    return-void
.end method

.method private findPropertyStorage(Ljava/lang/String;Ljxl/biff/BaseCompoundFile$PropertyStorage;)Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "base"    # Ljxl/biff/BaseCompoundFile$PropertyStorage;

    .line 381
    iget v0, p2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->child:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 383
    const/4 v0, 0x0

    return-object v0

    .line 387
    :cond_0
    iget v0, p2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->child:I

    invoke-direct {p0, v0}, Ljxl/read/biff/CompoundFile;->getPropertyStorage(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v0

    .line 388
    .local v0, "child":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    iget-object v2, v0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    return-object v0

    .line 394
    :cond_1
    move-object v2, v0

    .line 395
    .local v2, "prev":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    :cond_2
    iget v3, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    if-eq v3, v1, :cond_3

    .line 397
    iget v3, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    invoke-direct {p0, v3}, Ljxl/read/biff/CompoundFile;->getPropertyStorage(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v2

    .line 398
    iget-object v3, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 400
    return-object v2

    .line 405
    :cond_3
    move-object v3, v0

    .line 406
    .local v3, "next":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    :cond_4
    iget v4, v3, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    if-eq v4, v1, :cond_5

    .line 408
    iget v4, v3, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    invoke-direct {p0, v4}, Ljxl/read/biff/CompoundFile;->getPropertyStorage(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v3

    .line 409
    iget-object v4, v3, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 411
    return-object v3

    .line 415
    :cond_5
    invoke-direct {p0, p1, v0}, Ljxl/read/biff/CompoundFile;->findPropertyStorage(Ljava/lang/String;Ljxl/biff/BaseCompoundFile$PropertyStorage;)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v1

    return-object v1
.end method

.method private getBigBlockStream(Ljxl/biff/BaseCompoundFile$PropertyStorage;)[B
    .locals 8
    .param p1, "ps"    # Ljxl/biff/BaseCompoundFile$PropertyStorage;

    .line 475
    iget v0, p1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    const/16 v1, 0x200

    div-int/2addr v0, v1

    .line 476
    .local v0, "numBlocks":I
    iget v2, p1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_0

    .line 478
    add-int/lit8 v0, v0, 0x1

    .line 481
    :cond_0
    mul-int/lit16 v2, v0, 0x200

    new-array v2, v2, [B

    .line 483
    .local v2, "streamData":[B
    iget v3, p1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->startBlock:I

    .line 485
    .local v3, "block":I
    const/4 v4, 0x0

    .line 486
    .local v4, "count":I
    const/4 v5, 0x0

    .line 487
    .local v5, "pos":I
    :goto_0
    const/4 v6, -0x2

    if-eq v3, v6, :cond_1

    if-ge v4, v0, :cond_1

    .line 489
    add-int/lit8 v6, v3, 0x1

    mul-int/lit16 v5, v6, 0x200

    .line 490
    iget-object v6, p0, Ljxl/read/biff/CompoundFile;->data:[B

    mul-int/lit16 v7, v4, 0x200

    invoke-static {v6, v5, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    add-int/lit8 v4, v4, 0x1

    .line 493
    iget-object v6, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    aget v3, v6, v3

    goto :goto_0

    .line 496
    :cond_1
    if-eq v3, v6, :cond_2

    if-ne v4, v0, :cond_2

    .line 498
    sget-object v1, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    const-string v6, "Property storage size inconsistent with block chain."

    invoke-virtual {v1, v6}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 501
    :cond_2
    return-object v2
.end method

.method private getPropertyStorage(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .locals 1
    .param p1, "index"    # I

    .line 464
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->propertySets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    return-object v0
.end method

.method private getPropertyStorage(Ljava/lang/String;)Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->propertySets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 430
    .local v0, "i":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 431
    .local v1, "found":Z
    const/4 v2, 0x0

    .line 432
    .local v2, "multiple":Z
    const/4 v3, 0x0

    .line 433
    .local v3, "ps":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 435
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    .line 436
    .local v4, "ps2":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    iget-object v5, v4, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 438
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    move v2, v5

    .line 439
    const/4 v1, 0x1

    .line 440
    move-object v3, v4

    .line 442
    .end local v4    # "ps2":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    :cond_1
    goto :goto_0

    .line 444
    :cond_2
    if-eqz v2, :cond_3

    .line 446
    sget-object v4, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found multiple copies of property set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 449
    :cond_3
    if-eqz v1, :cond_4

    .line 454
    return-object v3

    .line 451
    :cond_4
    new-instance v4, Ljxl/read/biff/BiffException;

    sget-object v5, Ljxl/read/biff/BiffException;->streamNotFound:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v4, v5}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v4
.end method

.method private getSmallBlockStream(Ljxl/biff/BaseCompoundFile$PropertyStorage;)[B
    .locals 10
    .param p1, "ps"    # Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v0, v0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->startBlock:I

    invoke-direct {p0, v0}, Ljxl/read/biff/CompoundFile;->readData(I)[B

    move-result-object v0

    .line 514
    .local v0, "rootdata":[B
    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 516
    .local v2, "sbdata":[B
    iget v3, p1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->startBlock:I

    .line 517
    .local v3, "block":I
    const/4 v4, 0x0

    .line 519
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 520
    .local v5, "blockCount":I
    :goto_0
    iget-object v6, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    array-length v7, v6

    if-gt v5, v7, :cond_1

    const/4 v7, -0x2

    if-eq v3, v7, :cond_1

    .line 523
    move-object v6, v2

    .line 524
    .local v6, "olddata":[B
    array-length v7, v6

    const/16 v8, 0x40

    add-int/2addr v7, v8

    new-array v2, v7, [B

    .line 525
    array-length v7, v6

    invoke-static {v6, v1, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    mul-int/lit8 v4, v3, 0x40

    .line 529
    array-length v7, v6

    invoke-static {v0, v4, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    iget-object v7, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    aget v3, v7, v3

    .line 533
    const/4 v7, -0x1

    if-ne v3, v7, :cond_0

    .line 535
    sget-object v7, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect terminator for small block stream "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 536
    const/4 v3, -0x2

    .line 520
    .end local v6    # "olddata":[B
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 540
    :cond_1
    array-length v1, v6

    if-gt v5, v1, :cond_2

    .line 547
    return-object v2

    .line 544
    :cond_2
    new-instance v1, Ljxl/read/biff/BiffException;

    sget-object v6, Ljxl/read/biff/BiffException;->corruptFileFormat:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v1, v6}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v1
.end method

.method private readBigBlockDepot()V
    .locals 10

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 200
    .local v1, "index":I
    iget v2, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    mul-int/lit16 v2, v2, 0x200

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    .line 202
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    if-ge v2, v3, :cond_1

    .line 204
    iget-object v3, p0, Ljxl/read/biff/CompoundFile;->bigBlockDepotBlocks:[I

    aget v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v3, v3, 0x200

    .line 206
    .end local v0    # "pos":I
    .local v3, "pos":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    const/16 v4, 0x80

    if-ge v0, v4, :cond_0

    .line 208
    iget-object v4, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    iget-object v5, p0, Ljxl/read/biff/CompoundFile;->data:[B

    aget-byte v6, v5, v3

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v5, v7

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, v5, v8

    add-int/lit8 v9, v3, 0x3

    aget-byte v5, v5, v9

    invoke-static {v6, v7, v8, v5}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v5

    aput v5, v4, v1

    .line 210
    add-int/lit8 v3, v3, 0x4

    .line 211
    add-int/lit8 v1, v1, 0x1

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    .end local v0    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    .end local v3    # "pos":I
    .local v0, "pos":I
    :cond_1
    return-void
.end method

.method private readData(I)[B
    .locals 9
    .param p1, "bl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 559
    move v0, p1

    .line 560
    .local v0, "block":I
    const/4 v1, 0x0

    .line 561
    .local v1, "pos":I
    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 563
    .local v3, "entry":[B
    const/4 v4, 0x0

    .line 564
    .local v4, "blockCount":I
    :goto_0
    iget-object v5, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    array-length v6, v5

    if-gt v4, v6, :cond_1

    const/4 v6, -0x2

    if-eq v0, v6, :cond_1

    .line 567
    move-object v5, v3

    .line 568
    .local v5, "oldEntry":[B
    array-length v6, v5

    const/16 v7, 0x200

    add-int/2addr v6, v7

    new-array v3, v6, [B

    .line 569
    array-length v6, v5

    invoke-static {v5, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    add-int/lit8 v6, v0, 0x1

    mul-int/lit16 v1, v6, 0x200

    .line 571
    iget-object v6, p0, Ljxl/read/biff/CompoundFile;->data:[B

    array-length v8, v5

    invoke-static {v6, v1, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iget-object v6, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    aget v7, v6, v0

    if-eq v7, v0, :cond_0

    .line 577
    aget v0, v6, v0

    .line 564
    .end local v5    # "oldEntry":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 575
    .restart local v5    # "oldEntry":[B
    :cond_0
    new-instance v2, Ljxl/read/biff/BiffException;

    sget-object v6, Ljxl/read/biff/BiffException;->corruptFileFormat:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v2, v6}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v2

    .line 580
    .end local v5    # "oldEntry":[B
    :cond_1
    array-length v2, v5

    if-gt v4, v2, :cond_2

    .line 587
    return-object v3

    .line 584
    :cond_2
    new-instance v2, Ljxl/read/biff/BiffException;

    sget-object v5, Ljxl/read/biff/BiffException;->corruptFileFormat:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v2, v5}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v2
.end method

.method private readPropertySets()V
    .locals 7

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 271
    .local v1, "d":[B
    :goto_0
    iget-object v2, p0, Ljxl/read/biff/CompoundFile;->rootEntry:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v0, v3, :cond_4

    .line 273
    const/16 v3, 0x80

    new-array v1, v3, [B

    .line 274
    array-length v3, v1

    invoke-static {v2, v0, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    new-instance v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    invoke-direct {v2, p0, v1}, Ljxl/biff/BaseCompoundFile$PropertyStorage;-><init>(Ljxl/biff/BaseCompoundFile;[B)V

    .line 279
    .local v2, "ps":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    iget-object v3, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    const-string v4, "Root Entry"

    if-eqz v3, :cond_0

    iget-object v3, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 281
    :cond_0
    iget v3, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_1

    .line 283
    iput-object v4, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    .line 284
    sget-object v3, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property storage name for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is empty - setting to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_1

    .line 289
    :cond_1
    iget v3, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    if-eqz v3, :cond_2

    .line 291
    sget-object v3, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property storage type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is non-empty and has no associated name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 296
    :cond_2
    :goto_1
    iget-object v3, p0, Ljxl/read/biff/CompoundFile;->propertySets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v3, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 299
    iput-object v2, p0, Ljxl/read/biff/CompoundFile;->rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    .line 301
    :cond_3
    nop

    .end local v2    # "ps":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    add-int/lit16 v0, v0, 0x80

    .line 302
    goto/16 :goto_0

    .line 304
    :cond_4
    iget-object v2, p0, Ljxl/read/biff/CompoundFile;->rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    if-nez v2, :cond_5

    .line 306
    iget-object v2, p0, Ljxl/read/biff/CompoundFile;->propertySets:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iput-object v2, p0, Ljxl/read/biff/CompoundFile;->rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    .line 308
    :cond_5
    return-void
.end method

.method private readSmallBlockDepot()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 223
    .local v1, "index":I
    iget v2, p0, Ljxl/read/biff/CompoundFile;->sbdStartBlock:I

    .line 224
    .local v2, "sbdBlock":I
    const/4 v3, 0x0

    new-array v4, v3, [I

    iput-object v4, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    .line 228
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 230
    sget-object v3, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    const-string v4, "invalid small block depot number"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 231
    return-void

    .line 234
    :cond_0
    const/4 v4, 0x0

    .line 235
    .local v4, "blockCount":I
    :goto_0
    iget-object v5, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    array-length v6, v5

    if-gt v4, v6, :cond_2

    const/4 v6, -0x2

    if-eq v2, v6, :cond_2

    .line 238
    iget-object v5, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    .line 239
    .local v5, "oldChain":[I
    iget-object v6, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    array-length v6, v6

    const/16 v7, 0x80

    add-int/2addr v6, v7

    new-array v6, v6, [I

    iput-object v6, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    .line 240
    array-length v8, v5

    invoke-static {v5, v3, v6, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    add-int/lit8 v6, v2, 0x1

    mul-int/lit16 v6, v6, 0x200

    .line 244
    .end local v0    # "pos":I
    .local v6, "pos":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v0, v7, :cond_1

    .line 246
    iget-object v8, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    iget-object v9, p0, Ljxl/read/biff/CompoundFile;->data:[B

    aget-byte v10, v9, v6

    add-int/lit8 v11, v6, 0x1

    aget-byte v11, v9, v11

    add-int/lit8 v12, v6, 0x2

    aget-byte v12, v9, v12

    add-int/lit8 v13, v6, 0x3

    aget-byte v9, v9, v13

    invoke-static {v10, v11, v12, v9}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v9

    aput v9, v8, v1

    .line 248
    add-int/lit8 v6, v6, 0x4

    .line 249
    add-int/lit8 v1, v1, 0x1

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "j":I
    :cond_1
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    aget v2, v0, v2

    .line 235
    .end local v5    # "oldChain":[I
    add-int/lit8 v4, v4, 0x1

    move v0, v6

    goto :goto_0

    .line 255
    .end local v6    # "pos":I
    .local v0, "pos":I
    :cond_2
    array-length v3, v5

    if-gt v4, v3, :cond_3

    .line 261
    return-void

    .line 259
    :cond_3
    new-instance v3, Ljxl/read/biff/BiffException;

    sget-object v5, Ljxl/read/biff/BiffException;->corruptFileFormat:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v3, v5}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v3
.end method


# virtual methods
.method public findPropertyStorage(Ljava/lang/String;)Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    invoke-direct {p0, p1, v0}, Ljxl/read/biff/CompoundFile;->findPropertyStorage(Ljava/lang/String;Ljxl/biff/BaseCompoundFile$PropertyStorage;)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfPropertySets()I
    .locals 1

    .line 596
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->propertySets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPropertySet(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .locals 1
    .param p1, "index"    # I

    .line 608
    invoke-direct {p0, p1}, Ljxl/read/biff/CompoundFile;->getPropertyStorage(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v0

    return-object v0
.end method

.method public getStream(I)[B
    .locals 3
    .param p1, "psIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1}, Ljxl/read/biff/CompoundFile;->getPropertyStorage(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v0

    .line 352
    .local v0, "ps":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    iget v1, v0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    const/16 v2, 0x1000

    if-ge v1, v2, :cond_1

    iget-object v1, v0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    const-string v2, "Root Entry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    invoke-direct {p0, v0}, Ljxl/read/biff/CompoundFile;->getSmallBlockStream(Ljxl/biff/BaseCompoundFile$PropertyStorage;)[B

    move-result-object v1

    return-object v1

    .line 355
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Ljxl/read/biff/CompoundFile;->getBigBlockStream(Ljxl/biff/BaseCompoundFile$PropertyStorage;)[B

    move-result-object v1

    return-object v1
.end method

.method public getStream(Ljava/lang/String;)[B
    .locals 3
    .param p1, "streamName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    invoke-direct {p0, p1, v0}, Ljxl/read/biff/CompoundFile;->findPropertyStorage(Ljava/lang/String;Ljxl/biff/BaseCompoundFile$PropertyStorage;)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v0

    .line 324
    .local v0, "ps":Ljxl/biff/BaseCompoundFile$PropertyStorage;
    if-nez v0, :cond_0

    .line 326
    invoke-direct {p0, p1}, Ljxl/read/biff/CompoundFile;->getPropertyStorage(Ljava/lang/String;)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v0

    .line 329
    :cond_0
    iget v1, v0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    const/16 v2, 0x1000

    if-ge v1, v2, :cond_2

    const-string v1, "Root Entry"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 336
    :cond_1
    invoke-direct {p0, v0}, Ljxl/read/biff/CompoundFile;->getSmallBlockStream(Ljxl/biff/BaseCompoundFile$PropertyStorage;)[B

    move-result-object v1

    return-object v1

    .line 332
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Ljxl/read/biff/CompoundFile;->getBigBlockStream(Ljxl/biff/BaseCompoundFile$PropertyStorage;)[B

    move-result-object v1

    return-object v1
.end method
