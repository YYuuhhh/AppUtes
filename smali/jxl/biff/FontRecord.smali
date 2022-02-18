.class public Ljxl/biff/FontRecord;
.super Ljxl/biff/WritableRecordData;
.source "FontRecord.java"

# interfaces
.implements Ljxl/format/Font;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/FontRecord$Biff7;
    }
.end annotation


# static fields
.field private static final EXCEL_UNITS_PER_POINT:I = 0x14

.field public static final biff7:Ljxl/biff/FontRecord$Biff7;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private boldWeight:I

.field private characterSet:B

.field private colourIndex:I

.field private fontFamily:B

.field private fontIndex:I

.field private initialized:Z

.field private italic:Z

.field private name:Ljava/lang/String;

.field private pointHeight:I

.field private scriptStyle:I

.field private struckout:Z

.field private underlineStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Ljxl/biff/FontRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/FontRecord;->logger:Ljxl/common/Logger;

    .line 98
    new-instance v0, Ljxl/biff/FontRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/biff/FontRecord$Biff7;-><init>(Ljxl/biff/FontRecord$1;)V

    sput-object v0, Ljxl/biff/FontRecord;->biff7:Ljxl/biff/FontRecord$Biff7;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIZIII)V
    .locals 1
    .param p1, "fn"    # Ljava/lang/String;
    .param p2, "ps"    # I
    .param p3, "bold"    # I
    .param p4, "it"    # Z
    .param p5, "us"    # I
    .param p6, "ci"    # I
    .param p7, "ss"    # I

    .line 119
    sget-object v0, Ljxl/biff/Type;->FONT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 120
    iput p3, p0, Ljxl/biff/FontRecord;->boldWeight:I

    .line 121
    iput p5, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    .line 122
    iput-object p1, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    .line 123
    iput p2, p0, Ljxl/biff/FontRecord;->pointHeight:I

    .line 124
    iput-boolean p4, p0, Ljxl/biff/FontRecord;->italic:Z

    .line 125
    iput p7, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    .line 126
    iput p6, p0, Ljxl/biff/FontRecord;->colourIndex:I

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    .line 128
    iput-boolean v0, p0, Ljxl/biff/FontRecord;->struckout:Z

    .line 129
    return-void
.end method

