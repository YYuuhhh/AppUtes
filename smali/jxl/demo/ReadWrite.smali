.class public Ljxl/demo/ReadWrite;
.super Ljava/lang/Object;
.source "ReadWrite.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private inputWorkbook:Ljava/io/File;

.field private outputWorkbook:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Ljxl/demo/ReadWrite;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/demo/ReadWrite;->inputWorkbook:Ljava/io/File;

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/demo/ReadWrite;->outputWorkbook:Ljava/io/File;

    .line 94
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    const-string v1, "jxl.nowarnings"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->setSuppressWarnings(Z)V

    .line 95
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input file:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 96
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Output file:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method private modify(Ljxl/write/WritableWorkbook;)V
    .locals 38
    .param p1, "w"    # Ljxl/write/WritableWorkbook;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 131
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    const-string v1, "Modifying..."

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 133
    const-string v0, "modified"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljxl/write/WritableWorkbook;->getSheet(Ljava/lang/String;)Ljxl/write/WritableSheet;

    move-result-object v2

    .line 135
    .local v2, "sheet":Ljxl/write/WritableSheet;
    const/4 v0, 0x0

    .line 136
    .local v0, "cell":Ljxl/write/WritableCell;
    const/4 v3, 0x0

    .line 137
    .local v3, "cf":Ljxl/format/CellFormat;
    const/4 v4, 0x0

    .line 138
    .local v4, "l":Ljxl/write/Label;
    const/4 v5, 0x0

    .line 141
    .local v5, "wcf":Ljxl/write/WritableCellFeatures;
    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-interface {v2, v6, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 142
    new-instance v8, Ljxl/write/WritableFont;

    sget-object v9, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v10, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    const/16 v11, 0xa

    invoke-direct {v8, v9, v11, v10}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 145
    .local v8, "bold":Ljxl/write/WritableFont;
    new-instance v9, Ljxl/write/WritableCellFormat;

    invoke-direct {v9, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v3, v9

    .line 146
    invoke-interface {v0, v3}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 149
    const/4 v9, 0x4

    invoke-interface {v2, v6, v9}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 150
    new-instance v10, Ljxl/write/WritableFont;

    sget-object v13, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v15, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v17, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    const/16 v14, 0xa

    const/16 v16, 0x0

    move-object v12, v10

    invoke-direct/range {v12 .. v17}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 155
    .local v10, "underline":Ljxl/write/WritableFont;
    new-instance v12, Ljxl/write/WritableCellFormat;

    invoke-direct {v12, v10}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v3, v12

    .line 156
    invoke-interface {v0, v3}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 159
    const/4 v12, 0x5

    invoke-interface {v2, v6, v12}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 160
    new-instance v13, Ljxl/write/WritableFont;

    sget-object v14, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {v13, v14, v11}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 161
    .local v13, "tenpoint":Ljxl/write/WritableFont;
    new-instance v14, Ljxl/write/WritableCellFormat;

    invoke-direct {v14, v13}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v3, v14

    .line 162
    invoke-interface {v0, v3}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 165
    const/4 v14, 0x6

    invoke-interface {v2, v6, v14}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v15

    sget-object v14, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v15, v14, :cond_0

    .line 168
    move-object v14, v0

    check-cast v14, Ljxl/write/Label;

    .line 169
    .local v14, "lc":Ljxl/write/Label;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljxl/write/Label;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " - mod"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    .line 173
    .end local v14    # "lc":Ljxl/write/Label;
    :cond_0
    const/16 v9, 0x9

    invoke-interface {v2, v6, v9}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 174
    new-instance v14, Ljxl/write/NumberFormat;

    const-string v15, "#.0000000"

    invoke-direct {v14, v15}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 175
    .local v14, "sevendps":Ljxl/write/NumberFormat;
    new-instance v15, Ljxl/write/WritableCellFormat;

    invoke-direct {v15, v14}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object v3, v15

    .line 176
    invoke-interface {v0, v3}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 180
    invoke-interface {v2, v6, v11}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 181
    new-instance v11, Ljxl/write/NumberFormat;

    const-string v15, "0.####E0"

    invoke-direct {v11, v15}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 182
    .local v11, "exp4":Ljxl/write/NumberFormat;
    new-instance v15, Ljxl/write/WritableCellFormat;

    invoke-direct {v15, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object v3, v15

    .line 183
    invoke-interface {v0, v3}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 186
    const/16 v15, 0xb

    invoke-interface {v2, v6, v15}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 187
    sget-object v7, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-interface {v0, v7}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 190
    const/16 v7, 0xc

    invoke-interface {v2, v6, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v7

    sget-object v12, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v7, v12, :cond_1

    .line 193
    move-object v7, v0

    check-cast v7, Ljxl/write/Number;

    .line 194
    .local v7, "n":Ljxl/write/Number;
    move-object v12, v10

    .end local v10    # "underline":Ljxl/write/WritableFont;
    .local v12, "underline":Ljxl/write/WritableFont;
    const-wide/high16 v9, 0x4045000000000000L    # 42.0

    invoke-virtual {v7, v9, v10}, Ljxl/write/Number;->setValue(D)V

    goto :goto_0

    .line 191
    .end local v7    # "n":Ljxl/write/Number;
    .end local v12    # "underline":Ljxl/write/WritableFont;
    .restart local v10    # "underline":Ljxl/write/WritableFont;
    :cond_1
    move-object v12, v10

    .line 198
    .end local v10    # "underline":Ljxl/write/WritableFont;
    .restart local v12    # "underline":Ljxl/write/WritableFont;
    :goto_0
    const/16 v7, 0xd

    invoke-interface {v2, v6, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v7

    sget-object v9, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v7, v9, :cond_2

    .line 201
    move-object v7, v0

    check-cast v7, Ljxl/write/Number;

    .line 202
    .restart local v7    # "n":Ljxl/write/Number;
    invoke-virtual {v7}, Ljxl/write/Number;->getValue()D

    move-result-wide v9

    const-wide v21, 0x3fb999999999999aL    # 0.1

    add-double v9, v9, v21

    invoke-virtual {v7, v9, v10}, Ljxl/write/Number;->setValue(D)V

    .line 206
    .end local v7    # "n":Ljxl/write/Number;
    :cond_2
    const/16 v7, 0x10

    invoke-interface {v2, v6, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 207
    new-instance v9, Ljxl/write/DateFormat;

    const-string v10, "dd MMM yyyy HH:mm:ss"

    invoke-direct {v9, v10}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    .local v9, "df":Ljxl/write/DateFormat;
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v9}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object v3, v10

    .line 209
    invoke-interface {v0, v3}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 212
    const/16 v10, 0x11

    invoke-interface {v2, v6, v10}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 213
    new-instance v10, Ljxl/write/WritableCellFormat;

    sget-object v7, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v10, v7}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object v3, v10

    .line 214
    invoke-interface {v0, v3}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 217
    const/16 v7, 0x12

    invoke-interface {v2, v6, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v7

    sget-object v10, Ljxl/CellType;->DATE:Ljxl/CellType;

    if-ne v7, v10, :cond_3

    .line 220
    move-object v7, v0

    check-cast v7, Ljxl/write/DateTime;

    .line 221
    .local v7, "dt":Ljxl/write/DateTime;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 222
    .local v10, "cal":Ljava/util/Calendar;
    const/16 v23, 0x7ce

    const/16 v24, 0x1

    const/16 v25, 0x12

    const/16 v26, 0xb

    const/16 v27, 0x17

    const/16 v28, 0x1c

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v28}, Ljava/util/Calendar;->set(IIIIII)V

    .line 223
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 224
    .local v15, "d":Ljava/util/Date;
    invoke-virtual {v7, v15}, Ljxl/write/DateTime;->setDate(Ljava/util/Date;)V

    .line 229
    .end local v7    # "dt":Ljxl/write/DateTime;
    .end local v10    # "cal":Ljava/util/Calendar;
    .end local v15    # "d":Ljava/util/Date;
    :cond_3
    const/16 v7, 0x16

    invoke-interface {v2, v6, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v7

    sget-object v10, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v7, v10, :cond_4

    .line 232
    move-object v7, v0

    check-cast v7, Ljxl/write/Number;

    .line 233
    .local v7, "n":Ljxl/write/Number;
    move-object v10, v0

    .end local v0    # "cell":Ljxl/write/WritableCell;
    .local v10, "cell":Ljxl/write/WritableCell;
    const-wide v0, 0x401b333333333333L    # 6.8

    invoke-virtual {v7, v0, v1}, Ljxl/write/Number;->setValue(D)V

    goto :goto_1

    .line 230
    .end local v7    # "n":Ljxl/write/Number;
    .end local v10    # "cell":Ljxl/write/WritableCell;
    .restart local v0    # "cell":Ljxl/write/WritableCell;
    :cond_4
    move-object v10, v0

    .line 238
    .end local v0    # "cell":Ljxl/write/WritableCell;
    .restart local v10    # "cell":Ljxl/write/WritableCell;
    :goto_1
    const/16 v0, 0x1d

    invoke-interface {v2, v6, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v1

    .line 239
    .end local v10    # "cell":Ljxl/write/WritableCell;
    .local v1, "cell":Ljxl/write/WritableCell;
    invoke-interface {v1}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v7, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v0, v7, :cond_5

    .line 241
    move-object v4, v1

    check-cast v4, Ljxl/write/Label;

    .line 242
    const-string v0, "Modified string contents"

    invoke-virtual {v4, v0}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    .line 245
    :cond_5
    const/16 v0, 0x22

    invoke-interface {v2, v0}, Ljxl/write/WritableSheet;->insertRow(I)V

    .line 248
    const/16 v0, 0x26

    invoke-interface {v2, v0}, Ljxl/write/WritableSheet;->removeRow(I)V

    .line 251
    const/16 v7, 0x9

    invoke-interface {v2, v7}, Ljxl/write/WritableSheet;->insertColumn(I)V

    .line 254
    const/16 v0, 0xb

    invoke-interface {v2, v0}, Ljxl/write/WritableSheet;->removeColumn(I)V

    .line 258
    const/16 v0, 0x2b

    invoke-interface {v2, v0}, Ljxl/write/WritableSheet;->removeRow(I)V

    .line 259
    invoke-interface {v2, v0}, Ljxl/write/WritableSheet;->insertRow(I)V

    .line 262
    invoke-interface {v2}, Ljxl/write/WritableSheet;->getWritableHyperlinks()[Ljxl/write/WritableHyperlink;

    move-result-object v7

    .line 264
    .local v7, "hyperlinks":[Ljxl/write/WritableHyperlink;
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_2
    array-length v0, v7

    if-ge v10, v0, :cond_a

    .line 266
    aget-object v15, v7, v10

    .line 267
    .local v15, "wh":Ljxl/write/WritableHyperlink;
    invoke-virtual {v15}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v0

    if-ne v0, v6, :cond_6

    invoke-virtual {v15}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v0

    const/16 v6, 0x27

    if-ne v0, v6, :cond_6

    .line 272
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v6, "http://www.andykhan.com/jexcelapi/index.html"

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljxl/write/WritableHyperlink;->setURL(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    move-object/from16 v22, v1

    goto :goto_3

    .line 274
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v6, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    move-object/from16 v22, v1

    .end local v1    # "cell":Ljxl/write/WritableCell;
    .local v22, "cell":Ljxl/write/WritableCell;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 277
    .end local v0    # "e":Ljava/net/MalformedURLException;
    goto :goto_3

    .line 267
    .end local v22    # "cell":Ljxl/write/WritableCell;
    .restart local v1    # "cell":Ljxl/write/WritableCell;
    :cond_6
    move-object/from16 v22, v1

    .line 279
    .end local v1    # "cell":Ljxl/write/WritableCell;
    .restart local v22    # "cell":Ljxl/write/WritableCell;
    invoke-virtual {v15}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {v15}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_7

    .line 281
    new-instance v0, Ljava/io/File;

    const-string v1, "../jexcelapi/docs/overview-summary.html"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljxl/write/WritableHyperlink;->setFile(Ljava/io/File;)V

    goto :goto_3

    .line 283
    :cond_7
    invoke-virtual {v15}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {v15}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_8

    .line 285
    new-instance v0, Ljava/io/File;

    const-string v1, "d:/home/jexcelapi/docs/jxl/package-summary.html"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljxl/write/WritableHyperlink;->setFile(Ljava/io/File;)V

    goto :goto_3

    .line 287
    :cond_8
    invoke-virtual {v15}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {v15}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_9

    .line 290
    invoke-interface {v2, v15}, Ljxl/write/WritableSheet;->removeHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 264
    .end local v15    # "wh":Ljxl/write/WritableHyperlink;
    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v22

    const/4 v6, 0x1

    goto :goto_2

    .end local v22    # "cell":Ljxl/write/WritableCell;
    .restart local v1    # "cell":Ljxl/write/WritableCell;
    :cond_a
    move-object/from16 v22, v1

    .line 295
    .end local v1    # "cell":Ljxl/write/WritableCell;
    .end local v10    # "i":I
    .restart local v22    # "cell":Ljxl/write/WritableCell;
    const/16 v1, 0x1e

    const/4 v6, 0x5

    invoke-interface {v2, v6, v1}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v1

    .line 296
    .local v1, "c":Ljxl/write/WritableCell;
    new-instance v6, Ljxl/write/WritableCellFormat;

    invoke-interface {v1}, Ljxl/write/WritableCell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v10

    invoke-direct {v6, v10}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/format/CellFormat;)V

    .line 297
    .local v6, "newFormat":Ljxl/write/WritableCellFormat;
    sget-object v10, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    invoke-virtual {v6, v10}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 298
    invoke-interface {v1, v6}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 301
    new-instance v10, Ljxl/write/Label;

    const/16 v15, 0x31

    const/4 v0, 0x0

    move-object/from16 v24, v1

    .end local v1    # "c":Ljxl/write/WritableCell;
    .local v24, "c":Ljxl/write/WritableCell;
    const-string v1, "Modified merged cells"

    invoke-direct {v10, v0, v15, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v1, v10

    .line 302
    .end local v4    # "l":Ljxl/write/Label;
    .local v1, "l":Ljxl/write/Label;
    invoke-interface {v2, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 305
    const/16 v4, 0x46

    invoke-interface {v2, v0, v4}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v4

    check-cast v4, Ljxl/write/Number;

    .line 306
    .local v4, "n":Ljxl/write/Number;
    move-object v15, v1

    .end local v1    # "l":Ljxl/write/Label;
    .local v15, "l":Ljxl/write/Label;
    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    invoke-virtual {v4, v0, v1}, Ljxl/write/Number;->setValue(D)V

    .line 308
    const/16 v0, 0x47

    const/4 v1, 0x0

    invoke-interface {v2, v1, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    check-cast v0, Ljxl/write/Number;

    .line 309
    .end local v4    # "n":Ljxl/write/Number;
    .local v0, "n":Ljxl/write/Number;
    move-object v4, v2

    .end local v2    # "sheet":Ljxl/write/WritableSheet;
    .local v4, "sheet":Ljxl/write/WritableSheet;
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-virtual {v0, v1, v2}, Ljxl/write/Number;->setValue(D)V

    .line 311
    const/16 v1, 0x49

    const/4 v2, 0x0

    invoke-interface {v4, v2, v1}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljxl/write/Number;

    .line 312
    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    invoke-virtual {v0, v1, v2}, Ljxl/write/Number;->setValue(D)V

    .line 315
    new-instance v1, Ljxl/write/Formula;

    const/16 v2, 0x50

    const-string v10, "ROUND(COS(original!B10),2)"

    move-object/from16 v26, v5

    const/4 v5, 0x1

    .end local v5    # "wcf":Ljxl/write/WritableCellFeatures;
    .local v26, "wcf":Ljxl/write/WritableCellFeatures;
    invoke-direct {v1, v5, v2, v10}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 316
    .local v1, "f":Ljxl/write/Formula;
    invoke-interface {v4, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 319
    new-instance v2, Ljxl/write/Formula;

    const/16 v10, 0x53

    move-object/from16 v27, v0

    .end local v0    # "n":Ljxl/write/Number;
    .local v27, "n":Ljxl/write/Number;
    const-string/jumbo v0, "value1+value2"

    invoke-direct {v2, v5, v10, v0}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v0, v2

    .line 320
    .end local v1    # "f":Ljxl/write/Formula;
    .local v0, "f":Ljxl/write/Formula;
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 323
    new-instance v1, Ljxl/write/Formula;

    const/16 v2, 0x54

    const-string v10, "AVERAGE(value1,value1*4,value2)"

    invoke-direct {v1, v5, v2, v10}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 324
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 330
    new-instance v1, Ljxl/write/Label;

    const/16 v2, 0x58

    const-string v5, "Some copied cells"

    const/4 v10, 0x0

    invoke-direct {v1, v10, v2, v5, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 331
    .local v1, "label":Ljxl/write/Label;
    invoke-interface {v4, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 333
    new-instance v2, Ljxl/write/Label;

    const/16 v5, 0x59

    move-object/from16 v25, v0

    .end local v0    # "f":Ljxl/write/Formula;
    .local v25, "f":Ljxl/write/Formula;
    const-string v0, "Number from B9"

    invoke-direct {v2, v10, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v2

    .line 334
    .end local v1    # "label":Ljxl/write/Label;
    .local v0, "label":Ljxl/write/Label;
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 336
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-interface {v4, v2, v1}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v1

    invoke-interface {v1, v2, v5}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v1

    .line 337
    .local v1, "wc":Ljxl/write/WritableCell;
    invoke-interface {v4, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 339
    new-instance v2, Ljxl/write/Label;

    const/16 v5, 0x5a

    const-string v10, "Label from B4 (modified format)"

    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "label":Ljxl/write/Label;
    .local v28, "label":Ljxl/write/Label;
    invoke-direct {v2, v0, v5, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v2

    .line 340
    .end local v28    # "label":Ljxl/write/Label;
    .restart local v0    # "label":Ljxl/write/Label;
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 342
    const/4 v2, 0x3

    const/4 v10, 0x1

    invoke-interface {v4, v10, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v2

    invoke-interface {v2, v10, v5}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v1

    .line 343
    invoke-interface {v4, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 345
    new-instance v2, Ljxl/write/Label;

    const/16 v5, 0x5b

    const-string v10, "Date from B17"

    move-object/from16 v18, v0

    const/4 v0, 0x0

    .end local v0    # "label":Ljxl/write/Label;
    .local v18, "label":Ljxl/write/Label;
    invoke-direct {v2, v0, v5, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v2

    .line 346
    .end local v18    # "label":Ljxl/write/Label;
    .restart local v0    # "label":Ljxl/write/Label;
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 348
    const/16 v2, 0x10

    const/4 v10, 0x1

    invoke-interface {v4, v10, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v2

    invoke-interface {v2, v10, v5}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v1

    .line 349
    invoke-interface {v4, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 351
    new-instance v2, Ljxl/write/Label;

    const/16 v5, 0x5c

    const-string v10, "Boolean from E16"

    move-object/from16 v18, v0

    const/4 v0, 0x0

    .end local v0    # "label":Ljxl/write/Label;
    .restart local v18    # "label":Ljxl/write/Label;
    invoke-direct {v2, v0, v5, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v2

    .line 352
    .end local v18    # "label":Ljxl/write/Label;
    .restart local v0    # "label":Ljxl/write/Label;
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 354
    const/16 v2, 0xf

    const/4 v10, 0x4

    invoke-interface {v4, v10, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v2

    const/4 v10, 0x1

    invoke-interface {v2, v10, v5}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v1

    .line 355
    invoke-interface {v4, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 357
    new-instance v2, Ljxl/write/Label;

    const/16 v5, 0x5d

    const-string v10, "URL from B40"

    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "label":Ljxl/write/Label;
    .local v17, "label":Ljxl/write/Label;
    invoke-direct {v2, v0, v5, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v2

    .line 358
    .end local v17    # "label":Ljxl/write/Label;
    .restart local v0    # "label":Ljxl/write/Label;
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 360
    const/16 v2, 0x27

    const/4 v10, 0x1

    invoke-interface {v4, v10, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v2

    invoke-interface {v2, v10, v5}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v1

    .line 361
    invoke-interface {v4, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 364
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    const/4 v5, 0x6

    if-ge v2, v5, :cond_b

    .line 366
    new-instance v10, Ljxl/write/Number;

    add-int/lit8 v5, v2, 0x5e

    move-object/from16 v17, v0

    .end local v0    # "label":Ljxl/write/Label;
    .restart local v17    # "label":Ljxl/write/Label;
    add-int/lit8 v0, v2, 0x1

    move-object/from16 v18, v1

    .end local v1    # "wc":Ljxl/write/WritableCell;
    .local v18, "wc":Ljxl/write/WritableCell;
    int-to-double v0, v0

    move-object/from16 v21, v6

    move-object/from16 v19, v7

    .end local v6    # "newFormat":Ljxl/write/WritableCellFormat;
    .end local v7    # "hyperlinks":[Ljxl/write/WritableHyperlink;
    .local v19, "hyperlinks":[Ljxl/write/WritableHyperlink;
    .local v21, "newFormat":Ljxl/write/WritableCellFormat;
    int-to-double v6, v2

    const-wide/high16 v28, 0x4020000000000000L    # 8.0

    div-double v6, v6, v28

    add-double/2addr v0, v6

    const/4 v6, 0x1

    invoke-direct {v10, v6, v5, v0, v1}, Ljxl/write/Number;-><init>(IID)V

    move-object v0, v10

    .line 367
    .local v0, "number":Ljxl/write/Number;
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 364
    .end local v0    # "number":Ljxl/write/Number;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v21

    goto :goto_4

    .end local v17    # "label":Ljxl/write/Label;
    .end local v18    # "wc":Ljxl/write/WritableCell;
    .end local v19    # "hyperlinks":[Ljxl/write/WritableHyperlink;
    .end local v21    # "newFormat":Ljxl/write/WritableCellFormat;
    .local v0, "label":Ljxl/write/Label;
    .restart local v1    # "wc":Ljxl/write/WritableCell;
    .restart local v6    # "newFormat":Ljxl/write/WritableCellFormat;
    .restart local v7    # "hyperlinks":[Ljxl/write/WritableHyperlink;
    :cond_b
    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v21, v6

    move-object/from16 v19, v7

    .line 370
    .end local v0    # "label":Ljxl/write/Label;
    .end local v1    # "wc":Ljxl/write/WritableCell;
    .end local v2    # "i":I
    .end local v6    # "newFormat":Ljxl/write/WritableCellFormat;
    .end local v7    # "hyperlinks":[Ljxl/write/WritableHyperlink;
    .restart local v17    # "label":Ljxl/write/Label;
    .restart local v18    # "wc":Ljxl/write/WritableCell;
    .restart local v19    # "hyperlinks":[Ljxl/write/WritableHyperlink;
    .restart local v21    # "newFormat":Ljxl/write/WritableCellFormat;
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x64

    const-string v2, "Formula from B27"

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 371
    .end local v17    # "label":Ljxl/write/Label;
    .restart local v0    # "label":Ljxl/write/Label;
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 373
    const/16 v2, 0x1a

    const/4 v5, 0x1

    invoke-interface {v4, v5, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v2

    invoke-interface {v2, v5, v1}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v1

    .line 374
    .end local v18    # "wc":Ljxl/write/WritableCell;
    .restart local v1    # "wc":Ljxl/write/WritableCell;
    invoke-interface {v4, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 376
    new-instance v2, Ljxl/write/Label;

    const/16 v5, 0x65

    const-string v6, "A brand new formula"

    const/4 v7, 0x0

    invoke-direct {v2, v7, v5, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v2

    .line 377
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 379
    new-instance v2, Ljxl/write/Formula;

    const-string v6, "SUM(B94:B96)"

    const/4 v7, 0x1

    invoke-direct {v2, v7, v5, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 380
    .local v2, "formula":Ljxl/write/Formula;
    invoke-interface {v4, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 382
    new-instance v6, Ljxl/write/Label;

    const/16 v7, 0x66

    const-string v10, "A copy of it"

    const/4 v5, 0x0

    invoke-direct {v6, v5, v7, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    .line 383
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 385
    const/16 v5, 0x65

    const/4 v6, 0x1

    invoke-interface {v4, v6, v5}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v5

    invoke-interface {v5, v6, v7}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v1

    .line 386
    invoke-interface {v4, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 389
    invoke-interface {v4, v6}, Ljxl/write/WritableSheet;->getImage(I)Ljxl/write/WritableImage;

    move-result-object v5

    .line 390
    .local v5, "wi":Ljxl/write/WritableImage;
    invoke-interface {v4, v5}, Ljxl/write/WritableSheet;->removeImage(Ljxl/write/WritableImage;)V

    .line 392
    new-instance v6, Ljxl/write/WritableImage;

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v31, 0x405d000000000000L    # 116.0

    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    const-wide/high16 v35, 0x4022000000000000L    # 9.0

    new-instance v7, Ljava/io/File;

    const-string v10, "resources/littlemoretonhall.png"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v28, v6

    move-object/from16 v37, v7

    invoke-direct/range {v28 .. v37}, Ljxl/write/WritableImage;-><init>(DDDDLjava/io/File;)V

    move-object v5, v6

    .line 394
    invoke-interface {v4, v5}, Ljxl/write/WritableSheet;->addImage(Ljxl/write/WritableImage;)V

    .line 397
    new-instance v6, Ljxl/write/Label;

    const/16 v7, 0x97

    const-string v10, "Added drop down validation"

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "label":Ljxl/write/Label;
    .local v16, "label":Ljxl/write/Label;
    invoke-direct {v6, v0, v7, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    .line 398
    .end local v16    # "label":Ljxl/write/Label;
    .restart local v0    # "label":Ljxl/write/Label;
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 400
    new-instance v6, Ljxl/write/Blank;

    const/4 v10, 0x1

    invoke-direct {v6, v10, v7}, Ljxl/write/Blank;-><init>(II)V

    .line 401
    .local v6, "b":Ljxl/write/Blank;
    new-instance v7, Ljxl/write/WritableCellFeatures;

    invoke-direct {v7}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 402
    .end local v26    # "wcf":Ljxl/write/WritableCellFeatures;
    .local v7, "wcf":Ljxl/write/WritableCellFeatures;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v10, "al":Ljava/util/ArrayList;
    move-object/from16 v16, v0

    .end local v0    # "label":Ljxl/write/Label;
    .restart local v16    # "label":Ljxl/write/Label;
    const-string v0, "The Fellowship of the Ring"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    const-string v0, "The Two Towers"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    const-string v0, "The Return of the King"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {v7, v10}, Ljxl/write/WritableCellFeatures;->setDataValidationList(Ljava/util/Collection;)V

    .line 407
    invoke-virtual {v6, v7}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 408
    invoke-interface {v4, v6}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 411
    new-instance v0, Ljxl/write/Label;

    move-object/from16 v17, v1

    .end local v1    # "wc":Ljxl/write/WritableCell;
    .local v17, "wc":Ljxl/write/WritableCell;
    const/16 v1, 0x98

    move-object/from16 v18, v2

    .end local v2    # "formula":Ljxl/write/Formula;
    .local v18, "formula":Ljxl/write/Formula;
    const-string v2, "Added number validation 2.718 < x < 3.142"

    move-object/from16 v26, v3

    const/4 v3, 0x0

    .end local v3    # "cf":Ljxl/format/CellFormat;
    .local v26, "cf":Ljxl/format/CellFormat;
    invoke-direct {v0, v3, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v2, v10

    .line 412
    .end local v10    # "al":Ljava/util/ArrayList;
    .end local v16    # "label":Ljxl/write/Label;
    .restart local v0    # "label":Ljxl/write/Label;
    .local v2, "al":Ljava/util/ArrayList;
    invoke-interface {v4, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 413
    new-instance v3, Ljxl/write/Blank;

    const/4 v10, 0x1

    invoke-direct {v3, v10, v1}, Ljxl/write/Blank;-><init>(II)V

    move-object v1, v3

    .line 414
    .end local v6    # "b":Ljxl/write/Blank;
    .local v1, "b":Ljxl/write/Blank;
    new-instance v3, Ljxl/write/WritableCellFeatures;

    invoke-direct {v3}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 415
    .end local v7    # "wcf":Ljxl/write/WritableCellFeatures;
    .local v3, "wcf":Ljxl/write/WritableCellFeatures;
    const-wide v29, 0x4005be76c8b43958L    # 2.718

    const-wide v31, 0x400922d0e5604189L    # 3.142

    sget-object v33, Ljxl/write/WritableCellFeatures;->BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v33}, Ljxl/write/WritableCellFeatures;->setNumberValidation(DDLjxl/biff/BaseCellFeatures$ValidationCondition;)V

    .line 416
    invoke-virtual {v1, v3}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 417
    invoke-interface {v4, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 420
    const/16 v6, 0x9c

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v6

    .line 421
    .end local v22    # "cell":Ljxl/write/WritableCell;
    .local v6, "cell":Ljxl/write/WritableCell;
    move-object v10, v6

    check-cast v10, Ljxl/write/Label;

    .line 422
    .end local v15    # "l":Ljxl/write/Label;
    .local v10, "l":Ljxl/write/Label;
    const-string v15, "Label text modified"

    invoke-virtual {v10, v15}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    .line 424
    const/16 v15, 0x9d

    invoke-interface {v4, v7, v15}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v6

    .line 425
    invoke-interface {v6}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v3

    .line 426
    const-string v15, "modified comment text"

    invoke-virtual {v3, v15}, Ljxl/write/WritableCellFeatures;->setComment(Ljava/lang/String;)V

    .line 428
    const/16 v15, 0x9e

    invoke-interface {v4, v7, v15}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v6

    .line 429
    invoke-interface {v6}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v3

    .line 430
    invoke-virtual {v3}, Ljxl/write/WritableCellFeatures;->removeComment()V

    .line 433
    const/16 v15, 0xac

    invoke-interface {v4, v7, v15}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v6

    .line 434
    invoke-interface {v6}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v3

    .line 435
    invoke-virtual {v3}, Ljxl/write/WritableCellFeatures;->getSharedDataValidationRange()Ljxl/Range;

    move-result-object v7

    .line 436
    .local v7, "r":Ljxl/Range;
    invoke-interface {v7}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v15

    .line 437
    .local v15, "botright":Ljxl/Cell;
    invoke-interface {v4, v6}, Ljxl/write/WritableSheet;->removeSharedDataValidation(Ljxl/write/WritableCell;)V

    .line 438
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, v16

    .line 439
    move-object/from16 v16, v0

    .end local v0    # "label":Ljxl/write/Label;
    .restart local v16    # "label":Ljxl/write/Label;
    const-string v0, "Stanley Featherstonehaugh Ukridge"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    const-string v0, "Major Plank"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    const-string v0, "Earl of Ickenham"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    const-string v0, "Sir Gregory Parsloe-Parsloe"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    const-string v0, "Honoria Glossop"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    const-string v0, "Stiffy Byng"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    const-string v0, "Bingo Little"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v3, v2}, Ljxl/write/WritableCellFeatures;->setDataValidationList(Ljava/util/Collection;)V

    .line 447
    invoke-interface {v6, v3}, Ljxl/write/WritableCell;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 448
    invoke-interface {v15}, Ljxl/Cell;->getColumn()I

    move-result v0

    invoke-interface {v6}, Ljxl/write/WritableCell;->getColumn()I

    move-result v20

    sub-int v0, v0, v20

    move-object/from16 v20, v1

    const/4 v1, 0x1

    .end local v1    # "b":Ljxl/write/Blank;
    .local v20, "b":Ljxl/write/Blank;
    invoke-interface {v4, v6, v0, v1}, Ljxl/write/WritableSheet;->applySharedDataValidation(Ljxl/write/WritableCell;II)V

    .line 451
    return-void
.end method


# virtual methods
.method public readWrite()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;,
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 107
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    const-string v1, "Reading..."

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Ljxl/demo/ReadWrite;->inputWorkbook:Ljava/io/File;

    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v0

    .line 110
    .local v0, "w1":Ljxl/Workbook;
    sget-object v1, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    const-string v2, "Copying..."

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 111
    iget-object v1, p0, Ljxl/demo/ReadWrite;->outputWorkbook:Ljava/io/File;

    invoke-static {v1, v0}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/Workbook;)Ljxl/write/WritableWorkbook;

    move-result-object v1

    .line 113
    .local v1, "w2":Ljxl/write/WritableWorkbook;
    iget-object v2, p0, Ljxl/demo/ReadWrite;->inputWorkbook:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jxlrwtest.xls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-direct {p0, v1}, Ljxl/demo/ReadWrite;->modify(Ljxl/write/WritableWorkbook;)V

    .line 118
    :cond_0
    invoke-virtual {v1}, Ljxl/write/WritableWorkbook;->write()V

    .line 119
    invoke-virtual {v1}, Ljxl/write/WritableWorkbook;->close()V

    .line 120
    sget-object v2, Ljxl/demo/ReadWrite;->logger:Ljxl/common/Logger;

    const-string v3, "Done"

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 121
    return-void
.end method
