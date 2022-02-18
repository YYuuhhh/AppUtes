.class public abstract Ljxl/biff/WritableRecordData;
.super Ljxl/biff/RecordData;
.source "WritableRecordData.java"

# interfaces
.implements Ljxl/biff/ByteData;


# static fields
.field private static logger:Ljxl/common/Logger; = null

.field protected static final maxRecordLength:I = 0x2024


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Ljxl/biff/WritableRecordData;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/WritableRecordData;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/Type;)V
    .locals 0
    .param p1, "t"    # Ljxl/biff/Type;

    .line 49
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    .line 50
    return-void
.end method

.method protected constructor <init>(Ljxl/read/biff/Record;)V
    .locals 0
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 59
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 60
    return-void
.end method

.method private handleContinueRecords([B)[B
    .locals 9
    .param p1, "data"    # [B

    .line 104
    array-length v0, p1

    const/16 v1, 0x2020

    sub-int/2addr v0, v1

    .line 105
    .local v0, "continuedData":I
    div-int/lit16 v2, v0, 0x2020

    add-int/lit8 v2, v2, 0x1

    .line 109
    .local v2, "numContinueRecords":I
    array-length v3, p1

    mul-int/lit8 v4, v2, 0x4

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 113
    .local v3, "newdata":[B
    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    const/16 v4, 0x2020

    .line 115
    .local v4, "oldarraypos":I
    const/16 v5, 0x2020

    .line 118
    .local v5, "newarraypos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 121
    array-length v7, p1

    sub-int/2addr v7, v4

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 124
    .local v7, "length":I
    sget-object v8, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    iget v8, v8, Ljxl/biff/Type;->value:I

    invoke-static {v8, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 125
    add-int/lit8 v8, v5, 0x2

    invoke-static {v7, v3, v8}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 128
    add-int/lit8 v8, v5, 0x4

    invoke-static {p1, v4, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    add-int/2addr v4, v7

    .line 132
    add-int/lit8 v8, v7, 0x4

    add-int/2addr v5, v8

    .line 118
    .end local v7    # "length":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 135
    .end local v6    # "i":I
    :cond_0
    return-object v3
.end method


# virtual methods
.method public final getBytes()[B
    .locals 6

    .line 71
    invoke-virtual {p0}, Ljxl/biff/WritableRecordData;->getData()[B

    move-result-object v0

    .line 73
    .local v0, "data":[B
    array-length v1, v0

    .line 79
    .local v1, "dataLength":I
    array-length v2, v0

    const/16 v3, 0x2020

    if-le v2, v3, :cond_0

    .line 81
    const/16 v1, 0x2020

    .line 82
    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;->handleContinueRecords([B)[B

    move-result-object v0

    .line 85
    :cond_0
    array-length v2, v0

    const/4 v3, 0x4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 87
    .local v2, "bytes":[B
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    invoke-virtual {p0}, Ljxl/biff/WritableRecordData;->getCode()I

    move-result v3

    invoke-static {v3, v2, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 90
    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 92
    return-object v2
.end method

.method protected abstract getData()[B
.end method
