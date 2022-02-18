.class public Ljxl/demo/Write;
.super Ljava/lang/Object;
.source "Write.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private workbook:Ljxl/write/WritableWorkbook;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fn"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Ljxl/demo/Write;->filename:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private writeBordersSheet(Ljxl/write/WritableSheet;)V
    .locals 16
    .param p1, "s"    # Ljxl/write/WritableSheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 1269
    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setProtected(Z)V

    .line 1271
    const/16 v1, 0xf

    invoke-interface {v0, v2, v1}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 1272
    const/4 v3, 0x2

    invoke-interface {v0, v3, v1}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 1273
    const/4 v4, 0x4

    invoke-interface {v0, v4, v1}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 1274
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1275
    .local v1, "thickLeft":Ljxl/write/WritableCellFormat;
    sget-object v5, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v6, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    invoke-virtual {v1, v5, v6}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1276
    new-instance v5, Ljxl/write/Label;

    const/4 v6, 0x0

    const-string v7, "Thick left"

    invoke-direct {v5, v2, v6, v7, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1277
    .local v5, "lr":Ljxl/write/Label;
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1279
    new-instance v7, Ljxl/write/WritableCellFormat;

    invoke-direct {v7}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1280
    .local v7, "dashedRight":Ljxl/write/WritableCellFormat;
    sget-object v8, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v9, Ljxl/format/BorderLineStyle;->DASHED:Ljxl/format/BorderLineStyle;

    invoke-virtual {v7, v8, v9}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1281
    new-instance v8, Ljxl/write/Label;

    const-string v9, "Dashed right"

    invoke-direct {v8, v3, v6, v9, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v5, v8

    .line 1282
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1284
    new-instance v6, Ljxl/write/WritableCellFormat;

    invoke-direct {v6}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1285
    .local v6, "doubleTop":Ljxl/write/WritableCellFormat;
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v9, Ljxl/format/BorderLineStyle;->DOUBLE:Ljxl/format/BorderLineStyle;

    invoke-virtual {v6, v8, v9}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1286
    new-instance v8, Ljxl/write/Label;

    const-string v9, "Double top"

    invoke-direct {v8, v2, v3, v9, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v5, v8

    .line 1287
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1289
    new-instance v8, Ljxl/write/WritableCellFormat;

    invoke-direct {v8}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1290
    .local v8, "hairBottom":Ljxl/write/WritableCellFormat;
    sget-object v9, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->HAIR:Ljxl/format/BorderLineStyle;

    invoke-virtual {v8, v9, v10}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1291
    new-instance v9, Ljxl/write/Label;

    const-string v10, "Hair bottom"

    invoke-direct {v9, v3, v3, v10, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v5, v9

    .line 1292
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1294
    new-instance v9, Ljxl/write/WritableCellFormat;

    invoke-direct {v9}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1295
    .local v9, "allThin":Ljxl/write/WritableCellFormat;
    sget-object v10, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v11, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v9, v10, v11}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1296
    new-instance v10, Ljxl/write/Label;

    const-string v11, "All thin"

    invoke-direct {v10, v4, v3, v11, v9}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v5, v10

    .line 1297
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1299
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1300
    .local v10, "twoBorders":Ljxl/write/WritableCellFormat;
    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v12, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    invoke-virtual {v10, v11, v12}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1301
    sget-object v11, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v12, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    invoke-virtual {v10, v11, v12}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1302
    new-instance v11, Ljxl/write/Label;

    const/4 v12, 0x6

    const-string v13, "Two borders"

    invoke-direct {v11, v12, v3, v13, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v3, v11

    .line 1303
    .end local v5    # "lr":Ljxl/write/Label;
    .local v3, "lr":Ljxl/write/Label;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1306
    new-instance v5, Ljxl/write/Label;

    const/16 v11, 0x14

    const-string v12, "Dislocated cell - after a page break"

    invoke-direct {v5, v11, v11, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v5

    .line 1307
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1310
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v5

    sget-object v11, Ljxl/format/PaperSize;->A3:Ljxl/format/PaperSize;

    invoke-virtual {v5, v11}, Ljxl/SheetSettings;->setPaperSize(Ljxl/format/PaperSize;)V

    .line 1311
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v5

    sget-object v11, Ljxl/format/PageOrientation;->LANDSCAPE:Ljxl/format/PageOrientation;

    invoke-virtual {v5, v11}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    .line 1312
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v5

    sget-object v11, Ljxl/format/PageOrder;->DOWN_THEN_RIGHT:Ljxl/format/PageOrder;

    invoke-virtual {v5, v11}, Ljxl/SheetSettings;->setPageOrder(Ljxl/format/PageOrder;)V

    .line 1313
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v5

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-virtual {v5, v11, v12}, Ljxl/SheetSettings;->setHeaderMargin(D)V

    .line 1314
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljxl/SheetSettings;->setFooterMargin(D)V

    .line 1316
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v5

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    invoke-virtual {v5, v11, v12}, Ljxl/SheetSettings;->setTopMargin(D)V

    .line 1317
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljxl/SheetSettings;->setBottomMargin(D)V

    .line 1320
    new-instance v5, Ljxl/HeaderFooter;

    invoke-direct {v5}, Ljxl/HeaderFooter;-><init>()V

    .line 1321
    .local v5, "header":Ljxl/HeaderFooter;
    invoke-virtual {v5}, Ljxl/HeaderFooter;->getCentre()Ljxl/HeaderFooter$Contents;

    move-result-object v11

    const-string v12, "Page Header"

    invoke-virtual {v11, v12}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 1322
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljxl/SheetSettings;->setHeader(Ljxl/HeaderFooter;)V

    .line 1324
    new-instance v11, Ljxl/HeaderFooter;

    invoke-direct {v11}, Ljxl/HeaderFooter;-><init>()V

    .line 1325
    .local v11, "footer":Ljxl/HeaderFooter;
    invoke-virtual {v11}, Ljxl/HeaderFooter;->getRight()Ljxl/HeaderFooter$Contents;

    move-result-object v12

    const-string v13, "page "

    invoke-virtual {v12, v13}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v11}, Ljxl/HeaderFooter;->getRight()Ljxl/HeaderFooter$Contents;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/HeaderFooter$Contents;->appendPageNumber()V

    .line 1327
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljxl/SheetSettings;->setFooter(Ljxl/HeaderFooter;)V

    .line 1330
    const/16 v12, 0x12

    invoke-interface {v0, v12}, Ljxl/write/WritableSheet;->addRowPageBreak(I)V

    .line 1331
    const/16 v12, 0x11

    invoke-interface {v0, v12}, Ljxl/write/WritableSheet;->insertRow(I)V

    .line 1332
    invoke-interface {v0, v12}, Ljxl/write/WritableSheet;->insertRow(I)V

    .line 1333
    invoke-interface {v0, v12}, Ljxl/write/WritableSheet;->removeRow(I)V

    .line 1336
    const/16 v12, 0x1e

    invoke-interface {v0, v12}, Ljxl/write/WritableSheet;->addRowPageBreak(I)V

    .line 1339
    new-instance v12, Ljxl/write/Label;

    const/16 v13, 0xa

    const-string v14, "Hidden column"

    invoke-direct {v12, v13, v2, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v12

    .line 1340
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1342
    new-instance v12, Ljxl/write/Label;

    const/4 v13, 0x3

    const/16 v14, 0x8

    const-string v15, "Hidden row"

    invoke-direct {v12, v13, v14, v15}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v12

    .line 1343
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1344
    invoke-interface {v0, v14, v2}, Ljxl/write/WritableSheet;->setRowView(IZ)V

    .line 1346
    new-instance v12, Ljxl/write/WritableCellFormat;

    invoke-direct {v12}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1347
    .local v12, "allThickRed":Ljxl/write/WritableCellFormat;
    sget-object v13, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v14, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    sget-object v15, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 1348
    new-instance v13, Ljxl/write/Label;

    const/4 v14, 0x5

    const-string v15, "All thick red"

    invoke-direct {v13, v2, v14, v15, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v13

    .line 1349
    .end local v3    # "lr":Ljxl/write/Label;
    .local v2, "lr":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1351
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1352
    .local v3, "topBottomBlue":Ljxl/write/WritableCellFormat;
    sget-object v13, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v15, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    sget-object v4, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    invoke-virtual {v3, v13, v15, v4}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 1353
    sget-object v4, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v13, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    sget-object v15, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    invoke-virtual {v3, v4, v13, v15}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 1354
    new-instance v4, Ljxl/write/Label;

    const-string v13, "Top and bottom blue"

    const/4 v15, 0x4

    invoke-direct {v4, v15, v14, v13, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v4

    .line 1355
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1356
    return-void
.end method

.method private writeDateFormatSheet(Ljxl/write/WritableSheet;)V
    .locals 40
    .param p1, "s"    # Ljxl/write/WritableSheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 449
    move-object/from16 v0, p1

    new-instance v1, Ljxl/write/WritableCellFormat;

    sget-object v2, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-direct {v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 451
    .local v1, "wrappedText":Ljxl/write/WritableCellFormat;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 453
    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-interface {v0, v3, v4}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 454
    const/4 v5, 0x2

    invoke-interface {v0, v5, v4}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 455
    const/4 v6, 0x3

    invoke-interface {v0, v6, v4}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 456
    const/4 v7, 0x4

    invoke-interface {v0, v7, v4}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 458
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljxl/SheetSettings;->setFitWidth(I)V

    .line 459
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljxl/SheetSettings;->setFitHeight(I)V

    .line 461
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    .line 462
    .local v8, "c":Ljava/util/Calendar;
    const/16 v10, 0x7b7

    const/4 v11, 0x4

    const/16 v12, 0x1f

    const/16 v13, 0xf

    const/16 v14, 0x15

    const/16 v15, 0x2d

    move-object v9, v8

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 463
    const/16 v15, 0xe

    const/16 v9, 0x294

    invoke-virtual {v8, v15, v9}, Ljava/util/Calendar;->set(II)V

    .line 464
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    .line 465
    .local v14, "date":Ljava/util/Date;
    const/16 v10, 0x76c

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v8

    move-object v6, v14

    .end local v14    # "date":Ljava/util/Date;
    .local v6, "date":Ljava/util/Date;
    move/from16 v14, v16

    move v7, v15

    move/from16 v15, v17

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 466
    invoke-virtual {v8, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 468
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 469
    .local v7, "date2":Ljava/util/Date;
    const/16 v10, 0x7b2

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 470
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 471
    .local v15, "date3":Ljava/util/Date;
    const/16 v10, 0x77e

    const/16 v11, 0xa

    const/16 v12, 0xb

    const/16 v13, 0xb

    move-object/from16 v29, v15

    .end local v15    # "date3":Ljava/util/Date;
    .local v29, "date3":Ljava/util/Date;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 472
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 473
    .local v15, "date4":Ljava/util/Date;
    const/16 v10, 0x76c

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object/from16 v30, v15

    .end local v15    # "date4":Ljava/util/Date;
    .local v30, "date4":Ljava/util/Date;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 474
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 475
    .local v15, "date5":Ljava/util/Date;
    const/16 v10, 0x76d

    const/4 v12, 0x1

    move-object/from16 v31, v15

    .end local v15    # "date5":Ljava/util/Date;
    .local v31, "date5":Ljava/util/Date;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 476
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 477
    .local v15, "date6":Ljava/util/Date;
    const/16 v10, 0x76c

    const/4 v11, 0x4

    const/16 v12, 0x1f

    move-object/from16 v32, v15

    .end local v15    # "date6":Ljava/util/Date;
    .local v32, "date6":Ljava/util/Date;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 478
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 479
    .local v15, "date7":Ljava/util/Date;
    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v33, v15

    .end local v15    # "date7":Ljava/util/Date;
    .local v33, "date7":Ljava/util/Date;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 480
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 481
    .local v15, "date8":Ljava/util/Date;
    const/4 v11, 0x0

    const/16 v12, 0x1f

    move-object/from16 v34, v15

    .end local v15    # "date8":Ljava/util/Date;
    .local v34, "date8":Ljava/util/Date;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 482
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 483
    .local v15, "date9":Ljava/util/Date;
    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object/from16 v35, v15

    .end local v15    # "date9":Ljava/util/Date;
    .local v35, "date9":Ljava/util/Date;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 484
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 485
    .local v15, "date10":Ljava/util/Date;
    const/4 v11, 0x1

    const/16 v12, 0x1b

    move-object/from16 v36, v15

    .end local v15    # "date10":Ljava/util/Date;
    .local v36, "date10":Ljava/util/Date;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 486
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 487
    .local v15, "date11":Ljava/util/Date;
    const/16 v12, 0x1c

    move-object/from16 v37, v15

    .end local v15    # "date11":Ljava/util/Date;
    .local v37, "date11":Ljava/util/Date;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 488
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 489
    .local v15, "date12":Ljava/util/Date;
    const/16 v10, 0x7bc

    const/4 v11, 0x5

    const/16 v12, 0x1f

    const/16 v13, 0xc

    move-object/from16 v38, v15

    .end local v15    # "date12":Ljava/util/Date;
    .local v38, "date12":Ljava/util/Date;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 490
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v39

    .line 491
    .local v39, "date13":Ljava/util/Date;
    const/16 v10, 0x42a

    const/16 v11, 0x9

    const/16 v12, 0xe

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 492
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 495
    .local v9, "date14":Ljava/util/Date;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "dd MMM yyyy HH:mm:ss.SSS"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 496
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 497
    new-instance v4, Ljxl/write/Label;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "All dates are "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v3, v3, v11, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 499
    .local v4, "l":Ljxl/write/Label;
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 501
    new-instance v11, Ljxl/write/Label;

    const-string v12, "Built in formats"

    invoke-direct {v11, v3, v2, v12, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v4, v11

    .line 503
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 505
    new-instance v11, Ljxl/write/Label;

    const-string v12, "Custom formats"

    invoke-direct {v11, v5, v2, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v2, v11

    .line 506
    .end local v4    # "l":Ljxl/write/Label;
    .local v2, "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 508
    new-instance v4, Ljxl/write/WritableCellFormat;

    sget-object v11, Ljxl/write/DateFormats;->FORMAT1:Ljxl/biff/DisplayFormat;

    invoke-direct {v4, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v4

    .line 509
    .local v20, "cf1":Ljxl/write/WritableCellFormat;
    new-instance v4, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x2

    move-object/from16 v16, v4

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 510
    .local v4, "dt":Ljxl/write/DateTime;
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 512
    new-instance v11, Ljxl/write/WritableCellFormat;

    sget-object v12, Ljxl/write/DateFormats;->FORMAT2:Ljxl/biff/DisplayFormat;

    invoke-direct {v11, v12}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v11

    .line 513
    new-instance v11, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x3

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v4, v11

    .line 514
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 516
    new-instance v11, Ljxl/write/WritableCellFormat;

    sget-object v12, Ljxl/write/DateFormats;->FORMAT3:Ljxl/biff/DisplayFormat;

    invoke-direct {v11, v12}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 517
    .end local v20    # "cf1":Ljxl/write/WritableCellFormat;
    .local v11, "cf1":Ljxl/write/WritableCellFormat;
    new-instance v12, Ljxl/write/DateTime;

    const/4 v13, 0x4

    invoke-direct {v12, v3, v13, v6, v11}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    move-object v4, v12

    .line 518
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 520
    new-instance v12, Ljxl/write/WritableCellFormat;

    sget-object v13, Ljxl/write/DateFormats;->FORMAT4:Ljxl/biff/DisplayFormat;

    invoke-direct {v12, v13}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object v11, v12

    .line 521
    new-instance v12, Ljxl/write/DateTime;

    const/4 v13, 0x5

    invoke-direct {v12, v3, v13, v6, v11}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    move-object v4, v12

    .line 522
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 524
    new-instance v12, Ljxl/write/WritableCellFormat;

    sget-object v14, Ljxl/write/DateFormats;->FORMAT5:Ljxl/biff/DisplayFormat;

    invoke-direct {v12, v14}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object v11, v12

    .line 525
    new-instance v12, Ljxl/write/DateTime;

    const/4 v14, 0x6

    invoke-direct {v12, v3, v14, v6, v11}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    move-object v4, v12

    .line 526
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 528
    new-instance v12, Ljxl/write/WritableCellFormat;

    sget-object v15, Ljxl/write/DateFormats;->FORMAT6:Ljxl/biff/DisplayFormat;

    invoke-direct {v12, v15}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object v11, v12

    .line 529
    new-instance v12, Ljxl/write/DateTime;

    const/4 v15, 0x7

    invoke-direct {v12, v3, v15, v6, v11}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    move-object v4, v12

    .line 530
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 532
    new-instance v12, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT7:Ljxl/biff/DisplayFormat;

    invoke-direct {v12, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v12

    .line 533
    .end local v11    # "cf1":Ljxl/write/WritableCellFormat;
    .restart local v20    # "cf1":Ljxl/write/WritableCellFormat;
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x8

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 534
    .end local v4    # "dt":Ljxl/write/DateTime;
    .local v3, "dt":Ljxl/write/DateTime;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 536
    new-instance v4, Ljxl/write/WritableCellFormat;

    sget-object v11, Ljxl/write/DateFormats;->FORMAT8:Ljxl/biff/DisplayFormat;

    invoke-direct {v4, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v4

    .line 537
    new-instance v4, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x9

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v4

    .line 538
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 540
    new-instance v4, Ljxl/write/WritableCellFormat;

    sget-object v11, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v4, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v4

    .line 541
    new-instance v4, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0xa

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v4

    .line 542
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 544
    new-instance v4, Ljxl/write/WritableCellFormat;

    sget-object v11, Ljxl/write/DateFormats;->FORMAT10:Ljxl/biff/DisplayFormat;

    invoke-direct {v4, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v4

    .line 545
    new-instance v4, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0xb

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v4

    .line 546
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 548
    new-instance v4, Ljxl/write/WritableCellFormat;

    sget-object v11, Ljxl/write/DateFormats;->FORMAT11:Ljxl/biff/DisplayFormat;

    invoke-direct {v4, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v4

    .line 549
    new-instance v4, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0xc

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v4

    .line 550
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 552
    new-instance v4, Ljxl/write/WritableCellFormat;

    sget-object v11, Ljxl/write/DateFormats;->FORMAT12:Ljxl/biff/DisplayFormat;

    invoke-direct {v4, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v4

    .line 553
    new-instance v4, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0xd

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v4

    .line 554
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 557
    new-instance v4, Ljxl/write/DateFormat;

    const-string v11, "dd MM yyyy"

    invoke-direct {v4, v11}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 558
    .local v4, "df":Ljxl/write/DateFormat;
    new-instance v12, Ljxl/write/WritableCellFormat;

    invoke-direct {v12, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v12

    .line 559
    new-instance v12, Ljxl/write/Label;

    invoke-direct {v12, v5, v5, v11}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v2, v12

    .line 560
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 562
    new-instance v11, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v17, 0x3

    const/16 v18, 0x2

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v11

    .line 563
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 565
    new-instance v11, Ljxl/write/DateFormat;

    const-string v12, "dd MMM yyyy"

    invoke-direct {v11, v12}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    move-object v4, v11

    .line 566
    new-instance v11, Ljxl/write/WritableCellFormat;

    invoke-direct {v11, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v11

    .line 567
    new-instance v11, Ljxl/write/Label;

    const/4 v15, 0x3

    invoke-direct {v11, v5, v15, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v2, v11

    .line 568
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 570
    new-instance v11, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x3

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v11

    .line 571
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 573
    new-instance v11, Ljxl/write/DateFormat;

    const-string v12, "hh:mm"

    invoke-direct {v11, v12}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    move-object v4, v11

    .line 574
    new-instance v11, Ljxl/write/WritableCellFormat;

    invoke-direct {v11, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v11

    .line 575
    new-instance v11, Ljxl/write/Label;

    const/4 v15, 0x4

    invoke-direct {v11, v5, v15, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v2, v11

    .line 576
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 578
    new-instance v11, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x4

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v11

    .line 579
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 581
    new-instance v11, Ljxl/write/DateFormat;

    const-string v12, "hh:mm:ss"

    invoke-direct {v11, v12}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    move-object v4, v11

    .line 582
    new-instance v11, Ljxl/write/WritableCellFormat;

    invoke-direct {v11, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v11

    .line 583
    new-instance v11, Ljxl/write/Label;

    invoke-direct {v11, v5, v13, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v2, v11

    .line 584
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 586
    new-instance v11, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x5

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v11

    .line 587
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 589
    new-instance v11, Ljxl/write/DateFormat;

    const-string v12, "H:mm:ss a"

    invoke-direct {v11, v12}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    move-object v4, v11

    .line 590
    new-instance v11, Ljxl/write/WritableCellFormat;

    invoke-direct {v11, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v11

    .line 591
    new-instance v11, Ljxl/write/Label;

    invoke-direct {v11, v5, v13, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v2, v11

    .line 592
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 594
    new-instance v11, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v11

    .line 595
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 596
    new-instance v11, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x4

    const/16 v25, 0x5

    move-object/from16 v23, v11

    move-object/from16 v26, v39

    move-object/from16 v27, v20

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v11

    .line 597
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 599
    new-instance v11, Ljxl/write/DateFormat;

    const-string v12, "mm:ss.SSS"

    invoke-direct {v11, v12}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    move-object v4, v11

    .line 600
    new-instance v11, Ljxl/write/WritableCellFormat;

    invoke-direct {v11, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v11

    .line 601
    new-instance v11, Ljxl/write/Label;

    invoke-direct {v11, v5, v14, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v2, v11

    .line 602
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 604
    new-instance v11, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x6

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v11

    .line 605
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 607
    new-instance v11, Ljxl/write/DateFormat;

    const-string v12, "hh:mm:ss a"

    invoke-direct {v11, v12}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    move-object v4, v11

    .line 608
    new-instance v11, Ljxl/write/WritableCellFormat;

    invoke-direct {v11, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v27, v11

    .line 609
    .end local v20    # "cf1":Ljxl/write/WritableCellFormat;
    .local v27, "cf1":Ljxl/write/WritableCellFormat;
    new-instance v11, Ljxl/write/Label;

    const/4 v13, 0x7

    invoke-direct {v11, v5, v13, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v2, v11

    .line 610
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 612
    new-instance v5, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v25, 0x7

    move-object/from16 v23, v5

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v5

    .line 613
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 617
    new-instance v5, Ljxl/write/Label;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Zero date "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    const/4 v13, 0x0

    invoke-direct {v5, v13, v12, v11, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v5

    .line 619
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 621
    new-instance v5, Ljxl/write/WritableCellFormat;

    sget-object v11, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v5, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v27, v5

    .line 622
    new-instance v5, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x0

    const/16 v25, 0x11

    move-object/from16 v23, v5

    move-object/from16 v26, v7

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v5

    .line 623
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 626
    new-instance v5, Ljxl/write/Label;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Zero date + 1 "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v13, v31

    .end local v31    # "date5":Ljava/util/Date;
    .local v13, "date5":Ljava/util/Date;
    invoke-virtual {v10, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x3

    invoke-direct {v5, v14, v12, v11, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v5

    .line 628
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 630
    new-instance v5, Ljxl/write/WritableCellFormat;

    sget-object v11, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v5, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v27, v5

    .line 631
    new-instance v5, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x3

    move-object/from16 v23, v5

    move-object/from16 v26, v13

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v5

    .line 632
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 635
    new-instance v5, Ljxl/write/Label;

    move-object/from16 v11, v32

    .end local v32    # "date6":Ljava/util/Date;
    .local v11, "date6":Ljava/util/Date;
    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x13

    const/4 v15, 0x3

    invoke-direct {v5, v15, v14, v12, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v5

    .line 637
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 639
    new-instance v5, Ljxl/write/WritableCellFormat;

    sget-object v12, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v5, v12}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v27, v5

    .line 640
    new-instance v5, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v25, 0x14

    move-object/from16 v23, v5

    move-object/from16 v26, v11

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v5

    .line 641
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 644
    new-instance v5, Ljxl/write/Label;

    move-object/from16 v12, v33

    .end local v33    # "date7":Ljava/util/Date;
    .local v12, "date7":Ljava/util/Date;
    invoke-virtual {v10, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    const/16 v14, 0x16

    move-object/from16 v17, v2

    const/4 v2, 0x3

    .end local v2    # "l":Ljxl/write/Label;
    .local v17, "l":Ljxl/write/Label;
    invoke-direct {v5, v2, v14, v15, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v5

    .line 646
    .end local v17    # "l":Ljxl/write/Label;
    .restart local v2    # "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 648
    new-instance v5, Ljxl/write/WritableCellFormat;

    sget-object v15, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v5, v15}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v27, v5

    .line 649
    new-instance v5, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v25, 0x17

    move-object/from16 v23, v5

    move-object/from16 v26, v12

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    move-object v3, v5

    .line 650
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 653
    new-instance v5, Ljxl/write/Label;

    move-object/from16 v15, v34

    .end local v34    # "date8":Ljava/util/Date;
    .local v15, "date8":Ljava/util/Date;
    invoke-virtual {v10, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v2

    .end local v2    # "l":Ljxl/write/Label;
    .restart local v17    # "l":Ljxl/write/Label;
    const/16 v2, 0x19

    move-object/from16 v18, v3

    const/4 v3, 0x3

    .end local v3    # "dt":Ljxl/write/DateTime;
    .local v18, "dt":Ljxl/write/DateTime;
    invoke-direct {v5, v3, v2, v14, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v3, v5

    .line 655
    .end local v17    # "l":Ljxl/write/Label;
    .local v3, "l":Ljxl/write/Label;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 657
    new-instance v5, Ljxl/write/WritableCellFormat;

    sget-object v14, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v5, v14}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v27, v5

    .line 658
    new-instance v5, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v25, 0x1a

    move-object/from16 v23, v5

    move-object/from16 v26, v15

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 659
    .end local v18    # "dt":Ljxl/write/DateTime;
    .local v5, "dt":Ljxl/write/DateTime;
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 662
    new-instance v14, Ljxl/write/Label;

    move-object/from16 v17, v3

    move-object/from16 v2, v35

    .end local v3    # "l":Ljxl/write/Label;
    .end local v35    # "date9":Ljava/util/Date;
    .local v2, "date9":Ljava/util/Date;
    .restart local v17    # "l":Ljxl/write/Label;
    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v4

    .end local v4    # "df":Ljxl/write/DateFormat;
    .local v32, "df":Ljxl/write/DateFormat;
    const/16 v4, 0x1c

    move-object/from16 v18, v5

    const/4 v5, 0x3

    .end local v5    # "dt":Ljxl/write/DateTime;
    .restart local v18    # "dt":Ljxl/write/DateTime;
    invoke-direct {v14, v5, v4, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v3, v14

    .line 664
    .end local v17    # "l":Ljxl/write/Label;
    .restart local v3    # "l":Ljxl/write/Label;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 666
    new-instance v4, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v4, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v27, v4

    .line 667
    new-instance v4, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v25, 0x1d

    move-object/from16 v23, v4

    move-object/from16 v26, v2

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 668
    .end local v18    # "dt":Ljxl/write/DateTime;
    .local v4, "dt":Ljxl/write/DateTime;
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 671
    new-instance v5, Ljxl/write/Label;

    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v3

    .end local v3    # "l":Ljxl/write/Label;
    .restart local v17    # "l":Ljxl/write/Label;
    const/16 v3, 0x1c

    move-object/from16 v18, v4

    const/4 v4, 0x3

    .end local v4    # "dt":Ljxl/write/DateTime;
    .restart local v18    # "dt":Ljxl/write/DateTime;
    invoke-direct {v5, v4, v3, v14, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v3, v5

    .line 673
    .end local v17    # "l":Ljxl/write/Label;
    .restart local v3    # "l":Ljxl/write/Label;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 675
    new-instance v4, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v4, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v27, v4

    .line 676
    new-instance v4, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 677
    .end local v18    # "dt":Ljxl/write/DateTime;
    .restart local v4    # "dt":Ljxl/write/DateTime;
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 680
    new-instance v5, Ljxl/write/Label;

    move-object/from16 v14, v36

    .end local v2    # "date9":Ljava/util/Date;
    .end local v36    # "date10":Ljava/util/Date;
    .local v14, "date10":Ljava/util/Date;
    .restart local v35    # "date9":Ljava/util/Date;
    invoke-virtual {v10, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v3

    .end local v3    # "l":Ljxl/write/Label;
    .restart local v17    # "l":Ljxl/write/Label;
    const/16 v3, 0x1f

    move-object/from16 v18, v4

    const/4 v4, 0x3

    .end local v4    # "dt":Ljxl/write/DateTime;
    .restart local v18    # "dt":Ljxl/write/DateTime;
    invoke-direct {v5, v4, v3, v2, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v5

    .line 682
    .end local v17    # "l":Ljxl/write/Label;
    .local v2, "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 684
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v4, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v27, v3

    .line 685
    new-instance v3, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v25, 0x20

    move-object/from16 v23, v3

    move-object/from16 v26, v14

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 686
    .end local v18    # "dt":Ljxl/write/DateTime;
    .local v3, "dt":Ljxl/write/DateTime;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 689
    new-instance v4, Ljxl/write/Label;

    move-object/from16 v17, v2

    move-object/from16 v5, v37

    .end local v2    # "l":Ljxl/write/Label;
    .end local v37    # "date11":Ljava/util/Date;
    .local v5, "date11":Ljava/util/Date;
    .restart local v17    # "l":Ljxl/write/Label;
    invoke-virtual {v10, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v3

    .end local v3    # "dt":Ljxl/write/DateTime;
    .restart local v18    # "dt":Ljxl/write/DateTime;
    const/16 v3, 0x22

    move-object/from16 v33, v6

    const/4 v6, 0x3

    .end local v6    # "date":Ljava/util/Date;
    .local v33, "date":Ljava/util/Date;
    invoke-direct {v4, v6, v3, v2, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v4

    .line 691
    .end local v17    # "l":Ljxl/write/Label;
    .restart local v2    # "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 693
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v4, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v27, v3

    .line 694
    new-instance v3, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v25, 0x23

    move-object/from16 v23, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 695
    .end local v18    # "dt":Ljxl/write/DateTime;
    .restart local v3    # "dt":Ljxl/write/DateTime;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 698
    new-instance v4, Ljxl/write/Label;

    move-object/from16 v17, v2

    move-object/from16 v6, v38

    .end local v2    # "l":Ljxl/write/Label;
    .end local v38    # "date12":Ljava/util/Date;
    .local v6, "date12":Ljava/util/Date;
    .restart local v17    # "l":Ljxl/write/Label;
    invoke-virtual {v10, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v3

    .end local v3    # "dt":Ljxl/write/DateTime;
    .restart local v18    # "dt":Ljxl/write/DateTime;
    const/16 v3, 0x25

    const/4 v5, 0x3

    .end local v5    # "date11":Ljava/util/Date;
    .restart local v37    # "date11":Ljava/util/Date;
    invoke-direct {v4, v5, v3, v2, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v4

    .line 700
    .end local v17    # "l":Ljxl/write/Label;
    .restart local v2    # "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 702
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v4, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v27, v3

    .line 703
    new-instance v3, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v25, 0x26

    move-object/from16 v23, v3

    move-object/from16 v26, v6

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 704
    .end local v18    # "dt":Ljxl/write/DateTime;
    .restart local v3    # "dt":Ljxl/write/DateTime;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 707
    new-instance v4, Ljxl/write/Label;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    .end local v2    # "l":Ljxl/write/Label;
    .restart local v17    # "l":Ljxl/write/Label;
    const-string v2, "Zero UTC date "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v22, v3

    move-object/from16 v5, v29

    .end local v3    # "dt":Ljxl/write/DateTime;
    .end local v29    # "date3":Ljava/util/Date;
    .local v5, "date3":Ljava/util/Date;
    .local v22, "dt":Ljxl/write/DateTime;
    invoke-virtual {v10, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x13

    const/4 v6, 0x0

    .end local v6    # "date12":Ljava/util/Date;
    .restart local v38    # "date12":Ljava/util/Date;
    invoke-direct {v4, v6, v3, v2, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v4

    .line 709
    .end local v17    # "l":Ljxl/write/Label;
    .restart local v2    # "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 711
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v4, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v3

    .line 712
    .end local v27    # "cf1":Ljxl/write/WritableCellFormat;
    .restart local v20    # "cf1":Ljxl/write/WritableCellFormat;
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v17, 0x0

    const/16 v18, 0x14

    move-object/from16 v16, v3

    move-object/from16 v19, v5

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 713
    .end local v22    # "dt":Ljxl/write/DateTime;
    .restart local v3    # "dt":Ljxl/write/DateTime;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 716
    new-instance v4, Ljxl/write/Label;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "l":Ljxl/write/Label;
    .local v16, "l":Ljxl/write/Label;
    const-string v2, "Armistice date "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v17, v3

    move-object/from16 v6, v30

    .end local v3    # "dt":Ljxl/write/DateTime;
    .end local v30    # "date4":Ljava/util/Date;
    .local v6, "date4":Ljava/util/Date;
    .local v17, "dt":Ljxl/write/DateTime;
    invoke-virtual {v10, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x16

    const/4 v5, 0x0

    .end local v5    # "date3":Ljava/util/Date;
    .restart local v29    # "date3":Ljava/util/Date;
    invoke-direct {v4, v5, v3, v2, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v4

    .line 718
    .end local v16    # "l":Ljxl/write/Label;
    .restart local v2    # "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 720
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v4, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v27, v3

    .line 721
    .end local v20    # "cf1":Ljxl/write/WritableCellFormat;
    .restart local v27    # "cf1":Ljxl/write/WritableCellFormat;
    new-instance v3, Ljxl/write/DateTime;

    sget-object v28, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x0

    const/16 v25, 0x17

    move-object/from16 v23, v3

    move-object/from16 v26, v6

    invoke-direct/range {v23 .. v28}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 722
    .end local v17    # "dt":Ljxl/write/DateTime;
    .restart local v3    # "dt":Ljxl/write/DateTime;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 725
    new-instance v4, Ljxl/write/Label;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "l":Ljxl/write/Label;
    .restart local v16    # "l":Ljxl/write/Label;
    const-string v2, "Battle of Hastings "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v3

    const/4 v3, 0x0

    const/16 v5, 0x19

    .end local v3    # "dt":Ljxl/write/DateTime;
    .restart local v22    # "dt":Ljxl/write/DateTime;
    invoke-direct {v4, v3, v5, v2, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v4

    .line 727
    .end local v16    # "l":Ljxl/write/Label;
    .restart local v2    # "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 729
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v4, Ljxl/write/DateFormats;->FORMAT2:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v20, v3

    .line 730
    .end local v27    # "cf1":Ljxl/write/WritableCellFormat;
    .restart local v20    # "cf1":Ljxl/write/WritableCellFormat;
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v17, 0x0

    const/16 v18, 0x1a

    move-object/from16 v16, v3

    move-object/from16 v19, v9

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 731
    .end local v22    # "dt":Ljxl/write/DateTime;
    .restart local v3    # "dt":Ljxl/write/DateTime;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 732
    return-void
.end method

.method private writeFormulaSheet(Ljxl/write/WritableSheet;)V
    .locals 16
    .param p1, "ws"    # Ljxl/write/WritableSheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 1431
    move-object/from16 v0, p1

    new-instance v1, Ljxl/write/Number;

    const/4 v2, 0x0

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    invoke-direct {v1, v2, v2, v3, v4}, Ljxl/write/Number;-><init>(IID)V

    .line 1432
    .local v1, "nc":Ljxl/write/Number;
    invoke-interface {v0, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1434
    new-instance v3, Ljxl/write/Number;

    const/4 v4, 0x1

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    invoke-direct {v3, v2, v4, v5, v6}, Ljxl/write/Number;-><init>(IID)V

    move-object v1, v3

    .line 1435
    invoke-interface {v0, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1437
    new-instance v3, Ljxl/write/Number;

    const/4 v5, 0x2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v3, v2, v5, v6, v7}, Ljxl/write/Number;-><init>(IID)V

    move-object v1, v3

    .line 1438
    invoke-interface {v0, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1440
    new-instance v3, Ljxl/write/Number;

    const/4 v6, 0x3

    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    invoke-direct {v3, v2, v6, v7, v8}, Ljxl/write/Number;-><init>(IID)V

    move-object v1, v3

    .line 1441
    invoke-interface {v0, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1443
    const/16 v3, 0x14

    invoke-interface {v0, v5, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 1444
    new-instance v7, Ljxl/write/WritableCellFormat;

    invoke-direct {v7}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1445
    .local v7, "wcf":Ljxl/write/WritableCellFormat;
    sget-object v8, Ljxl/format/Alignment;->RIGHT:Ljxl/format/Alignment;

    invoke-virtual {v7, v8}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 1446
    invoke-virtual {v7, v4}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 1447
    new-instance v8, Ljxl/CellView;

    invoke-direct {v8}, Ljxl/CellView;-><init>()V

    .line 1448
    .local v8, "cv":Ljxl/CellView;
    const/16 v9, 0x1900

    invoke-virtual {v8, v9}, Ljxl/CellView;->setSize(I)V

    .line 1449
    invoke-virtual {v8, v7}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    .line 1450
    invoke-interface {v0, v6, v8}, Ljxl/write/WritableSheet;->setColumnView(ILjxl/CellView;)V

    .line 1453
    const/4 v9, 0x0

    .line 1454
    .local v9, "f":Ljxl/write/Formula;
    const/4 v10, 0x0

    .line 1456
    .local v10, "l":Ljxl/write/Label;
    new-instance v11, Ljxl/write/Formula;

    const-string v12, "A1+A2"

    invoke-direct {v11, v5, v2, v12}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1457
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1458
    new-instance v11, Ljxl/write/Label;

    const-string v12, "a1+a2"

    invoke-direct {v11, v6, v2, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1459
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1461
    new-instance v11, Ljxl/write/Formula;

    const-string v12, "A2 * 3"

    invoke-direct {v11, v5, v4, v12}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1462
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1463
    new-instance v11, Ljxl/write/Label;

    invoke-direct {v11, v6, v4, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1464
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1466
    new-instance v11, Ljxl/write/Formula;

    const-string v12, "A2+A1/2.5"

    invoke-direct {v11, v5, v5, v12}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1467
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1468
    new-instance v11, Ljxl/write/Label;

    invoke-direct {v11, v6, v5, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1469
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1471
    new-instance v11, Ljxl/write/Formula;

    const-string v12, "3+(a1+a2)/2.5"

    invoke-direct {v11, v5, v6, v12}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1472
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1473
    new-instance v11, Ljxl/write/Label;

    invoke-direct {v11, v6, v6, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1474
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1476
    new-instance v11, Ljxl/write/Formula;

    const/4 v12, 0x4

    const-string v13, "(a1+a2)/2.5"

    invoke-direct {v11, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1477
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1478
    new-instance v11, Ljxl/write/Label;

    invoke-direct {v11, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1479
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1481
    new-instance v11, Ljxl/write/Formula;

    const/4 v12, 0x5

    const-string v13, "15+((a1+a2)/2.5)*17"

    invoke-direct {v11, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1482
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1483
    new-instance v11, Ljxl/write/Label;

    invoke-direct {v11, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1484
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1486
    new-instance v11, Ljxl/write/Formula;

    const/4 v12, 0x6

    const-string v13, "SUM(a1:a4)"

    invoke-direct {v11, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1487
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1488
    new-instance v11, Ljxl/write/Label;

    invoke-direct {v11, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1489
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1491
    new-instance v11, Ljxl/write/Formula;

    const/4 v12, 0x7

    const-string v13, "SUM(a1:a4)/4"

    invoke-direct {v11, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1492
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1493
    new-instance v11, Ljxl/write/Label;

    invoke-direct {v11, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1494
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1496
    new-instance v11, Ljxl/write/Formula;

    const/16 v12, 0x8

    const-string v13, "AVERAGE(A1:A4)"

    invoke-direct {v11, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1497
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1498
    new-instance v11, Ljxl/write/Label;

    const-string v13, "AVERAGE(a1:a4)"

    invoke-direct {v11, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1499
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1501
    new-instance v11, Ljxl/write/Formula;

    const/16 v12, 0x9

    const-string v13, "MIN(5,4,1,2,3)"

    invoke-direct {v11, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1502
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1503
    new-instance v11, Ljxl/write/Label;

    const-string v13, "MIN(5,4,1,2,3)"

    invoke-direct {v11, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1504
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1506
    new-instance v11, Ljxl/write/Formula;

    const/16 v13, 0xa

    const-string v14, "ROUND(3.14159265, 3)"

    invoke-direct {v11, v5, v13, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1507
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1508
    new-instance v11, Ljxl/write/Label;

    const-string v14, "ROUND(3.14159265, 3)"

    invoke-direct {v11, v6, v13, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1509
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1511
    new-instance v11, Ljxl/write/Formula;

    const/16 v13, 0xb

    const-string v14, "MAX(SUM(A1:A2), A1*A2, POWER(A1, 2))"

    invoke-direct {v11, v5, v13, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1512
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1513
    new-instance v11, Ljxl/write/Label;

    const-string v14, "MAX(SUM(A1:A2), A1*A2, POWER(A1, 2))"

    invoke-direct {v11, v6, v13, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1514
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1516
    new-instance v11, Ljxl/write/Formula;

    const/16 v13, 0xc

    const-string v14, "IF(A2>A1, \"A2 bigger\", \"A1 bigger\")"

    invoke-direct {v11, v5, v13, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1517
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1518
    new-instance v11, Ljxl/write/Label;

    const-string v14, "IF(A2>A1, \"A2 bigger\", \"A1 bigger\")"

    invoke-direct {v11, v6, v13, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1519
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1521
    new-instance v11, Ljxl/write/Formula;

    const/16 v13, 0xd

    const-string v14, "IF(A2<=A1, \"A2 smaller\", \"A1 smaller\")"

    invoke-direct {v11, v5, v13, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1522
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1523
    new-instance v11, Ljxl/write/Label;

    const-string v14, "IF(A2<=A1, \"A2 smaller\", \"A1 smaller\")"

    invoke-direct {v11, v6, v13, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1524
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1526
    new-instance v11, Ljxl/write/Formula;

    const/16 v13, 0xe

    const-string v14, "IF(A3<=10, \"<= 10\")"

    invoke-direct {v11, v5, v13, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1527
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1528
    new-instance v11, Ljxl/write/Label;

    const-string v14, "IF(A3<=10, \"<= 10\")"

    invoke-direct {v11, v6, v13, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1529
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1531
    new-instance v11, Ljxl/write/Formula;

    const/16 v13, 0xf

    const-string v14, "SUM(1,2,3,4,5)"

    invoke-direct {v11, v5, v13, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1532
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1533
    new-instance v11, Ljxl/write/Label;

    const-string v14, "SUM(1,2,3,4,5)"

    invoke-direct {v11, v6, v13, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1534
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1536
    new-instance v11, Ljxl/write/Formula;

    const/16 v13, 0x10

    const-string v14, "HYPERLINK(\"http://www.andykhan.com/jexcelapi\", \"JExcelApi Home Page\")"

    invoke-direct {v11, v5, v13, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1537
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1538
    new-instance v11, Ljxl/write/Label;

    const-string v14, "HYPERLINK(\"http://www.andykhan.com/jexcelapi\", \"JExcelApi Home Page\")"

    invoke-direct {v11, v6, v13, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1539
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1541
    new-instance v11, Ljxl/write/Formula;

    const/16 v13, 0x11

    const-string v14, "3*4+5"

    invoke-direct {v11, v5, v13, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1542
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1543
    new-instance v11, Ljxl/write/Label;

    const-string v14, "3*4+5"

    invoke-direct {v11, v6, v13, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1544
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1546
    new-instance v11, Ljxl/write/Formula;

    const/16 v13, 0x12

    const-string v14, "\"Plain text formula\""

    invoke-direct {v11, v5, v13, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1547
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1548
    new-instance v11, Ljxl/write/Label;

    const-string v14, "Plain text formula"

    invoke-direct {v11, v6, v13, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1549
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1551
    new-instance v11, Ljxl/write/Formula;

    const/16 v14, 0x13

    const-string v15, "SUM(a1,a2,-a3,a4)"

    invoke-direct {v11, v5, v14, v15}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1552
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1553
    new-instance v11, Ljxl/write/Label;

    const-string v15, "SUM(a1,a2,-a3,a4)"

    invoke-direct {v11, v6, v14, v15}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v10, v11

    .line 1554
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1556
    new-instance v11, Ljxl/write/Formula;

    const-string v14, "2*-(a1+a2)"

    invoke-direct {v11, v5, v3, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v11

    .line 1557
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1558
    new-instance v11, Ljxl/write/Label;

    const-string v14, "2*-(a1+a2)"

    invoke-direct {v11, v6, v3, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v11

    .line 1559
    .end local v10    # "l":Ljxl/write/Label;
    .local v3, "l":Ljxl/write/Label;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1561
    new-instance v10, Ljxl/write/Formula;

    const/16 v11, 0x15

    const-string v14, "\'Number Formats\'!B1/2"

    invoke-direct {v10, v5, v11, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v10

    .line 1562
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1563
    new-instance v10, Ljxl/write/Label;

    const-string v14, "\'Number Formats\'!B1/2"

    invoke-direct {v10, v6, v11, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v10

    .line 1564
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1566
    new-instance v10, Ljxl/write/Formula;

    const/16 v11, 0x16

    const-string v14, "IF(F22=0, 0, F21/F22)"

    invoke-direct {v10, v5, v11, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v10

    .line 1567
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1568
    new-instance v10, Ljxl/write/Label;

    const-string v14, "IF(F22=0, 0, F21/F22)"

    invoke-direct {v10, v6, v11, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v10

    .line 1569
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1571
    new-instance v10, Ljxl/write/Formula;

    const/16 v11, 0x17

    const-string v14, "RAND()"

    invoke-direct {v10, v5, v11, v14}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v9, v10

    .line 1572
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1573
    new-instance v10, Ljxl/write/Label;

    const-string v14, "RAND()"

    invoke-direct {v10, v6, v11, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v10

    .line 1574
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1576
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1577
    .local v10, "buf":Ljava/lang/StringBuffer;
    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1578
    move-object/from16 v11, p0

    iget-object v14, v11, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    invoke-virtual {v14, v2}, Ljxl/write/WritableWorkbook;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v2

    invoke-interface {v2}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1579
    const-string v2, "\'!"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1580
    invoke-static {v12, v13}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1581
    const-string v2, "*25"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1582
    new-instance v2, Ljxl/write/Formula;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x18

    invoke-direct {v2, v5, v13, v12}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1583
    .end local v9    # "f":Ljxl/write/Formula;
    .local v2, "f":Ljxl/write/Formula;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1584
    new-instance v9, Ljxl/write/Label;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v6, v13, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1585
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1587
    new-instance v9, Ljxl/write/WritableCellFormat;

    sget-object v12, Ljxl/write/DateFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v9, v12}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object v7, v9

    .line 1588
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x19

    const-string v13, "NOW()"

    invoke-direct {v9, v5, v12, v13, v7}, Ljxl/write/Formula;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v9

    .line 1589
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1590
    new-instance v9, Ljxl/write/Label;

    const-string v13, "NOW()"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1591
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1593
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x1a

    const-string v13, "$A$2+A3"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1594
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1595
    new-instance v9, Ljxl/write/Label;

    const-string v13, "$A$2+A3"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1596
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1598
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x1b

    const-string v13, "IF(COUNT(A1:A9,B1:B9)=0,\"\",COUNT(A1:A9,B1:B9))"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1599
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1600
    new-instance v9, Ljxl/write/Label;

    const-string v13, "IF(COUNT(A1:A9,B1:B9)=0,\"\",COUNT(A1:A9,B1:B9))"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1601
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1603
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x1c

    const-string v13, "SUM(A1,A2,A3,A4)"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1604
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1605
    new-instance v9, Ljxl/write/Label;

    const-string v13, "SUM(A1,A2,A3,A4)"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1606
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1608
    new-instance v9, Ljxl/write/Label;

    const/16 v12, 0x1d

    const-string v13, "a1"

    invoke-direct {v9, v4, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1609
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1610
    new-instance v9, Ljxl/write/Formula;

    const-string v13, "SUM(INDIRECT(ADDRESS(2,29)):A4)"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1611
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1612
    new-instance v9, Ljxl/write/Label;

    const-string v13, "SUM(INDIRECT(ADDRESS(2,29):A4)"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1613
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1615
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x1e

    const-string v13, "COUNTIF(A1:A4, \">=12\")"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1616
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1617
    new-instance v9, Ljxl/write/Label;

    const-string v13, "COUNTIF(A1:A4, \">=12\")"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1618
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1620
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x1f

    const-string v13, "MAX($A$1:$A$4)"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1621
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1622
    new-instance v9, Ljxl/write/Label;

    const-string v13, "MAX($A$1:$A$4)"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1623
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1625
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x20

    const-string v13, "OR(A1,TRUE)"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1626
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1627
    new-instance v9, Ljxl/write/Label;

    const-string v13, "OR(A1,TRUE)"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1628
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1630
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x21

    const-string v13, "ROWS(A1:C14)"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1631
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1632
    new-instance v9, Ljxl/write/Label;

    const-string v13, "ROWS(A1:C14)"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1633
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1635
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x22

    const-string v13, "COUNTBLANK(A1:C14)"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1636
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1637
    new-instance v9, Ljxl/write/Label;

    const-string v13, "COUNTBLANK(A1:C14)"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1638
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1640
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x23

    const-string v13, "IF(((F1=\"Not Found\")*(F2=\"Not Found\")*(F3=\"\")*(F4=\"\")*(F5=\"\")),1,0)"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1641
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1642
    new-instance v9, Ljxl/write/Label;

    const-string v13, "IF(((F1=\"Not Found\")*(F2=\"Not Found\")*(F3=\"\")*(F4=\"\")*(F5=\"\")),1,0)"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1643
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1645
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x24

    const-string v13, "HYPERLINK(\"http://www.amazon.co.uk/exec/obidos/ASIN/0571058086qid=1099836249/sr=1-3/ref=sr_1_11_3/202-6017285-1620664\",  \"Long hyperlink\")"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1647
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1649
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x25

    const-string v13, "1234567+2699"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1650
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1651
    new-instance v9, Ljxl/write/Label;

    const-string v13, "1234567+2699"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1652
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1654
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x26

    const-string v13, "IF(ISERROR(G25/G29),0,-1)"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1655
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1656
    new-instance v9, Ljxl/write/Label;

    const-string v13, "IF(ISERROR(G25/G29),0,-1)"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1657
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1659
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x27

    const-string v13, "SEARCH(\"C\",D40)"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1660
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1661
    new-instance v9, Ljxl/write/Label;

    const-string v13, "SEARCH(\"C\",D40)"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1662
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1664
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x28

    const-string v13, "#REF!"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1665
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1666
    new-instance v9, Ljxl/write/Label;

    const-string v13, "#REF!"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1667
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1669
    new-instance v9, Ljxl/write/Number;

    const/16 v12, 0x29

    const-wide v13, 0x4053c00000000000L    # 79.0

    invoke-direct {v9, v4, v12, v13, v14}, Ljxl/write/Number;-><init>(IID)V

    move-object v1, v9

    .line 1670
    invoke-interface {v0, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1671
    new-instance v9, Ljxl/write/Formula;

    const-string v13, "--B42"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1672
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1673
    new-instance v9, Ljxl/write/Label;

    const-string v13, "--B42"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1674
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1676
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x2a

    const-string v13, "CHOOSE(3,A1,A2,A3,A4"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1677
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1678
    new-instance v9, Ljxl/write/Label;

    const-string v13, "CHOOSE(3,A1,A2,A3,A4"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1679
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1681
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x2b

    const-string v13, "A4-A3-A2"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1682
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1683
    new-instance v9, Ljxl/write/Label;

    const-string v13, "A4-A3-A2"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1684
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1686
    new-instance v9, Ljxl/write/Formula;

    const/16 v12, 0x2c

    const-string v13, "F29+F34+F41+F48+F55+F62+F69+F76+F83+F90+F97+F104+F111+F118+F125+F132+F139+F146+F153+F160+F167+F174+F181+F188+F195+F202+F209+F216+F223+F230+F237+F244+F251+F258+F265+F272+F279+F286+F293+F300+F305+F308"

    invoke-direct {v9, v5, v12, v13}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v9

    .line 1687
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1688
    new-instance v9, Ljxl/write/Label;

    const-string v13, "F29+F34+F41+F48+F55+F62+F69+F76+F83+F90+F97+F104+F111+F118+F125+F132+F139+F146+F153+F160+F167+F174+F181+F188+F195+F202+F209+F216+F223+F230+F237+F244+F251+F258+F265+F272+F279+F286+F293+F300+F305+F308"

    invoke-direct {v9, v6, v12, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v9

    .line 1689
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1691
    new-instance v9, Ljxl/write/Number;

    const/16 v12, 0x2d

    const-wide/high16 v13, 0x4031000000000000L    # 17.0

    invoke-direct {v9, v4, v12, v13, v14}, Ljxl/write/Number;-><init>(IID)V

    move-object v1, v9

    .line 1692
    invoke-interface {v0, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1693
    new-instance v4, Ljxl/write/Formula;

    const-string v9, "formulavalue+5"

    invoke-direct {v4, v5, v12, v9}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v2, v4

    .line 1694
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1695
    new-instance v4, Ljxl/write/Label;

    const-string v5, "formulavalue+5"

    invoke-direct {v4, v6, v12, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v4

    .line 1696
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1715
    return-void
.end method

.method private writeImageSheet(Ljxl/write/WritableSheet;)V
    .locals 13
    .param p1, "ws"    # Ljxl/write/WritableSheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 1722
    new-instance v0, Ljxl/write/Label;

    const/4 v1, 0x0

    const-string v2, "Weald & Downland Open Air Museum, Sussex"

    invoke-direct {v0, v1, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1723
    .local v0, "l":Ljxl/write/Label;
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1725
    new-instance v12, Ljxl/write/WritableImage;

    new-instance v11, Ljava/io/File;

    const-string v2, "resources/wealdanddownland.png"

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    const-wide/high16 v9, 0x401c000000000000L    # 7.0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Ljxl/write/WritableImage;-><init>(DDDDLjava/io/File;)V

    .line 1727
    .local v2, "wi":Ljxl/write/WritableImage;
    invoke-interface {p1, v2}, Ljxl/write/WritableSheet;->addImage(Ljxl/write/WritableImage;)V

    .line 1729
    new-instance v3, Ljxl/write/Label;

    const/16 v4, 0xc

    const-string v5, "Merchant Adventurers Hall, York"

    invoke-direct {v3, v1, v4, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v3

    .line 1730
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1732
    new-instance v1, Ljxl/write/WritableImage;

    new-instance v12, Ljava/io/File;

    const-string v3, "resources/merchantadventurers.png"

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Ljxl/write/WritableImage;-><init>(DDDDLjava/io/File;)V

    .line 1734
    .end local v2    # "wi":Ljxl/write/WritableImage;
    .local v1, "wi":Ljxl/write/WritableImage;
    invoke-interface {p1, v1}, Ljxl/write/WritableSheet;->addImage(Ljxl/write/WritableImage;)V

    .line 1741
    return-void
.end method

.method private writeLabelFormatSheet(Ljxl/write/WritableSheet;)V
    .locals 80
    .param p1, "s1"    # Ljxl/write/WritableSheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 742
    move-object/from16 v12, p1

    const/4 v13, 0x0

    const/16 v0, 0x3c

    invoke-interface {v12, v13, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 744
    new-instance v0, Ljxl/write/Label;

    const-string v1, "Arial Fonts"

    invoke-direct {v0, v13, v13, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 745
    .local v0, "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 747
    new-instance v1, Ljxl/write/Label;

    const/4 v14, 0x1

    const-string v2, "10pt"

    invoke-direct {v1, v14, v13, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 748
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 750
    new-instance v1, Ljxl/write/Label;

    const/4 v2, 0x2

    const-string v3, "Normal"

    invoke-direct {v1, v2, v13, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 751
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 753
    new-instance v1, Ljxl/write/Label;

    const/4 v15, 0x3

    const-string v4, "12pt"

    invoke-direct {v1, v15, v13, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 754
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 756
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v4, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    const/16 v11, 0xc

    invoke-direct {v1, v4, v11}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    move-object v10, v1

    .line 757
    .local v10, "arial12pt":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v10}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v9, v1

    .line 758
    .local v9, "arial12format":Ljxl/write/WritableCellFormat;
    invoke-virtual {v9, v14}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 759
    new-instance v1, Ljxl/write/Label;

    const/4 v8, 0x4

    invoke-direct {v1, v8, v13, v3, v9}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 760
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 762
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v4, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v5, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    const/16 v7, 0xa

    invoke-direct {v1, v4, v7, v5}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    move-object v6, v1

    .line 764
    .local v6, "arial10ptBold":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v6}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v5, v1

    .line 766
    .local v5, "arial10BoldFormat":Ljxl/write/WritableCellFormat;
    new-instance v1, Ljxl/write/Label;

    const-string v4, "BOLD"

    invoke-direct {v1, v2, v2, v4, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 767
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 769
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v15, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v13, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v1, v15, v11, v13}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    move-object v13, v1

    .line 771
    .local v13, "arial12ptBold":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v13}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v15, v1

    .line 773
    .local v15, "arial12BoldFormat":Ljxl/write/WritableCellFormat;
    new-instance v1, Ljxl/write/Label;

    invoke-direct {v1, v8, v2, v4, v15}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 774
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 776
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v11, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v2, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v1, v11, v7, v2, v14}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;Z)V

    move-object v11, v1

    .line 778
    .local v11, "arial10ptItalic":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v2, v1

    .line 780
    .local v2, "arial10ItalicFormat":Ljxl/write/WritableCellFormat;
    new-instance v1, Ljxl/write/Label;

    const-string v7, "Italic"

    const/4 v14, 0x2

    invoke-direct {v1, v14, v8, v7, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 781
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 783
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v7, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v14, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    move-object/from16 v22, v2

    const/4 v2, 0x1

    const/16 v8, 0xc

    .end local v2    # "arial10ItalicFormat":Ljxl/write/WritableCellFormat;
    .local v22, "arial10ItalicFormat":Ljxl/write/WritableCellFormat;
    invoke-direct {v1, v7, v8, v14, v2}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;Z)V

    move-object v14, v1

    .line 785
    .local v14, "arial12ptItalic":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v14}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v8, v1

    .line 787
    .local v8, "arial12ptItalicFormat":Ljxl/write/WritableCellFormat;
    new-instance v1, Ljxl/write/Label;

    const-string v2, "Italic"

    const/4 v7, 0x4

    invoke-direct {v1, v7, v7, v2, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 788
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 790
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    const/16 v7, 0xa

    invoke-direct {v1, v2, v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    move-object v7, v1

    .line 791
    .local v7, "times10pt":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v7}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v2, v1

    .line 792
    .local v2, "times10format":Ljxl/write/WritableCellFormat;
    new-instance v1, Ljxl/write/Label;

    move-object/from16 v23, v11

    .end local v11    # "arial10ptItalic":Ljxl/write/WritableFont;
    .local v23, "arial10ptItalic":Ljxl/write/WritableFont;
    const/4 v11, 0x7

    move-object/from16 v24, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .local v24, "lr":Ljxl/write/Label;
    const-string v0, "Times Fonts"

    move-object/from16 v25, v5

    const/4 v5, 0x0

    .end local v5    # "arial10BoldFormat":Ljxl/write/WritableCellFormat;
    .local v25, "arial10BoldFormat":Ljxl/write/WritableCellFormat;
    invoke-direct {v1, v5, v11, v0, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 793
    .end local v24    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 795
    new-instance v1, Ljxl/write/Label;

    const-string v5, "10pt"

    move-object/from16 v24, v6

    const/4 v6, 0x1

    .end local v6    # "arial10ptBold":Ljxl/write/WritableFont;
    .local v24, "arial10ptBold":Ljxl/write/WritableFont;
    invoke-direct {v1, v6, v11, v5, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 796
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 798
    new-instance v1, Ljxl/write/Label;

    const/4 v5, 0x2

    invoke-direct {v1, v5, v11, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 799
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 801
    new-instance v1, Ljxl/write/Label;

    const-string v5, "12pt"

    const/4 v6, 0x3

    invoke-direct {v1, v6, v11, v5, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 802
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 804
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v5, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    const/16 v6, 0xc

    invoke-direct {v1, v5, v6}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    move-object v6, v1

    .line 805
    .local v6, "times12pt":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v6}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v5, v1

    .line 806
    .local v5, "times12format":Ljxl/write/WritableCellFormat;
    new-instance v1, Ljxl/write/Label;

    move-object/from16 v26, v2

    const/4 v2, 0x4

    .end local v2    # "times10format":Ljxl/write/WritableCellFormat;
    .local v26, "times10format":Ljxl/write/WritableCellFormat;
    invoke-direct {v1, v2, v11, v3, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 807
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 809
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    sget-object v3, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    move-object/from16 v27, v5

    const/16 v5, 0xa

    .end local v5    # "times12format":Ljxl/write/WritableCellFormat;
    .local v27, "times12format":Ljxl/write/WritableCellFormat;
    invoke-direct {v1, v2, v5, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    move-object v3, v1

    .line 811
    .local v3, "times10ptBold":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v2, v1

    .line 813
    .local v2, "times10BoldFormat":Ljxl/write/WritableCellFormat;
    new-instance v1, Ljxl/write/Label;

    move-object/from16 v19, v10

    .end local v10    # "arial12pt":Ljxl/write/WritableFont;
    .local v19, "arial12pt":Ljxl/write/WritableFont;
    const/16 v10, 0x9

    const/4 v5, 0x2

    invoke-direct {v1, v5, v10, v4, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 814
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 816
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v5, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    sget-object v11, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    const/16 v10, 0xc

    invoke-direct {v1, v5, v10, v11}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    move-object v11, v1

    .line 818
    .local v11, "times12ptBold":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v10, v1

    .line 820
    .local v10, "times12BoldFormat":Ljxl/write/WritableCellFormat;
    new-instance v1, Ljxl/write/Label;

    move-object/from16 v31, v2

    const/4 v2, 0x4

    const/16 v5, 0x9

    .end local v2    # "times10BoldFormat":Ljxl/write/WritableCellFormat;
    .local v31, "times10BoldFormat":Ljxl/write/WritableCellFormat;
    invoke-direct {v1, v2, v5, v4, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 821
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 824
    const/4 v5, 0x6

    const/16 v1, 0x16

    invoke-interface {v12, v5, v1}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 825
    const/4 v2, 0x7

    invoke-interface {v12, v2, v1}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 826
    const/16 v4, 0x8

    invoke-interface {v12, v4, v1}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 827
    const/16 v2, 0x9

    invoke-interface {v12, v2, v1}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 829
    new-instance v2, Ljxl/write/Label;

    const/16 v1, 0xb

    const-string v4, "Underlining"

    const/4 v5, 0x0

    invoke-direct {v2, v5, v1, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v2

    .line 830
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 832
    new-instance v2, Ljxl/write/WritableFont;

    sget-object v36, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v38, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v40, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    const/16 v37, 0xa

    const/16 v39, 0x0

    move-object/from16 v35, v2

    invoke-direct/range {v35 .. v40}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    move-object v5, v2

    .line 838
    .local v5, "arial10ptUnderline":Ljxl/write/WritableFont;
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v4, v2

    .line 840
    .local v4, "arialUnderline":Ljxl/write/WritableCellFormat;
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v35, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .local v35, "lr":Ljxl/write/Label;
    const-string v0, "Underline"

    move-object/from16 v36, v3

    const/4 v3, 0x6

    .end local v3    # "times10ptBold":Ljxl/write/WritableFont;
    .local v36, "times10ptBold":Ljxl/write/WritableFont;
    invoke-direct {v2, v3, v1, v0, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v2

    .line 841
    .end local v35    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 843
    new-instance v2, Ljxl/write/WritableFont;

    sget-object v38, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v40, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v42, Ljxl/format/UnderlineStyle;->DOUBLE:Ljxl/format/UnderlineStyle;

    const/16 v39, 0xa

    const/16 v41, 0x0

    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v42}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    move-object v3, v2

    .line 849
    .local v3, "arial10ptDoubleUnderline":Ljxl/write/WritableFont;
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 851
    .local v2, "arialDoubleUnderline":Ljxl/write/WritableCellFormat;
    move-object/from16 v35, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .restart local v35    # "lr":Ljxl/write/Label;
    new-instance v0, Ljxl/write/Label;

    move-object/from16 v37, v3

    .end local v3    # "arial10ptDoubleUnderline":Ljxl/write/WritableFont;
    .local v37, "arial10ptDoubleUnderline":Ljxl/write/WritableFont;
    const-string v3, "Double Underline"

    move-object/from16 v38, v10

    const/4 v10, 0x7

    .end local v10    # "times12BoldFormat":Ljxl/write/WritableCellFormat;
    .local v38, "times12BoldFormat":Ljxl/write/WritableCellFormat;
    invoke-direct {v0, v10, v1, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 852
    .end local v35    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 854
    new-instance v3, Ljxl/write/WritableFont;

    sget-object v40, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v42, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v44, Ljxl/format/UnderlineStyle;->SINGLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

    const/16 v41, 0xa

    const/16 v43, 0x0

    move-object/from16 v39, v3

    invoke-direct/range {v39 .. v44}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 860
    .local v3, "arial10ptSingleAcc":Ljxl/write/WritableFont;
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 862
    .local v10, "arialSingleAcc":Ljxl/write/WritableCellFormat;
    move-object/from16 v35, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .restart local v35    # "lr":Ljxl/write/Label;
    new-instance v0, Ljxl/write/Label;

    move-object/from16 v39, v2

    .end local v2    # "arialDoubleUnderline":Ljxl/write/WritableCellFormat;
    .local v39, "arialDoubleUnderline":Ljxl/write/WritableCellFormat;
    const-string v2, "Single Accounting Underline"

    move-object/from16 v40, v3

    const/16 v3, 0x8

    .end local v3    # "arial10ptSingleAcc":Ljxl/write/WritableFont;
    .local v40, "arial10ptSingleAcc":Ljxl/write/WritableFont;
    invoke-direct {v0, v3, v1, v2, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 863
    .end local v35    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 865
    new-instance v2, Ljxl/write/WritableFont;

    sget-object v42, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v44, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v46, Ljxl/format/UnderlineStyle;->DOUBLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

    const/16 v43, 0xa

    const/16 v45, 0x0

    move-object/from16 v41, v2

    invoke-direct/range {v41 .. v46}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 871
    .local v2, "arial10ptDoubleAcc":Ljxl/write/WritableFont;
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 873
    .local v3, "arialDoubleAcc":Ljxl/write/WritableCellFormat;
    move-object/from16 v35, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .restart local v35    # "lr":Ljxl/write/Label;
    new-instance v0, Ljxl/write/Label;

    .end local v2    # "arial10ptDoubleAcc":Ljxl/write/WritableFont;
    .local v41, "arial10ptDoubleAcc":Ljxl/write/WritableFont;
    const-string v2, "Double Accounting Underline"

    move-object/from16 v42, v8

    const/16 v8, 0x9

    .end local v8    # "arial12ptItalicFormat":Ljxl/write/WritableCellFormat;
    .local v42, "arial12ptItalicFormat":Ljxl/write/WritableCellFormat;
    invoke-direct {v0, v8, v1, v2, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 874
    .end local v35    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 876
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v44, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    sget-object v46, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v48, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    const/16 v45, 0xe

    const/16 v47, 0x0

    move-object/from16 v43, v1

    invoke-direct/range {v43 .. v48}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    move-object v2, v1

    .line 882
    .local v2, "times14ptBoldUnderline":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 884
    .local v1, "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    new-instance v8, Ljxl/write/Label;

    move-object/from16 v35, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .restart local v35    # "lr":Ljxl/write/Label;
    const-string v0, "Times 14 Bold Underline"

    move-object/from16 v43, v2

    move-object/from16 v17, v10

    const/4 v2, 0x6

    const/16 v10, 0xc

    .end local v2    # "times14ptBoldUnderline":Ljxl/write/WritableFont;
    .end local v10    # "arialSingleAcc":Ljxl/write/WritableCellFormat;
    .local v17, "arialSingleAcc":Ljxl/write/WritableCellFormat;
    .local v43, "times14ptBoldUnderline":Ljxl/write/WritableFont;
    invoke-direct {v8, v2, v10, v0, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v8

    .line 885
    .end local v35    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 887
    new-instance v2, Ljxl/write/WritableFont;

    sget-object v45, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v47, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v49, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    const/16 v46, 0x12

    const/16 v48, 0x1

    move-object/from16 v44, v2

    invoke-direct/range {v44 .. v49}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    move-object v8, v2

    .line 893
    .local v8, "arial18ptBoldItalicUnderline":Ljxl/write/WritableFont;
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 895
    .local v2, "arialBoldItalicUnderline":Ljxl/write/WritableCellFormat;
    new-instance v10, Ljxl/write/Label;

    move-object/from16 v44, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .local v44, "lr":Ljxl/write/Label;
    const/16 v0, 0xd

    move-object/from16 v45, v1

    .end local v1    # "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    .local v45, "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    const-string v1, "Arial 18 Bold Italic Underline"

    move-object/from16 v46, v4

    const/4 v4, 0x6

    .end local v4    # "arialUnderline":Ljxl/write/WritableCellFormat;
    .local v46, "arialUnderline":Ljxl/write/WritableCellFormat;
    invoke-direct {v10, v4, v0, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v10

    .line 897
    .end local v44    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 899
    new-instance v1, Ljxl/write/Label;

    const/16 v10, 0xf

    const-string v4, "Script styles"

    move-object/from16 v44, v2

    const/4 v2, 0x0

    .end local v2    # "arialBoldItalicUnderline":Ljxl/write/WritableCellFormat;
    .local v44, "arialBoldItalicUnderline":Ljxl/write/WritableCellFormat;
    invoke-direct {v1, v2, v10, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 900
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 902
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v48, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v50, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v52, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v53, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v54, Ljxl/format/ScriptStyle;->SUPERSCRIPT:Ljxl/format/ScriptStyle;

    const/16 v49, 0xa

    const/16 v51, 0x0

    move-object/from16 v47, v1

    invoke-direct/range {v47 .. v54}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    move-object v4, v1

    .line 910
    .local v4, "superscript":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v2, v1

    .line 912
    .local v2, "superscriptFormat":Ljxl/write/WritableCellFormat;
    new-instance v1, Ljxl/write/Label;

    move-object/from16 v47, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .local v47, "lr":Ljxl/write/Label;
    const-string v0, "superscript"

    move-object/from16 v48, v3

    const/4 v3, 0x1

    .end local v3    # "arialDoubleAcc":Ljxl/write/WritableCellFormat;
    .local v48, "arialDoubleAcc":Ljxl/write/WritableCellFormat;
    invoke-direct {v1, v3, v10, v0, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 913
    .end local v47    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 915
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v50, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v52, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v54, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v55, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v56, Ljxl/format/ScriptStyle;->SUBSCRIPT:Ljxl/format/ScriptStyle;

    const/16 v51, 0xa

    const/16 v53, 0x0

    move-object/from16 v49, v1

    invoke-direct/range {v49 .. v56}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    move-object v3, v1

    .line 923
    .local v3, "subscript":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 925
    .local v1, "subscriptFormat":Ljxl/write/WritableCellFormat;
    move-object/from16 v47, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .restart local v47    # "lr":Ljxl/write/Label;
    new-instance v0, Ljxl/write/Label;

    move-object/from16 v49, v2

    .end local v2    # "superscriptFormat":Ljxl/write/WritableCellFormat;
    .local v49, "superscriptFormat":Ljxl/write/WritableCellFormat;
    const-string v2, "subscript"

    move-object/from16 v50, v3

    const/4 v3, 0x2

    .end local v3    # "subscript":Ljxl/write/WritableFont;
    .local v50, "subscript":Ljxl/write/WritableFont;
    invoke-direct {v0, v3, v10, v2, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 926
    .end local v47    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 928
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x11

    const-string v10, "Colours"

    move-object/from16 v47, v1

    const/4 v1, 0x0

    .end local v1    # "subscriptFormat":Ljxl/write/WritableCellFormat;
    .local v47, "subscriptFormat":Ljxl/write/WritableCellFormat;
    invoke-direct {v2, v1, v3, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v2

    .line 929
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 931
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v52, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v54, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v56, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v57, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    const/16 v53, 0xa

    const/16 v55, 0x0

    move-object/from16 v51, v1

    invoke-direct/range {v51 .. v57}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V

    move-object v10, v1

    .line 937
    .local v10, "red":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v10}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v3, v1

    .line 938
    .local v3, "redFormat":Ljxl/write/WritableCellFormat;
    new-instance v1, Ljxl/write/Label;

    const/16 v2, 0x11

    move-object/from16 v51, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .local v51, "lr":Ljxl/write/Label;
    const-string v0, "Red"

    move-object/from16 v52, v4

    const/4 v4, 0x2

    .end local v4    # "superscript":Ljxl/write/WritableFont;
    .local v52, "superscript":Ljxl/write/WritableFont;
    invoke-direct {v1, v4, v2, v0, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 939
    .end local v51    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 941
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v54, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v56, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v58, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v59, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    const/16 v55, 0xa

    const/16 v57, 0x0

    move-object/from16 v53, v1

    invoke-direct/range {v53 .. v59}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V

    move-object v4, v1

    .line 947
    .local v4, "blue":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v2, v1

    .line 948
    .local v2, "blueFormat":Ljxl/write/WritableCellFormat;
    new-instance v1, Ljxl/write/Label;

    move-object/from16 v51, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .restart local v51    # "lr":Ljxl/write/Label;
    const/16 v0, 0x12

    move-object/from16 v53, v3

    .end local v3    # "redFormat":Ljxl/write/WritableCellFormat;
    .local v53, "redFormat":Ljxl/write/WritableCellFormat;
    const-string v3, "Blue"

    move-object/from16 v54, v4

    const/4 v4, 0x2

    .end local v4    # "blue":Ljxl/write/WritableFont;
    .local v54, "blue":Ljxl/write/WritableFont;
    invoke-direct {v1, v4, v0, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 949
    .end local v51    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 951
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {v1, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;)V

    move-object v4, v1

    .line 952
    .local v4, "lime":Ljxl/write/WritableFont;
    sget-object v1, Ljxl/format/Colour;->LIME:Ljxl/format/Colour;

    invoke-virtual {v4, v1}, Ljxl/write/WritableFont;->setColour(Ljxl/format/Colour;)V

    .line 953
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v3, v1

    .line 954
    .local v3, "limeFormat":Ljxl/write/WritableCellFormat;
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 955
    new-instance v1, Ljxl/write/Label;

    move-object/from16 v51, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .restart local v51    # "lr":Ljxl/write/Label;
    const/16 v0, 0x12

    move-object/from16 v55, v2

    .end local v2    # "blueFormat":Ljxl/write/WritableCellFormat;
    .local v55, "blueFormat":Ljxl/write/WritableCellFormat;
    const-string v2, "Modified palette - was lime, now red"

    move-object/from16 v56, v4

    const/4 v4, 0x4

    .end local v4    # "lime":Ljxl/write/WritableFont;
    .local v56, "lime":Ljxl/write/WritableFont;
    invoke-direct {v1, v4, v0, v2, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 956
    .end local v51    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 958
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1}, Ljxl/write/WritableCellFormat;-><init>()V

    move-object v4, v1

    .line 959
    .local v4, "greyBackground":Ljxl/write/WritableCellFormat;
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 960
    sget-object v1, Ljxl/format/Colour;->GRAY_50:Ljxl/format/Colour;

    invoke-virtual {v4, v1}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 961
    new-instance v1, Ljxl/write/Label;

    const/16 v2, 0x13

    move-object/from16 v51, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .restart local v51    # "lr":Ljxl/write/Label;
    const-string v0, "Grey background"

    move-object/from16 v57, v3

    const/4 v3, 0x2

    .end local v3    # "limeFormat":Ljxl/write/WritableCellFormat;
    .local v57, "limeFormat":Ljxl/write/WritableCellFormat;
    invoke-direct {v1, v3, v2, v0, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 962
    .end local v51    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 964
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v59, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v61, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v63, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v64, Ljxl/format/Colour;->YELLOW:Ljxl/format/Colour;

    const/16 v60, 0xa

    const/16 v62, 0x0

    move-object/from16 v58, v1

    invoke-direct/range {v58 .. v64}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V

    move-object v3, v1

    .line 970
    .local v3, "yellow":Ljxl/write/WritableFont;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v2, v1

    .line 971
    .local v2, "yellowOnBlue":Ljxl/write/WritableCellFormat;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 972
    sget-object v1, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    invoke-virtual {v2, v1}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 973
    new-instance v1, Ljxl/write/Label;

    move-object/from16 v51, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .restart local v51    # "lr":Ljxl/write/Label;
    const/16 v0, 0x14

    move-object/from16 v58, v4

    .end local v4    # "greyBackground":Ljxl/write/WritableCellFormat;
    .local v58, "greyBackground":Ljxl/write/WritableCellFormat;
    const-string v4, "Blue background, yellow foreground"

    move-object/from16 v59, v5

    const/4 v5, 0x2

    .end local v5    # "arial10ptUnderline":Ljxl/write/WritableFont;
    .local v59, "arial10ptUnderline":Ljxl/write/WritableFont;
    invoke-direct {v1, v5, v0, v4, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 974
    .end local v51    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 976
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    move-object v5, v1

    .line 977
    .local v5, "yellowOnBlack":Ljxl/write/WritableCellFormat;
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 978
    sget-object v1, Ljxl/format/Colour;->PALETTE_BLACK:Ljxl/format/Colour;

    invoke-virtual {v5, v1}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 979
    new-instance v1, Ljxl/write/Label;

    const/16 v4, 0x14

    move-object/from16 v51, v0

    .end local v0    # "lr":Ljxl/write/Label;
    .restart local v51    # "lr":Ljxl/write/Label;
    const-string v0, "Black background, yellow foreground"

    move-object/from16 v60, v2

    const/4 v2, 0x3

    .end local v2    # "yellowOnBlue":Ljxl/write/WritableCellFormat;
    .local v60, "yellowOnBlue":Ljxl/write/WritableCellFormat;
    invoke-direct {v1, v2, v4, v0, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 981
    .end local v51    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 983
    new-instance v1, Ljxl/write/Label;

    const-string v2, "Null label"

    move-object/from16 v32, v3

    const/4 v3, 0x0

    const/16 v4, 0x16

    .end local v3    # "yellow":Ljxl/write/WritableFont;
    .local v32, "yellow":Ljxl/write/WritableFont;
    invoke-direct {v1, v3, v4, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 984
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 986
    new-instance v1, Ljxl/write/Label;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v3, v4, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 987
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 989
    new-instance v1, Ljxl/write/Label;

    const/16 v2, 0x18

    const-string v3, "A very long label, more than 255 characters\nRejoice O shores\nSing O bells\nBut I with mournful tread\nWalk the deck my captain lies\nFallen cold and dead\nSummer surprised, coming over the Starnbergersee\nWith a shower of rain. We stopped in the Colonnade\nA very long label, more than 255 characters\nRejoice O shores\nSing O bells\nBut I with mournful tread\nWalk the deck my captain lies\nFallen cold and dead\nSummer surprised, coming over the Starnbergersee\nWith a shower of rain. We stopped in the Colonnade\nA very long label, more than 255 characters\nRejoice O shores\nSing O bells\nBut I with mournful tread\nWalk the deck my captain lies\nFallen cold and dead\nSummer surprised, coming over the Starnbergersee\nWith a shower of rain. We stopped in the Colonnade\nA very long label, more than 255 characters\nRejoice O shores\nSing O bells\nBut I with mournful tread\nWalk the deck my captain lies\nFallen cold and dead\nSummer surprised, coming over the Starnbergersee\nWith a shower of rain. We stopped in the Colonnade\nAnd sat and drank coffee an talked for an hour\n"

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3, v9}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 1022
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1024
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1}, Ljxl/write/WritableCellFormat;-><init>()V

    move-object v4, v1

    .line 1025
    .local v4, "vertical":Ljxl/write/WritableCellFormat;
    sget-object v1, Ljxl/format/Orientation;->VERTICAL:Ljxl/format/Orientation;

    invoke-virtual {v4, v1}, Ljxl/write/WritableCellFormat;->setOrientation(Ljxl/format/Orientation;)V

    .line 1026
    new-instance v1, Ljxl/write/Label;

    const/16 v2, 0x1a

    const-string v3, "Vertical orientation"

    move-object/from16 v51, v5

    const/4 v5, 0x0

    .end local v5    # "yellowOnBlack":Ljxl/write/WritableCellFormat;
    .local v51, "yellowOnBlack":Ljxl/write/WritableCellFormat;
    invoke-direct {v1, v5, v2, v3, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 1027
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1030
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1}, Ljxl/write/WritableCellFormat;-><init>()V

    move-object v5, v1

    .line 1031
    .local v5, "plus_90":Ljxl/write/WritableCellFormat;
    sget-object v1, Ljxl/format/Orientation;->PLUS_90:Ljxl/format/Orientation;

    invoke-virtual {v5, v1}, Ljxl/write/WritableCellFormat;->setOrientation(Ljxl/format/Orientation;)V

    .line 1032
    new-instance v1, Ljxl/write/Label;

    const-string v3, "Plus 90"

    move-object/from16 v61, v4

    const/4 v4, 0x1

    .end local v4    # "vertical":Ljxl/write/WritableCellFormat;
    .local v61, "vertical":Ljxl/write/WritableCellFormat;
    invoke-direct {v1, v4, v2, v3, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 1033
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1036
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1}, Ljxl/write/WritableCellFormat;-><init>()V

    move-object v4, v1

    .line 1037
    .local v4, "minus_90":Ljxl/write/WritableCellFormat;
    sget-object v1, Ljxl/format/Orientation;->MINUS_90:Ljxl/format/Orientation;

    invoke-virtual {v4, v1}, Ljxl/write/WritableCellFormat;->setOrientation(Ljxl/format/Orientation;)V

    .line 1038
    new-instance v1, Ljxl/write/Label;

    const-string v3, "Minus 90"

    move-object/from16 v62, v0

    const/4 v0, 0x2

    .end local v0    # "lr":Ljxl/write/Label;
    .local v62, "lr":Ljxl/write/Label;
    invoke-direct {v1, v0, v2, v3, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v1

    .line 1039
    .end local v62    # "lr":Ljxl/write/Label;
    .restart local v0    # "lr":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1041
    new-instance v1, Ljxl/write/Label;

    const/16 v2, 0x1c

    const-string v3, "Modified row height"

    move-object/from16 v62, v4

    const/4 v4, 0x0

    .end local v4    # "minus_90":Ljxl/write/WritableCellFormat;
    .local v62, "minus_90":Ljxl/write/WritableCellFormat;
    invoke-direct {v1, v4, v2, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 1042
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1043
    const/16 v1, 0x1c

    const/16 v2, 0x1e0

    invoke-interface {v12, v1, v2}, Ljxl/write/WritableSheet;->setRowView(II)V

    .line 1045
    new-instance v1, Ljxl/write/Label;

    const/16 v2, 0x1d

    const-string v3, "Collapsed row"

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v4, v1

    .line 1046
    .end local v0    # "lr":Ljxl/write/Label;
    .local v4, "lr":Ljxl/write/Label;
    invoke-interface {v12, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1047
    const/16 v0, 0x1d

    const/4 v1, 0x1

    invoke-interface {v12, v0, v1}, Ljxl/write/WritableSheet;->setRowView(IZ)V

    .line 1052
    :try_start_0
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x1e

    const-string v2, "Hyperlink to home page"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1053
    .local v0, "l":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1055
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://www.andykhan.com/jexcelapi"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v68, v1

    .line 1056
    .local v68, "url":Ljava/net/URL;
    new-instance v1, Ljxl/write/WritableHyperlink;

    const/16 v64, 0x0

    const/16 v65, 0x1e

    const/16 v66, 0x8

    const/16 v67, 0x1f

    move-object/from16 v63, v1

    invoke-direct/range {v63 .. v68}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/net/URL;)V

    .line 1057
    .local v1, "wh":Ljxl/write/WritableHyperlink;
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1060
    new-instance v2, Ljxl/write/WritableHyperlink;

    const/16 v70, 0x7

    const/16 v71, 0x1e

    const/16 v72, 0x9

    const/16 v73, 0x1f

    move-object/from16 v69, v2

    move-object/from16 v74, v68

    invoke-direct/range {v69 .. v74}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/net/URL;)V

    move-object v3, v2

    .line 1061
    .local v3, "wh2":Ljxl/write/WritableHyperlink;
    invoke-interface {v12, v3}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1063
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v63, v0

    .end local v0    # "l":Ljxl/write/Label;
    .local v63, "l":Ljxl/write/Label;
    const-string v0, "File hyperlink to documentation"
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v18, v1

    move-object/from16 v64, v5

    const/4 v1, 0x2

    const/4 v5, 0x4

    .end local v1    # "wh":Ljxl/write/WritableHyperlink;
    .end local v5    # "plus_90":Ljxl/write/WritableCellFormat;
    .local v18, "wh":Ljxl/write/WritableHyperlink;
    .local v64, "plus_90":Ljxl/write/WritableCellFormat;
    :try_start_1
    invoke-direct {v2, v5, v1, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v2

    .line 1064
    .end local v63    # "l":Ljxl/write/Label;
    .restart local v0    # "l":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1066
    new-instance v1, Ljava/io/File;

    const-string v2, "../jexcelapi/docs/index.html"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v74, v1

    .line 1067
    .local v74, "file":Ljava/io/File;
    new-instance v1, Ljxl/write/WritableHyperlink;

    const/16 v70, 0x0

    const/16 v71, 0x20

    const/16 v72, 0x8

    const/16 v73, 0x20

    const-string v75, "JExcelApi Documentation"

    move-object/from16 v69, v1

    invoke-direct/range {v69 .. v75}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/io/File;Ljava/lang/String;)V

    move-object v2, v1

    .line 1069
    .end local v18    # "wh":Ljxl/write/WritableHyperlink;
    .local v2, "wh":Ljxl/write/WritableHyperlink;
    invoke-interface {v12, v2}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1072
    new-instance v18, Ljxl/write/WritableHyperlink;

    const/16 v21, 0x0

    const/16 v63, 0x22

    const/16 v65, 0x8

    const/16 v66, 0x22

    const-string v67, "Link to another cell"
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v69, 0x0

    const/16 v70, 0xb4

    const/16 v71, 0x1

    const/16 v72, 0xb5

    move-object/from16 v76, v45

    move-object/from16 v45, v47

    .end local v47    # "subscriptFormat":Ljxl/write/WritableCellFormat;
    .local v45, "subscriptFormat":Ljxl/write/WritableCellFormat;
    .local v76, "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    move-object/from16 v1, v18

    move-object/from16 v47, v49

    move-object/from16 v49, v55

    move-object/from16 v55, v60

    move-object/from16 v60, v2

    .end local v2    # "wh":Ljxl/write/WritableHyperlink;
    .local v47, "superscriptFormat":Ljxl/write/WritableCellFormat;
    .local v49, "blueFormat":Ljxl/write/WritableCellFormat;
    .local v55, "yellowOnBlue":Ljxl/write/WritableCellFormat;
    .local v60, "wh":Ljxl/write/WritableHyperlink;
    move/from16 v2, v21

    move-object/from16 v21, v36

    move-object/from16 v33, v40

    move-object/from16 v36, v48

    move-object/from16 v40, v53

    move-object/from16 v48, v57

    const/16 v57, 0x8

    move-object/from16 v53, v3

    move-object/from16 v79, v50

    move-object/from16 v50, v32

    move-object/from16 v32, v37

    move-object/from16 v37, v79

    .end local v3    # "wh2":Ljxl/write/WritableHyperlink;
    .end local v57    # "limeFormat":Ljxl/write/WritableCellFormat;
    .local v21, "times10ptBold":Ljxl/write/WritableFont;
    .local v32, "arial10ptDoubleUnderline":Ljxl/write/WritableFont;
    .local v33, "arial10ptSingleAcc":Ljxl/write/WritableFont;
    .local v36, "arialDoubleAcc":Ljxl/write/WritableCellFormat;
    .local v37, "subscript":Ljxl/write/WritableFont;
    .local v40, "redFormat":Ljxl/write/WritableCellFormat;
    .local v48, "limeFormat":Ljxl/write/WritableCellFormat;
    .local v50, "yellow":Ljxl/write/WritableFont;
    .local v53, "wh2":Ljxl/write/WritableHyperlink;
    move/from16 v3, v63

    move-object/from16 v34, v46

    move-object/from16 v46, v52

    move-object/from16 v52, v54

    move-object/from16 v54, v56

    move-object/from16 v56, v58

    move-object/from16 v57, v61

    move-object/from16 v58, v62

    const/16 v62, 0x6

    move-object/from16 v61, v4

    .end local v4    # "lr":Ljxl/write/Label;
    .end local v62    # "minus_90":Ljxl/write/WritableCellFormat;
    .local v34, "arialUnderline":Ljxl/write/WritableCellFormat;
    .local v46, "superscript":Ljxl/write/WritableFont;
    .local v52, "blue":Ljxl/write/WritableFont;
    .local v54, "lime":Ljxl/write/WritableFont;
    .local v56, "greyBackground":Ljxl/write/WritableCellFormat;
    .local v57, "vertical":Ljxl/write/WritableCellFormat;
    .local v58, "minus_90":Ljxl/write/WritableCellFormat;
    .local v61, "lr":Ljxl/write/Label;
    move/from16 v4, v65

    move/from16 v63, v5

    move-object/from16 v28, v59

    move-object/from16 v59, v64

    const/16 v62, 0xa

    .end local v64    # "plus_90":Ljxl/write/WritableCellFormat;
    .local v28, "arial10ptUnderline":Ljxl/write/WritableFont;
    .local v59, "plus_90":Ljxl/write/WritableCellFormat;
    move/from16 v5, v66

    move-object/from16 v77, v6

    .end local v6    # "times12pt":Ljxl/write/WritableFont;
    .local v77, "times12pt":Ljxl/write/WritableFont;
    move-object/from16 v6, v67

    move-object/from16 v62, v7

    .end local v7    # "times10pt":Ljxl/write/WritableFont;
    .local v62, "times10pt":Ljxl/write/WritableFont;
    move-object/from16 v7, p1

    move-object/from16 v30, v42

    const/16 v63, 0x9

    move-object/from16 v42, v8

    .end local v8    # "arial18ptBoldItalicUnderline":Ljxl/write/WritableFont;
    .local v30, "arial12ptItalicFormat":Ljxl/write/WritableCellFormat;
    .local v42, "arial18ptBoldItalicUnderline":Ljxl/write/WritableFont;
    move/from16 v8, v69

    move-object/from16 v78, v9

    .end local v9    # "arial12format":Ljxl/write/WritableCellFormat;
    .local v78, "arial12format":Ljxl/write/WritableCellFormat;
    move/from16 v9, v70

    move-object/from16 v35, v10

    move-object/from16 v29, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v38

    const/16 v38, 0xc

    const/16 v63, 0x7

    .end local v10    # "red":Ljxl/write/WritableFont;
    .end local v38    # "times12BoldFormat":Ljxl/write/WritableCellFormat;
    .local v17, "arial12pt":Ljxl/write/WritableFont;
    .local v19, "times12BoldFormat":Ljxl/write/WritableCellFormat;
    .local v29, "arialSingleAcc":Ljxl/write/WritableCellFormat;
    .local v35, "red":Ljxl/write/WritableFont;
    move/from16 v10, v71

    move-object/from16 v63, v13

    move/from16 v13, v38

    move-object/from16 v38, v11

    .end local v11    # "times12ptBold":Ljxl/write/WritableFont;
    .end local v13    # "arial12ptBold":Ljxl/write/WritableFont;
    .local v38, "times12ptBold":Ljxl/write/WritableFont;
    .local v63, "arial12ptBold":Ljxl/write/WritableFont;
    move/from16 v11, v72

    :try_start_2
    invoke-direct/range {v1 .. v11}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/lang/String;Ljxl/write/WritableSheet;IIII)V

    move-object/from16 v1, v18

    .line 1076
    .end local v60    # "wh":Ljxl/write/WritableHyperlink;
    .restart local v1    # "wh":Ljxl/write/WritableHyperlink;
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1078
    new-instance v7, Ljava/io/File;

    const-string v2, "\\\\localhost\\file.txt"

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1079
    .end local v74    # "file":Ljava/io/File;
    .local v7, "file":Ljava/io/File;
    new-instance v8, Ljxl/write/WritableHyperlink;

    const/4 v3, 0x0

    const/16 v4, 0x24

    const/16 v5, 0x8

    const/16 v6, 0x24

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/io/File;)V

    move-object v1, v8

    .line 1080
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1083
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://www.amazon.co.uk/exec/obidos/ASIN/0571058086/qid=1099836249/sr=1-3/ref=sr_1_11_3/202-6017285-1620664"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v74, v2

    .line 1085
    .end local v68    # "url":Ljava/net/URL;
    .local v74, "url":Ljava/net/URL;
    new-instance v2, Ljxl/write/WritableHyperlink;

    const/16 v70, 0x0

    const/16 v71, 0x26

    const/16 v72, 0x0

    const/16 v73, 0x26

    move-object/from16 v69, v2

    invoke-direct/range {v69 .. v74}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/net/URL;)V

    move-object v1, v2

    .line 1086
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1091
    .end local v0    # "l":Ljxl/write/Label;
    .end local v1    # "wh":Ljxl/write/WritableHyperlink;
    .end local v7    # "file":Ljava/io/File;
    .end local v53    # "wh2":Ljxl/write/WritableHyperlink;
    .end local v74    # "url":Ljava/net/URL;
    goto/16 :goto_1

    .line 1088
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .end local v21    # "times10ptBold":Ljxl/write/WritableFont;
    .end local v28    # "arial10ptUnderline":Ljxl/write/WritableFont;
    .end local v29    # "arialSingleAcc":Ljxl/write/WritableCellFormat;
    .end local v30    # "arial12ptItalicFormat":Ljxl/write/WritableCellFormat;
    .end local v33    # "arial10ptSingleAcc":Ljxl/write/WritableFont;
    .end local v34    # "arialUnderline":Ljxl/write/WritableCellFormat;
    .end local v35    # "red":Ljxl/write/WritableFont;
    .end local v63    # "arial12ptBold":Ljxl/write/WritableFont;
    .end local v76    # "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    .end local v77    # "times12pt":Ljxl/write/WritableFont;
    .end local v78    # "arial12format":Ljxl/write/WritableCellFormat;
    .restart local v4    # "lr":Ljxl/write/Label;
    .restart local v6    # "times12pt":Ljxl/write/WritableFont;
    .local v7, "times10pt":Ljxl/write/WritableFont;
    .restart local v8    # "arial18ptBoldItalicUnderline":Ljxl/write/WritableFont;
    .restart local v9    # "arial12format":Ljxl/write/WritableCellFormat;
    .restart local v10    # "red":Ljxl/write/WritableFont;
    .restart local v11    # "times12ptBold":Ljxl/write/WritableFont;
    .restart local v13    # "arial12ptBold":Ljxl/write/WritableFont;
    .local v17, "arialSingleAcc":Ljxl/write/WritableCellFormat;
    .local v19, "arial12pt":Ljxl/write/WritableFont;
    .local v32, "yellow":Ljxl/write/WritableFont;
    .local v36, "times10ptBold":Ljxl/write/WritableFont;
    .local v37, "arial10ptDoubleUnderline":Ljxl/write/WritableFont;
    .local v38, "times12BoldFormat":Ljxl/write/WritableCellFormat;
    .local v40, "arial10ptSingleAcc":Ljxl/write/WritableFont;
    .local v42, "arial12ptItalicFormat":Ljxl/write/WritableCellFormat;
    .local v45, "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    .local v46, "arialUnderline":Ljxl/write/WritableCellFormat;
    .local v47, "subscriptFormat":Ljxl/write/WritableCellFormat;
    .local v48, "arialDoubleAcc":Ljxl/write/WritableCellFormat;
    .local v49, "superscriptFormat":Ljxl/write/WritableCellFormat;
    .local v50, "subscript":Ljxl/write/WritableFont;
    .local v52, "superscript":Ljxl/write/WritableFont;
    .local v53, "redFormat":Ljxl/write/WritableCellFormat;
    .local v54, "blue":Ljxl/write/WritableFont;
    .local v55, "blueFormat":Ljxl/write/WritableCellFormat;
    .local v56, "lime":Ljxl/write/WritableFont;
    .local v57, "limeFormat":Ljxl/write/WritableCellFormat;
    .local v58, "greyBackground":Ljxl/write/WritableCellFormat;
    .local v59, "arial10ptUnderline":Ljxl/write/WritableFont;
    .local v60, "yellowOnBlue":Ljxl/write/WritableCellFormat;
    .local v61, "vertical":Ljxl/write/WritableCellFormat;
    .local v62, "minus_90":Ljxl/write/WritableCellFormat;
    .restart local v64    # "plus_90":Ljxl/write/WritableCellFormat;
    :catch_1
    move-exception v0

    move-object/from16 v77, v6

    move-object/from16 v78, v9

    move-object/from16 v35, v10

    move-object/from16 v63, v13

    move-object/from16 v29, v17

    move-object/from16 v17, v19

    move-object/from16 v21, v36

    move-object/from16 v19, v38

    move-object/from16 v33, v40

    move-object/from16 v30, v42

    move-object/from16 v76, v45

    move-object/from16 v34, v46

    move-object/from16 v45, v47

    move-object/from16 v36, v48

    move-object/from16 v47, v49

    move-object/from16 v46, v52

    move-object/from16 v40, v53

    move-object/from16 v52, v54

    move-object/from16 v49, v55

    move-object/from16 v54, v56

    move-object/from16 v48, v57

    move-object/from16 v56, v58

    move-object/from16 v28, v59

    move-object/from16 v55, v60

    move-object/from16 v57, v61

    move-object/from16 v58, v62

    move-object/from16 v59, v64

    const/16 v13, 0xc

    move-object/from16 v61, v4

    move-object/from16 v62, v7

    move-object/from16 v42, v8

    move-object/from16 v38, v11

    move-object/from16 v79, v50

    move-object/from16 v50, v32

    move-object/from16 v32, v37

    move-object/from16 v37, v79

    .end local v4    # "lr":Ljxl/write/Label;
    .end local v6    # "times12pt":Ljxl/write/WritableFont;
    .end local v7    # "times10pt":Ljxl/write/WritableFont;
    .end local v8    # "arial18ptBoldItalicUnderline":Ljxl/write/WritableFont;
    .end local v9    # "arial12format":Ljxl/write/WritableCellFormat;
    .end local v10    # "red":Ljxl/write/WritableFont;
    .end local v11    # "times12ptBold":Ljxl/write/WritableFont;
    .end local v13    # "arial12ptBold":Ljxl/write/WritableFont;
    .end local v53    # "redFormat":Ljxl/write/WritableCellFormat;
    .end local v60    # "yellowOnBlue":Ljxl/write/WritableCellFormat;
    .end local v64    # "plus_90":Ljxl/write/WritableCellFormat;
    .local v17, "arial12pt":Ljxl/write/WritableFont;
    .local v19, "times12BoldFormat":Ljxl/write/WritableCellFormat;
    .restart local v21    # "times10ptBold":Ljxl/write/WritableFont;
    .restart local v28    # "arial10ptUnderline":Ljxl/write/WritableFont;
    .restart local v29    # "arialSingleAcc":Ljxl/write/WritableCellFormat;
    .restart local v30    # "arial12ptItalicFormat":Ljxl/write/WritableCellFormat;
    .local v32, "arial10ptDoubleUnderline":Ljxl/write/WritableFont;
    .restart local v33    # "arial10ptSingleAcc":Ljxl/write/WritableFont;
    .restart local v34    # "arialUnderline":Ljxl/write/WritableCellFormat;
    .restart local v35    # "red":Ljxl/write/WritableFont;
    .local v36, "arialDoubleAcc":Ljxl/write/WritableCellFormat;
    .local v37, "subscript":Ljxl/write/WritableFont;
    .local v38, "times12ptBold":Ljxl/write/WritableFont;
    .local v40, "redFormat":Ljxl/write/WritableCellFormat;
    .local v42, "arial18ptBoldItalicUnderline":Ljxl/write/WritableFont;
    .local v45, "subscriptFormat":Ljxl/write/WritableCellFormat;
    .local v46, "superscript":Ljxl/write/WritableFont;
    .local v47, "superscriptFormat":Ljxl/write/WritableCellFormat;
    .local v48, "limeFormat":Ljxl/write/WritableCellFormat;
    .local v49, "blueFormat":Ljxl/write/WritableCellFormat;
    .local v50, "yellow":Ljxl/write/WritableFont;
    .local v52, "blue":Ljxl/write/WritableFont;
    .local v54, "lime":Ljxl/write/WritableFont;
    .local v55, "yellowOnBlue":Ljxl/write/WritableCellFormat;
    .local v56, "greyBackground":Ljxl/write/WritableCellFormat;
    .local v57, "vertical":Ljxl/write/WritableCellFormat;
    .local v58, "minus_90":Ljxl/write/WritableCellFormat;
    .local v59, "plus_90":Ljxl/write/WritableCellFormat;
    .local v61, "lr":Ljxl/write/Label;
    .local v62, "times10pt":Ljxl/write/WritableFont;
    .restart local v63    # "arial12ptBold":Ljxl/write/WritableFont;
    .restart local v76    # "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    .restart local v77    # "times12pt":Ljxl/write/WritableFont;
    .restart local v78    # "arial12format":Ljxl/write/WritableCellFormat;
    goto :goto_0

    .end local v21    # "times10ptBold":Ljxl/write/WritableFont;
    .end local v28    # "arial10ptUnderline":Ljxl/write/WritableFont;
    .end local v29    # "arialSingleAcc":Ljxl/write/WritableCellFormat;
    .end local v30    # "arial12ptItalicFormat":Ljxl/write/WritableCellFormat;
    .end local v33    # "arial10ptSingleAcc":Ljxl/write/WritableFont;
    .end local v34    # "arialUnderline":Ljxl/write/WritableCellFormat;
    .end local v35    # "red":Ljxl/write/WritableFont;
    .end local v63    # "arial12ptBold":Ljxl/write/WritableFont;
    .end local v76    # "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    .end local v77    # "times12pt":Ljxl/write/WritableFont;
    .end local v78    # "arial12format":Ljxl/write/WritableCellFormat;
    .restart local v4    # "lr":Ljxl/write/Label;
    .restart local v5    # "plus_90":Ljxl/write/WritableCellFormat;
    .restart local v6    # "times12pt":Ljxl/write/WritableFont;
    .restart local v7    # "times10pt":Ljxl/write/WritableFont;
    .restart local v8    # "arial18ptBoldItalicUnderline":Ljxl/write/WritableFont;
    .restart local v9    # "arial12format":Ljxl/write/WritableCellFormat;
    .restart local v10    # "red":Ljxl/write/WritableFont;
    .restart local v11    # "times12ptBold":Ljxl/write/WritableFont;
    .restart local v13    # "arial12ptBold":Ljxl/write/WritableFont;
    .local v17, "arialSingleAcc":Ljxl/write/WritableCellFormat;
    .local v19, "arial12pt":Ljxl/write/WritableFont;
    .local v32, "yellow":Ljxl/write/WritableFont;
    .local v36, "times10ptBold":Ljxl/write/WritableFont;
    .local v37, "arial10ptDoubleUnderline":Ljxl/write/WritableFont;
    .local v38, "times12BoldFormat":Ljxl/write/WritableCellFormat;
    .local v40, "arial10ptSingleAcc":Ljxl/write/WritableFont;
    .local v42, "arial12ptItalicFormat":Ljxl/write/WritableCellFormat;
    .local v45, "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    .local v46, "arialUnderline":Ljxl/write/WritableCellFormat;
    .local v47, "subscriptFormat":Ljxl/write/WritableCellFormat;
    .local v48, "arialDoubleAcc":Ljxl/write/WritableCellFormat;
    .local v49, "superscriptFormat":Ljxl/write/WritableCellFormat;
    .local v50, "subscript":Ljxl/write/WritableFont;
    .local v52, "superscript":Ljxl/write/WritableFont;
    .restart local v53    # "redFormat":Ljxl/write/WritableCellFormat;
    .local v54, "blue":Ljxl/write/WritableFont;
    .local v55, "blueFormat":Ljxl/write/WritableCellFormat;
    .local v56, "lime":Ljxl/write/WritableFont;
    .local v57, "limeFormat":Ljxl/write/WritableCellFormat;
    .local v58, "greyBackground":Ljxl/write/WritableCellFormat;
    .local v59, "arial10ptUnderline":Ljxl/write/WritableFont;
    .restart local v60    # "yellowOnBlue":Ljxl/write/WritableCellFormat;
    .local v61, "vertical":Ljxl/write/WritableCellFormat;
    .local v62, "minus_90":Ljxl/write/WritableCellFormat;
    :catch_2
    move-exception v0

    move-object/from16 v77, v6

    move-object/from16 v78, v9

    move-object/from16 v35, v10

    move-object/from16 v63, v13

    move-object/from16 v29, v17

    move-object/from16 v17, v19

    move-object/from16 v21, v36

    move-object/from16 v19, v38

    move-object/from16 v33, v40

    move-object/from16 v30, v42

    move-object/from16 v76, v45

    move-object/from16 v34, v46

    move-object/from16 v45, v47

    move-object/from16 v36, v48

    move-object/from16 v47, v49

    move-object/from16 v46, v52

    move-object/from16 v40, v53

    move-object/from16 v52, v54

    move-object/from16 v49, v55

    move-object/from16 v54, v56

    move-object/from16 v48, v57

    move-object/from16 v56, v58

    move-object/from16 v28, v59

    move-object/from16 v55, v60

    move-object/from16 v57, v61

    move-object/from16 v58, v62

    const/16 v13, 0xc

    move-object/from16 v61, v4

    move-object/from16 v59, v5

    move-object/from16 v62, v7

    move-object/from16 v42, v8

    move-object/from16 v38, v11

    move-object/from16 v79, v50

    move-object/from16 v50, v32

    move-object/from16 v32, v37

    move-object/from16 v37, v79

    .line 1090
    .end local v4    # "lr":Ljxl/write/Label;
    .end local v5    # "plus_90":Ljxl/write/WritableCellFormat;
    .end local v6    # "times12pt":Ljxl/write/WritableFont;
    .end local v7    # "times10pt":Ljxl/write/WritableFont;
    .end local v8    # "arial18ptBoldItalicUnderline":Ljxl/write/WritableFont;
    .end local v9    # "arial12format":Ljxl/write/WritableCellFormat;
    .end local v10    # "red":Ljxl/write/WritableFont;
    .end local v11    # "times12ptBold":Ljxl/write/WritableFont;
    .end local v13    # "arial12ptBold":Ljxl/write/WritableFont;
    .end local v53    # "redFormat":Ljxl/write/WritableCellFormat;
    .end local v60    # "yellowOnBlue":Ljxl/write/WritableCellFormat;
    .local v0, "e":Ljava/net/MalformedURLException;
    .local v17, "arial12pt":Ljxl/write/WritableFont;
    .local v19, "times12BoldFormat":Ljxl/write/WritableCellFormat;
    .restart local v21    # "times10ptBold":Ljxl/write/WritableFont;
    .restart local v28    # "arial10ptUnderline":Ljxl/write/WritableFont;
    .restart local v29    # "arialSingleAcc":Ljxl/write/WritableCellFormat;
    .restart local v30    # "arial12ptItalicFormat":Ljxl/write/WritableCellFormat;
    .local v32, "arial10ptDoubleUnderline":Ljxl/write/WritableFont;
    .restart local v33    # "arial10ptSingleAcc":Ljxl/write/WritableFont;
    .restart local v34    # "arialUnderline":Ljxl/write/WritableCellFormat;
    .restart local v35    # "red":Ljxl/write/WritableFont;
    .local v36, "arialDoubleAcc":Ljxl/write/WritableCellFormat;
    .local v37, "subscript":Ljxl/write/WritableFont;
    .local v38, "times12ptBold":Ljxl/write/WritableFont;
    .local v40, "redFormat":Ljxl/write/WritableCellFormat;
    .local v42, "arial18ptBoldItalicUnderline":Ljxl/write/WritableFont;
    .local v45, "subscriptFormat":Ljxl/write/WritableCellFormat;
    .local v46, "superscript":Ljxl/write/WritableFont;
    .local v47, "superscriptFormat":Ljxl/write/WritableCellFormat;
    .local v48, "limeFormat":Ljxl/write/WritableCellFormat;
    .local v49, "blueFormat":Ljxl/write/WritableCellFormat;
    .local v50, "yellow":Ljxl/write/WritableFont;
    .local v52, "blue":Ljxl/write/WritableFont;
    .local v54, "lime":Ljxl/write/WritableFont;
    .local v55, "yellowOnBlue":Ljxl/write/WritableCellFormat;
    .local v56, "greyBackground":Ljxl/write/WritableCellFormat;
    .local v57, "vertical":Ljxl/write/WritableCellFormat;
    .local v58, "minus_90":Ljxl/write/WritableCellFormat;
    .local v59, "plus_90":Ljxl/write/WritableCellFormat;
    .local v61, "lr":Ljxl/write/Label;
    .local v62, "times10pt":Ljxl/write/WritableFont;
    .restart local v63    # "arial12ptBold":Ljxl/write/WritableFont;
    .restart local v76    # "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    .restart local v77    # "times12pt":Ljxl/write/WritableFont;
    .restart local v78    # "arial12format":Ljxl/write/WritableCellFormat;
    :goto_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1094
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_1
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x23

    const/4 v2, 0x5

    const-string v3, "Merged cells"

    move-object/from16 v4, v76

    .end local v76    # "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    .local v4, "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    invoke-direct {v0, v2, v1, v3, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1095
    .local v0, "l":Ljxl/write/Label;
    const/16 v3, 0x25

    const/16 v5, 0x8

    invoke-interface {v12, v2, v1, v5, v3}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    .line 1096
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1098
    new-instance v1, Ljxl/write/Label;

    const/16 v3, 0x26

    const-string v6, "More merged cells"

    invoke-direct {v1, v2, v3, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 1099
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1100
    const/16 v1, 0x26

    const/16 v3, 0x29

    invoke-interface {v12, v2, v1, v5, v3}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    move-result-object v1

    .line 1101
    .local v1, "r":Ljxl/Range;
    const/16 v3, 0x28

    invoke-interface {v12, v3}, Ljxl/write/WritableSheet;->insertRow(I)V

    .line 1102
    const/16 v3, 0x27

    invoke-interface {v12, v3}, Ljxl/write/WritableSheet;->removeRow(I)V

    .line 1103
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->unmergeCells(Ljxl/Range;)V

    .line 1106
    new-instance v6, Ljxl/write/WritableCellFormat;

    invoke-direct {v6}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1107
    .local v6, "wcf":Ljxl/write/WritableCellFormat;
    sget-object v7, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    invoke-virtual {v6, v7}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 1108
    new-instance v7, Ljxl/write/Label;

    const/16 v8, 0x2a

    const-string v9, "Centred across merged cells"

    invoke-direct {v7, v2, v8, v9, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v7

    .line 1109
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1110
    const/16 v7, 0xa

    invoke-interface {v12, v2, v8, v7, v8}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    .line 1112
    new-instance v8, Ljxl/write/WritableCellFormat;

    invoke-direct {v8}, Ljxl/write/WritableCellFormat;-><init>()V

    move-object v6, v8

    .line 1113
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v9, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v6, v8, v9}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1114
    sget-object v8, Ljxl/format/Colour;->GRAY_25:Ljxl/format/Colour;

    invoke-virtual {v6, v8}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 1115
    new-instance v8, Ljxl/write/Label;

    const/16 v9, 0x2c

    const-string v10, "Merged with border"

    const/4 v11, 0x3

    invoke-direct {v8, v11, v9, v10, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v8

    .line 1116
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1117
    const/16 v8, 0x2c

    const/16 v9, 0x2e

    const/4 v10, 0x4

    invoke-interface {v12, v11, v8, v10, v9}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    .line 1134
    new-instance v8, Ljxl/write/WritableFont;

    sget-object v9, Ljxl/write/WritableFont;->COURIER:Ljxl/write/WritableFont$FontName;

    invoke-direct {v8, v9, v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 1135
    .local v8, "courier10ptFont":Ljxl/write/WritableFont;
    new-instance v9, Ljxl/write/WritableCellFormat;

    invoke-direct {v9, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1136
    .local v9, "courier10pt":Ljxl/write/WritableCellFormat;
    new-instance v11, Ljxl/write/Label;

    const/16 v3, 0x31

    const-string v5, "Courier fonts"

    const/4 v2, 0x0

    invoke-direct {v11, v2, v3, v5, v9}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v11

    .line 1137
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1139
    new-instance v2, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->TAHOMA:Ljxl/write/WritableFont$FontName;

    invoke-direct {v2, v3, v13}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 1140
    .local v2, "tahoma12ptFont":Ljxl/write/WritableFont;
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1141
    .local v3, "tahoma12pt":Ljxl/write/WritableCellFormat;
    new-instance v5, Ljxl/write/Label;

    const/16 v11, 0x32

    const-string v13, "Tahoma fonts"

    const/4 v10, 0x0

    invoke-direct {v5, v10, v11, v13, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v5

    .line 1142
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1144
    const-string v5, "Wingdings 2"

    invoke-static {v5}, Ljxl/write/WritableFont;->createFont(Ljava/lang/String;)Ljxl/write/WritableFont$FontName;

    move-result-object v5

    .line 1146
    .local v5, "wingdingsFont":Ljxl/write/WritableFont$FontName;
    new-instance v10, Ljxl/write/WritableFont;

    invoke-direct {v10, v5, v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    move-object v7, v10

    .line 1147
    .local v7, "wingdings210ptFont":Ljxl/write/WritableFont;
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v7}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1149
    .local v10, "wingdings210pt":Ljxl/write/WritableCellFormat;
    new-instance v11, Ljxl/write/Label;

    const/16 v13, 0x33

    move-object/from16 v60, v0

    .end local v0    # "l":Ljxl/write/Label;
    .local v60, "l":Ljxl/write/Label;
    const-string v0, "Bespoke Windgdings 2"

    move-object/from16 v64, v1

    const/4 v1, 0x0

    .end local v1    # "r":Ljxl/Range;
    .local v64, "r":Ljxl/Range;
    invoke-direct {v11, v1, v13, v0, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v11

    .line 1150
    .end local v60    # "l":Ljxl/write/Label;
    .restart local v0    # "l":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1152
    new-instance v1, Ljxl/write/WritableCellFormat;

    move-object/from16 v11, v77

    .end local v77    # "times12pt":Ljxl/write/WritableFont;
    .local v11, "times12pt":Ljxl/write/WritableFont;
    invoke-direct {v1, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1153
    .local v1, "shrinkToFit":Ljxl/write/WritableCellFormat;
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljxl/write/WritableCellFormat;->setShrinkToFit(Z)V

    .line 1154
    new-instance v13, Ljxl/write/Label;

    move-object/from16 v60, v0

    .end local v0    # "l":Ljxl/write/Label;
    .restart local v60    # "l":Ljxl/write/Label;
    const/16 v0, 0x35

    move-object/from16 v65, v2

    .end local v2    # "tahoma12ptFont":Ljxl/write/WritableFont;
    .local v65, "tahoma12ptFont":Ljxl/write/WritableFont;
    const-string v2, "Shrunk to fit"

    move-object/from16 v66, v3

    const/4 v3, 0x3

    .end local v3    # "tahoma12pt":Ljxl/write/WritableCellFormat;
    .local v66, "tahoma12pt":Ljxl/write/WritableCellFormat;
    invoke-direct {v13, v3, v0, v2, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v13

    .line 1155
    .end local v60    # "l":Ljxl/write/Label;
    .restart local v0    # "l":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1157
    new-instance v2, Ljxl/write/Label;

    const/16 v13, 0x37

    move-object/from16 v16, v0

    .end local v0    # "l":Ljxl/write/Label;
    .local v16, "l":Ljxl/write/Label;
    const-string v0, "Some long wrapped text in a merged cell"

    move-object/from16 v60, v1

    move-object/from16 v1, v78

    .end local v78    # "arial12format":Ljxl/write/WritableCellFormat;
    .local v1, "arial12format":Ljxl/write/WritableCellFormat;
    .local v60, "shrinkToFit":Ljxl/write/WritableCellFormat;
    invoke-direct {v2, v3, v13, v0, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v2

    .line 1159
    .end local v16    # "l":Ljxl/write/Label;
    .restart local v0    # "l":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1160
    const/4 v2, 0x4

    invoke-interface {v12, v3, v13, v2, v13}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    .line 1162
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x39

    const-string v13, "A cell with a comment"

    const/4 v1, 0x0

    .end local v1    # "arial12format":Ljxl/write/WritableCellFormat;
    .restart local v78    # "arial12format":Ljxl/write/WritableCellFormat;
    invoke-direct {v2, v1, v3, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v2

    .line 1163
    new-instance v1, Ljxl/write/WritableCellFeatures;

    invoke-direct {v1}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 1164
    .local v1, "cellFeatures":Ljxl/write/WritableCellFeatures;
    const-string v2, "the cell comment"

    invoke-virtual {v1, v2}, Ljxl/write/WritableCellFeatures;->setComment(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v0, v1}, Ljxl/write/Label;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1166
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1168
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x3b

    const-string v13, "A cell with a long comment"

    move-object/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "cellFeatures":Ljxl/write/WritableCellFeatures;
    .local v16, "cellFeatures":Ljxl/write/WritableCellFeatures;
    invoke-direct {v2, v1, v3, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v2

    .line 1170
    new-instance v1, Ljxl/write/WritableCellFeatures;

    invoke-direct {v1}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 1171
    .end local v16    # "cellFeatures":Ljxl/write/WritableCellFeatures;
    .restart local v1    # "cellFeatures":Ljxl/write/WritableCellFeatures;
    const-wide/high16 v69, 0x4014000000000000L    # 5.0

    const-wide/high16 v71, 0x4018000000000000L    # 6.0

    const-string v68, "a very long cell comment indeed that won\'t fit inside a standard comment box, so a larger comment box is used instead"

    move-object/from16 v67, v1

    invoke-virtual/range {v67 .. v72}, Ljxl/write/WritableCellFeatures;->setComment(Ljava/lang/String;DD)V

    .line 1175
    invoke-virtual {v0, v1}, Ljxl/write/Label;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1176
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1178
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1179
    .local v2, "indented":Ljxl/write/WritableCellFormat;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljxl/write/WritableCellFormat;->setIndentation(I)V

    .line 1180
    new-instance v3, Ljxl/write/Label;

    const/16 v13, 0x3d

    move-object/from16 v16, v0

    .end local v0    # "l":Ljxl/write/Label;
    .local v16, "l":Ljxl/write/Label;
    const-string v0, "Some indented text"

    const/4 v1, 0x0

    .end local v1    # "cellFeatures":Ljxl/write/WritableCellFeatures;
    .local v67, "cellFeatures":Ljxl/write/WritableCellFeatures;
    invoke-direct {v3, v1, v13, v0, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v0, v3

    .line 1181
    .end local v16    # "l":Ljxl/write/Label;
    .restart local v0    # "l":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1183
    new-instance v3, Ljxl/write/Label;

    const/16 v13, 0x3f

    move-object/from16 v16, v0

    .end local v0    # "l":Ljxl/write/Label;
    .restart local v16    # "l":Ljxl/write/Label;
    const-string v0, "Data validation:  list"

    invoke-direct {v3, v1, v13, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v3

    .line 1184
    .end local v16    # "l":Ljxl/write/Label;
    .restart local v0    # "l":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1186
    new-instance v1, Ljxl/write/Blank;

    const/16 v3, 0x3f

    const/4 v13, 0x1

    invoke-direct {v1, v13, v3}, Ljxl/write/Blank;-><init>(II)V

    .line 1187
    .local v1, "b":Ljxl/write/Blank;
    new-instance v3, Ljxl/write/WritableCellFeatures;

    invoke-direct {v3}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 1188
    .end local v67    # "cellFeatures":Ljxl/write/WritableCellFeatures;
    .local v3, "cellFeatures":Ljxl/write/WritableCellFeatures;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    .local v13, "al":Ljava/util/ArrayList;
    move-object/from16 v16, v0

    .end local v0    # "l":Ljxl/write/Label;
    .restart local v16    # "l":Ljxl/write/Label;
    const-string v0, "bagpuss"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    const-string v0, "clangers"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    const-string v0, "ivor the engine"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    const-string v0, "noggin the nog"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    invoke-virtual {v3, v13}, Ljxl/write/WritableCellFeatures;->setDataValidationList(Ljava/util/Collection;)V

    .line 1194
    invoke-virtual {v1, v3}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1195
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1197
    new-instance v0, Ljxl/write/Label;

    move-object/from16 v67, v1

    .end local v1    # "b":Ljxl/write/Blank;
    .local v67, "b":Ljxl/write/Blank;
    const/16 v1, 0x40

    move-object/from16 v68, v2

    .end local v2    # "indented":Ljxl/write/WritableCellFormat;
    .local v68, "indented":Ljxl/write/WritableCellFormat;
    const-string v2, "Data validation:  number > 4.5"

    move-object/from16 v69, v3

    const/4 v3, 0x0

    .end local v3    # "cellFeatures":Ljxl/write/WritableCellFeatures;
    .local v69, "cellFeatures":Ljxl/write/WritableCellFeatures;
    invoke-direct {v0, v3, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1198
    .end local v16    # "l":Ljxl/write/Label;
    .restart local v0    # "l":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1200
    new-instance v1, Ljxl/write/Blank;

    const/16 v2, 0x40

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljxl/write/Blank;-><init>(II)V

    .line 1201
    .end local v67    # "b":Ljxl/write/Blank;
    .restart local v1    # "b":Ljxl/write/Blank;
    new-instance v2, Ljxl/write/WritableCellFeatures;

    invoke-direct {v2}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 1202
    .end local v69    # "cellFeatures":Ljxl/write/WritableCellFeatures;
    .local v2, "cellFeatures":Ljxl/write/WritableCellFeatures;
    nop

    .end local v4    # "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    .restart local v76    # "timesBoldUnderline":Ljxl/write/WritableCellFormat;
    const-wide/high16 v3, 0x4012000000000000L    # 4.5

    move-object/from16 v16, v0

    .end local v0    # "l":Ljxl/write/Label;
    .restart local v16    # "l":Ljxl/write/Label;
    sget-object v0, Ljxl/write/WritableCellFeatures;->GREATER_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    invoke-virtual {v2, v3, v4, v0}, Ljxl/write/WritableCellFeatures;->setNumberValidation(DLjxl/biff/BaseCellFeatures$ValidationCondition;)V

    .line 1203
    invoke-virtual {v1, v2}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1204
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1206
    new-instance v0, Ljxl/write/Label;

    const/16 v3, 0x41

    const-string v4, "Data validation:  named range"

    move-object/from16 v67, v1

    const/4 v1, 0x0

    .end local v1    # "b":Ljxl/write/Blank;
    .restart local v67    # "b":Ljxl/write/Blank;
    invoke-direct {v0, v1, v3, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1207
    .end local v16    # "l":Ljxl/write/Label;
    .restart local v0    # "l":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1209
    new-instance v1, Ljxl/write/Label;

    const-string v4, "tiger"

    move-object/from16 v16, v2

    const/4 v2, 0x4

    .end local v2    # "cellFeatures":Ljxl/write/WritableCellFeatures;
    .local v16, "cellFeatures":Ljxl/write/WritableCellFeatures;
    invoke-direct {v1, v2, v3, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 1210
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1211
    new-instance v1, Ljxl/write/Label;

    const-string v2, "sword"

    const/4 v4, 0x5

    invoke-direct {v1, v4, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 1212
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1213
    new-instance v1, Ljxl/write/Label;

    const-string v2, "honour"

    const/4 v4, 0x6

    invoke-direct {v1, v4, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 1214
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1215
    new-instance v1, Ljxl/write/Label;

    const-string v2, "company"

    const/4 v4, 0x7

    invoke-direct {v1, v4, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 1216
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1217
    new-instance v1, Ljxl/write/Label;

    const-string/jumbo v2, "victory"

    const/16 v4, 0x8

    invoke-direct {v1, v4, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 1218
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1219
    new-instance v1, Ljxl/write/Label;

    const-string v2, "fortress"

    const/16 v4, 0x9

    invoke-direct {v1, v4, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 1220
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1222
    new-instance v1, Ljxl/write/Blank;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Ljxl/write/Blank;-><init>(II)V

    .line 1223
    .end local v67    # "b":Ljxl/write/Blank;
    .restart local v1    # "b":Ljxl/write/Blank;
    new-instance v2, Ljxl/write/WritableCellFeatures;

    invoke-direct {v2}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 1224
    .end local v16    # "cellFeatures":Ljxl/write/WritableCellFeatures;
    .restart local v2    # "cellFeatures":Ljxl/write/WritableCellFeatures;
    const-string/jumbo v3, "validation_range"

    invoke-virtual {v2, v3}, Ljxl/write/WritableCellFeatures;->setDataValidationRange(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v1, v2}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1226
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1229
    const/16 v3, 0x2d

    move-object/from16 v16, v1

    const/4 v1, 0x0

    const/16 v4, 0x27

    .end local v1    # "b":Ljxl/write/Blank;
    .local v16, "b":Ljxl/write/Blank;
    invoke-interface {v12, v4, v3, v1}, Ljxl/write/WritableSheet;->setRowGroup(IIZ)V

    .line 1232
    new-instance v3, Ljxl/write/Label;

    const/16 v4, 0x42

    move-object/from16 v53, v0

    .end local v0    # "l":Ljxl/write/Label;
    .local v53, "l":Ljxl/write/Label;
    const-string v0, "Block of cells B67-F71 with data validation"

    invoke-direct {v3, v1, v4, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v3

    .line 1233
    .end local v53    # "l":Ljxl/write/Label;
    .restart local v0    # "l":Ljxl/write/Label;
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .end local v13    # "al":Ljava/util/ArrayList;
    .local v1, "al":Ljava/util/ArrayList;
    const-string v3, "Achilles"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    const-string v3, "Agamemnon"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    const-string v3, "Hector"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    const-string v3, "Odysseus"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    const-string v3, "Patroclus"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    const-string v3, "Nestor"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    new-instance v3, Ljxl/write/Blank;

    const/4 v13, 0x1

    invoke-direct {v3, v13, v4}, Ljxl/write/Blank;-><init>(II)V

    .line 1244
    .end local v16    # "b":Ljxl/write/Blank;
    .local v3, "b":Ljxl/write/Blank;
    new-instance v4, Ljxl/write/WritableCellFeatures;

    invoke-direct {v4}, Ljxl/write/WritableCellFeatures;-><init>()V

    move-object v2, v4

    .line 1245
    invoke-virtual {v2, v1}, Ljxl/write/WritableCellFeatures;->setDataValidationList(Ljava/util/Collection;)V

    .line 1246
    invoke-virtual {v3, v2}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1247
    invoke-interface {v12, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1248
    const/4 v4, 0x4

    invoke-interface {v12, v3, v4, v4}, Ljxl/write/WritableSheet;->applySharedDataValidation(Ljxl/write/WritableCell;II)V

    .line 1250
    new-instance v4, Ljxl/write/WritableCellFeatures;

    invoke-direct {v4}, Ljxl/write/WritableCellFeatures;-><init>()V

    move-object v2, v4

    .line 1251
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljxl/write/WritableCellFeatures;->setDataValidationRange(Ljava/lang/String;)V

    .line 1252
    new-instance v4, Ljxl/write/Label;

    const/16 v13, 0x47

    move-object/from16 v16, v0

    .end local v0    # "l":Ljxl/write/Label;
    .local v16, "l":Ljxl/write/Label;
    const-string v0, "Read only cell using empty data validation"

    move-object/from16 v20, v1

    const/4 v1, 0x0

    .end local v1    # "al":Ljava/util/ArrayList;
    .local v20, "al":Ljava/util/ArrayList;
    invoke-direct {v4, v1, v13, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v0, v4

    .line 1253
    .end local v16    # "l":Ljxl/write/Label;
    .restart local v0    # "l":Ljxl/write/Label;
    invoke-virtual {v0, v2}, Ljxl/write/Label;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1254
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1257
    const/16 v4, 0x2d

    const/16 v13, 0x27

    invoke-interface {v12, v13, v4, v1}, Ljxl/write/WritableSheet;->setRowGroup(IIZ)V

    .line 1259
    return-void
.end method

.method private writeLabelsSheet(Ljxl/write/WritableSheet;)V
    .locals 16
    .param p1, "ws"    # Ljxl/write/WritableSheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 1363
    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setProtected(Z)V

    .line 1364
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v1

    const-string v3, "jxl"

    invoke-virtual {v1, v3}, Ljxl/SheetSettings;->setPassword(Ljava/lang/String;)V

    .line 1365
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljxl/SheetSettings;->setVerticalFreeze(I)V

    .line 1366
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v1

    const/16 v4, 0x1f4

    invoke-virtual {v1, v4}, Ljxl/SheetSettings;->setDefaultRowHeight(I)V

    .line 1368
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v4, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    const/16 v5, 0xc

    invoke-direct {v1, v4, v5}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 1369
    .local v1, "wf":Ljxl/write/WritableFont;
    invoke-virtual {v1, v2}, Ljxl/write/WritableFont;->setItalic(Z)V

    .line 1371
    new-instance v4, Ljxl/write/WritableCellFormat;

    invoke-direct {v4, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1373
    .local v4, "wcf":Ljxl/write/WritableCellFormat;
    new-instance v5, Ljxl/CellView;

    invoke-direct {v5}, Ljxl/CellView;-><init>()V

    .line 1374
    .local v5, "cv":Ljxl/CellView;
    const/16 v6, 0x1900

    invoke-virtual {v5, v6}, Ljxl/CellView;->setSize(I)V

    .line 1375
    invoke-virtual {v5, v4}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    .line 1376
    const/4 v6, 0x0

    invoke-interface {v0, v6, v5}, Ljxl/write/WritableSheet;->setColumnView(ILjxl/CellView;)V

    .line 1377
    const/16 v7, 0xf

    invoke-interface {v0, v2, v7}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 1379
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const-string v8, "Distinct label number "

    const-string v9, "Common Label"

    const/16 v10, 0x3d

    if-ge v7, v10, :cond_0

    .line 1381
    new-instance v10, Ljxl/write/Label;

    invoke-direct {v10, v6, v7, v9}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v9, v10

    .line 1382
    .local v9, "l1":Ljxl/write/Label;
    new-instance v10, Ljxl/write/Label;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v2, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v8, v10

    .line 1383
    .local v8, "l2":Ljxl/write/Label;
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1384
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1379
    .end local v8    # "l2":Ljxl/write/Label;
    .end local v9    # "l1":Ljxl/write/Label;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1390
    .end local v7    # "i":I
    :cond_0
    new-instance v7, Ljxl/write/Label;

    invoke-direct {v7, v6, v10, v9, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1391
    .local v7, "l3":Ljxl/write/Label;
    new-instance v11, Ljxl/write/Label;

    const-string v12, "1-1234567890"

    invoke-direct {v11, v2, v10, v12, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1392
    .local v11, "l4":Ljxl/write/Label;
    new-instance v12, Ljxl/write/Label;

    const/4 v13, 0x2

    const-string v14, "2-1234567890"

    invoke-direct {v12, v13, v10, v14, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v10, v12

    .line 1393
    .local v10, "l5":Ljxl/write/Label;
    invoke-interface {v0, v7}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1394
    invoke-interface {v0, v11}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1395
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1397
    const/16 v12, 0x3e

    .local v12, "i":I
    :goto_1
    const/16 v14, 0xc8

    if-ge v12, v14, :cond_1

    .line 1399
    new-instance v14, Ljxl/write/Label;

    invoke-direct {v14, v6, v12, v9}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1400
    .local v14, "l1":Ljxl/write/Label;
    new-instance v15, Ljxl/write/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v2, v12, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v15

    .line 1401
    .local v3, "l2":Ljxl/write/Label;
    invoke-interface {v0, v14}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1402
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1397
    .end local v3    # "l2":Ljxl/write/Label;
    .end local v14    # "l1":Ljxl/write/Label;
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x5

    goto :goto_1

    .line 1406
    .end local v12    # "i":I
    :cond_1
    new-instance v3, Ljxl/write/WritableFont;

    sget-object v8, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    const/16 v9, 0xa

    sget-object v12, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v3, v8, v9, v12}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    move-object v1, v3

    .line 1407
    sget-object v3, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    invoke-virtual {v1, v3}, Ljxl/write/WritableFont;->setColour(Ljxl/format/Colour;)V

    .line 1408
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1409
    .local v3, "wcf2":Ljxl/write/WritableCellFormat;
    invoke-virtual {v3, v2}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 1410
    new-instance v8, Ljxl/write/Label;

    const/16 v9, 0xcd

    const-string v12, "Different format"

    invoke-direct {v8, v6, v9, v12, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v6, v8

    .line 1411
    .local v6, "l":Ljxl/write/Label;
    invoke-interface {v0, v6}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1414
    new-instance v8, Ljxl/write/Label;

    const-string v9, "A column for autosizing"

    const/4 v12, 0x5

    invoke-direct {v8, v12, v13, v9, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1415
    .local v8, "l6":Ljxl/write/Label;
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1416
    new-instance v9, Ljxl/write/Label;

    const/4 v13, 0x4

    const-string v14, "Another label, longer this time and in a different font"

    invoke-direct {v9, v12, v13, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v8, v9

    .line 1418
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1420
    new-instance v9, Ljxl/CellView;

    invoke-direct {v9}, Ljxl/CellView;-><init>()V

    .line 1421
    .local v9, "cf":Ljxl/CellView;
    invoke-virtual {v9, v2}, Ljxl/CellView;->setAutosize(Z)V

    .line 1422
    invoke-interface {v0, v12, v9}, Ljxl/write/WritableSheet;->setColumnView(ILjxl/CellView;)V

    .line 1423
    return-void
.end method

.method private writeNumberFormatSheet(Ljxl/write/WritableSheet;)V
    .locals 149
    .param p1, "s"    # Ljxl/write/WritableSheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 149
    move-object/from16 v0, p1

    new-instance v1, Ljxl/write/WritableCellFormat;

    sget-object v2, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-direct {v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 151
    .local v1, "wrappedText":Ljxl/write/WritableCellFormat;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 153
    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-interface {v0, v3, v4}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 154
    const/4 v5, 0x4

    invoke-interface {v0, v5, v4}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 155
    const/4 v6, 0x5

    invoke-interface {v0, v6, v4}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 156
    const/4 v7, 0x6

    invoke-interface {v0, v7, v4}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 159
    new-instance v4, Ljxl/write/Label;

    const-string v8, "+/- Pi - default format"

    invoke-direct {v4, v3, v3, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 160
    .local v4, "l":Ljxl/write/Label;
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 162
    new-instance v8, Ljxl/write/Number;

    const-wide v9, 0x400921fb54411744L    # 3.1415926535

    invoke-direct {v8, v2, v3, v9, v10}, Ljxl/write/Number;-><init>(IID)V

    .line 163
    .local v8, "n":Ljxl/write/Number;
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 165
    new-instance v9, Ljxl/write/Number;

    const/4 v10, 0x2

    const-wide v11, -0x3ff6de04abbee8bcL    # -3.1415926535

    invoke-direct {v9, v10, v3, v11, v12}, Ljxl/write/Number;-><init>(IID)V

    move-object v8, v9

    .line 166
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 168
    new-instance v9, Ljxl/write/Label;

    const-string v11, "+/- Pi - integer format"

    invoke-direct {v9, v3, v2, v11, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v4, v9

    .line 169
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 171
    new-instance v9, Ljxl/write/WritableCellFormat;

    sget-object v11, Ljxl/write/NumberFormats;->INTEGER:Ljxl/biff/DisplayFormat;

    invoke-direct {v9, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v16, v9

    .line 172
    .local v16, "cf1":Ljxl/write/WritableCellFormat;
    new-instance v9, Ljxl/write/Number;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide v14, 0x400921fb54411744L    # 3.1415926535

    move-object v11, v9

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v8, v9

    .line 173
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 175
    new-instance v9, Ljxl/write/Number;

    const/16 v18, 0x2

    const/16 v19, 0x1

    const-wide v20, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object/from16 v17, v9

    move-object/from16 v22, v16

    invoke-direct/range {v17 .. v22}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v8, v9

    .line 176
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 178
    new-instance v9, Ljxl/write/Label;

    const-string v11, "+/- Pi - float 2dps"

    invoke-direct {v9, v3, v10, v11, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v4, v9

    .line 179
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 181
    new-instance v9, Ljxl/write/WritableCellFormat;

    sget-object v11, Ljxl/write/NumberFormats;->FLOAT:Ljxl/biff/DisplayFormat;

    invoke-direct {v9, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v22, v9

    .line 182
    .local v22, "cf2":Ljxl/write/WritableCellFormat;
    new-instance v9, Ljxl/write/Number;

    const/16 v18, 0x1

    const/16 v19, 0x2

    const-wide v20, 0x400921fb54411744L    # 3.1415926535

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v22}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v8, v9

    .line 183
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 185
    new-instance v9, Ljxl/write/Number;

    const/16 v24, 0x2

    const/16 v25, 0x2

    const-wide v26, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object/from16 v23, v9

    move-object/from16 v28, v22

    invoke-direct/range {v23 .. v28}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v8, v9

    .line 186
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 188
    new-instance v9, Ljxl/write/Label;

    const/4 v11, 0x3

    const-string v12, "+/- Pi - custom 3dps"

    invoke-direct {v9, v3, v11, v12, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v4, v9

    .line 190
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 192
    new-instance v9, Ljxl/write/NumberFormat;

    const-string v12, "#.###"

    invoke-direct {v9, v12}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 193
    .local v9, "dp3":Ljxl/write/NumberFormat;
    new-instance v12, Ljxl/write/WritableCellFormat;

    invoke-direct {v12, v9}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v28, v12

    .line 194
    .local v28, "dp3cell":Ljxl/write/WritableCellFormat;
    new-instance v12, Ljxl/write/Number;

    const/16 v24, 0x1

    const/16 v25, 0x3

    const-wide v26, 0x400921fb54411744L    # 3.1415926535

    move-object/from16 v23, v12

    invoke-direct/range {v23 .. v28}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v8, v12

    .line 195
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 197
    new-instance v12, Ljxl/write/Number;

    const/16 v30, 0x2

    const/16 v31, 0x3

    const-wide v32, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object/from16 v29, v12

    move-object/from16 v34, v28

    invoke-direct/range {v29 .. v34}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v8, v12

    .line 198
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 200
    new-instance v12, Ljxl/write/Label;

    const-string v13, "+/- Pi - custom &3.14"

    invoke-direct {v12, v3, v5, v13, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v4, v12

    .line 202
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 204
    new-instance v12, Ljxl/write/NumberFormat;

    const-string v13, "&#.00"

    invoke-direct {v12, v13}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 205
    .local v12, "pounddp2":Ljxl/write/NumberFormat;
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v12}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v34, v13

    .line 206
    .local v34, "pounddp2cell":Ljxl/write/WritableCellFormat;
    new-instance v13, Ljxl/write/Number;

    const/16 v30, 0x1

    const/16 v31, 0x4

    const-wide v32, 0x400921fb54411744L    # 3.1415926535

    move-object/from16 v29, v13

    invoke-direct/range {v29 .. v34}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v8, v13

    .line 207
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 209
    new-instance v13, Ljxl/write/Number;

    const/16 v36, 0x2

    const/16 v37, 0x4

    const-wide v38, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object/from16 v35, v13

    move-object/from16 v40, v34

    invoke-direct/range {v35 .. v40}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v8, v13

    .line 210
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 212
    new-instance v13, Ljxl/write/Label;

    const-string v14, "+/- Pi - custom Text #.### Text"

    invoke-direct {v13, v3, v6, v14, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v4, v13

    .line 214
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 216
    new-instance v13, Ljxl/write/NumberFormat;

    const-string v14, "Text#.####Text"

    invoke-direct {v13, v14}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 217
    .local v13, "textdp4":Ljxl/write/NumberFormat;
    new-instance v14, Ljxl/write/WritableCellFormat;

    invoke-direct {v14, v13}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v40, v14

    .line 218
    .local v40, "textdp4cell":Ljxl/write/WritableCellFormat;
    new-instance v14, Ljxl/write/Number;

    const/16 v36, 0x1

    const/16 v37, 0x5

    const-wide v38, 0x400921fb54411744L    # 3.1415926535

    move-object/from16 v35, v14

    invoke-direct/range {v35 .. v40}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v8, v14

    .line 219
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 221
    new-instance v14, Ljxl/write/Number;

    const/16 v42, 0x2

    const/16 v43, 0x5

    const-wide v44, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object/from16 v41, v14

    move-object/from16 v46, v40

    invoke-direct/range {v41 .. v46}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v8, v14

    .line 222
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 225
    new-instance v14, Ljxl/write/Label;

    const-string v15, "+/- Bilko default format"

    invoke-direct {v14, v5, v3, v15}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v4, v14

    .line 226
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 227
    new-instance v14, Ljxl/write/Number;

    move-object/from16 v17, v12

    .end local v12    # "pounddp2":Ljxl/write/NumberFormat;
    .local v17, "pounddp2":Ljxl/write/NumberFormat;
    const-wide v11, 0x416cb11160000000L    # 1.5042699E7

    invoke-direct {v14, v6, v3, v11, v12}, Ljxl/write/Number;-><init>(IID)V

    move-object v8, v14

    .line 228
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 229
    new-instance v11, Ljxl/write/Number;

    const-wide v5, -0x3e934eeea0000000L    # -1.5042699E7

    invoke-direct {v11, v7, v3, v5, v6}, Ljxl/write/Number;-><init>(IID)V

    move-object v5, v11

    .line 230
    .end local v8    # "n":Ljxl/write/Number;
    .local v5, "n":Ljxl/write/Number;
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 232
    new-instance v6, Ljxl/write/Label;

    const-string v8, "+/- Bilko float format"

    const/4 v11, 0x4

    invoke-direct {v6, v11, v2, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v4, v6

    .line 233
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 234
    new-instance v6, Ljxl/write/WritableCellFormat;

    sget-object v8, Ljxl/write/NumberFormats;->FLOAT:Ljxl/biff/DisplayFormat;

    invoke-direct {v6, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v46, v6

    .line 235
    .local v46, "cfi1":Ljxl/write/WritableCellFormat;
    new-instance v6, Ljxl/write/Number;

    const/16 v42, 0x5

    const/16 v43, 0x1

    const-wide v44, 0x416cb11160000000L    # 1.5042699E7

    move-object/from16 v41, v6

    invoke-direct/range {v41 .. v46}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v6

    .line 236
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 237
    new-instance v6, Ljxl/write/Number;

    const/16 v48, 0x6

    const/16 v49, 0x1

    const-wide v50, -0x3e934eeea0000000L    # -1.5042699E7

    move-object/from16 v47, v6

    move-object/from16 v52, v46

    invoke-direct/range {v47 .. v52}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v6

    .line 238
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 240
    new-instance v6, Ljxl/write/Label;

    const-string v8, "+/- Thousands separator"

    const/4 v11, 0x4

    invoke-direct {v6, v11, v10, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v4, v6

    .line 241
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 242
    new-instance v6, Ljxl/write/WritableCellFormat;

    sget-object v8, Ljxl/write/NumberFormats;->THOUSANDS_INTEGER:Ljxl/biff/DisplayFormat;

    invoke-direct {v6, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v52, v6

    .line 244
    .local v52, "cfi2":Ljxl/write/WritableCellFormat;
    new-instance v6, Ljxl/write/Number;

    const/16 v48, 0x5

    const/16 v49, 0x2

    const-wide v50, 0x416cb11160000000L    # 1.5042699E7

    move-object/from16 v47, v6

    invoke-direct/range {v47 .. v52}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v6

    .line 245
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 246
    new-instance v6, Ljxl/write/Number;

    const/16 v54, 0x6

    const/16 v55, 0x2

    const-wide v56, -0x3e934eeea0000000L    # -1.5042699E7

    move-object/from16 v53, v6

    move-object/from16 v58, v52

    invoke-direct/range {v53 .. v58}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v6

    .line 247
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 249
    new-instance v6, Ljxl/write/Label;

    const-string v8, "+/- Accounting red - added 0.01"

    const/4 v10, 0x3

    const/4 v11, 0x4

    invoke-direct {v6, v11, v10, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v4, v6

    .line 250
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 251
    new-instance v6, Ljxl/write/WritableCellFormat;

    sget-object v8, Ljxl/write/NumberFormats;->ACCOUNTING_RED_FLOAT:Ljxl/biff/DisplayFormat;

    invoke-direct {v6, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v58, v6

    .line 253
    .local v58, "cfi3":Ljxl/write/WritableCellFormat;
    new-instance v6, Ljxl/write/Number;

    const/16 v54, 0x5

    const/16 v55, 0x3

    const-wide v56, 0x416cb1116051eb85L    # 1.504269901E7

    move-object/from16 v53, v6

    invoke-direct/range {v53 .. v58}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v6

    .line 254
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 255
    new-instance v6, Ljxl/write/Number;

    const/16 v60, 0x6

    const/16 v61, 0x3

    const-wide v62, -0x3e934eee9fae147bL    # -1.504269901E7

    move-object/from16 v59, v6

    move-object/from16 v64, v58

    invoke-direct/range {v59 .. v64}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v6

    .line 256
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 258
    new-instance v6, Ljxl/write/Label;

    const-string v8, "+/- Percent"

    const/4 v10, 0x4

    invoke-direct {v6, v10, v10, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v4, v6

    .line 259
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 260
    new-instance v6, Ljxl/write/WritableCellFormat;

    sget-object v8, Ljxl/write/NumberFormats;->PERCENT_INTEGER:Ljxl/biff/DisplayFormat;

    invoke-direct {v6, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v64, v6

    .line 262
    .local v64, "cfi4":Ljxl/write/WritableCellFormat;
    new-instance v6, Ljxl/write/Number;

    const/16 v60, 0x5

    const/16 v61, 0x4

    const-wide v62, 0x416cb11160000000L    # 1.5042699E7

    move-object/from16 v59, v6

    invoke-direct/range {v59 .. v64}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v6

    .line 263
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 264
    new-instance v6, Ljxl/write/Number;

    const/16 v66, 0x6

    const/16 v67, 0x4

    const-wide v68, -0x3e934eeea0000000L    # -1.5042699E7

    move-object/from16 v65, v6

    move-object/from16 v70, v64

    invoke-direct/range {v65 .. v70}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v6

    .line 265
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 267
    new-instance v6, Ljxl/write/Label;

    const-string v8, "+/- Exponential - 2dps"

    const/4 v10, 0x5

    const/4 v11, 0x4

    invoke-direct {v6, v11, v10, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v4, v6

    .line 268
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 269
    new-instance v6, Ljxl/write/WritableCellFormat;

    sget-object v8, Ljxl/write/NumberFormats;->EXPONENTIAL:Ljxl/biff/DisplayFormat;

    invoke-direct {v6, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v70, v6

    .line 271
    .local v70, "cfi5":Ljxl/write/WritableCellFormat;
    new-instance v6, Ljxl/write/Number;

    const/16 v66, 0x5

    const/16 v67, 0x5

    const-wide v68, 0x416cb11160000000L    # 1.5042699E7

    move-object/from16 v65, v6

    invoke-direct/range {v65 .. v70}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v6

    .line 272
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 273
    new-instance v6, Ljxl/write/Number;

    const/16 v72, 0x6

    const/16 v73, 0x5

    const-wide v74, -0x3e934eeea0000000L    # -1.5042699E7

    move-object/from16 v71, v6

    move-object/from16 v76, v70

    invoke-direct/range {v71 .. v76}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v6

    .line 274
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 276
    new-instance v6, Ljxl/write/Label;

    const-string v8, "+/- Custom exponentional - 3dps"

    const/4 v10, 0x4

    invoke-direct {v6, v10, v7, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v4, v6

    .line 277
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 278
    new-instance v6, Ljxl/write/NumberFormat;

    const-string v7, "0.000E0"

    invoke-direct {v6, v7}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 279
    .local v6, "edp3":Ljxl/write/NumberFormat;
    new-instance v7, Ljxl/write/WritableCellFormat;

    invoke-direct {v7, v6}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v76, v7

    .line 280
    .local v76, "edp3Cell":Ljxl/write/WritableCellFormat;
    new-instance v7, Ljxl/write/Number;

    const/16 v72, 0x5

    const/16 v73, 0x6

    const-wide v74, 0x416cb11160000000L    # 1.5042699E7

    move-object/from16 v71, v7

    invoke-direct/range {v71 .. v76}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v7

    .line 281
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 282
    new-instance v7, Ljxl/write/Number;

    const/16 v78, 0x6

    const/16 v79, 0x6

    const-wide v80, -0x3e934eeea0000000L    # -1.5042699E7

    move-object/from16 v77, v7

    move-object/from16 v82, v76

    invoke-direct/range {v77 .. v82}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v7

    .line 283
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 285
    new-instance v7, Ljxl/write/Label;

    const/4 v8, 0x7

    const-string v10, "Custom neg brackets"

    const/4 v11, 0x4

    invoke-direct {v7, v11, v8, v10, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v4, v7

    .line 286
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 287
    new-instance v7, Ljxl/write/NumberFormat;

    const-string v8, "#,##0;(#,##0)"

    invoke-direct {v7, v8}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 288
    .local v7, "negbracks":Ljxl/write/NumberFormat;
    new-instance v8, Ljxl/write/WritableCellFormat;

    invoke-direct {v8, v7}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v82, v8

    .line 289
    .local v82, "negbrackscell":Ljxl/write/WritableCellFormat;
    new-instance v8, Ljxl/write/Number;

    const/16 v78, 0x5

    const/16 v79, 0x7

    const-wide v80, 0x416cb11160000000L    # 1.5042699E7

    move-object/from16 v77, v8

    invoke-direct/range {v77 .. v82}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v8

    .line 290
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 291
    new-instance v8, Ljxl/write/Number;

    const/16 v84, 0x6

    const/16 v85, 0x7

    const-wide v86, -0x3e934eeea0000000L    # -1.5042699E7

    move-object/from16 v83, v8

    move-object/from16 v88, v82

    invoke-direct/range {v83 .. v88}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v8

    .line 292
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 294
    new-instance v8, Ljxl/write/Label;

    const/16 v10, 0x8

    const-string v11, "Custom neg brackets 2"

    const/4 v12, 0x4

    invoke-direct {v8, v12, v10, v11, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v4, v8

    .line 295
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 296
    new-instance v8, Ljxl/write/NumberFormat;

    const-string v10, "#,##0;(#,##0)a"

    invoke-direct {v8, v10}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 297
    .local v8, "negbracks2":Ljxl/write/NumberFormat;
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v88, v10

    .line 298
    .local v88, "negbrackscell2":Ljxl/write/WritableCellFormat;
    new-instance v10, Ljxl/write/Number;

    const/16 v84, 0x5

    const/16 v85, 0x8

    const-wide v86, 0x416cb11160000000L    # 1.5042699E7

    move-object/from16 v83, v10

    invoke-direct/range {v83 .. v88}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v10

    .line 299
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 300
    new-instance v10, Ljxl/write/Number;

    const/16 v90, 0x6

    const/16 v91, 0x8

    const-wide v92, -0x3e934eeea0000000L    # -1.5042699E7

    move-object/from16 v89, v10

    move-object/from16 v94, v88

    invoke-direct/range {v89 .. v94}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v10

    .line 301
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 303
    new-instance v10, Ljxl/write/Label;

    const/16 v11, 0x9

    const-string v14, "Custom percent"

    const/4 v12, 0x4

    invoke-direct {v10, v12, v11, v14, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v4, v10

    .line 304
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 305
    new-instance v10, Ljxl/write/NumberFormat;

    const-string v11, "0.0%"

    invoke-direct {v10, v11}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 306
    .local v10, "cuspercent":Ljxl/write/NumberFormat;
    new-instance v11, Ljxl/write/WritableCellFormat;

    invoke-direct {v11, v10}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v94, v11

    .line 307
    .local v94, "cuspercentf":Ljxl/write/WritableCellFormat;
    new-instance v11, Ljxl/write/Number;

    const/16 v90, 0x5

    const/16 v91, 0x9

    const-wide v92, 0x400921fb53c8d4f1L    # 3.14159265

    move-object/from16 v89, v11

    invoke-direct/range {v89 .. v94}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v5, v11

    .line 308
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 312
    new-instance v11, Ljxl/write/Label;

    const/16 v14, 0xa

    const-string v15, "Boolean - TRUE"

    invoke-direct {v11, v3, v14, v15}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v4, v11

    .line 313
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 314
    new-instance v11, Ljxl/write/Boolean;

    invoke-direct {v11, v2, v14, v2}, Ljxl/write/Boolean;-><init>(IIZ)V

    .line 315
    .local v11, "b":Ljxl/write/Boolean;
    invoke-interface {v0, v11}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 317
    new-instance v14, Ljxl/write/Label;

    const/16 v15, 0xb

    const-string v12, "Boolean - FALSE"

    invoke-direct {v14, v3, v15, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v4, v14

    .line 318
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 319
    new-instance v12, Ljxl/write/Boolean;

    invoke-direct {v12, v2, v15, v3}, Ljxl/write/Boolean;-><init>(IIZ)V

    move-object v2, v12

    .line 320
    .end local v11    # "b":Ljxl/write/Boolean;
    .local v2, "b":Ljxl/write/Boolean;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 322
    new-instance v11, Ljxl/write/Label;

    const/16 v12, 0xc

    const-string v14, "A hidden cell->"

    invoke-direct {v11, v3, v12, v14}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v11

    .line 323
    .end local v4    # "l":Ljxl/write/Label;
    .local v3, "l":Ljxl/write/Label;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 324
    new-instance v4, Ljxl/write/Number;

    sget-object v100, Ljxl/write/WritableWorkbook;->HIDDEN_STYLE:Ljxl/write/WritableCellFormat;

    const/16 v96, 0x1

    const/16 v97, 0xc

    const-wide/high16 v98, 0x4031000000000000L    # 17.0

    move-object/from16 v95, v4

    invoke-direct/range {v95 .. v100}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 325
    .end local v5    # "n":Ljxl/write/Number;
    .local v4, "n":Ljxl/write/Number;
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 328
    new-instance v5, Ljxl/write/Label;

    const/16 v11, 0x13

    const-string v12, "Currency formats"

    const/4 v14, 0x4

    invoke-direct {v5, v14, v11, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v5

    .line 329
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 331
    new-instance v5, Ljxl/write/Label;

    const/16 v11, 0x15

    const-string v12, "UK Pound"

    invoke-direct {v5, v14, v11, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v5

    .line 332
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 333
    new-instance v5, Ljxl/write/NumberFormat;

    sget-object v11, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string/jumbo v14, "\ufffd #,###.00"

    invoke-direct {v5, v14, v11}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 336
    .local v5, "poundCurrency":Ljxl/write/NumberFormat;
    new-instance v11, Ljxl/write/WritableCellFormat;

    invoke-direct {v11, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v100, v11

    .line 337
    .local v100, "poundFormat":Ljxl/write/WritableCellFormat;
    new-instance v11, Ljxl/write/Number;

    const/16 v96, 0x5

    const/16 v97, 0x15

    const-wide v98, 0x40c81c8000000000L    # 12345.0

    move-object/from16 v95, v11

    invoke-direct/range {v95 .. v100}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v4, v11

    .line 338
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 340
    new-instance v11, Ljxl/write/Label;

    const/16 v14, 0x16

    const-string v15, "Euro 1"

    const/4 v12, 0x4

    invoke-direct {v11, v12, v14, v15}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v3, v11

    .line 341
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 342
    new-instance v11, Ljxl/write/NumberFormat;

    sget-object v14, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v15, "[$\ufffd-2] #,###.00"

    invoke-direct {v11, v15, v14}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 345
    .local v11, "euroPrefixCurrency":Ljxl/write/NumberFormat;
    new-instance v14, Ljxl/write/WritableCellFormat;

    invoke-direct {v14, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v106, v14

    .line 347
    .local v106, "euroPrefixFormat":Ljxl/write/WritableCellFormat;
    new-instance v14, Ljxl/write/Number;

    const/16 v102, 0x5

    const/16 v103, 0x16

    const-wide v104, 0x40c81c8000000000L    # 12345.0

    move-object/from16 v101, v14

    invoke-direct/range {v101 .. v106}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v4, v14

    .line 348
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 350
    new-instance v14, Ljxl/write/Label;

    const/16 v15, 0x17

    const-string v12, "Euro 2"

    move-object/from16 v19, v2

    const/4 v2, 0x4

    .end local v2    # "b":Ljxl/write/Boolean;
    .local v19, "b":Ljxl/write/Boolean;
    invoke-direct {v14, v2, v15, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v2, v14

    .line 351
    .end local v3    # "l":Ljxl/write/Label;
    .local v2, "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 352
    new-instance v3, Ljxl/write/NumberFormat;

    sget-object v14, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v15, "#,###.00[$\ufffd-1]"

    invoke-direct {v3, v15, v14}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 355
    .local v3, "euroSuffixCurrency":Ljxl/write/NumberFormat;
    new-instance v14, Ljxl/write/WritableCellFormat;

    invoke-direct {v14, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v112, v14

    .line 357
    .local v112, "euroSuffixFormat":Ljxl/write/WritableCellFormat;
    new-instance v14, Ljxl/write/Number;

    const/16 v108, 0x5

    const/16 v109, 0x17

    const-wide v110, 0x40c81c8000000000L    # 12345.0

    move-object/from16 v107, v14

    invoke-direct/range {v107 .. v112}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v4, v14

    .line 358
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 360
    new-instance v14, Ljxl/write/Label;

    const/16 v15, 0x18

    const-string v12, "Dollar"

    move-object/from16 v20, v2

    const/4 v2, 0x4

    .end local v2    # "l":Ljxl/write/Label;
    .local v20, "l":Ljxl/write/Label;
    invoke-direct {v14, v2, v15, v12}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v2, v14

    .line 361
    .end local v20    # "l":Ljxl/write/Label;
    .restart local v2    # "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 362
    new-instance v14, Ljxl/write/NumberFormat;

    sget-object v15, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v12, "[$$-409] #,###.00"

    invoke-direct {v14, v12, v15}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 365
    .local v14, "dollarCurrency":Ljxl/write/NumberFormat;
    new-instance v12, Ljxl/write/WritableCellFormat;

    invoke-direct {v12, v14}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v118, v12

    .line 367
    .local v118, "dollarFormat":Ljxl/write/WritableCellFormat;
    new-instance v12, Ljxl/write/Number;

    const/16 v114, 0x5

    const/16 v115, 0x18

    const-wide v116, 0x40c81c8000000000L    # 12345.0

    move-object/from16 v113, v12

    invoke-direct/range {v113 .. v118}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v4, v12

    .line 368
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 370
    new-instance v15, Ljxl/write/Label;

    const/16 v12, 0x19

    move-object/from16 v20, v2

    .end local v2    # "l":Ljxl/write/Label;
    .restart local v20    # "l":Ljxl/write/Label;
    const-string v2, "Japanese Yen"

    move-object/from16 v21, v3

    const/4 v3, 0x4

    .end local v3    # "euroSuffixCurrency":Ljxl/write/NumberFormat;
    .local v21, "euroSuffixCurrency":Ljxl/write/NumberFormat;
    invoke-direct {v15, v3, v12, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move v2, v12

    move-object v3, v15

    .line 371
    .end local v20    # "l":Ljxl/write/Label;
    .local v3, "l":Ljxl/write/Label;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 372
    new-instance v15, Ljxl/write/NumberFormat;

    sget-object v12, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v2, "[$\ufffd-411] #,###.00"

    invoke-direct {v15, v2, v12}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    move-object v2, v15

    .line 375
    .local v2, "japaneseYenCurrency":Ljxl/write/NumberFormat;
    new-instance v12, Ljxl/write/WritableCellFormat;

    invoke-direct {v12, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v124, v12

    .line 377
    .local v124, "japaneseYenFormat":Ljxl/write/WritableCellFormat;
    new-instance v12, Ljxl/write/Number;

    const/16 v120, 0x5

    const/16 v121, 0x19

    const-wide v122, 0x40c81c8000000000L    # 12345.0

    move-object/from16 v119, v12

    invoke-direct/range {v119 .. v124}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v4, v12

    .line 378
    invoke-interface {v0, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 380
    new-instance v12, Ljxl/write/Label;

    const/16 v15, 0x1e

    move-object/from16 v23, v2

    .end local v2    # "japaneseYenCurrency":Ljxl/write/NumberFormat;
    .local v23, "japaneseYenCurrency":Ljxl/write/NumberFormat;
    const-string v2, "Fraction formats"

    move-object/from16 v24, v3

    const/4 v3, 0x4

    .end local v3    # "l":Ljxl/write/Label;
    .local v24, "l":Ljxl/write/Label;
    invoke-direct {v12, v3, v15, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    move-object v2, v12

    .line 381
    .end local v24    # "l":Ljxl/write/Label;
    .local v2, "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 383
    new-instance v15, Ljxl/write/Label;

    const/16 v12, 0x20

    move-object/from16 v18, v2

    .end local v2    # "l":Ljxl/write/Label;
    .local v18, "l":Ljxl/write/Label;
    const-string v2, "One digit fraction format"

    invoke-direct {v15, v3, v12, v2, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v15

    .line 384
    .end local v18    # "l":Ljxl/write/Label;
    .restart local v2    # "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 386
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v15, Ljxl/write/NumberFormats;->FRACTION_ONE_DIGIT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v15}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v130, v3

    .line 388
    .local v130, "fraction1digitformat":Ljxl/write/WritableCellFormat;
    new-instance v3, Ljxl/write/Number;

    const/16 v126, 0x5

    const/16 v127, 0x20

    const-wide v128, 0x4009765a9a804966L    # 3.18279

    move-object/from16 v125, v3

    invoke-direct/range {v125 .. v130}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 389
    .end local v4    # "n":Ljxl/write/Number;
    .local v3, "n":Ljxl/write/Number;
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 391
    new-instance v4, Ljxl/write/Label;

    const/16 v15, 0x21

    const-string v12, "Two digit fraction format"

    move-object/from16 v24, v2

    const/4 v2, 0x4

    .end local v2    # "l":Ljxl/write/Label;
    .restart local v24    # "l":Ljxl/write/Label;
    invoke-direct {v4, v2, v15, v12, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v4

    .line 392
    .end local v24    # "l":Ljxl/write/Label;
    .restart local v2    # "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 394
    new-instance v4, Ljxl/write/WritableCellFormat;

    sget-object v15, Ljxl/write/NumberFormats;->FRACTION_TWO_DIGITS:Ljxl/biff/DisplayFormat;

    invoke-direct {v4, v15}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v136, v4

    .line 396
    .local v136, "fraction2digitformat":Ljxl/write/WritableCellFormat;
    new-instance v4, Ljxl/write/Number;

    const/16 v132, 0x5

    const/16 v133, 0x21

    const-wide v134, 0x4009765a9a804966L    # 3.18279

    move-object/from16 v131, v4

    invoke-direct/range {v131 .. v136}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v3, v4

    .line 397
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 399
    new-instance v4, Ljxl/write/Label;

    const/16 v15, 0x22

    const-string v12, "Three digit fraction format (improper)"

    move-object/from16 v24, v2

    const/4 v2, 0x4

    .end local v2    # "l":Ljxl/write/Label;
    .restart local v24    # "l":Ljxl/write/Label;
    invoke-direct {v4, v2, v15, v12, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v4

    .line 400
    .end local v24    # "l":Ljxl/write/Label;
    .restart local v2    # "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 402
    new-instance v4, Ljxl/write/NumberFormat;

    sget-object v15, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v12, "???/???"

    invoke-direct {v4, v12, v15}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 405
    .local v4, "fraction3digit1":Ljxl/write/NumberFormat;
    new-instance v12, Ljxl/write/WritableCellFormat;

    invoke-direct {v12, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v142, v12

    .line 407
    .local v142, "fraction3digitformat1":Ljxl/write/WritableCellFormat;
    new-instance v12, Ljxl/write/Number;

    const/16 v138, 0x5

    const/16 v139, 0x22

    const-wide v140, 0x4009839ffd60e94fL    # 3.18927

    move-object/from16 v137, v12

    invoke-direct/range {v137 .. v142}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    move-object v3, v12

    .line 408
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 410
    new-instance v12, Ljxl/write/Label;

    const/16 v15, 0x23

    move-object/from16 v24, v2

    .end local v2    # "l":Ljxl/write/Label;
    .restart local v24    # "l":Ljxl/write/Label;
    const-string v2, "Three digit fraction format (proper)"

    move-object/from16 v25, v3

    const/4 v3, 0x4

    .end local v3    # "n":Ljxl/write/Number;
    .local v25, "n":Ljxl/write/Number;
    invoke-direct {v12, v3, v15, v2, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    move-object v2, v12

    .line 411
    .end local v24    # "l":Ljxl/write/Label;
    .restart local v2    # "l":Ljxl/write/Label;
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 413
    new-instance v3, Ljxl/write/NumberFormat;

    sget-object v12, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v15, "# ???/???"

    invoke-direct {v3, v15, v12}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 416
    .local v3, "fraction3digit2":Ljxl/write/NumberFormat;
    new-instance v12, Ljxl/write/WritableCellFormat;

    invoke-direct {v12, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    move-object/from16 v148, v12

    .line 418
    .local v148, "fraction3digitformat2":Ljxl/write/WritableCellFormat;
    new-instance v12, Ljxl/write/Number;

    const/16 v144, 0x5

    const/16 v145, 0x23

    const-wide v146, 0x4009839ffd60e94fL    # 3.18927

    move-object/from16 v143, v12

    invoke-direct/range {v143 .. v148}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 419
    .end local v25    # "n":Ljxl/write/Number;
    .local v12, "n":Ljxl/write/Number;
    invoke-interface {v0, v12}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 422
    const/4 v15, 0x0

    .local v15, "row":I
    :goto_0
    move-object/from16 v18, v1

    .end local v1    # "wrappedText":Ljxl/write/WritableCellFormat;
    .local v18, "wrappedText":Ljxl/write/WritableCellFormat;
    const/16 v1, 0x64

    if-ge v15, v1, :cond_1

    .line 424
    const/16 v1, 0x8

    .local v1, "col":I
    :goto_1
    move-object/from16 v24, v2

    .end local v2    # "l":Ljxl/write/Label;
    .restart local v24    # "l":Ljxl/write/Label;
    const/16 v2, 0x6c

    if-ge v1, v2, :cond_0

    .line 426
    new-instance v2, Ljxl/write/Number;

    move-object/from16 v25, v3

    .end local v3    # "fraction3digit2":Ljxl/write/NumberFormat;
    .local v25, "fraction3digit2":Ljxl/write/NumberFormat;
    add-int v3, v1, v15

    move-object/from16 v26, v4

    .end local v4    # "fraction3digit1":Ljxl/write/NumberFormat;
    .local v26, "fraction3digit1":Ljxl/write/NumberFormat;
    int-to-double v3, v3

    invoke-direct {v2, v1, v15, v3, v4}, Ljxl/write/Number;-><init>(IID)V

    move-object v12, v2

    .line 427
    invoke-interface {v0, v12}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    goto :goto_1

    .end local v25    # "fraction3digit2":Ljxl/write/NumberFormat;
    .end local v26    # "fraction3digit1":Ljxl/write/NumberFormat;
    .restart local v3    # "fraction3digit2":Ljxl/write/NumberFormat;
    .restart local v4    # "fraction3digit1":Ljxl/write/NumberFormat;
    :cond_0
    move-object/from16 v25, v3

    move-object/from16 v26, v4

    .line 422
    .end local v1    # "col":I
    .end local v3    # "fraction3digit2":Ljxl/write/NumberFormat;
    .end local v4    # "fraction3digit1":Ljxl/write/NumberFormat;
    .restart local v25    # "fraction3digit2":Ljxl/write/NumberFormat;
    .restart local v26    # "fraction3digit1":Ljxl/write/NumberFormat;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    goto :goto_0

    .end local v24    # "l":Ljxl/write/Label;
    .end local v25    # "fraction3digit2":Ljxl/write/NumberFormat;
    .end local v26    # "fraction3digit1":Ljxl/write/NumberFormat;
    .restart local v2    # "l":Ljxl/write/Label;
    .restart local v3    # "fraction3digit2":Ljxl/write/NumberFormat;
    .restart local v4    # "fraction3digit1":Ljxl/write/NumberFormat;
    :cond_1
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    .line 432
    .end local v2    # "l":Ljxl/write/Label;
    .end local v3    # "fraction3digit2":Ljxl/write/NumberFormat;
    .end local v4    # "fraction3digit1":Ljxl/write/NumberFormat;
    .end local v15    # "row":I
    .restart local v24    # "l":Ljxl/write/Label;
    .restart local v25    # "fraction3digit2":Ljxl/write/NumberFormat;
    .restart local v26    # "fraction3digit1":Ljxl/write/NumberFormat;
    const/16 v1, 0x65

    .local v1, "row":I
    :goto_2
    const/16 v2, 0xbb8

    if-ge v1, v2, :cond_3

    .line 434
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_3
    const/16 v3, 0x19

    if-ge v2, v3, :cond_2

    .line 436
    new-instance v4, Ljxl/write/Number;

    add-int v15, v2, v1

    move-object/from16 v27, v5

    move-object/from16 v20, v6

    .end local v5    # "poundCurrency":Ljxl/write/NumberFormat;
    .end local v6    # "edp3":Ljxl/write/NumberFormat;
    .local v20, "edp3":Ljxl/write/NumberFormat;
    .local v27, "poundCurrency":Ljxl/write/NumberFormat;
    int-to-double v5, v15

    invoke-direct {v4, v2, v1, v5, v6}, Ljxl/write/Number;-><init>(IID)V

    move-object v12, v4

    .line 437
    invoke-interface {v0, v12}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 434
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v20

    move-object/from16 v5, v27

    goto :goto_3

    .end local v20    # "edp3":Ljxl/write/NumberFormat;
    .end local v27    # "poundCurrency":Ljxl/write/NumberFormat;
    .restart local v5    # "poundCurrency":Ljxl/write/NumberFormat;
    .restart local v6    # "edp3":Ljxl/write/NumberFormat;
    :cond_2
    move-object/from16 v27, v5

    move-object/from16 v20, v6

    .line 432
    .end local v2    # "col":I
    .end local v5    # "poundCurrency":Ljxl/write/NumberFormat;
    .end local v6    # "edp3":Ljxl/write/NumberFormat;
    .restart local v20    # "edp3":Ljxl/write/NumberFormat;
    .restart local v27    # "poundCurrency":Ljxl/write/NumberFormat;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 440
    .end local v1    # "row":I
    .end local v20    # "edp3":Ljxl/write/NumberFormat;
    .end local v27    # "poundCurrency":Ljxl/write/NumberFormat;
    .restart local v5    # "poundCurrency":Ljxl/write/NumberFormat;
    .restart local v6    # "edp3":Ljxl/write/NumberFormat;
    :cond_3
    return-void
.end method


# virtual methods
.method public write()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 104
    move-object/from16 v0, p0

    new-instance v1, Ljxl/WorkbookSettings;

    invoke-direct {v1}, Ljxl/WorkbookSettings;-><init>()V

    .line 105
    .local v1, "ws":Ljxl/WorkbookSettings;
    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    const-string v4, "EN"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljxl/WorkbookSettings;->setLocale(Ljava/util/Locale;)V

    .line 106
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Ljxl/demo/Write;->filename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;

    move-result-object v2

    iput-object v2, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    .line 109
    const-string v3, "Number Formats"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v2

    .line 110
    .local v2, "s2":Ljxl/write/WritableSheet;
    iget-object v3, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v5, "Date Formats"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v3

    .line 111
    .local v3, "s3":Ljxl/write/WritableSheet;
    iget-object v5, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v6, "Label Formats"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v5

    .line 112
    .local v5, "s1":Ljxl/write/WritableSheet;
    iget-object v6, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v7, "Borders"

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v6

    .line 113
    .local v6, "s4":Ljxl/write/WritableSheet;
    iget-object v7, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v8, "Labels"

    const/4 v15, 0x4

    invoke-virtual {v7, v8, v15}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v7

    .line 114
    .local v7, "s5":Ljxl/write/WritableSheet;
    iget-object v8, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v9, "Formulas"

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v8

    .line 115
    .local v8, "s6":Ljxl/write/WritableSheet;
    iget-object v9, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v10, "Images"

    const/4 v11, 0x6

    invoke-virtual {v9, v10, v11}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v14

    .line 120
    .local v14, "s7":Ljxl/write/WritableSheet;
    iget-object v9, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    sget-object v10, Ljxl/format/Colour;->LIME:Ljxl/format/Colour;

    const/16 v11, 0xff

    invoke-virtual {v9, v10, v11, v4, v4}, Ljxl/write/WritableWorkbook;->setColourRGB(Ljxl/format/Colour;III)V

    .line 123
    iget-object v9, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v10, "namedrange"

    const/4 v12, 0x1

    const/16 v13, 0xb

    const/4 v4, 0x5

    const/16 v16, 0xe

    move-object v11, v6

    move-object/from16 v23, v14

    .end local v14    # "s7":Ljxl/write/WritableSheet;
    .local v23, "s7":Ljxl/write/WritableSheet;
    move v14, v4

    move v4, v15

    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Ljxl/write/WritableWorkbook;->addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 124
    iget-object v9, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string/jumbo v10, "validation_range"

    const/4 v11, 0x4

    const/16 v12, 0x41

    const/16 v13, 0x9

    const/16 v14, 0x41

    move-object v15, v8

    .end local v8    # "s6":Ljxl/write/WritableSheet;
    .local v15, "s6":Ljxl/write/WritableSheet;
    move-object v8, v9

    move-object v9, v10

    move-object v10, v5

    invoke-virtual/range {v8 .. v14}, Ljxl/write/WritableWorkbook;->addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 125
    iget-object v8, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v17, "formulavalue"

    const/16 v19, 0x1

    const/16 v20, 0x2d

    const/16 v21, 0x1

    const/16 v22, 0x2d

    move-object/from16 v16, v8

    move-object/from16 v18, v15

    invoke-virtual/range {v16 .. v22}, Ljxl/write/WritableWorkbook;->addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 128
    invoke-interface {v7}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v8

    const/16 v9, 0xf

    const/16 v10, 0x23

    invoke-virtual {v8, v4, v4, v9, v10}, Ljxl/SheetSettings;->setPrintArea(IIII)V

    .line 130
    invoke-direct {v0, v5}, Ljxl/demo/Write;->writeLabelFormatSheet(Ljxl/write/WritableSheet;)V

    .line 131
    invoke-direct {v0, v2}, Ljxl/demo/Write;->writeNumberFormatSheet(Ljxl/write/WritableSheet;)V

    .line 132
    invoke-direct {v0, v3}, Ljxl/demo/Write;->writeDateFormatSheet(Ljxl/write/WritableSheet;)V

    .line 133
    invoke-direct {v0, v6}, Ljxl/demo/Write;->writeBordersSheet(Ljxl/write/WritableSheet;)V

    .line 134
    invoke-direct {v0, v7}, Ljxl/demo/Write;->writeLabelsSheet(Ljxl/write/WritableSheet;)V

    .line 135
    invoke-direct {v0, v15}, Ljxl/demo/Write;->writeFormulaSheet(Ljxl/write/WritableSheet;)V

    .line 136
    move-object/from16 v4, v23

    .end local v23    # "s7":Ljxl/write/WritableSheet;
    .local v4, "s7":Ljxl/write/WritableSheet;
    invoke-direct {v0, v4}, Ljxl/demo/Write;->writeImageSheet(Ljxl/write/WritableSheet;)V

    .line 138
    iget-object v8, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    invoke-virtual {v8}, Ljxl/write/WritableWorkbook;->write()V

    .line 139
    iget-object v8, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    invoke-virtual {v8}, Ljxl/write/WritableWorkbook;->close()V

    .line 140
    return-void
.end method
