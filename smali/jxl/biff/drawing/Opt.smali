.class Ljxl/biff/drawing/Opt;
.super Ljxl/biff/drawing/EscherAtom;
.source "Opt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/drawing/Opt$Property;
    }
.end annotation


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private numProperties:I

.field private properties:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Ljxl/biff/drawing/Opt;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Opt;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 153
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->OPT:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    .line 155
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/Opt;->setVersion(I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 1
    .param p1, "erd"    # Ljxl/biff/drawing/EscherRecordData;

    .line 108
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 109
    invoke-virtual {p0}, Ljxl/biff/drawing/Opt;->getInstance()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/Opt;->numProperties:I

    .line 110
    invoke-direct {p0}, Ljxl/biff/drawing/Opt;->readProperties()V

    .line 111
    return-void
.end method

.method private readProperties()V
    .locals 11

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "pos":I
    invoke-virtual {p0}, Ljxl/biff/drawing/Opt;->getBytes()[B

    move-result-object v1

    .line 122
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Ljxl/biff/drawing/Opt;->numProperties:I

    if-ge v2, v3, :cond_2

    .line 124
    aget-byte v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    .line 125
    .local v3, "val":I
    and-int/lit16 v4, v3, 0x3fff

    .line 126
    .local v4, "id":I
    add-int/lit8 v5, v0, 0x2

    aget-byte v5, v1, v5

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    add-int/lit8 v7, v0, 0x4

    aget-byte v7, v1, v7

    add-int/lit8 v8, v0, 0x5

    aget-byte v8, v1, v8

    invoke-static {v5, v6, v7, v8}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v5

    .line 128
    .local v5, "value":I
    new-instance v6, Ljxl/biff/drawing/Opt$Property;

    and-int/lit16 v7, v3, 0x4000

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    move v7, v9

    goto :goto_1

    :cond_0
    move v7, v8

    :goto_1
    const v10, 0x8000

    and-int/2addr v10, v3

    if-eqz v10, :cond_1

    move v8, v9

    :cond_1
    invoke-direct {v6, v4, v7, v8, v5}, Ljxl/biff/drawing/Opt$Property;-><init>(IZZI)V

    .line 132
    .local v6, "p":Ljxl/biff/drawing/Opt$Property;
    add-int/lit8 v0, v0, 0x6

    .line 133
    iget-object v7, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v3    # "val":I
    .end local v4    # "id":I
    .end local v5    # "value":I
    .end local v6    # "p":Ljxl/biff/drawing/Opt$Property;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/Opt$Property;

    .line 139
    .local v3, "p":Ljxl/biff/drawing/Opt$Property;
    iget-boolean v4, v3, Ljxl/biff/drawing/Opt$Property;->complex:Z

    if-eqz v4, :cond_3

    .line 141
    iget v4, v3, Ljxl/biff/drawing/Opt$Property;->value:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4, v0}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ljxl/biff/drawing/Opt$Property;->stringValue:Ljava/lang/String;

    .line 143
    iget v4, v3, Ljxl/biff/drawing/Opt$Property;->value:I

    add-int/2addr v0, v4

    .line 145
    .end local v3    # "p":Ljxl/biff/drawing/Opt$Property;
    :cond_3
    goto :goto_2

    .line 146
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_4
    return-void
.end method


# virtual methods
.method addProperty(IZZI)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "blip"    # Z
    .param p3, "complex"    # Z
    .param p4, "val"    # I

    .line 220
    new-instance v0, Ljxl/biff/drawing/Opt$Property;

    invoke-direct {v0, p1, p2, p3, p4}, Ljxl/biff/drawing/Opt$Property;-><init>(IZZI)V

    .line 221
    .local v0, "p":Ljxl/biff/drawing/Opt$Property;
    iget-object v1, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method addProperty(IZZILjava/lang/String;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "blip"    # Z
    .param p3, "complex"    # Z
    .param p4, "val"    # I
    .param p5, "s"    # Ljava/lang/String;

    .line 235
    new-instance v6, Ljxl/biff/drawing/Opt$Property;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Ljxl/biff/drawing/Opt$Property;-><init>(IZZILjava/lang/String;)V

    .line 236
    .local v0, "p":Ljxl/biff/drawing/Opt$Property;
    iget-object v1, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method getData()[B
    .locals 7

    .line 165
    iget-object v0, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/Opt;->numProperties:I

    .line 166
    invoke-virtual {p0, v0}, Ljxl/biff/drawing/Opt;->setInstance(I)V

    .line 168
    iget v0, p0, Ljxl/biff/drawing/Opt;->numProperties:I

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/biff/drawing/Opt;->data:[B

    .line 169
    const/4 v0, 0x0

    .line 172
    .local v0, "pos":I
    iget-object v1, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/drawing/Opt$Property;

    .line 175
    .local v2, "p":Ljxl/biff/drawing/Opt$Property;
    iget v3, v2, Ljxl/biff/drawing/Opt$Property;->id:I

    and-int/lit16 v3, v3, 0x3fff

    .line 177
    .local v3, "val":I
    iget-boolean v4, v2, Ljxl/biff/drawing/Opt$Property;->blipId:Z

    if-eqz v4, :cond_0

    .line 179
    or-int/lit16 v3, v3, 0x4000

    .line 182
    :cond_0
    iget-boolean v4, v2, Ljxl/biff/drawing/Opt$Property;->complex:Z

    if-eqz v4, :cond_1

    .line 184
    const v4, 0x8000

    or-int/2addr v3, v4

    .line 187
    :cond_1
    iget-object v4, p0, Ljxl/biff/drawing/Opt;->data:[B

    invoke-static {v3, v4, v0}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 188
    iget v4, v2, Ljxl/biff/drawing/Opt$Property;->value:I

    iget-object v5, p0, Ljxl/biff/drawing/Opt;->data:[B

    add-int/lit8 v6, v0, 0x2

    invoke-static {v4, v5, v6}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 189
    nop

    .end local v2    # "p":Ljxl/biff/drawing/Opt$Property;
    .end local v3    # "val":I
    add-int/lit8 v0, v0, 0x6

    .line 190
    goto :goto_0

    .line 193
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_2
    iget-object v1, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/drawing/Opt$Property;

    .line 197
    .restart local v2    # "p":Ljxl/biff/drawing/Opt$Property;
    iget-boolean v3, v2, Ljxl/biff/drawing/Opt$Property;->complex:Z

    if-eqz v3, :cond_3

    iget-object v3, v2, Ljxl/biff/drawing/Opt$Property;->stringValue:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 199
    iget-object v3, p0, Ljxl/biff/drawing/Opt;->data:[B

    array-length v3, v3

    iget-object v4, v2, Ljxl/biff/drawing/Opt$Property;->stringValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 201
    .local v3, "newData":[B
    iget-object v4, p0, Ljxl/biff/drawing/Opt;->data:[B

    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget-object v4, v2, Ljxl/biff/drawing/Opt$Property;->stringValue:Ljava/lang/String;

    iget-object v5, p0, Ljxl/biff/drawing/Opt;->data:[B

    array-length v5, v5

    invoke-static {v4, v3, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 203
    iput-object v3, p0, Ljxl/biff/drawing/Opt;->data:[B

    .line 205
    .end local v2    # "p":Ljxl/biff/drawing/Opt$Property;
    .end local v3    # "newData":[B
    :cond_3
    goto :goto_1

    .line 207
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_4
    iget-object v1, p0, Ljxl/biff/drawing/Opt;->data:[B

    invoke-virtual {p0, v1}, Ljxl/biff/drawing/Opt;->setHeaderData([B)[B

    move-result-object v1

    return-object v1
.end method

.method getProperty(I)Ljxl/biff/drawing/Opt$Property;
    .locals 4
    .param p1, "id"    # I

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "found":Z
    const/4 v1, 0x0

    .line 249
    .local v1, "p":Ljxl/biff/drawing/Opt$Property;
    iget-object v2, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 251
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljxl/biff/drawing/Opt$Property;

    .line 252
    iget v3, v1, Ljxl/biff/drawing/Opt$Property;->id:I

    if-ne v3, p1, :cond_0

    .line 254
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_1
    if-eqz v0, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method
