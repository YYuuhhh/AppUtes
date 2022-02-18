.class Ljxl/write/biff/SSTRecord;
.super Ljxl/biff/WritableRecordData;
.source "SSTRecord.java"


# static fields
.field private static maxBytes:I


# instance fields
.field private byteCount:I

.field private data:[B

.field private numReferences:I

.field private numStrings:I

.field private stringLengths:Ljava/util/ArrayList;

.field private strings:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/16 v0, 0x2018

    sput v0, Ljxl/write/biff/SSTRecord;->maxBytes:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "numRefs"    # I
    .param p2, "s"    # I

    .line 75
    sget-object v0, Ljxl/biff/Type;->SST:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 77
    iput p1, p0, Ljxl/write/biff/SSTRecord;->numReferences:I

    .line 78
    iput p2, p0, Ljxl/write/biff/SSTRecord;->numStrings:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Ljxl/write/biff/SSTRecord;->byteCount:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/write/biff/SSTRecord;->strings:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/write/biff/SSTRecord;->stringLengths:Ljava/util/ArrayList;

    .line 82
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)I
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    .line 98
    .local v0, "bytes":I
    iget v1, p0, Ljxl/write/biff/SSTRecord;->byteCount:I

    sget v2, Ljxl/write/biff/SSTRecord;->maxBytes:I

    add-int/lit8 v2, v2, -0x5

    if-lt v1, v2, :cond_1

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 104
    :cond_1
    iget-object v1, p0, Ljxl/write/biff/SSTRecord;->stringLengths:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget v1, p0, Ljxl/write/biff/SSTRecord;->byteCount:I

    add-int v2, v0, v1

    sget v3, Ljxl/write/biff/SSTRecord;->maxBytes:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 109
    iget-object v1, p0, Ljxl/write/biff/SSTRecord;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget v1, p0, Ljxl/write/biff/SSTRecord;->byteCount:I

    add-int/2addr v1, v0

    iput v1, p0, Ljxl/write/biff/SSTRecord;->byteCount:I

    .line 111
    return v4

    .line 115
    :cond_2
    add-int/lit8 v3, v3, -0x3

    sub-int/2addr v3, v1

    .line 116
    .local v3, "bytesLeft":I
    rem-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_3

    div-int/lit8 v1, v3, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v3, -0x1

    div-int/lit8 v1, v1, 0x2

    .line 120
    .local v1, "charsAvailable":I
    :goto_1
    iget-object v2, p0, Ljxl/write/biff/SSTRecord;->strings:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget v2, p0, Ljxl/write/biff/SSTRecord;->byteCount:I

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v2, v4

    iput v2, p0, Ljxl/write/biff/SSTRecord;->byteCount:I

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    return v2
.end method

.method public getData()[B
    .locals 8

    .line 143
    iget v0, p0, Ljxl/write/biff/SSTRecord;->byteCount:I

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/SSTRecord;->data:[B

    .line 144
    iget v1, p0, Ljxl/write/biff/SSTRecord;->numReferences:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 145
    iget v0, p0, Ljxl/write/biff/SSTRecord;->numStrings:I

    iget-object v1, p0, Ljxl/write/biff/SSTRecord;->data:[B

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 147
    const/16 v0, 0x8

    .line 148
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 150
    .local v1, "count":I
    iget-object v2, p0, Ljxl/write/biff/SSTRecord;->strings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 151
    .local v2, "i":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 152
    .local v3, "s":Ljava/lang/String;
    const/4 v4, 0x0

    .line 153
    .local v4, "length":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    .line 156
    iget-object v5, p0, Ljxl/write/biff/SSTRecord;->stringLengths:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 157
    iget-object v5, p0, Ljxl/write/biff/SSTRecord;->data:[B

    invoke-static {v4, v5, v0}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 158
    iget-object v5, p0, Ljxl/write/biff/SSTRecord;->data:[B

    add-int/lit8 v6, v0, 0x2

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    .line 159
    add-int/lit8 v6, v0, 0x3

    invoke-static {v3, v5, v6}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 160
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v0, v5

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    iget-object v5, p0, Ljxl/write/biff/SSTRecord;->data:[B

    return-object v5
.end method

.method public getOffset()I
    .locals 1

    .line 133
    iget v0, p0, Ljxl/write/biff/SSTRecord;->byteCount:I

    add-int/lit8 v0, v0, 0x8

    return v0
.end method
