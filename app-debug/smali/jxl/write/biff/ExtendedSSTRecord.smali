.class Ljxl/write/biff/ExtendedSSTRecord;
.super Ljxl/biff/WritableRecordData;
.source "ExtendedSSTRecord.java"


# static fields
.field private static final infoRecordSize:I = 0x8


# instance fields
.field private absoluteStreamPositions:[I

.field private currentStringIndex:I

.field private numberOfStrings:I

.field private relativeStreamPositions:[I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "newNumberOfStrings"    # I

    .line 50
    sget-object v0, Ljxl/biff/Type;->EXTSST:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ljxl/write/biff/ExtendedSSTRecord;->currentStringIndex:I

    .line 51
    iput p1, p0, Ljxl/write/biff/ExtendedSSTRecord;->numberOfStrings:I

    .line 52
    invoke-virtual {p0}, Ljxl/write/biff/ExtendedSSTRecord;->getNumberOfBuckets()I

    move-result v1

    .line 53
    .local v1, "numberOfBuckets":I
    new-array v2, v1, [I

    iput-object v2, p0, Ljxl/write/biff/ExtendedSSTRecord;->absoluteStreamPositions:[I

    .line 54
    new-array v2, v1, [I

    iput-object v2, p0, Ljxl/write/biff/ExtendedSSTRecord;->relativeStreamPositions:[I

    .line 55
    iput v0, p0, Ljxl/write/biff/ExtendedSSTRecord;->currentStringIndex:I

    .line 56
    return-void
.end method


# virtual methods
.method public addString(II)V
    .locals 3
    .param p1, "absoluteStreamPosition"    # I
    .param p2, "relativeStreamPosition"    # I

    .line 80
    iget-object v0, p0, Ljxl/write/biff/ExtendedSSTRecord;->absoluteStreamPositions:[I

    iget v1, p0, Ljxl/write/biff/ExtendedSSTRecord;->currentStringIndex:I

    add-int v2, p1, p2

    aput v2, v0, v1

    .line 82
    iget-object v0, p0, Ljxl/write/biff/ExtendedSSTRecord;->relativeStreamPositions:[I

    aput p2, v0, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljxl/write/biff/ExtendedSSTRecord;->currentStringIndex:I

    .line 84
    return-void
.end method

.method public getData()[B
    .locals 5

    .line 93
    invoke-virtual {p0}, Ljxl/write/biff/ExtendedSSTRecord;->getNumberOfBuckets()I

    move-result v0

    .line 94
    .local v0, "numberOfBuckets":I
    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 96
    .local v1, "data":[B
    invoke-virtual {p0}, Ljxl/write/biff/ExtendedSSTRecord;->getNumberOfStringsPerBucket()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 98
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 101
    iget-object v3, p0, Ljxl/write/biff/ExtendedSSTRecord;->absoluteStreamPositions:[I

    aget v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x2

    invoke-static {v3, v1, v4}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 105
    iget-object v3, p0, Ljxl/write/biff/ExtendedSSTRecord;->relativeStreamPositions:[I

    aget v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x6

    invoke-static {v3, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getNumberOfBuckets()I
    .locals 2

    .line 60
    invoke-virtual {p0}, Ljxl/write/biff/ExtendedSSTRecord;->getNumberOfStringsPerBucket()I

    move-result v0

    .line 61
    .local v0, "numberOfStringsPerBucket":I
    if-eqz v0, :cond_0

    iget v1, p0, Ljxl/write/biff/ExtendedSSTRecord;->numberOfStrings:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getNumberOfStringsPerBucket()I
    .locals 2

    .line 73
    const/16 v0, 0x80

    .line 74
    .local v0, "bucketLimit":I
    iget v1, p0, Ljxl/write/biff/ExtendedSSTRecord;->numberOfStrings:I

    add-int/lit16 v1, v1, 0x80

    add-int/lit8 v1, v1, -0x1

    div-int/lit16 v1, v1, 0x80

    return v1
.end method
