.class public Ljxl/biff/PaletteRecord;
.super Ljxl/biff/WritableRecordData;
.source "PaletteRecord.java"


# static fields
.field private static final numColours:I = 0x38


# instance fields
.field private dirty:Z

.field private initialized:Z

.field private read:Z

.field private rgbColours:[Ljxl/format/RGB;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 76
    sget-object v0, Ljxl/biff/Type;->PALETTE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 34
    const/16 v0, 0x38

    new-array v0, v0, [Ljxl/format/RGB;

    iput-object v0, p0, Ljxl/biff/PaletteRecord;->rgbColours:[Ljxl/format/RGB;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/PaletteRecord;->initialized:Z

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/PaletteRecord;->dirty:Z

    .line 80
    iput-boolean v0, p0, Ljxl/biff/PaletteRecord;->read:Z

    .line 83
    invoke-static {}, Ljxl/format/Colour;->getAllColours()[Ljxl/format/Colour;

    move-result-object v0

    .line 85
    .local v0, "colours":[Ljxl/format/Colour;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 87
    aget-object v2, v0, v1

    .line 88
    .local v2, "c":Ljxl/format/Colour;
    invoke-virtual {v2}, Ljxl/format/Colour;->getDefaultRGB()Ljxl/format/RGB;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/format/RGB;->getRed()I

    move-result v3

    invoke-virtual {v2}, Ljxl/format/Colour;->getDefaultRGB()Ljxl/format/RGB;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/format/RGB;->getGreen()I

    move-result v4

    invoke-virtual {v2}, Ljxl/format/Colour;->getDefaultRGB()Ljxl/format/RGB;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/format/RGB;->getBlue()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Ljxl/biff/PaletteRecord;->setColourRGB(Ljxl/format/Colour;III)V

    .line 85
    .end local v2    # "c":Ljxl/format/Colour;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 1
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 64
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 34
    const/16 v0, 0x38

    new-array v0, v0, [Ljxl/format/RGB;

    iput-object v0, p0, Ljxl/biff/PaletteRecord;->rgbColours:[Ljxl/format/RGB;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/PaletteRecord;->initialized:Z

    .line 67
    iput-boolean v0, p0, Ljxl/biff/PaletteRecord;->dirty:Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/PaletteRecord;->read:Z

    .line 69
    return-void
.end method

.method private initialize()V
    .locals 11

    .line 131
    invoke-virtual {p0}, Ljxl/biff/PaletteRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 133
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 135
    .local v2, "numrecords":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 137
    mul-int/lit8 v5, v4, 0x4

    add-int/lit8 v5, v5, 0x2

    .line 138
    .local v5, "pos":I
    aget-byte v6, v0, v5

    invoke-static {v6, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    .line 139
    .local v6, "red":I
    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v0, v7

    invoke-static {v7, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v7

    .line 140
    .local v7, "green":I
    add-int/lit8 v8, v5, 0x2

    aget-byte v8, v0, v8

    invoke-static {v8, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v8

    .line 141
    .local v8, "blue":I
    iget-object v9, p0, Ljxl/biff/PaletteRecord;->rgbColours:[Ljxl/format/RGB;

    new-instance v10, Ljxl/format/RGB;

    invoke-direct {v10, v6, v7, v8}, Ljxl/format/RGB;-><init>(III)V

    aput-object v10, v9, v4

    .line 135
    .end local v5    # "pos":I
    .end local v6    # "red":I
    .end local v7    # "green":I
    .end local v8    # "blue":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    .end local v4    # "i":I
    :cond_0
    iput-boolean v3, p0, Ljxl/biff/PaletteRecord;->initialized:Z

    .line 145
    return-void
.end method

.method private setValueRange(III)I
    .locals 0
    .param p1, "val"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 224
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 225
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 226
    return p1
.end method


# virtual methods
.method public getColourRGB(Ljxl/format/Colour;)Ljxl/format/RGB;
    .locals 2
    .param p1, "c"    # Ljxl/format/Colour;

    .line 200
    invoke-virtual {p1}, Ljxl/format/Colour;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    .line 201
    .local v0, "pos":I
    if-ltz v0, :cond_2

    const/16 v1, 0x38

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-boolean v1, p0, Ljxl/biff/PaletteRecord;->initialized:Z

    if-nez v1, :cond_1

    .line 208
    invoke-direct {p0}, Ljxl/biff/PaletteRecord;->initialize()V

    .line 211
    :cond_1
    iget-object v1, p0, Ljxl/biff/PaletteRecord;->rgbColours:[Ljxl/format/RGB;

    aget-object v1, v1, v0

    return-object v1

    .line 203
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljxl/format/Colour;->getDefaultRGB()Ljxl/format/RGB;

    move-result-object v1

    return-object v1
.end method

.method public getData()[B
    .locals 6

    .line 103
    iget-boolean v0, p0, Ljxl/biff/PaletteRecord;->read:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljxl/biff/PaletteRecord;->dirty:Z

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Ljxl/biff/PaletteRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    const/16 v0, 0xe2

    new-array v0, v0, [B

    .line 109
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 112
    .local v1, "pos":I
    const/16 v2, 0x38

    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 115
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 117
    mul-int/lit8 v4, v3, 0x4

    add-int/lit8 v1, v4, 0x2

    .line 118
    iget-object v4, p0, Ljxl/biff/PaletteRecord;->rgbColours:[Ljxl/format/RGB;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljxl/format/RGB;->getRed()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 119
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Ljxl/biff/PaletteRecord;->rgbColours:[Ljxl/format/RGB;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljxl/format/RGB;->getGreen()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 120
    add-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ljxl/biff/PaletteRecord;->rgbColours:[Ljxl/format/RGB;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljxl/format/RGB;->getBlue()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method public isDirty()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Ljxl/biff/PaletteRecord;->dirty:Z

    return v0
.end method

.method public setColourRGB(Ljxl/format/Colour;III)V
    .locals 3
    .param p1, "c"    # Ljxl/format/Colour;
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 169
    invoke-virtual {p1}, Ljxl/format/Colour;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    .line 170
    .local v0, "pos":I
    if-ltz v0, :cond_2

    const/16 v1, 0x38

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-boolean v1, p0, Ljxl/biff/PaletteRecord;->initialized:Z

    if-nez v1, :cond_1

    .line 177
    invoke-direct {p0}, Ljxl/biff/PaletteRecord;->initialize()V

    .line 181
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-direct {p0, p2, v1, v2}, Ljxl/biff/PaletteRecord;->setValueRange(III)I

    move-result p2

    .line 182
    invoke-direct {p0, p3, v1, v2}, Ljxl/biff/PaletteRecord;->setValueRange(III)I

    move-result p3

    .line 183
    invoke-direct {p0, p4, v1, v2}, Ljxl/biff/PaletteRecord;->setValueRange(III)I

    move-result p4

    .line 185
    iget-object v1, p0, Ljxl/biff/PaletteRecord;->rgbColours:[Ljxl/format/RGB;

    new-instance v2, Ljxl/format/RGB;

    invoke-direct {v2, p2, p3, p4}, Ljxl/format/RGB;-><init>(III)V

    aput-object v2, v1, v0

    .line 188
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljxl/biff/PaletteRecord;->dirty:Z

    .line 189
    return-void

    .line 172
    :cond_2
    :goto_0
    return-void
.end method
