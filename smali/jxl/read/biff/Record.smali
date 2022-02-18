.class public final Ljxl/read/biff/Record;
.super Ljava/lang/Object;
.source "Record.java"


# static fields
.field private static final logger:Ljxl/common/Logger;


# instance fields
.field private code:I

.field private continueRecords:Ljava/util/ArrayList;

.field private data:[B

.field private dataPos:I

.field private file:Ljxl/read/biff/File;

.field private length:I

.field private type:Ljxl/biff/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Ljxl/read/biff/Record;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/Record;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>([BILjxl/read/biff/File;)V
    .locals 2
    .param p1, "d"    # [B
    .param p2, "offset"    # I
    .param p3, "f"    # Ljxl/read/biff/File;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/Record;->code:I

    .line 80
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/Record;->length:I

    .line 81
    iput-object p3, p0, Ljxl/read/biff/Record;->file:Ljxl/read/biff/File;

    .line 82
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Ljxl/read/biff/File;->skip(I)V

    .line 83
    invoke-virtual {p3}, Ljxl/read/biff/File;->getPos()I

    move-result v0

    iput v0, p0, Ljxl/read/biff/Record;->dataPos:I

    .line 84
    iget-object v0, p0, Ljxl/read/biff/Record;->file:Ljxl/read/biff/File;

    iget v1, p0, Ljxl/read/biff/Record;->length:I

    invoke-virtual {v0, v1}, Ljxl/read/biff/File;->skip(I)V

    .line 85
    iget v0, p0, Ljxl/read/biff/Record;->code:I

    invoke-static {v0}, Ljxl/biff/Type;->getType(I)Ljxl/biff/Type;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/Record;->type:Ljxl/biff/Type;

    .line 86
    return-void
.end method


# virtual methods
.method public addContinueRecord(Ljxl/read/biff/Record;)V
    .locals 1
    .param p1, "d"    # Ljxl/read/biff/Record;

    .line 177
    iget-object v0, p0, Ljxl/read/biff/Record;->continueRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/Record;->continueRecords:Ljava/util/ArrayList;

    .line 182
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/Record;->continueRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public getCode()I
    .locals 1

    .line 156
    iget v0, p0, Ljxl/read/biff/Record;->code:I

    return v0
.end method

.method public getData()[B
    .locals 8

    .line 115
    iget-object v0, p0, Ljxl/read/biff/Record;->data:[B

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Ljxl/read/biff/Record;->file:Ljxl/read/biff/File;

    iget v1, p0, Ljxl/read/biff/Record;->dataPos:I

    iget v2, p0, Ljxl/read/biff/Record;->length:I

    invoke-virtual {v0, v1, v2}, Ljxl/read/biff/File;->read(II)[B

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/Record;->data:[B

    .line 121
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/Record;->continueRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "size":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 125
    .local v0, "contData":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljxl/read/biff/Record;->continueRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 127
    iget-object v3, p0, Ljxl/read/biff/Record;->continueRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/read/biff/Record;

    .line 128
    .local v3, "r":Ljxl/read/biff/Record;
    invoke-virtual {v3}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v4

    aput-object v4, v0, v2

    .line 129
    aget-object v4, v0, v2

    .line 130
    .local v4, "d2":[B
    array-length v5, v4

    add-int/2addr v1, v5

    .line 125
    .end local v3    # "r":Ljxl/read/biff/Record;
    .end local v4    # "d2":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Ljxl/read/biff/Record;->data:[B

    array-length v3, v2

    add-int/2addr v3, v1

    new-array v3, v3, [B

    .line 134
    .local v3, "d3":[B
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-object v2, p0, Ljxl/read/biff/Record;->data:[B

    array-length v2, v2

    .line 136
    .local v2, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_2

    .line 138
    aget-object v6, v0, v4

    .line 139
    .local v6, "d2":[B
    array-length v7, v6

    invoke-static {v6, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    array-length v7, v6

    add-int/2addr v2, v7

    .line 136
    .end local v6    # "d2":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 143
    .end local v4    # "i":I
    :cond_2
    iput-object v3, p0, Ljxl/read/biff/Record;->data:[B

    .line 146
    .end local v0    # "contData":[[B
    .end local v1    # "size":I
    .end local v2    # "pos":I
    .end local v3    # "d3":[B
    :cond_3
    iget-object v0, p0, Ljxl/read/biff/Record;->data:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 105
    iget v0, p0, Ljxl/read/biff/Record;->length:I

    return v0
.end method

.method public getType()Ljxl/biff/Type;
    .locals 1

    .line 95
    iget-object v0, p0, Ljxl/read/biff/Record;->type:Ljxl/biff/Type;

    return-object v0
.end method

.method setType(Ljxl/biff/Type;)V
    .locals 0
    .param p1, "t"    # Ljxl/biff/Type;

    .line 167
    iput-object p1, p0, Ljxl/read/biff/Record;->type:Ljxl/biff/Type;

    .line 168
    return-void
.end method
