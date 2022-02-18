.class public Ljxl/biff/FormattingRecords;
.super Ljava/lang/Object;
.source "FormattingRecords.java"


# static fields
.field private static final customFormatStartIndex:I = 0xa4

.field private static logger:Ljxl/common/Logger; = null

.field private static final maxFormatRecordsIndex:I = 0x1b9

.field private static final minXFRecords:I = 0x15


# instance fields
.field private fonts:Ljxl/biff/Fonts;

.field private formats:Ljava/util/HashMap;

.field private formatsList:Ljava/util/ArrayList;

.field private nextCustomIndexNumber:I

.field private palette:Ljxl/biff/PaletteRecord;

.field private xfRecords:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Ljxl/biff/FormattingRecords;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/FormattingRecords;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/Fonts;)V
    .locals 2
    .param p1, "f"    # Ljxl/biff/Fonts;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    .line 104
    iput-object p1, p0, Ljxl/biff/FormattingRecords;->fonts:Ljxl/biff/Fonts;

    .line 105
    const/16 v0, 0xa4

    iput v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 106
    return-void
.end method


# virtual methods
.method public final addFormat(Ljxl/biff/DisplayFormat;)V
    .locals 3
    .param p1, "fr"    # Ljxl/biff/DisplayFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/NumFormatRecordsException;
        }
    .end annotation

    .line 151
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->isInitialized()Z

    move-result v0

    const/16 v1, 0x1b9

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 154
    sget-object v0, Ljxl/biff/FormattingRecords;->logger:Ljxl/common/Logger;

    const-string v2, "Format index exceeds Excel maximum - assigning custom number"

    invoke-virtual {v0, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 156
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    invoke-interface {p1, v0}, Ljxl/biff/DisplayFormat;->initialize(I)V

    .line 157
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 161
    :cond_0
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    invoke-interface {p1, v0}, Ljxl/biff/DisplayFormat;->initialize(I)V

    .line 164
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 167
    :cond_1
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    if-gt v0, v1, :cond_4

    .line 173
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v0

    iget v1, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    if-lt v0, v1, :cond_2

    .line 175
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 178
    :cond_2
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->isBuiltIn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_3
    return-void

    .line 169
    :cond_4
    iput v1, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 170
    new-instance v0, Ljxl/biff/NumFormatRecordsException;

    invoke-direct {v0}, Ljxl/biff/NumFormatRecordsException;-><init>()V

    throw v0
.end method

.method public final addStyle(Ljxl/biff/XFRecord;)V
    .locals 2
    .param p1, "xf"    # Ljxl/biff/XFRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/NumFormatRecordsException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 123
    .local v0, "pos":I
    iget-object v1, p0, Ljxl/biff/FormattingRecords;->fonts:Ljxl/biff/Fonts;

    invoke-virtual {p1, v0, p0, v1}, Ljxl/biff/XFRecord;->initialize(ILjxl/biff/FormattingRecords;Ljxl/biff/Fonts;)V

    .line 124
    iget-object v1, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v0    # "pos":I
    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v0

    iget-object v1, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    :goto_0
    return-void
.end method

.method public getColourRGB(Ljxl/format/Colour;)Ljxl/format/RGB;
    .locals 1
    .param p1, "c"    # Ljxl/format/Colour;

    .line 566
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    if-nez v0, :cond_0

    .line 568
    invoke-virtual {p1}, Ljxl/format/Colour;->getDefaultRGB()Ljxl/format/RGB;

    move-result-object v0

    return-object v0

    .line 571
    :cond_0
    invoke-virtual {v0, p1}, Ljxl/biff/PaletteRecord;->getColourRGB(Ljxl/format/Colour;)Ljxl/format/RGB;

    move-result-object v0

    return-object v0
.end method

.method public final getDateFormat(I)Ljava/text/DateFormat;
    .locals 4
    .param p1, "pos"    # I

    .line 217
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/XFRecord;

    .line 219
    .local v0, "xfr":Ljxl/biff/XFRecord;
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->isDate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    return-object v1

    .line 224
    :cond_0
    iget-object v1, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/FormatRecord;

    .line 227
    .local v1, "fr":Ljxl/biff/FormatRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 229
    return-object v2

    .line 232
    :cond_1
    invoke-virtual {v1}, Ljxl/biff/FormatRecord;->isDate()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljxl/biff/FormatRecord;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method protected final getFonts()Ljxl/biff/Fonts;
    .locals 1

    .line 326
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->fonts:Ljxl/biff/Fonts;

    return-object v0
.end method

.method getFormatRecord(I)Ljxl/biff/FormatRecord;
    .locals 2
    .param p1, "index"    # I

    .line 270
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/FormatRecord;

    return-object v0
.end method

.method public final getNumberFormat(I)Ljava/text/NumberFormat;
    .locals 4
    .param p1, "pos"    # I

    .line 244
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/XFRecord;

    .line 246
    .local v0, "xfr":Ljxl/biff/XFRecord;
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v1

    return-object v1

    .line 251
    :cond_0
    iget-object v1, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/FormatRecord;

    .line 254
    .local v1, "fr":Ljxl/biff/FormatRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 256
    return-object v2

    .line 259
    :cond_1
    invoke-virtual {v1}, Ljxl/biff/FormatRecord;->isNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljxl/biff/FormatRecord;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method protected final getNumberOfFormatRecords()I
    .locals 1

    .line 350
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPalette()Ljxl/biff/PaletteRecord;
    .locals 1

    .line 529
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    return-object v0
.end method

.method public final getXFRecord(I)Ljxl/biff/XFRecord;
    .locals 1
    .param p1, "index"    # I

    .line 338
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/XFRecord;

    return-object v0
.end method

.method public final isDate(I)Z
    .locals 4
    .param p1, "pos"    # I

    .line 195
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/XFRecord;

    .line 197
    .local v0, "xfr":Ljxl/biff/XFRecord;
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->isDate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x1

    return v1

    .line 202
    :cond_0
    iget-object v1, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/FormatRecord;

    .line 205
    .local v1, "fr":Ljxl/biff/FormatRecord;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljxl/biff/FormatRecord;->isDate()Z

    move-result v2

    :goto_0
    return v2
.end method

.method public rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)Ljxl/biff/IndexMapping;
    .locals 11
    .param p1, "fontMapping"    # Ljxl/biff/IndexMapping;
    .param p2, "formatMapping"    # Ljxl/biff/IndexMapping;

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "xfr":Ljxl/biff/XFRecord;
    iget-object v1, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljxl/biff/XFRecord;

    .line 383
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result v2

    const/16 v3, 0xa4

    if-lt v2, v3, :cond_0

    .line 385
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result v2

    invoke-virtual {p2, v2}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/biff/XFRecord;->setFormatIndex(I)V

    .line 388
    :cond_0
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getFontIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/biff/XFRecord;->setFontIndex(I)V

    goto :goto_0

    .line 391
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v1, "newrecords":Ljava/util/ArrayList;
    new-instance v3, Ljxl/biff/IndexMapping;

    iget-object v4, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljxl/biff/IndexMapping;-><init>(I)V

    .line 393
    .local v3, "mapping":Ljxl/biff/IndexMapping;
    const/4 v4, 0x0

    .line 395
    .local v4, "numremoved":I
    iget-object v5, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 397
    .local v5, "numXFRecords":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 399
    iget-object v7, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v3, v6, v6}, Ljxl/biff/IndexMapping;->setMapping(II)V

    .line 397
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 403
    .end local v6    # "i":I
    :cond_2
    if-ge v5, v2, :cond_3

    .line 405
    sget-object v2, Ljxl/biff/FormattingRecords;->logger:Ljxl/common/Logger;

    const-string v6, "There are less than the expected minimum number of XF records"

    invoke-virtual {v2, v6}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 407
    return-object v3

    .line 411
    :cond_3
    const/16 v2, 0x15

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 413
    iget-object v6, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/biff/XFRecord;

    .line 416
    .local v6, "xf":Ljxl/biff/XFRecord;
    const/4 v7, 0x0

    .line 417
    .local v7, "duplicate":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 418
    .local v8, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v7, :cond_5

    .line 420
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljxl/biff/XFRecord;

    .line 421
    .local v9, "xf2":Ljxl/biff/XFRecord;
    invoke-virtual {v9, v6}, Ljxl/biff/XFRecord;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 423
    const/4 v7, 0x1

    .line 424
    invoke-virtual {v9}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v10

    invoke-virtual {v3, v10}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v10

    invoke-virtual {v3, v2, v10}, Ljxl/biff/IndexMapping;->setMapping(II)V

    .line 425
    add-int/lit8 v4, v4, 0x1

    .line 427
    .end local v9    # "xf2":Ljxl/biff/XFRecord;
    :cond_4
    goto :goto_3

    .line 430
    .end local v8    # "it":Ljava/util/Iterator;
    :cond_5
    if-nez v7, :cond_6

    .line 432
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    sub-int v8, v2, v4

    invoke-virtual {v3, v2, v8}, Ljxl/biff/IndexMapping;->setMapping(II)V

    .line 411
    .end local v6    # "xf":Ljxl/biff/XFRecord;
    .end local v7    # "duplicate":Z
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 440
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 442
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/biff/XFRecord;

    .line 443
    .restart local v6    # "xf":Ljxl/biff/XFRecord;
    invoke-virtual {v6, v3}, Ljxl/biff/XFRecord;->rationalize(Ljxl/biff/IndexMapping;)V

    .line 444
    .end local v6    # "xf":Ljxl/biff/XFRecord;
    goto :goto_4

    .line 447
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_8
    iput-object v1, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    .line 449
    return-object v3
