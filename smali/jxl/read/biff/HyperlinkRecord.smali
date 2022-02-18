.class public Ljxl/read/biff/HyperlinkRecord;
.super Ljxl/biff/RecordData;
.source "HyperlinkRecord.java"

# interfaces
.implements Ljxl/Hyperlink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/HyperlinkRecord$LinkType;
    }
.end annotation


# static fields
.field private static final fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

.field private static logger:Ljxl/common/Logger;

.field private static final unknown:Ljxl/read/biff/HyperlinkRecord$LinkType;

.field private static final urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

.field private static final workbookLink:Ljxl/read/biff/HyperlinkRecord$LinkType;


# instance fields
.field private file:Ljava/io/File;

.field private firstColumn:I

.field private firstRow:I

.field private lastColumn:I

.field private lastRow:I

.field private linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

.field private location:Ljava/lang/String;

.field private range:Ljxl/biff/SheetRangeImpl;

.field private url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-class v0, Ljxl/read/biff/HyperlinkRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/HyperlinkRecord;->logger:Ljxl/common/Logger;

    .line 96
    new-instance v0, Ljxl/read/biff/HyperlinkRecord$LinkType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/read/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/read/biff/HyperlinkRecord;->urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 97
    new-instance v0, Ljxl/read/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/read/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/read/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/read/biff/HyperlinkRecord;->fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 98
    new-instance v0, Ljxl/read/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/read/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/read/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/read/biff/HyperlinkRecord;->workbookLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 99
    new-instance v0, Ljxl/read/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/read/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/read/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/read/biff/HyperlinkRecord;->unknown:Ljxl/read/biff/HyperlinkRecord$LinkType;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/Sheet;Ljxl/WorkbookSettings;)V
    .locals 17
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "s"    # Ljxl/Sheet;
    .param p3, "ws"    # Ljxl/WorkbookSettings;

    .line 110
    move-object/from16 v1, p0

    const-string v2, "http://www.andykhan.com/jexcelapi/index.html"

    invoke-direct/range {p0 .. p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 112
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->unknown:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 114
    invoke-virtual/range {p0 .. p0}, Ljxl/read/biff/HyperlinkRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v3

    .line 117
    .local v3, "data":[B
    const/4 v4, 0x0

    aget-byte v0, v3, v4

    const/4 v5, 0x1

    aget-byte v6, v3, v5

    invoke-static {v0, v6}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, v1, Ljxl/read/biff/HyperlinkRecord;->firstRow:I

    .line 118
    const/4 v0, 0x2

    aget-byte v0, v3, v0

    const/4 v6, 0x3

    aget-byte v7, v3, v6

    invoke-static {v0, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, v1, Ljxl/read/biff/HyperlinkRecord;->lastRow:I

    .line 119
    const/4 v0, 0x4

    aget-byte v7, v3, v0

    const/4 v8, 0x5

    aget-byte v8, v3, v8

    invoke-static {v7, v8}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v7

    iput v7, v1, Ljxl/read/biff/HyperlinkRecord;->firstColumn:I

    .line 120
    const/4 v7, 0x6

    aget-byte v7, v3, v7

    const/4 v8, 0x7

    aget-byte v8, v3, v8

    invoke-static {v7, v8}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v7

    iput v7, v1, Ljxl/read/biff/HyperlinkRecord;->lastColumn:I

    .line 121
    new-instance v7, Ljxl/biff/SheetRangeImpl;

    iget v10, v1, Ljxl/read/biff/HyperlinkRecord;->firstColumn:I

    iget v11, v1, Ljxl/read/biff/HyperlinkRecord;->firstRow:I

    iget v12, v1, Ljxl/read/biff/HyperlinkRecord;->lastColumn:I

    iget v13, v1, Ljxl/read/biff/HyperlinkRecord;->lastRow:I

    move-object v8, v7

    move-object/from16 v9, p2

    invoke-direct/range {v8 .. v13}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v7, v1, Ljxl/read/biff/HyperlinkRecord;->range:Ljxl/biff/SheetRangeImpl;

    .line 125
    const/16 v7, 0x1c

    aget-byte v7, v3, v7

    const/16 v8, 0x1d

    aget-byte v8, v3, v8

    const/16 v9, 0x1e

    aget-byte v9, v3, v9

    const/16 v10, 0x1f

    aget-byte v10, v3, v10

    invoke-static {v7, v8, v9, v10}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v7

    .line 127
    .local v7, "options":I
    and-int/lit8 v8, v7, 0x14

    if-eqz v8, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v4

    .line 128
    .local v8, "description":Z
    :goto_0
    const/16 v9, 0x20

    .line 129
    .local v9, "startpos":I
    const/4 v10, 0x0

    .line 130
    .local v10, "descbytes":I
    if-eqz v8, :cond_1

    .line 132
    aget-byte v11, v3, v9

    add-int/lit8 v12, v9, 0x1

    aget-byte v12, v3, v12

    add-int/lit8 v13, v9, 0x2

    aget-byte v13, v3, v13

    add-int/lit8 v14, v9, 0x3

    aget-byte v14, v3, v14

    invoke-static {v11, v12, v13, v14}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v11

    .line 135
    .local v11, "descchars":I
    mul-int/lit8 v12, v11, 0x2

    add-int/lit8 v10, v12, 0x4

    .line 138
    .end local v11    # "descchars":I
    :cond_1
    add-int/2addr v9, v10

    .line 140
    and-int/lit16 v11, v7, 0x80

    if-eqz v11, :cond_2

    move v11, v5

    goto :goto_1

    :cond_2
    move v11, v4

    .line 141
    .local v11, "targetFrame":Z
    :goto_1
    const/4 v12, 0x0

    .line 142
    .local v12, "targetbytes":I
    if-eqz v11, :cond_3

    .line 144
    aget-byte v13, v3, v9

    add-int/lit8 v14, v9, 0x1

    aget-byte v14, v3, v14

    add-int/lit8 v15, v9, 0x2

    aget-byte v15, v3, v15

    add-int/lit8 v16, v9, 0x3

    aget-byte v4, v3, v16

    invoke-static {v13, v14, v15, v4}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v4

    .line 147
    .local v4, "targetchars":I
    mul-int/lit8 v13, v4, 0x2

    add-int/lit8 v12, v13, 0x4

    .line 150
    .end local v4    # "targetchars":I
    :cond_3
    add-int/2addr v9, v12

    .line 153
    and-int/lit8 v0, v7, 0x3

    if-ne v0, v6, :cond_4

    .line 155
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 158
    aget-byte v0, v3, v9

    if-ne v0, v6, :cond_6

    .line 160
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    goto :goto_2

    .line 163
    :cond_4
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_5

    .line 165
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 167
    aget-byte v0, v3, v9

    const/16 v4, -0x20

    if-ne v0, v4, :cond_6

    .line 169
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    goto :goto_2

    .line 172
    :cond_5
    and-int/lit8 v0, v7, 0x8

    if-eqz v0, :cond_6

    .line 174
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->workbookLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 178
    :cond_6
    :goto_2
    iget-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    sget-object v4, Ljxl/read/biff/HyperlinkRecord;->urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    const/16 v6, 0x22

    if-ne v0, v4, :cond_7

    .line 180
    const/4 v4, 0x0

    .line 183
    .local v4, "urlString":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x10

    .line 186
    :try_start_0
    aget-byte v0, v3, v9

    add-int/lit8 v13, v9, 0x1

    aget-byte v13, v3, v13

    add-int/lit8 v14, v9, 0x2

    aget-byte v14, v3, v14

    add-int/lit8 v15, v9, 0x3

    aget-byte v15, v3, v15

    invoke-static {v0, v13, v14, v15}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    .line 191
    .local v0, "bytes":I
    div-int/lit8 v13, v0, 0x2

    sub-int/2addr v13, v5

    add-int/lit8 v5, v9, 0x4

    invoke-static {v3, v13, v5}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 193
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v5, v1, Ljxl/read/biff/HyperlinkRecord;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bytes":I
    goto/16 :goto_3

    .line 219
    :catchall_0
    move-exception v0

    move-object v5, v0

    .line 221
    .local v5, "e":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v0

    .line 222
    .local v13, "sb1":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v0

    .line 223
    .local v14, "sb2":Ljava/lang/StringBuffer;
    iget v0, v1, Ljxl/read/biff/HyperlinkRecord;->firstColumn:I

    iget v15, v1, Ljxl/read/biff/HyperlinkRecord;->firstRow:I

    invoke-static {v0, v15, v13}, Ljxl/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 224
    iget v0, v1, Ljxl/read/biff/HyperlinkRecord;->lastColumn:I

    iget v15, v1, Ljxl/read/biff/HyperlinkRecord;->lastRow:I

    invoke-static {v0, v15, v14}, Ljxl/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 225
    const-string v0, "Exception when parsing URL "

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, "\".  Using default."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->logger:Ljxl/common/Logger;

    invoke-virtual {v0, v13, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 232
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->url:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    goto :goto_4

    .line 234
    :catch_0
    move-exception v0

    goto :goto_4

    .line 195
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v13    # "sb1":Ljava/lang/StringBuffer;
    .end local v14    # "sb2":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    move-object v5, v0

    .line 197
    .local v5, "e":Ljava/net/MalformedURLException;
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->logger:Ljxl/common/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "URL "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " is malformed.  Trying a file"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 200
    :try_start_2
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->file:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 217
    goto :goto_3

    .line 203
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 205
    .local v6, "e3":Ljava/lang/Exception;
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->logger:Ljxl/common/Logger;

    const-string v13, "Cannot set to file.  Setting a default URL"

    invoke-virtual {v0, v13}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 210
    :try_start_3
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 211
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->url:Ljava/net/URL;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 216
    goto :goto_3

    .line 213
    :catch_3
    move-exception v0

    .line 238
    .end local v5    # "e":Ljava/net/MalformedURLException;
    .end local v6    # "e3":Ljava/lang/Exception;
    :goto_3
    nop

    .line 239
    .end local v4    # "urlString":Ljava/lang/String;
    :goto_4
    move-object/from16 v13, p3

    goto/16 :goto_8

    .line 240
    :cond_7
    sget-object v2, Ljxl/read/biff/HyperlinkRecord;->fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    if-ne v0, v2, :cond_9

    .line 244
    add-int/lit8 v9, v9, 0x10

    .line 248
    :try_start_4
    aget-byte v0, v3, v9

    add-int/lit8 v2, v9, 0x1

    aget-byte v2, v3, v2

    invoke-static {v0, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 250
    .local v0, "upLevelCount":I
    add-int/lit8 v2, v9, 0x2

    aget-byte v2, v3, v2

    add-int/lit8 v4, v9, 0x3

    aget-byte v4, v3, v4

    add-int/lit8 v5, v9, 0x4

    aget-byte v5, v3, v5

    add-int/lit8 v6, v9, 0x5

    aget-byte v6, v3, v6

    invoke-static {v2, v4, v5, v6}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 254
    .local v2, "chars":I
    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v9, 0x6

    move-object/from16 v13, p3

    :try_start_5
    invoke-static {v3, v4, v5, v13}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 259
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    if-ge v6, v0, :cond_8

    .line 261
    const-string v14, "..\\"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 264
    .end local v6    # "i":I
    :cond_8
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, v1, Ljxl/read/biff/HyperlinkRecord;->file:Ljava/io/File;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "upLevelCount":I
    .end local v2    # "chars":I
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    goto :goto_7

    .line 268
    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v13, p3

    .line 270
    .local v0, "e":Ljava/lang/Throwable;
    :goto_6
    sget-object v2, Ljxl/read/biff/HyperlinkRecord;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when parsing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 272
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Ljxl/read/biff/HyperlinkRecord;->file:Ljava/io/File;

    .line 273
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_7
    goto :goto_8

    .line 275
    :cond_9
    move-object/from16 v13, p3

    sget-object v2, Ljxl/read/biff/HyperlinkRecord;->workbookLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    if-ne v0, v2, :cond_a

    .line 277
    const/16 v0, 0x20

    aget-byte v0, v3, v0

    const/16 v2, 0x21

    aget-byte v2, v3, v2

    aget-byte v4, v3, v6

    const/16 v5, 0x23

    aget-byte v5, v3, v5

    invoke-static {v0, v2, v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    .line 278
    .local v0, "chars":I
    add-int/lit8 v2, v0, -0x1

    const/16 v4, 0x24

    invoke-static {v3, v2, v4}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljxl/read/biff/HyperlinkRecord;->location:Ljava/lang/String;

    .line 279
    .end local v0    # "chars":I
    nop

    .line 286
    :goto_8
    return-void

    .line 283
    :cond_a
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->logger:Ljxl/common/Logger;

    const-string v2, "Cannot determine link type"

    invoke-virtual {v0, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 284
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 335
    iget v0, p0, Ljxl/read/biff/HyperlinkRecord;->firstColumn:I

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 375
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->file:Ljava/io/File;

    return-object v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 355
    iget v0, p0, Ljxl/read/biff/HyperlinkRecord;->lastColumn:I

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 345
    iget v0, p0, Ljxl/read/biff/HyperlinkRecord;->lastRow:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljxl/Range;
    .locals 1

    .line 397
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->range:Ljxl/biff/SheetRangeImpl;

    return-object v0
.end method

.method public getRecord()Ljxl/read/biff/Record;
    .locals 1

    .line 385
    invoke-super {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 325
    iget v0, p0, Ljxl/read/biff/HyperlinkRecord;->firstRow:I

    return v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 365
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->url:Ljava/net/URL;

    return-object v0
.end method

.method public isFile()Z
    .locals 2

    .line 295
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/read/biff/HyperlinkRecord;->fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

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

    .line 315
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/read/biff/HyperlinkRecord;->workbookLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

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

    .line 305
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/read/biff/HyperlinkRecord;->urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
