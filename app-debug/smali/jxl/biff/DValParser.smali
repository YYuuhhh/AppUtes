.class public Ljxl/biff/DValParser;
.super Ljava/lang/Object;
.source "DValParser.java"


# static fields
.field private static PROMPT_BOX_AT_CELL_MASK:I

.field private static PROMPT_BOX_VISIBLE_MASK:I

.field private static VALIDITY_DATA_CACHED_MASK:I

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private numDVRecords:I

.field private objectId:I

.field private promptBoxAtCell:Z

.field private promptBoxVisible:Z

.field private validityDataCached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/biff/DValParser;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/DValParser;->logger:Ljxl/common/Logger;

    .line 38
    const/4 v0, 0x1

    sput v0, Ljxl/biff/DValParser;->PROMPT_BOX_VISIBLE_MASK:I

    .line 39
    const/4 v0, 0x2

    sput v0, Ljxl/biff/DValParser;->PROMPT_BOX_AT_CELL_MASK:I

    .line 40
    const/4 v0, 0x4

    sput v0, Ljxl/biff/DValParser;->VALIDITY_DATA_CACHED_MASK:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "objid"    # I
    .param p2, "num"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Ljxl/biff/DValParser;->objectId:I

    .line 89
    iput p2, p0, Ljxl/biff/DValParser;->numDVRecords:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/DValParser;->validityDataCached:Z

    .line 91
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "data"    # [B

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 74
    .local v1, "options":I
    sget v3, Ljxl/biff/DValParser;->PROMPT_BOX_VISIBLE_MASK:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Ljxl/biff/DValParser;->promptBoxVisible:Z

    .line 75
    sget v3, Ljxl/biff/DValParser;->PROMPT_BOX_AT_CELL_MASK:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Ljxl/biff/DValParser;->promptBoxAtCell:Z

    .line 76
    sget v3, Ljxl/biff/DValParser;->VALIDITY_DATA_CACHED_MASK:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Ljxl/biff/DValParser;->validityDataCached:Z

    .line 78
    const/16 v0, 0xa

    aget-byte v0, p1, v0

    const/16 v2, 0xb

    aget-byte v2, p1, v2

    const/16 v3, 0xc

    aget-byte v3, p1, v3

    const/16 v4, 0xd

    aget-byte v4, p1, v4

    invoke-static {v0, v2, v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/biff/DValParser;->objectId:I

    .line 79
    const/16 v0, 0xe

    aget-byte v0, p1, v0

    const/16 v2, 0xf

    aget-byte v2, p1, v2

    const/16 v3, 0x10

    aget-byte v3, p1, v3

    const/16 v4, 0x11

    aget-byte v4, p1, v4

    invoke-static {v0, v2, v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/biff/DValParser;->numDVRecords:I

    .line 81
    return-void
.end method


# virtual methods
.method public dvAdded()V
    .locals 1

    .line 160
    iget v0, p0, Ljxl/biff/DValParser;->numDVRecords:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/DValParser;->numDVRecords:I

    .line 161
    return-void
.end method

.method public dvRemoved()V
    .locals 1

    .line 132
    iget v0, p0, Ljxl/biff/DValParser;->numDVRecords:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/biff/DValParser;->numDVRecords:I

    .line 133
    return-void
.end method

.method public getData()[B
    .locals 4

    .line 98
    const/16 v0, 0x12

    new-array v0, v0, [B

    .line 100
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 102
    .local v1, "options":I
    iget-boolean v2, p0, Ljxl/biff/DValParser;->promptBoxVisible:Z

    if-eqz v2, :cond_0

    .line 104
    sget v2, Ljxl/biff/DValParser;->PROMPT_BOX_VISIBLE_MASK:I

    or-int/2addr v1, v2

    .line 107
    :cond_0
    iget-boolean v2, p0, Ljxl/biff/DValParser;->promptBoxAtCell:Z

    if-eqz v2, :cond_1

    .line 109
    sget v2, Ljxl/biff/DValParser;->PROMPT_BOX_AT_CELL_MASK:I

    or-int/2addr v1, v2

    .line 112
    :cond_1
    iget-boolean v2, p0, Ljxl/biff/DValParser;->validityDataCached:Z

    if-eqz v2, :cond_2

    .line 114
    sget v2, Ljxl/biff/DValParser;->VALIDITY_DATA_CACHED_MASK:I

    or-int/2addr v1, v2

    .line 117
    :cond_2
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 119
    iget v2, p0, Ljxl/biff/DValParser;->objectId:I

    const/16 v3, 0xa

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 121
    iget v2, p0, Ljxl/biff/DValParser;->numDVRecords:I

    const/16 v3, 0xe

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 123
    return-object v0
.end method

.method public getNumberOfDVRecords()I
    .locals 1

    .line 142
    iget v0, p0, Ljxl/biff/DValParser;->numDVRecords:I

    return v0
.end method

.method public getObjectId()I
    .locals 1

    .line 152
    iget v0, p0, Ljxl/biff/DValParser;->objectId:I

    return v0
.end method
