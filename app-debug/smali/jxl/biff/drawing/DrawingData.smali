.class public Ljxl/biff/drawing/DrawingData;
.super Ljava/lang/Object;
.source "DrawingData.java"

# interfaces
.implements Ljxl/biff/drawing/EscherStream;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private drawingData:[B

.field private initialized:Z

.field private numDrawings:I

.field private spContainers:[Ljxl/biff/drawing/EscherRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Ljxl/biff/drawing/DrawingData;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/DrawingData;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Ljxl/biff/drawing/DrawingData;->numDrawings:I

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Ljxl/biff/drawing/DrawingData;->drawingData:[B

    .line 65
    iput-boolean v0, p0, Ljxl/biff/drawing/DrawingData;->initialized:Z

    .line 66
    return-void
.end method

.method private getSpContainers(Ljxl/biff/drawing/EscherContainer;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "spgrContainer"    # Ljxl/biff/drawing/EscherContainer;
    .param p2, "sps"    # Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p1}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 133
    .local v0, "spgrChildren":[Ljxl/biff/drawing/EscherRecord;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 135
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v2

    sget-object v3, Ljxl/biff/drawing/EscherRecordType;->SP_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v2, v3, :cond_0

    .line 137
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v2

    sget-object v3, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v2, v3, :cond_1

    .line 141
    aget-object v2, v0, v1

    check-cast v2, Ljxl/biff/drawing/EscherContainer;

    invoke-direct {p0, v2, p2}, Ljxl/biff/drawing/DrawingData;->getSpContainers(Ljxl/biff/drawing/EscherContainer;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 145
    :cond_1
    sget-object v2, Ljxl/biff/drawing/DrawingData;->logger:Ljxl/common/Logger;

    const-string v3, "Spgr Containers contains a record other than Sp/Spgr containers"

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 133
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private initialize()V
    .locals 10

    .line 73
    new-instance v0, Ljxl/biff/drawing/EscherRecordData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljxl/biff/drawing/EscherRecordData;-><init>(Ljxl/biff/drawing/EscherStream;I)V

    .line 74
    .local v0, "er":Ljxl/biff/drawing/EscherRecordData;
    invoke-virtual {v0}, Ljxl/biff/drawing/EscherRecordData;->isContainer()Z

    move-result v2

    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 76
    new-instance v2, Ljxl/biff/drawing/EscherContainer;

    invoke-direct {v2, v0}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 77
    .local v2, "dgContainer":Ljxl/biff/drawing/EscherContainer;
    invoke-virtual {v2}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    .line 79
    .local v3, "children":[Ljxl/biff/drawing/EscherRecord;
    invoke-virtual {v2}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    .line 82
    const/4 v4, 0x0

    .line 84
    .local v4, "spgrContainer":Ljxl/biff/drawing/EscherContainer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_1

    if-nez v4, :cond_1

    .line 86
    aget-object v6, v3, v5

    .line 87
    .local v6, "child":Ljxl/biff/drawing/EscherRecord;
    invoke-virtual {v6}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v7

    sget-object v8, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v7, v8, :cond_0

    .line 89
    move-object v4, v6

    check-cast v4, Ljxl/biff/drawing/EscherContainer;

    .line 84
    .end local v6    # "child":Ljxl/biff/drawing/EscherRecord;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 92
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v1, v5

    :cond_2
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 94
    invoke-virtual {v4}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v1

    .line 97
    .local v1, "spgrChildren":[Ljxl/biff/drawing/EscherRecord;
    const/4 v6, 0x0

    .line 98
    .local v6, "nestedContainers":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v1

    if-ge v7, v8, :cond_4

    if-nez v6, :cond_4

    .line 100
    aget-object v8, v1, v7

    invoke-virtual {v8}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v8

    sget-object v9, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v8, v9, :cond_3

    .line 102
    const/4 v6, 0x1

    .line 98
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 108
    .end local v7    # "i":I
    :cond_4
    if-nez v6, :cond_5

    .line 110
    iput-object v1, p0, Ljxl/biff/drawing/DrawingData;->spContainers:[Ljxl/biff/drawing/EscherRecord;

    goto :goto_2

    .line 115
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v7, "sps":Ljava/util/ArrayList;
    invoke-direct {p0, v4, v7}, Ljxl/biff/drawing/DrawingData;->getSpContainers(Ljxl/biff/drawing/EscherContainer;Ljava/util/ArrayList;)V

    .line 117
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljxl/biff/drawing/EscherRecord;

    iput-object v8, p0, Ljxl/biff/drawing/DrawingData;->spContainers:[Ljxl/biff/drawing/EscherRecord;

    .line 118
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljxl/biff/drawing/EscherRecord;

    check-cast v8, [Ljxl/biff/drawing/EscherRecord;

    iput-object v8, p0, Ljxl/biff/drawing/DrawingData;->spContainers:[Ljxl/biff/drawing/EscherRecord;

    .line 121
    .end local v7    # "sps":Ljava/util/ArrayList;
    :goto_2
    iput-boolean v5, p0, Ljxl/biff/drawing/DrawingData;->initialized:Z

    .line 122
    return-void
.end method


# virtual methods
.method public addData([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 158
    invoke-virtual {p0, p1}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 159
    iget v0, p0, Ljxl/biff/drawing/DrawingData;->numDrawings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/drawing/DrawingData;->numDrawings:I

    .line 160
    return-void
.end method

.method public addRawData([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 171
    iget-object v0, p0, Ljxl/biff/drawing/DrawingData;->drawingData:[B

    if-nez v0, :cond_0

    .line 173
    iput-object p1, p0, Ljxl/biff/drawing/DrawingData;->drawingData:[B

    .line 174
    return-void

    .line 178
    :cond_0
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 179
    .local v1, "newArray":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object v0, p0, Ljxl/biff/drawing/DrawingData;->drawingData:[B

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iput-object v1, p0, Ljxl/biff/drawing/DrawingData;->drawingData:[B

    .line 184
    iput-boolean v3, p0, Ljxl/biff/drawing/DrawingData;->initialized:Z

    .line 185
    return-void
.end method

.method public getData()[B
    .locals 1

    .line 230
    iget-object v0, p0, Ljxl/biff/drawing/DrawingData;->drawingData:[B

    return-object v0
.end method

.method final getNumDrawings()I
    .locals 1

    .line 194
    iget v0, p0, Ljxl/biff/drawing/DrawingData;->numDrawings:I

    return v0
.end method

.method getSpContainer(I)Ljxl/biff/drawing/EscherContainer;
    .locals 3
    .param p1, "drawingNum"    # I

    .line 205
    iget-boolean v0, p0, Ljxl/biff/drawing/DrawingData;->initialized:Z

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingData;->initialize()V

    .line 210
    :cond_0
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Ljxl/biff/drawing/DrawingData;->spContainers:[Ljxl/biff/drawing/EscherRecord;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 215
    add-int/lit8 v0, p1, 0x1

    aget-object v0, v1, v0

    check-cast v0, Ljxl/biff/drawing/EscherContainer;

    .line 218
    .local v0, "spContainer":Ljxl/biff/drawing/EscherContainer;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 220
    return-object v0

    .line 212
    .end local v0    # "spContainer":Ljxl/biff/drawing/EscherContainer;
    :cond_2
    new-instance v0, Ljxl/biff/drawing/DrawingDataException;

    invoke-direct {v0}, Ljxl/biff/drawing/DrawingDataException;-><init>()V

    throw v0
.end method
