.class Ljxl/write/biff/NameRecord;
.super Ljxl/biff/WritableRecordData;
.source "NameRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/NameRecord$NameRange;
    }
.end annotation


# static fields
.field private static final EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

.field private static final areaReference:I = 0x3b

.field private static final cellReference:I = 0x3a

.field private static logger:Ljxl/common/Logger; = null

.field private static final subExpression:I = 0x29

.field private static final union:I = 0x10


# instance fields
.field private builtInName:Ljxl/biff/BuiltInName;

.field private data:[B

.field private index:I

.field private modified:Z

.field private name:Ljava/lang/String;

.field private ranges:[Ljxl/write/biff/NameRecord$NameRange;

.field private sheetRef:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    const-class v0, Ljxl/write/biff/NameRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/NameRecord;->logger:Ljxl/common/Logger;

    .line 155
    new-instance v0, Ljxl/write/biff/NameRecord$NameRange;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/write/biff/NameRecord$NameRange;-><init>(IIIII)V

    sput-object v0, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIIIIIZ)V
    .locals 13
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theIndex"    # I
    .param p3, "extSheet"    # I
    .param p4, "theStartRow"    # I
    .param p5, "theEndRow"    # I
    .param p6, "theStartCol"    # I
    .param p7, "theEndCol"    # I
    .param p8, "global"    # Z

    .line 202
    move-object v0, p0

    move v1, p2

    sget-object v2, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    invoke-direct {p0, v2}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 62
    const/4 v2, 0x0

    iput v2, v0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 204
    move-object v3, p1

    iput-object v3, v0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    .line 205
    iput v1, v0, Ljxl/write/biff/NameRecord;->index:I

    .line 206
    if-eqz p8, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, 0x1

    :goto_0
    iput v4, v0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 209
    const/4 v4, 0x1

    new-array v5, v4, [Ljxl/write/biff/NameRecord$NameRange;

    iput-object v5, v0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 210
    new-instance v12, Ljxl/write/biff/NameRecord$NameRange;

    move-object v6, v12

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v6 .. v11}, Ljxl/write/biff/NameRecord$NameRange;-><init>(IIIII)V

    aput-object v12, v5, v2

    .line 215
    iput-boolean v4, v0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 216
    return-void
.end method

.method constructor <init>(Ljxl/biff/BuiltInName;IIIIIIIIIIZ)V
    .locals 12
    .param p1, "theName"    # Ljxl/biff/BuiltInName;
    .param p2, "theIndex"    # I
    .param p3, "extSheet"    # I
    .param p4, "theStartRow"    # I
    .param p5, "theEndRow"    # I
    .param p6, "theStartCol"    # I
    .param p7, "theEndCol"    # I
    .param p8, "theStartRow2"    # I
    .param p9, "theEndRow2"    # I
    .param p10, "theStartCol2"    # I
    .param p11, "theEndCol2"    # I
    .param p12, "global"    # Z

    .line 283
    move-object v0, p0

    move v1, p2

    sget-object v2, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    invoke-direct {p0, v2}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 62
    const/4 v2, 0x0

    iput v2, v0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 285
    move-object v3, p1

    iput-object v3, v0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    .line 286
    iput v1, v0, Ljxl/write/biff/NameRecord;->index:I

    .line 287
    if-eqz p12, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, 0x1

    :goto_0
    iput v4, v0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 290
    const/4 v4, 0x2

    new-array v4, v4, [Ljxl/write/biff/NameRecord$NameRange;

    iput-object v4, v0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 291
    new-instance v11, Ljxl/write/biff/NameRecord$NameRange;

    move-object v5, v11

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Ljxl/write/biff/NameRecord$NameRange;-><init>(IIIII)V

    aput-object v11, v4, v2

    .line 296
    iget-object v2, v0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    new-instance v10, Ljxl/write/biff/NameRecord$NameRange;

    move-object v4, v10

    move v5, p3

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v4 .. v9}, Ljxl/write/biff/NameRecord$NameRange;-><init>(IIIII)V

    const/4 v4, 0x1

    aput-object v10, v2, v4

    .line 301
    return-void
.end method

.method constructor <init>(Ljxl/biff/BuiltInName;IIIIIIZ)V
    .locals 12
    .param p1, "theName"    # Ljxl/biff/BuiltInName;
    .param p2, "theIndex"    # I
    .param p3, "extSheet"    # I
    .param p4, "theStartRow"    # I
    .param p5, "theEndRow"    # I
    .param p6, "theStartCol"    # I
    .param p7, "theEndCol"    # I
    .param p8, "global"    # Z

    .line 239
    move-object v0, p0

    move v1, p2

    sget-object v2, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    invoke-direct {p0, v2}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 62
    const/4 v2, 0x0

    iput v2, v0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 241
    move-object v3, p1

    iput-object v3, v0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    .line 242
    iput v1, v0, Ljxl/write/biff/NameRecord;->index:I

    .line 243
    if-eqz p8, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, 0x1

    :goto_0
    iput v4, v0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 246
    const/4 v4, 0x1

    new-array v4, v4, [Ljxl/write/biff/NameRecord$NameRange;

    iput-object v4, v0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 247
    new-instance v11, Ljxl/write/biff/NameRecord$NameRange;

    move-object v5, v11

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Ljxl/write/biff/NameRecord$NameRange;-><init>(IIIII)V

    aput-object v11, v4, v2

    .line 252
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/NameRecord;I)V
    .locals 5
    .param p1, "sr"    # Ljxl/read/biff/NameRecord;
    .param p2, "ind"    # I

    .line 164
    sget-object v0, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 166
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getData()[B

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/NameRecord;->data:[B

    .line 167
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getSheetRef()I

    move-result v1

    iput v1, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 169
    iput p2, p0, Ljxl/write/biff/NameRecord;->index:I

    .line 170
    iput-boolean v0, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 173
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v0

    .line 174
    .local v0, "r":[Ljxl/read/biff/NameRecord$NameRange;
    array-length v1, v0

    new-array v1, v1, [Ljxl/write/biff/NameRecord$NameRange;

    iput-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 177
    new-instance v3, Ljxl/write/biff/NameRecord$NameRange;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Ljxl/write/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord$NameRange;)V

    aput-object v3, v2, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method columnInserted(II)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I

    .line 633
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 635
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 637
    goto :goto_1

    .line 640
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v1

    const/4 v2, 0x1

    if-gt p2, v1, :cond_1

    .line 642
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->incrementFirstColumn()V

    .line 643
    iput-boolean v2, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 646
    :cond_1
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v1

    if-gt p2, v1, :cond_2

    .line 648
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->incrementLastColumn()V

    .line 649
    iput-boolean v2, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 633
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method columnRemoved(II)Z
    .locals 6
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I

    .line 567
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_4

    .line 569
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 571
    goto :goto_1

    .line 574
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 578
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    sget-object v2, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    aput-object v2, v1, v0

    .line 581
    :cond_1
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v1

    if-ge p2, v1, :cond_2

    if-lez p2, :cond_2

    .line 583
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->decrementFirstColumn()V

    .line 584
    iput-boolean v3, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 587
    :cond_2
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v1

    if-gt p2, v1, :cond_3

    .line 589
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->decrementLastColumn()V

    .line 590
    iput-boolean v3, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 567
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .line 596
    .local v0, "emptyRanges":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v4, v2

    if-ge v1, v4, :cond_6

    .line 598
    aget-object v2, v2, v1

    sget-object v4, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    if-ne v2, v4, :cond_5

    .line 600
    add-int/lit8 v0, v0, 0x1

    .line 596
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 604
    .end local v1    # "i":I
    :cond_6
    array-length v1, v2

    if-ne v0, v1, :cond_7

    .line 606
    return v3

    .line 610
    :cond_7
    array-length v1, v2

    sub-int/2addr v1, v0

    new-array v1, v1, [Ljxl/write/biff/NameRecord$NameRange;

    .line 611
    .local v1, "newRanges":[Ljxl/write/biff/NameRecord$NameRange;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v4, v3

    if-ge v2, v4, :cond_9

    .line 613
    aget-object v4, v3, v2

    sget-object v5, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    if-eq v4, v5, :cond_8

    .line 615
    aget-object v3, v3, v2

    aput-object v3, v1, v2

    .line 611
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 619
    .end local v2    # "i":I
    :cond_9
    iput-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 621
    const/4 v2, 0x0

    return v2
.end method

.method public getData()[B
    .locals 14

    .line 311
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ljxl/write/biff/NameRecord;->modified:Z

    if-nez v1, :cond_0

    .line 314
    return-object v0

    .line 317
    :cond_0
    const/16 v0, 0xf

    .line 318
    .local v0, "NAME_HEADER_LENGTH":I
    const/16 v1, 0xb

    .line 319
    .local v1, "AREA_RANGE_LENGTH":B
    const/16 v2, 0x3b

    .line 323
    .local v2, "AREA_REFERENCE":B
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v4, v3

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    .line 325
    array-length v3, v3

    mul-int/lit8 v3, v3, 0xb

    add-int/2addr v3, v5

    .local v3, "detailLength":I
    goto :goto_0

    .line 329
    .end local v3    # "detailLength":I
    :cond_1
    const/16 v3, 0xb

    .line 332
    .restart local v3    # "detailLength":I
    :goto_0
    add-int/lit8 v4, v3, 0xf

    .line 333
    .local v4, "length":I
    iget-object v7, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    if-eqz v7, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    iget-object v7, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    :goto_1
    add-int/2addr v4, v7

    .line 334
    new-array v7, v4, [B

    iput-object v7, p0, Ljxl/write/biff/NameRecord;->data:[B

    .line 337
    const/4 v8, 0x0

    .line 339
    .local v8, "options":I
    iget-object v9, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    if-eqz v9, :cond_3

    .line 341
    or-int/lit8 v8, v8, 0x20

    .line 343
    :cond_3
    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 346
    iget-object v7, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/4 v10, 0x2

    aput-byte v9, v7, v10

    .line 349
    iget-object v11, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    const/4 v12, 0x3

    if-eqz v11, :cond_4

    .line 351
    aput-byte v6, v7, v12

    goto :goto_2

    .line 355
    :cond_4
    iget-object v11, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v12

    .line 359
    :goto_2
    iget-object v7, p0, Ljxl/write/biff/NameRecord;->data:[B

    invoke-static {v3, v7, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 362
    iget v5, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    iget-object v7, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/4 v11, 0x6

    invoke-static {v5, v7, v11}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 363
    iget v5, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    iget-object v7, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/16 v11, 0x8

    invoke-static {v5, v7, v11}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 369
    iget-object v5, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    const/16 v7, 0xf

    if-eqz v5, :cond_5

    .line 371
    iget-object v11, p0, Ljxl/write/biff/NameRecord;->data:[B

    invoke-virtual {v5}, Ljxl/biff/BuiltInName;->getValue()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v11, v7

    goto :goto_3

    .line 375
    :cond_5
    iget-object v5, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    iget-object v11, p0, Ljxl/write/biff/NameRecord;->data:[B

    invoke-static {v5, v11, v7}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;[BI)V

    .line 379
    :goto_3
    iget-object v5, p0, Ljxl/write/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    const/16 v11, 0x10

    if-eqz v5, :cond_6

    move v5, v11

    goto :goto_4

    :cond_6
    iget-object v5, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v7

    .line 384
    .local v5, "pos":I
    :goto_4
    iget-object v7, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v12, v7

    const/16 v13, 0x3b

    if-le v12, v6, :cond_8

    .line 386
    iget-object v6, p0, Ljxl/write/biff/NameRecord;->data:[B

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "pos":I
    .local v7, "pos":I
    const/16 v12, 0x29

    aput-byte v12, v6, v5

    .line 388
    add-int/lit8 v5, v3, -0x3

    invoke-static {v5, v6, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 389
    add-int/2addr v7, v10

    .line 391
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    iget-object v6, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v10, v6

    if-ge v5, v10, :cond_7

    .line 393
    iget-object v10, p0, Ljxl/write/biff/NameRecord;->data:[B

    add-int/lit8 v12, v7, 0x1

    .end local v7    # "pos":I
    .local v12, "pos":I
    aput-byte v13, v10, v7

    .line 394
    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljxl/write/biff/NameRecord$NameRange;->getData()[B

    move-result-object v6

    .line 395
    .local v6, "rd":[B
    iget-object v7, p0, Ljxl/write/biff/NameRecord;->data:[B

    array-length v10, v6

    invoke-static {v6, v9, v7, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    array-length v7, v6

    add-int/2addr v7, v12

    .line 391
    .end local v12    # "pos":I
    .restart local v7    # "pos":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 398
    .end local v5    # "i":I
    .end local v6    # "rd":[B
    :cond_7
    iget-object v5, p0, Ljxl/write/biff/NameRecord;->data:[B

    aput-byte v11, v5, v7

    move v5, v7

    goto :goto_6

    .line 403
    .end local v7    # "pos":I
    .local v5, "pos":I
    :cond_8
    iget-object v6, p0, Ljxl/write/biff/NameRecord;->data:[B

    aput-byte v13, v6, v5

    .line 406
    aget-object v6, v7, v9

    invoke-virtual {v6}, Ljxl/write/biff/NameRecord$NameRange;->getData()[B

    move-result-object v6

    .line 407
    .restart local v6    # "rd":[B
    iget-object v7, p0, Ljxl/write/biff/NameRecord;->data:[B

    add-int/lit8 v10, v5, 0x1

    array-length v11, v6

    invoke-static {v6, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    .end local v6    # "rd":[B
    :goto_6
    iget-object v6, p0, Ljxl/write/biff/NameRecord;->data:[B

    return-object v6
.end method

.method public getIndex()I
    .locals 1

    .line 430
    iget v0, p0, Ljxl/write/biff/NameRecord;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRanges()[Ljxl/write/biff/NameRecord$NameRange;
    .locals 1

    .line 461
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    return-object v0
.end method

.method public getSheetRef()I
    .locals 1

    .line 441
    iget v0, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    return v0
.end method

.method rowInserted(II)V
    .locals 3
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 474
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 476
    goto :goto_1

    .line 479
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v1

    const/4 v2, 0x1

    if-gt p2, v1, :cond_1

    .line 481
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->incrementFirstRow()V

    .line 482
    iput-boolean v2, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 485
    :cond_1
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getLastRow()I

    move-result v1

    if-gt p2, v1, :cond_2

    .line 487
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->incrementLastRow()V

    .line 488
    iput-boolean v2, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 472
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method rowRemoved(II)Z
    .locals 6
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I

    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_4

    .line 504
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 506
    goto :goto_1

    .line 509
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getLastRow()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 512
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    sget-object v2, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    aput-object v2, v1, v0

    .line 515
    :cond_1
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v1

    if-ge p2, v1, :cond_2

    if-lez p2, :cond_2

    .line 517
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->decrementFirstRow()V

    .line 518
    iput-boolean v3, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 521
    :cond_2
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getLastRow()I

    move-result v1

    if-gt p2, v1, :cond_3

    .line 523
    iget-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->decrementLastRow()V

    .line 524
    iput-boolean v3, p0, Ljxl/write/biff/NameRecord;->modified:Z

    .line 502
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .line 530
    .local v0, "emptyRanges":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v4, v2

    if-ge v1, v4, :cond_6

    .line 532
    aget-object v2, v2, v1

    sget-object v4, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    if-ne v2, v4, :cond_5

    .line 534
    add-int/lit8 v0, v0, 0x1

    .line 530
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 538
    .end local v1    # "i":I
    :cond_6
    array-length v1, v2

    if-ne v0, v1, :cond_7

    .line 540
    return v3

    .line 544
    :cond_7
    array-length v1, v2

    sub-int/2addr v1, v0

    new-array v1, v1, [Ljxl/write/biff/NameRecord$NameRange;

    .line 545
    .local v1, "newRanges":[Ljxl/write/biff/NameRecord$NameRange;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    array-length v4, v3

    if-ge v2, v4, :cond_9

    .line 547
    aget-object v4, v3, v2

    sget-object v5, Ljxl/write/biff/NameRecord;->EMPTY_RANGE:Ljxl/write/biff/NameRecord$NameRange;

    if-eq v4, v5, :cond_8

    .line 549
    aget-object v3, v3, v2

    aput-object v3, v1, v2

    .line 545
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 553
    .end local v2    # "i":I
    :cond_9
    iput-object v1, p0, Ljxl/write/biff/NameRecord;->ranges:[Ljxl/write/biff/NameRecord$NameRange;

    .line 555
    const/4 v2, 0x0

    return v2
.end method

.method public setSheetRef(I)V
    .locals 2
    .param p1, "i"    # I

    .line 451
    iput p1, p0, Ljxl/write/biff/NameRecord;->sheetRef:I

    .line 452
    iget-object v0, p0, Ljxl/write/biff/NameRecord;->data:[B

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 453
    return-void
.end method
