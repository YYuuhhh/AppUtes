.class Ljxl/biff/drawing/EscherContainer;
.super Ljxl/biff/drawing/EscherRecord;
.source "EscherContainer.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private children:Ljava/util/ArrayList;

.field private initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Ljxl/biff/drawing/EscherContainer;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/EscherContainer;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 1
    .param p1, "erd"    # Ljxl/biff/drawing/EscherRecordData;

    .line 56
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherRecord;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/EscherContainer;->initialized:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method protected constructor <init>(Ljxl/biff/drawing/EscherRecordType;)V
    .locals 1
    .param p1, "type"    # Ljxl/biff/drawing/EscherRecordType;

    .line 68
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherRecord;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/EscherContainer;->setContainer(Z)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method private initialize()V
    .locals 6

    .line 115
    invoke-virtual {p0}, Ljxl/biff/drawing/EscherContainer;->getPos()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 116
    .local v0, "curpos":I
    invoke-virtual {p0}, Ljxl/biff/drawing/EscherContainer;->getPos()I

    move-result v1

    invoke-virtual {p0}, Ljxl/biff/drawing/EscherContainer;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljxl/biff/drawing/EscherContainer;->getStreamLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 118
    .local v1, "endpos":I
    const/4 v2, 0x0

    .line 120
    .local v2, "newRecord":Ljxl/biff/drawing/EscherRecord;
    :goto_0
    if-ge v0, v1, :cond_d

    .line 122
    new-instance v3, Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {p0}, Ljxl/biff/drawing/EscherContainer;->getEscherStream()Ljxl/biff/drawing/EscherStream;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljxl/biff/drawing/EscherRecordData;-><init>(Ljxl/biff/drawing/EscherStream;I)V

    .line 124
    .local v3, "erd":Ljxl/biff/drawing/EscherRecordData;
    invoke-virtual {v3}, Ljxl/biff/drawing/EscherRecordData;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v4

    .line 125
    .local v4, "type":Ljxl/biff/drawing/EscherRecordType;
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->DGG:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_0

    .line 127
    new-instance v5, Ljxl/biff/drawing/Dgg;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/Dgg;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto/16 :goto_1

    .line 129
    :cond_0
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->DG:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_1

    .line 131
    new-instance v5, Ljxl/biff/drawing/Dg;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/Dg;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto/16 :goto_1

    .line 133
    :cond_1
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->BSTORE_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_2

    .line 135
    new-instance v5, Ljxl/biff/drawing/BStoreContainer;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/BStoreContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto/16 :goto_1

    .line 137
    :cond_2
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_3

    .line 139
    new-instance v5, Ljxl/biff/drawing/SpgrContainer;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/SpgrContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto/16 :goto_1

    .line 141
    :cond_3
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->SP_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_4

    .line 143
    new-instance v5, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/SpContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto/16 :goto_1

    .line 145
    :cond_4
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->SPGR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_5

    .line 147
    new-instance v5, Ljxl/biff/drawing/Spgr;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/Spgr;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto :goto_1

    .line 149
    :cond_5
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->SP:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_6

    .line 151
    new-instance v5, Ljxl/biff/drawing/Sp;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto :goto_1

    .line 153
    :cond_6
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_7

    .line 155
    new-instance v5, Ljxl/biff/drawing/ClientAnchor;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/ClientAnchor;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto :goto_1

    .line 157
    :cond_7
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->CLIENT_DATA:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_8

    .line 159
    new-instance v5, Ljxl/biff/drawing/ClientData;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/ClientData;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto :goto_1

    .line 161
    :cond_8
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->BSE:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_9

    .line 163
    new-instance v5, Ljxl/biff/drawing/BlipStoreEntry;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/BlipStoreEntry;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto :goto_1

    .line 165
    :cond_9
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->OPT:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_a

    .line 167
    new-instance v5, Ljxl/biff/drawing/Opt;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/Opt;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto :goto_1

    .line 169
    :cond_a
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->SPLIT_MENU_COLORS:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_b

    .line 171
    new-instance v5, Ljxl/biff/drawing/SplitMenuColors;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/SplitMenuColors;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto :goto_1

    .line 173
    :cond_b
    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->CLIENT_TEXT_BOX:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_c

    .line 175
    new-instance v5, Ljxl/biff/drawing/ClientTextBox;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/ClientTextBox;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    goto :goto_1

    .line 179
    :cond_c
    new-instance v5, Ljxl/biff/drawing/EscherAtom;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    move-object v2, v5

    .line 182
    :goto_1
    iget-object v5, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {v2}, Ljxl/biff/drawing/EscherRecord;->getLength()I

    move-result v5

    add-int/2addr v0, v5

    .line 184
    .end local v3    # "erd":Ljxl/biff/drawing/EscherRecordData;
    .end local v4    # "type":Ljxl/biff/drawing/EscherRecordType;
    goto/16 :goto_0

    .line 186
    :cond_d
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljxl/biff/drawing/EscherContainer;->initialized:Z

    .line 187
    return-void
.end method


# virtual methods
.method public add(Ljxl/biff/drawing/EscherRecord;)V
    .locals 1
    .param p1, "child"    # Ljxl/biff/drawing/EscherRecord;

    .line 97
    iget-object v0, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public getChildren()[Ljxl/biff/drawing/EscherRecord;
    .locals 2

    .line 80
    iget-boolean v0, p0, Ljxl/biff/drawing/EscherContainer;->initialized:Z

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Ljxl/biff/drawing/EscherContainer;->initialize()V

    .line 85
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljxl/biff/drawing/EscherRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "ca":[Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, [Ljxl/biff/drawing/EscherRecord;

    check-cast v1, [Ljxl/biff/drawing/EscherRecord;

    return-object v1
.end method

.method getData()[B
    .locals 8

    .line 196
    iget-boolean v0, p0, Ljxl/biff/drawing/EscherContainer;->initialized:Z

    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0}, Ljxl/biff/drawing/EscherContainer;->initialize()V

    .line 201
    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 202
    .local v1, "data":[B
    iget-object v2, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/EscherRecord;

    .line 205
    .local v3, "er":Ljxl/biff/drawing/EscherRecord;
    invoke-virtual {v3}, Ljxl/biff/drawing/EscherRecord;->getData()[B

    move-result-object v4

    .line 207
    .local v4, "childData":[B
    if-eqz v4, :cond_1

    .line 209
    array-length v5, v1

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 210
    .local v5, "newData":[B
    array-length v6, v1

    invoke-static {v1, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    array-length v6, v1

    array-length v7, v4

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    move-object v1, v5

    .line 214
    .end local v3    # "er":Ljxl/biff/drawing/EscherRecord;
    .end local v4    # "childData":[B
    .end local v5    # "newData":[B
    :cond_1
    goto :goto_0

    .line 216
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0, v1}, Ljxl/biff/drawing/EscherContainer;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljxl/biff/drawing/EscherRecord;)V
    .locals 1
    .param p1, "child"    # Ljxl/biff/drawing/EscherRecord;

    .line 107
    iget-object v0, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    .local v0, "result":Z
    return-void
.end method