.end method

.method public rationalizeDisplayFormats()Ljxl/biff/IndexMapping;
    .locals 11

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v0, "newformats":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .line 464
    .local v1, "numremoved":I
    new-instance v2, Ljxl/biff/IndexMapping;

    iget v3, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    invoke-direct {v2, v3}, Ljxl/biff/IndexMapping;-><init>(I)V

    .line 467
    .local v2, "mapping":Ljxl/biff/IndexMapping;
    iget-object v3, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 468
    .local v3, "i":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 469
    .local v4, "df":Ljxl/biff/DisplayFormat;
    const/4 v5, 0x0

    .line 470
    .local v5, "df2":Ljxl/biff/DisplayFormat;
    const/4 v6, 0x0

    .line 471
    .local v6, "duplicate":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 473
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Ljxl/biff/DisplayFormat;

    .line 475
    invoke-interface {v4}, Ljxl/biff/DisplayFormat;->isBuiltIn()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljxl/common/Assert;->verify(Z)V

    .line 478
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 479
    .local v7, "i2":Ljava/util/Iterator;
    const/4 v6, 0x0

    .line 480
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v6, :cond_1

    .line 482
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Ljxl/biff/DisplayFormat;

    .line 483
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 485
    const/4 v6, 0x1

    .line 486
    invoke-interface {v4}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v8

    invoke-interface {v5}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v9

    invoke-virtual {v2, v9}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljxl/biff/IndexMapping;->setMapping(II)V

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 493
    :cond_1
    if-nez v6, :cond_3

    .line 495
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-interface {v4}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v8

    sub-int/2addr v8, v1

    .line 497
    .local v8, "indexnum":I
    const/16 v9, 0x1b9

    if-le v8, v9, :cond_2

    .line 499
    sget-object v9, Ljxl/biff/FormattingRecords;->logger:Ljxl/common/Logger;

    const-string v10, "Too many number formats - using default format."

    invoke-virtual {v9, v10}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 500
    const/4 v8, 0x0

    .line 502
    :cond_2
    invoke-interface {v4}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v9

    invoke-interface {v4}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {v2, v9, v10}, Ljxl/biff/IndexMapping;->setMapping(II)V

    .line 505
    .end local v7    # "i2":Ljava/util/Iterator;
    .end local v8    # "indexnum":I
    :cond_3
    goto :goto_0

    .line 508
    :cond_4
    iput-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    .line 511
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 513
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 515
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Ljxl/biff/DisplayFormat;

    .line 516
    invoke-interface {v4}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v7

    invoke-virtual {v2, v7}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v7

    invoke-interface {v4, v7}, Ljxl/biff/DisplayFormat;->initialize(I)V

    goto :goto_2

    .line 519
    :cond_5
    return-object v2
