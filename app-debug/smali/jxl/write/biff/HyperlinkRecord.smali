.class public Ljxl/write/biff/HyperlinkRecord;
.super Ljxl/biff/WritableRecordData;
.source "HyperlinkRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/HyperlinkRecord$LinkType;
    }
.end annotation


# static fields
.field private static final fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private static logger:Ljxl/common/Logger;

.field private static final uncLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private static final unknown:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private static final urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private static final workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;


# instance fields
.field private contents:Ljava/lang/String;

.field private data:[B

.field private file:Ljava/io/File;

.field private firstColumn:I

.field private firstRow:I

.field private lastColumn:I

.field private lastRow:I

.field private linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private location:Ljava/lang/String;

.field private modified:Z

.field private range:Ljxl/Range;

.field private sheet:Ljxl/write/WritableSheet;

.field private url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-class v0, Ljxl/write/biff/HyperlinkRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->logger:Ljxl/common/Logger;

    .line 124
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 125
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 126
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->uncLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 127
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 128
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->unknown:Ljxl/write/biff/HyperlinkRecord$LinkType;

    return-void
.end method

.method protected constructor <init>(IIIILjava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "lastcol"    # I
    .param p4, "lastrow"    # I
    .param p5, "file"    # Ljava/io/File;
    .param p6, "desc"    # Ljava/lang/String;

    .line 277
    sget-object v0, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 279
    iput p1, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 280
    iput p2, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 282
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 283
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 284
    iput-object p6, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 286
    iput-object p5, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    .line 288
    invoke-virtual {p5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Ljxl/write/biff/HyperlinkRecord;->uncLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    goto :goto_0

    .line 294
    :cond_0
    sget-object v0, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 297
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 298
    return-void
.end method

.method protected constructor <init>(IIIILjava/lang/String;Ljxl/write/WritableSheet;IIII)V
    .locals 11
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "lastcol"    # I
    .param p4, "lastrow"    # I
    .param p5, "desc"    # Ljava/lang/String;
    .param p6, "s"    # Ljxl/write/WritableSheet;
    .param p7, "destcol"    # I
    .param p8, "destrow"    # I
    .param p9, "lastdestcol"    # I
    .param p10, "lastdestrow"    # I

    .line 321
    move-object v6, p0

    move v7, p1

    sget-object v0, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 323
    iput v7, v6, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 324
    move v8, p2

    iput v8, v6, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 326
    move v9, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 327
    iget v0, v6, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    move v10, p4

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 329
    move-object v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Ljxl/write/biff/HyperlinkRecord;->setLocation(Ljxl/write/WritableSheet;IIII)V

    .line 330
    move-object/from16 v0, p5

    iput-object v0, v6, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 332
    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v1, v6, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 334
    const/4 v1, 0x1

    iput-boolean v1, v6, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 335
    return-void
.end method

.method protected constructor <init>(IIIILjava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "lastcol"    # I
    .param p4, "lastrow"    # I
    .param p5, "url"    # Ljava/net/URL;
    .param p6, "desc"    # Ljava/lang/String;

    .line 248
    sget-object v0, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 250
    iput p1, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 251
    iput p2, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 253
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 254
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 256
    iput-object p5, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    .line 257
    iput-object p6, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 259
    sget-object v0, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 262
    return-void
.end method

.method protected constructor <init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V
    .locals 1
    .param p1, "h"    # Ljxl/Hyperlink;
    .param p2, "s"    # Ljxl/write/WritableSheet;

    .line 137
    sget-object v0, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 139
    instance-of v0, p1, Ljxl/read/biff/HyperlinkRecord;

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, p1, p2}, Ljxl/write/biff/HyperlinkRecord;->copyReadHyperlink(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2}, Ljxl/write/biff/HyperlinkRecord;->copyWritableHyperlink(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V

    .line 147
    :goto_0
    return-void
.end method

.method private copyReadHyperlink(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V
    .locals 8
    .param p1, "h"    # Ljxl/Hyperlink;
    .param p2, "s"    # Ljxl/write/WritableSheet;

    .line 154
    move-object v0, p1

    check-cast v0, Ljxl/read/biff/HyperlinkRecord;

    .line 156
    .local v0, "hl":Ljxl/read/biff/HyperlinkRecord;
    invoke-virtual {v0}, Ljxl/read/biff/HyperlinkRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    .line 157
    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    .line 160
    invoke-virtual {v0}, Ljxl/read/biff/HyperlinkRecord;->getRow()I

    move-result v1

    iput v1, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 161
    invoke-virtual {v0}, Ljxl/read/biff/HyperlinkRecord;->getColumn()I

    move-result v1

    iput v1, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 162
    invoke-virtual {v0}, Ljxl/read/biff/HyperlinkRecord;->getLastRow()I

    move-result v1

    iput v1, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 163
    invoke-virtual {v0}, Ljxl/read/biff/HyperlinkRecord;->getLastColumn()I

    move-result v1

    iput v1, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 164
    new-instance v1, Ljxl/biff/SheetRangeImpl;

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v6, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v7, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v2, v1

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    .line 168
    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->unknown:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 170
    invoke-virtual {v0}, Ljxl/read/biff/HyperlinkRecord;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 173
    invoke-virtual {v0}, Ljxl/read/biff/HyperlinkRecord;->getFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljxl/read/biff/HyperlinkRecord;->isURL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 178
    invoke-virtual {v0}, Ljxl/read/biff/HyperlinkRecord;->getURL()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v0}, Ljxl/read/biff/HyperlinkRecord;->isLocation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 183
    invoke-virtual {v0}, Ljxl/read/biff/HyperlinkRecord;->getLocation()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    .line 186
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 187
    return-void
.end method

.method private copyWritableHyperlink(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V
    .locals 8
    .param p1, "hl"    # Ljxl/Hyperlink;
    .param p2, "s"    # Ljxl/write/WritableSheet;

    .line 197
    move-object v0, p1

    check-cast v0, Ljxl/write/biff/HyperlinkRecord;

    .line 199
    .local v0, "h":Ljxl/write/biff/HyperlinkRecord;
    iget v1, v0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iput v1, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 200
    iget v1, v0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    iput v1, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 201
    iget v1, v0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iput v1, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 202
    iget v1, v0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iput v1, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 204
    iget-object v1, v0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 208
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 217
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_0
    iget-object v1, v0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 219
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    .line 222
    :cond_1
    iget-object v1, v0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    .line 223
    iget-object v1, v0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 224
    iget-object v1, v0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 227
    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    .line 228
    new-instance v1, Ljxl/biff/SheetRangeImpl;

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v6, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v7, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v2, v1

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    .line 231
    return-void
.end method

.method private getFileData([B)[B
    .locals 20
    .param p1, "cd"    # [B

    .line 972
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v2, "path":Ljava/util/ArrayList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v3, "shortFileName":Ljava/util/ArrayList;
    iget-object v4, v0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    iget-object v4, v0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljxl/write/biff/HyperlinkRecord;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    iget-object v4, v0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 978
    .local v4, "parent":Ljava/io/File;
    :goto_0
    if-eqz v4, :cond_0

    .line 980
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljxl/write/biff/HyperlinkRecord;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    goto :goto_0

    .line 987
    :cond_0
    const/4 v5, 0x0

    .line 988
    .local v5, "upLevelCount":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 989
    .local v6, "pos":I
    const/4 v8, 0x1

    .line 991
    .local v8, "upDir":Z
    :goto_1
    if-eqz v8, :cond_2

    .line 993
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 994
    .local v9, "s":Ljava/lang/String;
    const-string v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 996
    add-int/lit8 v5, v5, 0x1

    .line 997
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 998
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1002
    :cond_1
    const/4 v8, 0x0

    .line 1005
    :goto_2
    nop

    .end local v9    # "s":Ljava/lang/String;
    add-int/lit8 v6, v6, -0x1

    .line 1006
    goto :goto_1

    .line 1008
    :cond_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1009
    .local v9, "filePathSB":Ljava/lang/StringBuffer;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1011
    .local v10, "shortFilePathSB":Ljava/lang/StringBuffer;
    iget-object v11, v0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x3a

    const/4 v13, 0x0

    if-ne v11, v12, :cond_3

    .line 1013
    iget-object v11, v0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1014
    .local v11, "driveLetter":C
    const/16 v14, 0x43

    if-eq v11, v14, :cond_3

    const/16 v14, 0x63

    if-eq v11, v14, :cond_3

    .line 1016
    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1017
    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1018
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1019
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1023
    .end local v11    # "driveLetter":C
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v7

    .local v11, "i":I
    :goto_3
    if-ltz v11, :cond_5

    .line 1025
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1026
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1028
    if-eqz v11, :cond_4

    .line 1030
    const-string v12, "\\"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1031
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1023
    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 1036
    .end local v11    # "i":I
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1037
    .local v11, "filePath":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1039
    .local v12, "shortFilePath":Ljava/lang/String;
    array-length v14, v1

    add-int/lit8 v14, v14, 0x4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v7

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x10

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v7

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x18

    .line 1047
    .local v14, "dataLength":I
    iget-object v15, v0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v15, :cond_6

    .line 1049
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v7

    mul-int/lit8 v15, v15, 0x2

    add-int/lit8 v15, v15, 0x4

    add-int/2addr v14, v15

    .line 1053
    :cond_6
    new-array v15, v14, [B

    .line 1055
    .local v15, "d":[B
    array-length v7, v1

    invoke-static {v1, v13, v15, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1057
    array-length v7, v1

    .line 1060
    .local v7, "filePos":I
    iget-object v13, v0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 1062
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13, v15, v7}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 1063
    iget-object v13, v0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    add-int/lit8 v1, v7, 0x4

    invoke-static {v13, v15, v1}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 1064
    iget-object v1, v0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v7, v1

    .line 1067
    :cond_7
    move v1, v7

    .line 1070
    .local v1, "curPos":I
    const/4 v13, 0x3

    aput-byte v13, v15, v1

    .line 1071
    add-int/lit8 v18, v1, 0x1

    aput-byte v13, v15, v18

    .line 1072
    add-int/lit8 v18, v1, 0x2

    const/16 v17, 0x0

    aput-byte v17, v15, v18

    .line 1073
    add-int/lit8 v18, v1, 0x3

    aput-byte v17, v15, v18

    .line 1074
    add-int/lit8 v18, v1, 0x4

    aput-byte v17, v15, v18

    .line 1075
    add-int/lit8 v18, v1, 0x5

    aput-byte v17, v15, v18

    .line 1076
    add-int/lit8 v18, v1, 0x6

    aput-byte v17, v15, v18

    .line 1077
    add-int/lit8 v18, v1, 0x7

    aput-byte v17, v15, v18

    .line 1078
    add-int/lit8 v18, v1, 0x8

    const/16 v19, -0x40

    aput-byte v19, v15, v18

    .line 1079
    add-int/lit8 v18, v1, 0x9

    aput-byte v17, v15, v18

    .line 1080
    add-int/lit8 v18, v1, 0xa

    aput-byte v17, v15, v18

    .line 1081
    add-int/lit8 v18, v1, 0xb

    aput-byte v17, v15, v18

    .line 1082
    add-int/lit8 v18, v1, 0xc

    aput-byte v17, v15, v18

    .line 1083
    add-int/lit8 v18, v1, 0xd

    aput-byte v17, v15, v18

    .line 1084
    add-int/lit8 v18, v1, 0xe

    aput-byte v17, v15, v18

    .line 1085
    add-int/lit8 v18, v1, 0xf

    const/16 v19, 0x46

    aput-byte v19, v15, v18

    .line 1087
    add-int/lit8 v1, v1, 0x10

    .line 1090
    invoke-static {v5, v15, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 1091
    add-int/lit8 v1, v1, 0x2

    .line 1094
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v16, 0x1

    add-int/lit8 v13, v18, 0x1

    invoke-static {v13, v15, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 1097
    add-int/lit8 v13, v1, 0x4

    invoke-static {v12, v15, v13}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;[BI)V

    .line 1099
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x4

    add-int/2addr v1, v13

    .line 1102
    const/4 v13, -0x1

    aput-byte v13, v15, v1

    .line 1103
    add-int/lit8 v18, v1, 0x1

    aput-byte v13, v15, v18

    .line 1104
    add-int/lit8 v13, v1, 0x2

    const/16 v18, -0x53

    aput-byte v18, v15, v13

    .line 1105
    add-int/lit8 v13, v1, 0x3

    const/16 v18, -0x22

    aput-byte v18, v15, v13

    .line 1106
    add-int/lit8 v13, v1, 0x4

    const/16 v17, 0x0

    aput-byte v17, v15, v13

    .line 1107
    add-int/lit8 v13, v1, 0x5

    aput-byte v17, v15, v13

    .line 1108
    add-int/lit8 v13, v1, 0x6

    aput-byte v17, v15, v13

    .line 1109
    add-int/lit8 v13, v1, 0x7

    aput-byte v17, v15, v13

    .line 1110
    add-int/lit8 v13, v1, 0x8

    aput-byte v17, v15, v13

    .line 1111
    add-int/lit8 v13, v1, 0x9

    aput-byte v17, v15, v13

    .line 1112
    add-int/lit8 v13, v1, 0xa

    aput-byte v17, v15, v13

    .line 1113
    add-int/lit8 v13, v1, 0xb

    aput-byte v17, v15, v13

    .line 1114
    add-int/lit8 v13, v1, 0xc

    aput-byte v17, v15, v13

    .line 1115
    add-int/lit8 v13, v1, 0xd

    aput-byte v17, v15, v13

    .line 1116
    add-int/lit8 v13, v1, 0xe

    aput-byte v17, v15, v13

    .line 1117
    add-int/lit8 v13, v1, 0xf

    aput-byte v17, v15, v13

    .line 1118
    add-int/lit8 v13, v1, 0x10

    aput-byte v17, v15, v13

    .line 1119
    add-int/lit8 v13, v1, 0x11

    aput-byte v17, v15, v13

    .line 1120
    add-int/lit8 v13, v1, 0x12

    aput-byte v17, v15, v13

    .line 1121
    add-int/lit8 v13, v1, 0x13

    aput-byte v17, v15, v13

    .line 1122
    add-int/lit8 v13, v1, 0x14

    aput-byte v17, v15, v13

    .line 1123
    add-int/lit8 v13, v1, 0x15

    aput-byte v17, v15, v13

    .line 1124
    add-int/lit8 v13, v1, 0x16

    aput-byte v17, v15, v13

    .line 1125
    add-int/lit8 v13, v1, 0x17

    aput-byte v17, v15, v13

    .line 1127
    add-int/lit8 v1, v1, 0x18

    .line 1131
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x6

    .line 1132
    .local v13, "size":I
    invoke-static {v13, v15, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 1133
    add-int/lit8 v1, v1, 0x4

    .line 1137
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    mul-int/lit8 v0, v18, 0x2

    invoke-static {v0, v15, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 1138
    add-int/lit8 v1, v1, 0x4

    .line 1141
    const/4 v0, 0x3

    aput-byte v0, v15, v1

    .line 1142
    add-int/lit8 v0, v1, 0x1

    const/16 v17, 0x0

    aput-byte v17, v15, v0

    .line 1144
    add-int/lit8 v1, v1, 0x2

    .line 1147
    invoke-static {v11, v15, v1}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 1148
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 1168
    return-object v15
.end method

.method private getLocationData([B)[B
    .locals 4
    .param p1, "cd"    # [B

    .line 1221
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1222
    .local v0, "d":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1224
    array-length v1, p1

    .line 1227
    .local v1, "locPos":I
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 1230
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x4

    invoke-static {v2, v0, v3}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 1232
    return-object v0
.end method

.method private getShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .line 1179
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1181
    .local v1, "sep":I
    const/4 v2, 0x0

    .line 1182
    .local v2, "prefix":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1184
    .local v3, "suffix":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 1186
    move-object v2, p1

    .line 1187
    const-string v3, ""

    goto :goto_0

    .line 1191
    :cond_0
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1192
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1195
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_1

    .line 1197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x6

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "~"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1198
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1201
    :cond_1
    const/4 v5, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1203
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1209
    :cond_2
    return-object v2
.end method

.method private getUNCData([B)[B
    .locals 5
    .param p1, "cd"    # [B

    .line 946
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "uncString":Ljava/lang/String;
    array-length v1, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 949
    .local v1, "d":[B
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 951
    array-length v2, p1

    .line 954
    .local v2, "urlPos":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 955
    .local v3, "length":I
    invoke-static {v3, v1, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 958
    add-int/lit8 v4, v2, 0x4

    invoke-static {v0, v1, v4}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 960
    return-object v1
.end method

.method private getURLData([B)[B
    .locals 7
    .param p1, "cd"    # [B

    .line 889
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "urlString":Ljava/lang/String;
    array-length v1, p1

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 893
    .local v1, "dataLength":I
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 895
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 898
    :cond_0
    new-array v2, v1, [B

    .line 900
    .local v2, "d":[B
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 902
    array-length v3, p1

    .line 904
    .local v3, "urlPos":I
    iget-object v5, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 906
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5, v2, v3}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 907
    iget-object v5, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    invoke-static {v5, v2, v6}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 908
    iget-object v5, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    .line 912
    :cond_1
    const/16 v5, -0x20

    aput-byte v5, v2, v3

    .line 913
    add-int/lit8 v5, v3, 0x1

    const/16 v6, -0x37

    aput-byte v6, v2, v5

    .line 914
    add-int/lit8 v5, v3, 0x2

    const/16 v6, -0x16

    aput-byte v6, v2, v5

    .line 915
    add-int/lit8 v5, v3, 0x3

    const/16 v6, 0x79

    aput-byte v6, v2, v5

    .line 916
    add-int/lit8 v5, v3, 0x4

    const/4 v6, -0x7

    aput-byte v6, v2, v5

    .line 917
    add-int/lit8 v5, v3, 0x5

    const/16 v6, -0x46

    aput-byte v6, v2, v5

    .line 918
    add-int/lit8 v5, v3, 0x6

    const/16 v6, -0x32

    aput-byte v6, v2, v5

    .line 919
    add-int/lit8 v5, v3, 0x7

    const/16 v6, 0x11

    aput-byte v6, v2, v5

    .line 920
    add-int/lit8 v5, v3, 0x8

    const/16 v6, -0x74

    aput-byte v6, v2, v5

    .line 921
    add-int/lit8 v5, v3, 0x9

    const/16 v6, -0x7e

    aput-byte v6, v2, v5

    .line 922
    add-int/lit8 v5, v3, 0xa

    aput-byte v4, v2, v5

    .line 923
    add-int/lit8 v5, v3, 0xb

    const/16 v6, -0x56

    aput-byte v6, v2, v5

    .line 924
    add-int/lit8 v5, v3, 0xc

    aput-byte v4, v2, v5

    .line 925
    add-int/lit8 v4, v3, 0xd

    const/16 v5, 0x4b

    aput-byte v5, v2, v4

    .line 926
    add-int/lit8 v4, v3, 0xe

    const/16 v5, -0x57

    aput-byte v5, v2, v4

    .line 927
    add-int/lit8 v4, v3, 0xf

    const/16 v5, 0xb

    aput-byte v5, v2, v4

    .line 930
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v3, 0x10

    invoke-static {v4, v2, v5}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 933
    add-int/lit8 v4, v3, 0x14

    invoke-static {v0, v2, v4}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 935
    return-object v2
.end method

.method private setLocation(Ljxl/write/WritableSheet;IIII)V
    .locals 7
    .param p1, "sheet"    # Ljxl/write/WritableSheet;
    .param p2, "destcol"    # I
    .param p3, "destrow"    # I
    .param p4, "lastdestcol"    # I
    .param p5, "lastdestrow"    # I

    .line 695
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 696
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 698
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 700
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 708
    :cond_0
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, "sheetName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 710
    .local v4, "pos":I
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 712
    .local v5, "nextPos":I
    :goto_0
    if-eq v5, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 714
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 715
    const-string v6, "\'\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 716
    add-int/lit8 v4, v5, 0x1

    .line 717
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto :goto_0

    .line 719
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 722
    .end local v2    # "sheetName":Ljava/lang/String;
    .end local v4    # "pos":I
    .end local v5    # "nextPos":I
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 723
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 725
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 726
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 728
    invoke-static {p2, p3, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 729
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 730
    invoke-static {p4, p5, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 732
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    .line 733
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 394
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    return v0
.end method

.method getContents()Ljava/lang/String;
    .locals 1

    .line 1257
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 7

    .line 444
    iget-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    return-object v0

    .line 450
    :cond_0
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 453
    .local v0, "commonData":[B
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 454
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    const/4 v3, 0x2

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 455
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    const/4 v4, 0x4

    invoke-static {v1, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 456
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    const/4 v4, 0x6

    invoke-static {v1, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 459
    const/16 v1, 0x8

    const/16 v4, -0x30

    aput-byte v4, v0, v1

    .line 460
    const/16 v1, 0x9

    const/16 v4, -0x37

    aput-byte v4, v0, v1

    .line 461
    const/16 v1, 0xa

    const/16 v4, -0x16

    aput-byte v4, v0, v1

    .line 462
    const/16 v1, 0x79

    const/16 v4, 0xb

    aput-byte v1, v0, v4

    .line 463
    const/16 v1, 0xc

    const/4 v5, -0x7

    aput-byte v5, v0, v1

    .line 464
    const/16 v1, 0xd

    const/16 v5, -0x46

    aput-byte v5, v0, v1

    .line 465
    const/16 v1, 0xe

    const/16 v5, -0x32

    aput-byte v5, v0, v1

    .line 466
    const/16 v1, 0xf

    const/16 v5, 0x11

    aput-byte v5, v0, v1

    .line 467
    const/16 v1, 0x10

    const/16 v6, -0x74

    aput-byte v6, v0, v1

    .line 468
    const/16 v1, -0x7e

    aput-byte v1, v0, v5

    .line 469
    const/16 v1, 0x12

    aput-byte v2, v0, v1

    .line 470
    const/16 v1, 0x13

    const/16 v5, -0x56

    aput-byte v5, v0, v1

    .line 471
    const/16 v1, 0x14

    aput-byte v2, v0, v1

    .line 472
    const/16 v1, 0x15

    const/16 v5, 0x4b

    aput-byte v5, v0, v1

    .line 473
    const/16 v1, 0x16

    const/16 v5, -0x57

    aput-byte v5, v0, v1

    .line 474
    const/16 v1, 0x17

    aput-byte v4, v0, v1

    .line 475
    const/16 v1, 0x18

    aput-byte v3, v0, v1

    .line 476
    const/16 v1, 0x19

    aput-byte v2, v0, v1

    .line 477
    const/16 v1, 0x1a

    aput-byte v2, v0, v1

    .line 478
    const/16 v1, 0x1b

    aput-byte v2, v0, v1

    .line 482
    const/4 v1, 0x0

    .line 483
    .local v1, "optionFlags":I
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isURL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    const/4 v1, 0x3

    .line 487
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 489
    or-int/lit8 v1, v1, 0x14

    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 494
    const/4 v1, 0x1

    .line 496
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 498
    or-int/lit8 v1, v1, 0x14

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isLocation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 503
    const/16 v1, 0x8

    goto :goto_0

    .line 505
    :cond_3
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isUNC()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 507
    const/16 v1, 0x103

    .line 510
    :cond_4
    :goto_0
    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 512
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isURL()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 514
    invoke-direct {p0, v0}, Ljxl/write/biff/HyperlinkRecord;->getURLData([B)[B

    move-result-object v2

    iput-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    goto :goto_1

    .line 516
    :cond_5
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 518
    invoke-direct {p0, v0}, Ljxl/write/biff/HyperlinkRecord;->getFileData([B)[B

    move-result-object v2

    iput-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    goto :goto_1

    .line 520
    :cond_6
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isLocation()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 522
    invoke-direct {p0, v0}, Ljxl/write/biff/HyperlinkRecord;->getLocationData([B)[B

    move-result-object v2

    iput-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    goto :goto_1

    .line 524
    :cond_7
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isUNC()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 526
    invoke-direct {p0, v0}, Ljxl/write/biff/HyperlinkRecord;->getUNCData([B)[B

    move-result-object v2

    iput-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    .line 529
    :cond_8
    :goto_1
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    return-object v2
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 434
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    return-object v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 414
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 404
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    return v0
.end method

.method public getRange()Ljxl/Range;
    .locals 1

    .line 567
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 384
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    return v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 424
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    return-object v0
.end method

.method initialize(Ljxl/write/WritableSheet;)V
    .locals 7
    .param p1, "s"    # Ljxl/write/WritableSheet;

    .line 1243
    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    .line 1244
    new-instance v6, Ljxl/biff/SheetRangeImpl;

    iget v2, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v6, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    .line 1247
    return-void
.end method

.method insertColumn(I)V
    .locals 7
    .param p1, "c"    # I

    .line 780
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 782
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    if-le p1, v0, :cond_1

    .line 784
    return-void

    .line 787
    :cond_1
    iget v2, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    if-gt p1, v2, :cond_2

    .line 789
    add-int/2addr v2, v1

    iput v2, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 790
    iput-boolean v1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 793
    :cond_2
    if-gt p1, v0, :cond_3

    .line 795
    add-int/2addr v0, v1

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 796
    iput-boolean v1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 799
    :cond_3
    iget-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    if-eqz v0, :cond_4

    .line 801
    new-instance v0, Ljxl/biff/SheetRangeImpl;

    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v6, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    .line 805
    :cond_4
    return-void
.end method

.method insertRow(I)V
    .locals 7
    .param p1, "r"    # I

    .line 744
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 746
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    if-le p1, v0, :cond_1

    .line 748
    return-void

    .line 751
    :cond_1
    iget v2, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    if-gt p1, v2, :cond_2

    .line 753
    add-int/2addr v2, v1

    iput v2, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 754
    iput-boolean v1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 757
    :cond_2
    if-gt p1, v0, :cond_3

    .line 759
    add-int/2addr v0, v1

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 760
    iput-boolean v1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 763
    :cond_3
    iget-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    if-eqz v0, :cond_4

    .line 765
    new-instance v0, Ljxl/biff/SheetRangeImpl;

    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v6, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    .line 769
    :cond_4
    return-void
.end method

.method public isFile()Z
    .locals 2

    .line 344
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocation()Z
    .locals 2

    .line 374
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUNC()Z
    .locals 2

    .line 354
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->uncLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isURL()Z
    .locals 2

    .line 364
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method removeColumn(I)V
    .locals 8
    .param p1, "c"    # I

    .line 853
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 855
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    if-le p1, v0, :cond_1

    .line 857
    return-void

    .line 860
    :cond_1
    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    if-ge p1, v3, :cond_2

    .line 862
    sub-int/2addr v3, v2

    iput v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 863
    iput-boolean v2, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 866
    :cond_2
    if-ge p1, v0, :cond_3

    .line 868
    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 869
    iput-boolean v2, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 872
    :cond_3
    iget-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    if-eqz v0, :cond_5

    .line 874
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 875
    new-instance v0, Ljxl/biff/SheetRangeImpl;

    iget-object v3, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v6, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v7, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    .line 879
    :cond_5
    return-void
.end method

.method removeRow(I)V
    .locals 8
    .param p1, "r"    # I

    .line 816
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 818
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    if-le p1, v0, :cond_1

    .line 820
    return-void

    .line 823
    :cond_1
    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    if-ge p1, v3, :cond_2

    .line 825
    sub-int/2addr v3, v2

    iput v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 826
    iput-boolean v2, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 829
    :cond_2
    if-ge p1, v0, :cond_3

    .line 831
    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 832
    iput-boolean v2, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 835
    :cond_3
    iget-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    if-eqz v0, :cond_5

    .line 837
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 838
    new-instance v0, Ljxl/biff/SheetRangeImpl;

    iget-object v3, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v6, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v7, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    .line 842
    :cond_5
    return-void
.end method

.method protected setContents(Ljava/lang/String;)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    .line 1267
    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 1268
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 1269
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 622
    sget-object v0, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    .line 624
    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 626
    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 629
    iget-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    if-nez v1, :cond_0

    .line 632
    return-void

    .line 636
    :cond_0
    iget v2, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    invoke-interface {v1, v2, v3}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v1

    .line 638
    .local v1, "wc":Ljxl/write/WritableCell;
    invoke-interface {v1}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v2

    sget-object v3, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 640
    move-object v0, v1

    check-cast v0, Ljxl/write/Label;

    .line 641
    .local v0, "l":Ljxl/write/Label;
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method protected setLocation(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V
    .locals 7
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "sheet"    # Ljxl/write/WritableSheet;
    .param p3, "destcol"    # I
    .param p4, "destrow"    # I
    .param p5, "lastdestcol"    # I
    .param p6, "lastdestrow"    # I

    .line 659
    sget-object v0, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    .line 661
    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 663
    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 665
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Ljxl/write/biff/HyperlinkRecord;->setLocation(Ljxl/write/WritableSheet;IIII)V

    .line 667
    if-nez p2, :cond_0

    .line 670
    return-void

    .line 674
    :cond_0
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v2, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    invoke-interface {p2, v1, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v1

    .line 676
    .local v1, "wc":Ljxl/write/WritableCell;
    invoke-interface {v1}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v2

    sget-object v3, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 678
    move-object v0, v1

    check-cast v0, Ljxl/write/Label;

    .line 679
    .local v0, "l":Ljxl/write/Label;
    invoke-virtual {v0, p1}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method public setURL(Ljava/net/URL;)V
    .locals 8
    .param p1, "url"    # Ljava/net/URL;

    .line 577
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    .line 578
    .local v0, "prevurl":Ljava/net/URL;
    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 579
    const/4 v1, 0x0

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    .line 580
    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    .line 581
    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 582
    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    .line 583
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 585
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    if-nez v2, :cond_0

    .line 588
    return-void

    .line 593
    :cond_0
    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    invoke-interface {v2, v3, v4}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v2

    .line 595
    .local v2, "wc":Ljxl/write/WritableCell;
    invoke-interface {v2}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v3

    sget-object v4, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v3, v4, :cond_4

    .line 597
    move-object v3, v2

    check-cast v3, Ljxl/write/Label;

    .line 598
    .local v3, "l":Ljxl/write/Label;
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, "prevurlString":Ljava/lang/String;
    const-string v5, ""

    .line 600
    .local v5, "prevurlString2":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_2

    .line 603
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 607
    :cond_2
    invoke-virtual {v3}, Ljxl/write/Label;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3}, Ljxl/write/Label;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 610
    :cond_3
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    .line 613
    .end local v3    # "l":Ljxl/write/Label;
    .end local v4    # "prevurlString":Ljava/lang/String;
    .end local v5    # "prevurlString2":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 539
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 543
    :cond_0
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isURL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 547
    :cond_1
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isUNC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 553
    :cond_2
    const-string v0, ""

    return-object v0
.end method
