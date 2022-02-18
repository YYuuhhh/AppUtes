.class public Ljxl/biff/ConditionalFormatRangeRecord;
.super Ljxl/biff/WritableRecordData;
.source "ConditionalFormatRangeRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/ConditionalFormatRangeRecord$Range;
    }
.end annotation


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

.field private initialized:Z

.field private modified:Z

.field private numRanges:I

.field private ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/ConditionalFormatRangeRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 1
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 189
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->initialized:Z

    .line 192
    iput-boolean v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->modified:Z

    .line 193
    invoke-virtual {p0}, Ljxl/biff/ConditionalFormatRangeRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    .line 194
    return-void
.end method

.method private initialize()V
    .locals 6

    .line 201
    new-instance v0, Ljxl/biff/ConditionalFormatRangeRecord$Range;

    invoke-direct {v0}, Ljxl/biff/ConditionalFormatRangeRecord$Range;-><init>()V

    iput-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    .line 202
    iget-object v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    const/4 v3, 0x5

    aget-byte v1, v1, v3

    invoke-static {v2, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, v0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstRow:I

    .line 203
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    iget-object v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    const/4 v2, 0x6

    aget-byte v2, v1, v2

    const/4 v3, 0x7

    aget-byte v1, v1, v3

    invoke-static {v2, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, v0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastRow:I

    .line 204
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    iget-object v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    const/16 v2, 0x8

    aget-byte v2, v1, v2

    const/16 v3, 0x9

    aget-byte v1, v1, v3

    invoke-static {v2, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, v0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstColumn:I

    .line 205
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    iget-object v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    const/16 v2, 0xa

    aget-byte v2, v1, v2

    const/16 v3, 0xb

    aget-byte v1, v1, v3

    invoke-static {v2, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, v0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastColumn:I

    .line 206
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    const/16 v1, 0xc

    aget-byte v1, v0, v1

    const/16 v2, 0xd

    aget-byte v0, v0, v2

    invoke-static {v1, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->numRanges:I

    .line 207
    new-array v0, v0, [Ljxl/biff/ConditionalFormatRangeRecord$Range;

    iput-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    .line 209
    const/16 v0, 0xe

    .line 211
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->numRanges:I

    if-ge v1, v2, :cond_0

    .line 213
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    new-instance v3, Ljxl/biff/ConditionalFormatRangeRecord$Range;

    invoke-direct {v3}, Ljxl/biff/ConditionalFormatRangeRecord$Range;-><init>()V

    aput-object v3, v2, v1

    .line 214
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    aget-object v2, v2, v1

    iget-object v3, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    aget-byte v4, v3, v0

    add-int/lit8 v5, v0, 0x1

    aget-byte v3, v3, v5

    invoke-static {v4, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    iput v3, v2, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstRow:I

    .line 215
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    aget-object v2, v2, v1

    iget-object v3, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v3, v4

    add-int/lit8 v5, v0, 0x3

    aget-byte v3, v3, v5

    invoke-static {v4, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    iput v3, v2, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastRow:I

    .line 216
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    aget-object v2, v2, v1

    iget-object v3, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v3, v4

    add-int/lit8 v5, v0, 0x5

    aget-byte v3, v3, v5

    invoke-static {v4, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    iput v3, v2, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstColumn:I

    .line 217
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    aget-object v2, v2, v1

    iget-object v3, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v3, v4

    add-int/lit8 v5, v0, 0x7

    aget-byte v3, v3, v5

    invoke-static {v4, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    iput v3, v2, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastColumn:I

    .line 218
    add-int/lit8 v0, v0, 0x8

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->initialized:Z

    .line 222
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 5

    .line 360
    iget-boolean v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->modified:Z

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    return-object v0

    .line 365
    :cond_0
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    array-length v0, v0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xe

    new-array v0, v0, [B

    .line 368
    .local v0, "d":[B
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->data:[B

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    iget v2, v2, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstRow:I

    invoke-static {v2, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 372
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    iget v2, v2, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastRow:I

    const/4 v3, 0x6

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 373
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    iget v2, v2, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstColumn:I

    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 374
    iget-object v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    iget v1, v1, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastColumn:I

    const/16 v2, 0xa

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 376
    iget v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->numRanges:I

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 378
    const/16 v1, 0xe

    .line 379
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 381
    aget-object v3, v3, v2

    iget v3, v3, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstRow:I

    invoke-static {v3, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 382
    iget-object v3, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    aget-object v3, v3, v2

    iget v3, v3, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastRow:I

    add-int/lit8 v4, v1, 0x2

    invoke-static {v3, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 383
    iget-object v3, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    aget-object v3, v3, v2

    iget v3, v3, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstColumn:I

    add-int/lit8 v4, v1, 0x4

    invoke-static {v3, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 384
    iget-object v3, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    aget-object v3, v3, v2

    iget v3, v3, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastColumn:I

    add-int/lit8 v4, v1, 0x6

    invoke-static {v3, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 385
    add-int/lit8 v1, v1, 0x8

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public insertColumn(I)V
    .locals 4
    .param p1, "col"    # I

    .line 232
    iget-boolean v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->initialized:Z

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0}, Ljxl/biff/ConditionalFormatRangeRecord;->initialize()V

    .line 237
    :cond_0
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    invoke-virtual {v0, p1}, Ljxl/biff/ConditionalFormatRangeRecord$Range;->insertColumn(I)V

    .line 238
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    iget-boolean v0, v0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 240
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->modified:Z

    .line 243
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 245
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljxl/biff/ConditionalFormatRangeRecord$Range;->insertColumn(I)V

    .line 247
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    if-eqz v2, :cond_2

    .line 249
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->modified:Z

    .line 243
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public insertRow(I)V
    .locals 4
    .param p1, "row"    # I

    .line 328
    iget-boolean v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->initialized:Z

    if-nez v0, :cond_0

    .line 330
    invoke-direct {p0}, Ljxl/biff/ConditionalFormatRangeRecord;->initialize()V

    .line 333
    :cond_0
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    invoke-virtual {v0, p1}, Ljxl/biff/ConditionalFormatRangeRecord$Range;->insertRow(I)V

    .line 334
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    iget-boolean v0, v0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 336
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->modified:Z

    .line 339
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 341
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljxl/biff/ConditionalFormatRangeRecord$Range;->insertRow(I)V

    .line 343
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    if-eqz v2, :cond_2

    .line 345
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->modified:Z

    .line 339
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public removeColumn(I)V
    .locals 4
    .param p1, "col"    # I

    .line 264
    iget-boolean v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->initialized:Z

    if-nez v0, :cond_0

    .line 266
    invoke-direct {p0}, Ljxl/biff/ConditionalFormatRangeRecord;->initialize()V

    .line 269
    :cond_0
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    invoke-virtual {v0, p1}, Ljxl/biff/ConditionalFormatRangeRecord$Range;->removeColumn(I)V

    .line 270
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    iget-boolean v0, v0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 272
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->modified:Z

    .line 275
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 277
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljxl/biff/ConditionalFormatRangeRecord$Range;->removeColumn(I)V

    .line 279
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    if-eqz v2, :cond_2

    .line 281
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->modified:Z

    .line 275
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public removeRow(I)V
    .locals 4
    .param p1, "row"    # I

    .line 296
    iget-boolean v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->initialized:Z

    if-nez v0, :cond_0

    .line 298
    invoke-direct {p0}, Ljxl/biff/ConditionalFormatRangeRecord;->initialize()V

    .line 301
    :cond_0
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    invoke-virtual {v0, p1}, Ljxl/biff/ConditionalFormatRangeRecord$Range;->removeRow(I)V

    .line 302
    iget-object v0, p0, Ljxl/biff/ConditionalFormatRangeRecord;->enclosingRange:Ljxl/biff/ConditionalFormatRangeRecord$Range;

    iget-boolean v0, v0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 304
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->modified:Z

    .line 307
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 309
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljxl/biff/ConditionalFormatRangeRecord$Range;->removeRow(I)V

    .line 311
    iget-object v2, p0, Ljxl/biff/ConditionalFormatRangeRecord;->ranges:[Ljxl/biff/ConditionalFormatRangeRecord$Range;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    if-eqz v2, :cond_2

    .line 313
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord;->modified:Z

    .line 307
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "i":I
    :cond_3
    return-void
.end method