.method protected constructor <init>(Ljxl/format/Font;)V
    .locals 2
    .param p1, "f"    # Ljxl/format/Font;

    .line 224
    sget-object v0, Ljxl/biff/Type;->FONT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 226
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 228
    invoke-interface {p1}, Ljxl/format/Font;->getPointSize()I

    move-result v1

    iput v1, p0, Ljxl/biff/FontRecord;->pointHeight:I

    .line 229
    invoke-interface {p1}, Ljxl/format/Font;->getColour()Ljxl/format/Colour;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/format/Colour;->getValue()I

    move-result v1

    iput v1, p0, Ljxl/biff/FontRecord;->colourIndex:I

    .line 230
    invoke-interface {p1}, Ljxl/format/Font;->getBoldWeight()I

    move-result v1

    iput v1, p0, Ljxl/biff/FontRecord;->boldWeight:I

    .line 231
    invoke-interface {p1}, Ljxl/format/Font;->getScriptStyle()Ljxl/format/ScriptStyle;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/format/ScriptStyle;->getValue()I

    move-result v1

    iput v1, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    .line 232
    invoke-interface {p1}, Ljxl/format/Font;->getUnderlineStyle()Ljxl/format/UnderlineStyle;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/format/UnderlineStyle;->getValue()I

    move-result v1

    iput v1, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    .line 233
    invoke-interface {p1}, Ljxl/format/Font;->isItalic()Z

    move-result v1

    iput-boolean v1, p0, Ljxl/biff/FontRecord;->italic:Z

    .line 234
    invoke-interface {p1}, Ljxl/format/Font;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    .line 235
    invoke-interface {p1}, Ljxl/format/Font;->isStruckout()Z

    move-result v1

    iput-boolean v1, p0, Ljxl/biff/FontRecord;->struckout:Z

    .line 236
    iput-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    .line 237
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V
    .locals 6
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "ws"    # Ljxl/WorkbookSettings;

    .line 140
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 142
    invoke-virtual {p0}, Ljxl/biff/FontRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 144
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    div-int/lit8 v2, v2, 0x14

    iput v2, p0, Ljxl/biff/FontRecord;->pointHeight:I

    .line 146
    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/4 v4, 0x5

    aget-byte v4, v0, v4

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/biff/FontRecord;->colourIndex:I

    .line 147
    const/4 v2, 0x6

    aget-byte v2, v0, v2

    const/4 v4, 0x7

    aget-byte v4, v0, v4

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/biff/FontRecord;->boldWeight:I

    .line 148
    const/16 v2, 0x8

    aget-byte v4, v0, v2

    const/16 v5, 0x9

    aget-byte v5, v0, v5

    invoke-static {v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    iput v4, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    .line 149
    const/16 v4, 0xa

    aget-byte v4, v0, v4

    iput v4, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    .line 150
    const/16 v4, 0xb

    aget-byte v4, v0, v4

    iput-byte v4, p0, Ljxl/biff/FontRecord;->fontFamily:B

    .line 151
    const/16 v4, 0xc

    aget-byte v4, v0, v4

    iput-byte v4, p0, Ljxl/biff/FontRecord;->characterSet:B

    .line 152
    iput-boolean v1, p0, Ljxl/biff/FontRecord;->initialized:Z

    .line 154
    const/4 v1, 0x2

    aget-byte v4, v0, v1

    and-int/2addr v4, v1

    if-eqz v4, :cond_0

    .line 156
    iput-boolean v3, p0, Ljxl/biff/FontRecord;->italic:Z

    .line 159
    :cond_0
    aget-byte v1, v0, v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 161
    iput-boolean v3, p0, Ljxl/biff/FontRecord;->struckout:Z

    .line 164
    :cond_1
    const/16 v1, 0xe

    aget-byte v1, v0, v1

    .line 165
    .local v1, "numChars":I
    const/16 v2, 0xf

    aget-byte v4, v0, v2

    const/16 v5, 0x10

    if-nez v4, :cond_2

    .line 167
    invoke-static {v0, v1, v5, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_2
    aget-byte v4, v0, v2

    if-ne v4, v3, :cond_3

    .line 171
    invoke-static {v0, v1, v5}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_3
    invoke-static {v0, v1, v2, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    .line 178
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FontRecord$Biff7;)V
    .locals 6
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "ws"    # Ljxl/WorkbookSettings;
    .param p3, "dummy"    # Ljxl/biff/FontRecord$Biff7;

    .line 190
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 192
    invoke-virtual {p0}, Ljxl/biff/FontRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 194
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    div-int/lit8 v2, v2, 0x14

    iput v2, p0, Ljxl/biff/FontRecord;->pointHeight:I

    .line 196
    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/4 v4, 0x5

    aget-byte v4, v0, v4

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/biff/FontRecord;->colourIndex:I

    .line 197
    const/4 v2, 0x6

    aget-byte v2, v0, v2

    const/4 v4, 0x7

    aget-byte v4, v0, v4

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/biff/FontRecord;->boldWeight:I

    .line 198
    const/16 v2, 0x8

    aget-byte v4, v0, v2

    const/16 v5, 0x9

    aget-byte v5, v0, v5

    invoke-static {v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    iput v4, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    .line 199
    const/16 v4, 0xa

    aget-byte v4, v0, v4

    iput v4, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    .line 200
    const/16 v4, 0xb

    aget-byte v4, v0, v4

    iput-byte v4, p0, Ljxl/biff/FontRecord;->fontFamily:B

    .line 201
    iput-boolean v1, p0, Ljxl/biff/FontRecord;->initialized:Z

    .line 203
    const/4 v1, 0x2

    aget-byte v4, v0, v1

    and-int/2addr v4, v1

    if-eqz v4, :cond_0

    .line 205
    iput-boolean v3, p0, Ljxl/biff/FontRecord;->italic:Z

    .line 208
    :cond_0
    aget-byte v1, v0, v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 210
    iput-boolean v3, p0, Ljxl/biff/FontRecord;->struckout:Z

    .line 213
    :cond_1
    const/16 v1, 0xe

    aget-byte v1, v0, v1

    .line 214
    .local v1, "numChars":I
    const/16 v2, 0xf

    invoke-static {v0, v1, v2, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    .line 215
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 497
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 499
    return v0

    .line 502
    :cond_0
    instance-of v1, p1, Ljxl/biff/FontRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 504
    return v2

    .line 507
    :cond_1
    move-object v1, p1

    check-cast v1, Ljxl/biff/FontRecord;

    .line 509
    .local v1, "font":Ljxl/biff/FontRecord;
    iget v3, p0, Ljxl/biff/FontRecord;->pointHeight:I

    iget v4, v1, Ljxl/biff/FontRecord;->pointHeight:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Ljxl/biff/FontRecord;->colourIndex:I

    iget v4, v1, Ljxl/biff/FontRecord;->colourIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Ljxl/biff/FontRecord;->boldWeight:I

    iget v4, v1, Ljxl/biff/FontRecord;->boldWeight:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    iget v4, v1, Ljxl/biff/FontRecord;->scriptStyle:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    iget v4, v1, Ljxl/biff/FontRecord;->underlineStyle:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Ljxl/biff/FontRecord;->italic:Z

    iget-boolean v4, v1, Ljxl/biff/FontRecord;->italic:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Ljxl/biff/FontRecord;->struckout:Z

    iget-boolean v4, v1, Ljxl/biff/FontRecord;->struckout:Z

    if-ne v3, v4, :cond_2

    iget-byte v3, p0, Ljxl/biff/FontRecord;->fontFamily:B

    iget-byte v4, v1, Ljxl/biff/FontRecord;->fontFamily:B

    if-ne v3, v4, :cond_2

    iget-byte v3, p0, Ljxl/biff/FontRecord;->characterSet:B

    iget-byte v4, v1, Ljxl/biff/FontRecord;->characterSet:B

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    iget-object v4, v1, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    return v0

    .line 523
    :cond_2
    return v2
.end method

.method public getBoldWeight()I
    .locals 1

    .line 376
    iget v0, p0, Ljxl/biff/FontRecord;->boldWeight:I

    return v0
.end method

.method public getColour()Ljxl/format/Colour;
    .locals 1

    .line 445
    iget v0, p0, Ljxl/biff/FontRecord;->colourIndex:I

    invoke-static {v0}, Ljxl/format/Colour;->getInternalColour(I)Ljxl/format/Colour;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 6

    .line 246
    iget-object v0, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    const/16 v2, 0x10

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 249
    .local v0, "data":[B
    iget v3, p0, Ljxl/biff/FontRecord;->pointHeight:I

    mul-int/lit8 v3, v3, 0x14

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 252
    iget-boolean v3, p0, Ljxl/biff/FontRecord;->italic:Z

    if-eqz v3, :cond_0

    .line 254
    aget-byte v3, v0, v1

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 257
    :cond_0
    iget-boolean v3, p0, Ljxl/biff/FontRecord;->struckout:Z

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    .line 259
    aget-byte v3, v0, v1

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 263
    :cond_1
    iget v1, p0, Ljxl/biff/FontRecord;->colourIndex:I

    const/4 v3, 0x4

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 266
    iget v1, p0, Ljxl/biff/FontRecord;->boldWeight:I

    const/4 v3, 0x6

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 269
    iget v1, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    invoke-static {v1, v0, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 272
    const/16 v1, 0xa

    iget v3, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 275
    const/16 v1, 0xb

    iget-byte v3, p0, Ljxl/biff/FontRecord;->fontFamily:B

    aput-byte v3, v0, v1

    .line 278
    const/16 v1, 0xc

    iget-byte v3, p0, Ljxl/biff/FontRecord;->characterSet:B

    aput-byte v3, v0, v1

    .line 281
    const/16 v1, 0xd

    aput-byte v4, v0, v1

    .line 284
    const/16 v1, 0xe

    iget-object v3, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 286
    const/16 v1, 0xf

    const/4 v3, 0x1

    aput-byte v3, v0, v1

    .line 289
    iget-object v1, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 291
    return-object v0
.end method

.method public final getFontIndex()I
    .locals 1

    .line 332
    iget v0, p0, Ljxl/biff/FontRecord;->fontIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPointSize()I
    .locals 1

    .line 354
    iget v0, p0, Ljxl/biff/FontRecord;->pointHeight:I

    return v0
.end method

.method public getScriptStyle()Ljxl/format/ScriptStyle;
    .locals 1

    .line 468
    iget v0, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    invoke-static {v0}, Ljxl/format/ScriptStyle;->getStyle(I)Ljxl/format/ScriptStyle;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlineStyle()Ljxl/format/UnderlineStyle;
    .locals 1

    .line 422
    iget v0, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    invoke-static {v0}, Ljxl/format/UnderlineStyle;->getStyle(I)Ljxl/format/UnderlineStyle;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 487
    iget-object v0, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final initialize(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 312
    iput p1, p0, Ljxl/biff/FontRecord;->fontIndex:I

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    .line 314
    return-void
.end method

.method public final isInitialized()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 399
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->italic:Z

    return v0
.end method

.method public isStruckout()Z
    .locals 1

    .line 533
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->struckout:Z

    return v0
.end method

.method protected setFontBoldStyle(I)V
    .locals 1
    .param p1, "bs"    # I

    .line 364
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 366
    iput p1, p0, Ljxl/biff/FontRecord;->boldWeight:I

    .line 367
    return-void
.end method

.method protected setFontColour(I)V
    .locals 1
    .param p1, "c"    # I

    .line 433
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 435
    iput p1, p0, Ljxl/biff/FontRecord;->colourIndex:I

    .line 436
    return-void
.end method

.method protected setFontItalic(Z)V
    .locals 1
    .param p1, "i"    # Z

    .line 387
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 389
    iput-boolean p1, p0, Ljxl/biff/FontRecord;->italic:Z

    .line 390
    return-void
.end method

.method protected setFontPointSize(I)V
    .locals 1
    .param p1, "ps"    # I

    .line 342
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 344
    iput p1, p0, Ljxl/biff/FontRecord;->pointHeight:I

    .line 345
    return-void
.end method

.method protected setFontScriptStyle(I)V
    .locals 1
    .param p1, "ss"    # I

    .line 456
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 458
    iput p1, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    .line 459
    return-void
.end method

.method protected setFontStruckout(Z)V
    .locals 0
    .param p1, "os"    # Z

    .line 543
    iput-boolean p1, p0, Ljxl/biff/FontRecord;->struckout:Z

    .line 544
    return-void
.end method

.method protected setFontUnderlineStyle(I)V
    .locals 1
    .param p1, "us"    # I

    .line 410
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 412
    iput p1, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    .line 413
    return-void
.end method

.method public final uninitialize()V
    .locals 1

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    .line 323
    return-void
.end method