.end method

.method public rationalizeFonts()Ljxl/biff/IndexMapping;
    .locals 1

    .line 360
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->fonts:Ljxl/biff/Fonts;

    invoke-virtual {v0}, Ljxl/biff/Fonts;->rationalize()Ljxl/biff/IndexMapping;

    move-result-object v0

    return-object v0
.end method

.method public setColourRGB(Ljxl/format/Colour;III)V
    .locals 1
    .param p1, "c"    # Ljxl/format/Colour;
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 552
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Ljxl/biff/PaletteRecord;

    invoke-direct {v0}, Ljxl/biff/PaletteRecord;-><init>()V

    iput-object v0, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    .line 556
    :cond_0
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljxl/biff/PaletteRecord;->setColourRGB(Ljxl/format/Colour;III)V

    .line 557
    return-void
.end method

.method public setPalette(Ljxl/biff/PaletteRecord;)V
    .locals 0
    .param p1, "pr"    # Ljxl/biff/PaletteRecord;

    .line 539
    iput-object p1, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    .line 540
    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 7
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 283
    .local v0, "i":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 284
    .local v1, "fr":Ljxl/biff/FormatRecord;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljxl/biff/FormatRecord;

    .line 287
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v2, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 292
    const/4 v2, 0x0

    .line 293
    .local v2, "xfr":Ljxl/biff/XFRecord;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljxl/biff/XFRecord;

    .line 296
    invoke-virtual {p1, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_1

    .line 300
    :cond_1
    new-instance v3, Ljxl/biff/BuiltInStyle;

    const/16 v4, 0x10

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 301
    .local v3, "style":Ljxl/biff/BuiltInStyle;
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 303
    new-instance v4, Ljxl/biff/BuiltInStyle;

    const/16 v5, 0x11

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    move-object v3, v4

    .line 304
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 306
    new-instance v4, Ljxl/biff/BuiltInStyle;

    const/16 v5, 0x12

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    move-object v3, v4

    .line 307
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 309
    new-instance v4, Ljxl/biff/BuiltInStyle;

    const/16 v5, 0x13

    const/4 v6, 0x7

    invoke-direct {v4, v5, v6}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    move-object v3, v4

    .line 310
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 312
    new-instance v4, Ljxl/biff/BuiltInStyle;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    move-object v3, v4

    .line 313
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 315
    new-instance v4, Ljxl/biff/BuiltInStyle;

    const/16 v5, 0x14

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    move-object v3, v4

    .line 316
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 317
    return-void
.end method
