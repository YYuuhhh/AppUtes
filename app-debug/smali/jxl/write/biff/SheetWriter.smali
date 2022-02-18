.class final Ljxl/write/biff/SheetWriter;
.super Ljava/lang/Object;
.source "SheetWriter.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private chartOnly:Z

.field private columnBreaks:Ljava/util/ArrayList;

.field private columnFormats:Ljava/util/TreeSet;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

.field private footer:Ljxl/write/biff/FooterRecord;

.field private header:Ljxl/write/biff/HeaderRecord;

.field private hyperlinks:Ljava/util/ArrayList;

.field private maxColumnOutlineLevel:I

.field private maxRowOutlineLevel:I

.field private mergedCells:Ljxl/write/biff/MergedCells;

.field private numCols:I

.field private numRows:I

.field private outputFile:Ljxl/write/biff/File;

.field private plsRecord:Ljxl/write/biff/PLSRecord;

.field private rowBreaks:Ljava/util/ArrayList;

.field private rows:[Ljxl/write/biff/RowRecord;

.field private settings:Ljxl/SheetSettings;

.field private sheet:Ljxl/write/biff/WritableSheetImpl;

.field private validatedCells:Ljava/util/ArrayList;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Ljxl/write/biff/SheetWriter;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SheetWriter;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/File;Ljxl/write/biff/WritableSheetImpl;Ljxl/WorkbookSettings;)V
    .locals 1
    .param p1, "of"    # Ljxl/write/biff/File;
    .param p2, "wsi"    # Ljxl/write/biff/WritableSheetImpl;
    .param p3, "ws"    # Ljxl/WorkbookSettings;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    .line 195
    iput-object p2, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    .line 196
    new-instance v0, Ljxl/biff/WorkspaceInformationRecord;

    invoke-direct {v0}, Ljxl/biff/WorkspaceInformationRecord;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    .line 197
    iput-object p3, p0, Ljxl/write/biff/SheetWriter;->workbookSettings:Ljxl/WorkbookSettings;

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/write/biff/SheetWriter;->chartOnly:Z

    .line 199
    new-instance v0, Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-direct {v0, p3}, Ljxl/biff/drawing/SheetDrawingWriter;-><init>(Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    .line 200
    return-void
.end method

.method private getColumn(I)[Ljxl/Cell;
    .locals 6
    .param p1, "col"    # I

    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "found":Z
    iget v1, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    add-int/lit8 v1, v1, -0x1

    .line 1019
    .local v1, "row":I
    :goto_0
    if-ltz v1, :cond_1

    if-nez v0, :cond_1

    .line 1021
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1024
    const/4 v0, 0x1

    goto :goto_0

    .line 1028
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1033
    :cond_1
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljxl/Cell;

    .line 1035
    .local v2, "cells":[Ljxl/Cell;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, v1, :cond_3

    .line 1037
    iget-object v4, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v5, v4, v3

    if-eqz v5, :cond_2

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    aput-object v4, v2, v3

    .line 1035
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1040
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method private writeDataValidation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/DataValidation;->write(Ljxl/write/biff/File;)V

    .line 1114
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    if-nez v0, :cond_2

    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1121
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/ComboBox;->getObjectId()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1123
    .local v0, "comboBoxId":I
    :goto_0
    new-instance v1, Ljxl/biff/DataValidation;

    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v2

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v3

    iget-object v4, p0, Ljxl/write/biff/SheetWriter;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2, v3, v4}, Ljxl/biff/DataValidation;-><init>(ILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    .line 1129
    .end local v0    # "comboBoxId":I
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    .line 1132
    .local v1, "cv":Ljxl/write/biff/CellValue;
    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v2

    .line 1137
    .local v2, "cf":Ljxl/CellFeatures;
    invoke-virtual {v2}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/biff/DVParser;->copied()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1139
    invoke-virtual {v2}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1142
    new-instance v3, Ljxl/biff/DataValiditySettingsRecord;

    invoke-virtual {v2}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v4

    invoke-direct {v3, v4}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/biff/DVParser;)V

    .line 1144
    .local v3, "dvsr":Ljxl/biff/DataValiditySettingsRecord;
    iget-object v4, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    invoke-virtual {v4, v3}, Ljxl/biff/DataValidation;->add(Ljxl/biff/DataValiditySettingsRecord;)V

    .line 1145
    .end local v3    # "dvsr":Ljxl/biff/DataValiditySettingsRecord;
    goto :goto_2

    .line 1150
    :cond_3
    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v3

    invoke-virtual {v2}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getRow()I

    move-result v3

    invoke-virtual {v2}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 1153
    new-instance v3, Ljxl/biff/DataValiditySettingsRecord;

    invoke-virtual {v2}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v4

    invoke-direct {v3, v4}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/biff/DVParser;)V

    .line 1155
    .restart local v3    # "dvsr":Ljxl/biff/DataValiditySettingsRecord;
    iget-object v4, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    invoke-virtual {v4, v3}, Ljxl/biff/DataValidation;->add(Ljxl/biff/DataValiditySettingsRecord;)V

    .line 1159
    .end local v1    # "cv":Ljxl/write/biff/CellValue;
    .end local v2    # "cf":Ljxl/CellFeatures;
    .end local v3    # "dvsr":Ljxl/biff/DataValiditySettingsRecord;
    :cond_4
    :goto_2
    goto :goto_1

    .line 1160
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/DataValidation;->write(Ljxl/write/biff/File;)V

    .line 1161
    return-void
.end method


# virtual methods
.method checkMergedBorders()V
    .locals 16

    .line 734
    move-object/from16 v1, p0

    iget-object v0, v1, Ljxl/write/biff/SheetWriter;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0}, Ljxl/write/biff/MergedCells;->getMergedCells()[Ljxl/Range;

    move-result-object v2

    .line 735
    .local v2, "mcells":[Ljxl/Range;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 736
    .local v3, "borderFormats":Ljava/util/ArrayList;
    const/4 v0, 0x0

    move v4, v0

    .local v4, "mci":I
    :goto_0
    array-length v0, v2

    if-ge v4, v0, :cond_17

    .line 738
    aget-object v5, v2, v4

    .line 739
    .local v5, "range":Ljxl/Range;
    invoke-interface {v5}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v6

    .line 740
    .local v6, "topLeft":Ljxl/Cell;
    invoke-interface {v6}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljxl/biff/XFRecord;

    .line 742
    .local v7, "tlformat":Ljxl/biff/XFRecord;
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Ljxl/biff/XFRecord;->hasBorders()Z

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_16

    invoke-virtual {v7}, Ljxl/biff/XFRecord;->isRead()Z

    move-result v0

    if-nez v0, :cond_16

    .line 748
    :try_start_0
    new-instance v0, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v0, v7}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 749
    .local v0, "cf1":Ljxl/write/biff/CellXFRecord;
    invoke-interface {v5}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v9

    .line 751
    .local v9, "bottomRight":Ljxl/Cell;
    sget-object v10, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v11, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v12, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v0, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 752
    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v7, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v7, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v0, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 755
    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v7, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v7, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v0, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 759
    invoke-interface {v6}, Ljxl/Cell;->getRow()I

    move-result v10

    invoke-interface {v9}, Ljxl/Cell;->getRow()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 761
    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v7, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v7, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v0, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 766
    :cond_0
    invoke-interface {v6}, Ljxl/Cell;->getColumn()I

    move-result v10

    invoke-interface {v9}, Ljxl/Cell;->getColumn()I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 768
    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v7, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v7, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v0, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 773
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 774
    .local v10, "index":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 776
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljxl/write/biff/CellXFRecord;

    move-object v0, v12

    goto :goto_1

    .line 780
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :goto_1
    move-object v12, v6

    check-cast v12, Ljxl/write/WritableCell;

    invoke-interface {v12, v0}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 785
    invoke-interface {v9}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-interface {v6}, Ljxl/Cell;->getRow()I

    move-result v13

    if-le v12, v13, :cond_7

    .line 788
    invoke-interface {v9}, Ljxl/Cell;->getColumn()I

    move-result v12

    invoke-interface {v6}, Ljxl/Cell;->getColumn()I

    move-result v13

    if-eq v12, v13, :cond_4

    .line 790
    new-instance v12, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v12, v7}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 791
    .local v12, "cf2":Ljxl/write/biff/CellXFRecord;
    sget-object v13, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v14, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v15, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 792
    sget-object v13, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v14, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v14

    sget-object v15, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v7, v15}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 795
    sget-object v13, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v14, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v14

    sget-object v15, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v7, v15}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 799
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    move v10, v13

    .line 800
    if-eq v10, v11, :cond_3

    .line 802
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljxl/write/biff/CellXFRecord;

    move-object v12, v13

    goto :goto_2

    .line 806
    :cond_3
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    :goto_2
    iget-object v13, v1, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v14, Ljxl/write/Blank;

    invoke-interface {v6}, Ljxl/Cell;->getColumn()I

    move-result v15

    invoke-interface {v9}, Ljxl/Cell;->getRow()I

    move-result v11

    invoke-direct {v14, v15, v11, v12}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v13, v14}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 815
    .end local v12    # "cf2":Ljxl/write/biff/CellXFRecord;
    :cond_4
    invoke-interface {v6}, Ljxl/Cell;->getRow()I

    move-result v11

    add-int/2addr v11, v8

    .local v11, "i":I
    :goto_3
    invoke-interface {v9}, Ljxl/Cell;->getRow()I

    move-result v12

    if-ge v11, v12, :cond_7

    .line 817
    new-instance v12, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v12, v7}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 818
    .local v12, "cf3":Ljxl/write/biff/CellXFRecord;
    sget-object v13, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v14, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v15, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 819
    sget-object v13, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v14, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v14

    sget-object v15, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v7, v15}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 823
    invoke-interface {v6}, Ljxl/Cell;->getColumn()I

    move-result v13

    invoke-interface {v9}, Ljxl/Cell;->getColumn()I

    move-result v14

    if-ne v13, v14, :cond_5

    .line 825
    sget-object v13, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v14, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v14

    sget-object v15, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v7, v15}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 830
    :cond_5
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    move v10, v13

    .line 831
    const/4 v13, -0x1

    if-eq v10, v13, :cond_6

    .line 833
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljxl/write/biff/CellXFRecord;

    move-object v12, v13

    goto :goto_4

    .line 837
    :cond_6
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    :goto_4
    iget-object v13, v1, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v14, Ljxl/write/Blank;

    invoke-interface {v6}, Ljxl/Cell;->getColumn()I

    move-result v15

    invoke-direct {v14, v15, v11, v12}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v13, v14}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 815
    .end local v12    # "cf3":Ljxl/write/biff/CellXFRecord;
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 845
    .end local v11    # "i":I
    :cond_7
    invoke-interface {v9}, Ljxl/Cell;->getColumn()I

    move-result v11

    invoke-interface {v6}, Ljxl/Cell;->getColumn()I

    move-result v12

    if-le v11, v12, :cond_e

    .line 847
    invoke-interface {v9}, Ljxl/Cell;->getRow()I

    move-result v11

    invoke-interface {v6}, Ljxl/Cell;->getRow()I

    move-result v12

    if-eq v11, v12, :cond_9

    .line 850
    new-instance v11, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v11, v7}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 851
    .local v11, "cf6":Ljxl/write/biff/CellXFRecord;
    sget-object v12, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v13, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v14, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v11, v12, v13, v14}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 852
    sget-object v12, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v13, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v7, v13}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v13

    sget-object v14, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 855
    sget-object v12, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v13, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v7, v13}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v13

    sget-object v14, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 858
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    move v10, v12

    .line 859
    const/4 v12, -0x1

    if-eq v10, v12, :cond_8

    .line 861
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljxl/write/biff/CellXFRecord;

    move-object v11, v12

    goto :goto_5

    .line 865
    :cond_8
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    :goto_5
    iget-object v12, v1, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v13, Ljxl/write/Blank;

    invoke-interface {v9}, Ljxl/Cell;->getColumn()I

    move-result v14

    invoke-interface {v6}, Ljxl/Cell;->getRow()I

    move-result v15

    invoke-direct {v13, v14, v15, v11}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v12, v13}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 873
    .end local v11    # "cf6":Ljxl/write/biff/CellXFRecord;
    :cond_9
    invoke-interface {v6}, Ljxl/Cell;->getRow()I

    move-result v11

    add-int/2addr v11, v8

    .line 874
    .local v11, "i":I
    :goto_6
    invoke-interface {v9}, Ljxl/Cell;->getRow()I

    move-result v12

    if-ge v11, v12, :cond_b

    .line 876
    new-instance v12, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v12, v7}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 877
    .local v12, "cf7":Ljxl/write/biff/CellXFRecord;
    sget-object v13, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v14, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v15, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 878
    sget-object v13, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v14, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v14

    sget-object v15, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v7, v15}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 882
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    move v10, v13

    .line 883
    const/4 v13, -0x1

    if-eq v10, v13, :cond_a

    .line 885
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljxl/write/biff/CellXFRecord;

    move-object v12, v13

    goto :goto_7

    .line 889
    :cond_a
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    :goto_7
    iget-object v13, v1, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v14, Ljxl/write/Blank;

    invoke-interface {v9}, Ljxl/Cell;->getColumn()I

    move-result v15

    invoke-direct {v14, v15, v11, v12}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v13, v14}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 874
    .end local v12    # "cf7":Ljxl/write/biff/CellXFRecord;
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 896
    .end local v11    # "i":I
    :cond_b
    invoke-interface {v6}, Ljxl/Cell;->getColumn()I

    move-result v11

    add-int/2addr v11, v8

    .line 897
    .restart local v11    # "i":I
    :goto_8
    invoke-interface {v9}, Ljxl/Cell;->getColumn()I

    move-result v12

    if-ge v11, v12, :cond_e

    .line 899
    new-instance v12, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v12, v7}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 900
    .local v12, "cf8":Ljxl/write/biff/CellXFRecord;
    sget-object v13, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v14, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v15, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 901
    sget-object v13, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v14, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v14

    sget-object v15, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v7, v15}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 905
    invoke-interface {v6}, Ljxl/Cell;->getRow()I

    move-result v13

    invoke-interface {v9}, Ljxl/Cell;->getRow()I

    move-result v14

    if-ne v13, v14, :cond_c

    .line 907
    sget-object v13, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v14, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v14

    sget-object v15, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v7, v15}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 912
    :cond_c
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    move v10, v13

    .line 913
    const/4 v13, -0x1

    if-eq v10, v13, :cond_d

    .line 915
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljxl/write/biff/CellXFRecord;

    move-object v12, v13

    goto :goto_9

    .line 919
    :cond_d
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    :goto_9
    iget-object v13, v1, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v14, Ljxl/write/Blank;

    invoke-interface {v6}, Ljxl/Cell;->getRow()I

    move-result v15

    invoke-direct {v14, v11, v15, v12}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v13, v14}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 897
    .end local v12    # "cf8":Ljxl/write/biff/CellXFRecord;
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 927
    .end local v11    # "i":I
    :cond_e
    invoke-interface {v9}, Ljxl/Cell;->getColumn()I

    move-result v11

    invoke-interface {v6}, Ljxl/Cell;->getColumn()I

    move-result v12

    if-gt v11, v12, :cond_f

    invoke-interface {v9}, Ljxl/Cell;->getRow()I

    move-result v11

    invoke-interface {v6}, Ljxl/Cell;->getRow()I

    move-result v12

    if-le v11, v12, :cond_15

    .line 931
    :cond_f
    new-instance v11, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v11, v7}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 932
    .local v11, "cf4":Ljxl/write/biff/CellXFRecord;
    sget-object v12, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v13, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v14, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v11, v12, v13, v14}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 933
    sget-object v12, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v13, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v7, v13}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v13

    sget-object v14, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 936
    sget-object v12, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v13, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v7, v13}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v13

    sget-object v14, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 940
    invoke-interface {v9}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-interface {v6}, Ljxl/Cell;->getRow()I

    move-result v13

    if-ne v12, v13, :cond_10

    .line 942
    sget-object v12, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v13, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v7, v13}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v13

    sget-object v14, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 947
    :cond_10
    invoke-interface {v9}, Ljxl/Cell;->getColumn()I

    move-result v12

    invoke-interface {v6}, Ljxl/Cell;->getColumn()I

    move-result v13

    if-ne v12, v13, :cond_11

    .line 949
    sget-object v12, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v13, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v7, v13}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v13

    sget-object v14, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 954
    :cond_11
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    move v10, v12

    .line 955
    const/4 v12, -0x1

    if-eq v10, v12, :cond_12

    .line 957
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljxl/write/biff/CellXFRecord;

    move-object v11, v12

    goto :goto_a

    .line 961
    :cond_12
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    :goto_a
    iget-object v12, v1, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v13, Ljxl/write/Blank;

    invoke-interface {v9}, Ljxl/Cell;->getColumn()I

    move-result v14

    invoke-interface {v9}, Ljxl/Cell;->getRow()I

    move-result v15

    invoke-direct {v13, v14, v15, v11}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v12, v13}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 969
    invoke-interface {v6}, Ljxl/Cell;->getColumn()I

    move-result v12

    add-int/2addr v12, v8

    move v8, v12

    .line 970
    .local v8, "i":I
    :goto_b
    invoke-interface {v9}, Ljxl/Cell;->getColumn()I

    move-result v12

    if-ge v8, v12, :cond_15

    .line 972
    new-instance v12, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v12, v7}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 973
    .local v12, "cf5":Ljxl/write/biff/CellXFRecord;
    sget-object v13, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v14, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v15, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 974
    sget-object v13, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v14, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v14

    sget-object v15, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v7, v15}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 978
    invoke-interface {v6}, Ljxl/Cell;->getRow()I

    move-result v13

    invoke-interface {v9}, Ljxl/Cell;->getRow()I

    move-result v14

    if-ne v13, v14, :cond_13

    .line 980
    sget-object v13, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v14, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v7, v14}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v14

    sget-object v15, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v7, v15}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 985
    :cond_13
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    move v10, v13

    .line 986
    const/4 v13, -0x1

    if-eq v10, v13, :cond_14

    .line 988
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljxl/write/biff/CellXFRecord;

    move-object v12, v14

    goto :goto_c

    .line 992
    :cond_14
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    :goto_c
    iget-object v14, v1, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v15, Ljxl/write/Blank;

    invoke-interface {v9}, Ljxl/Cell;->getRow()I

    move-result v13

    invoke-direct {v15, v8, v13, v12}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v14, v15}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V
    :try_end_0
    .catch Ljxl/write/WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    .end local v12    # "cf5":Ljxl/write/biff/CellXFRecord;
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 1003
    .end local v0    # "cf1":Ljxl/write/biff/CellXFRecord;
    .end local v8    # "i":I
    .end local v9    # "bottomRight":Ljxl/Cell;
    .end local v10    # "index":I
    .end local v11    # "cf4":Ljxl/write/biff/CellXFRecord;
    :cond_15
    goto :goto_d

    .line 999
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Ljxl/write/WriteException;
    sget-object v8, Ljxl/write/biff/SheetWriter;->logger:Ljxl/common/Logger;

    invoke-virtual {v0}, Ljxl/write/WriteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 736
    .end local v0    # "e":Ljxl/write/WriteException;
    .end local v5    # "range":Ljxl/Range;
    .end local v6    # "topLeft":Ljxl/Cell;
    .end local v7    # "tlformat":Ljxl/biff/XFRecord;
    :cond_16
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1006
    .end local v4    # "mci":I
    :cond_17
    return-void
.end method

.method getCharts()[Ljxl/biff/drawing/Chart;
    .locals 1

    .line 723
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-virtual {v0}, Ljxl/biff/drawing/SheetDrawingWriter;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v0

    return-object v0
.end method

.method final getFooter()Ljxl/write/biff/FooterRecord;
    .locals 1

    .line 619
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->footer:Ljxl/write/biff/FooterRecord;

    return-object v0
.end method

.method final getHeader()Ljxl/write/biff/HeaderRecord;
    .locals 1

    .line 609
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->header:Ljxl/write/biff/HeaderRecord;

    return-object v0
.end method

.method getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .locals 1

    .line 678
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    return-object v0
.end method

.method setAutoFilter(Ljxl/biff/AutoFilter;)V
    .locals 0
    .param p1, "af"    # Ljxl/biff/AutoFilter;

    .line 1100
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->autoFilter:Ljxl/biff/AutoFilter;

    .line 1101
    return-void
.end method

.method setButtonPropertySet(Ljxl/write/biff/ButtonPropertySetRecord;)V
    .locals 0
    .param p1, "bps"    # Ljxl/write/biff/ButtonPropertySetRecord;

    .line 1068
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 1069
    return-void
.end method

.method setChartOnly()V
    .locals 1

    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/write/biff/SheetWriter;->chartOnly:Z

    .line 1049
    return-void
.end method

.method setCharts([Ljxl/biff/drawing/Chart;)V
    .locals 1
    .param p1, "ch"    # [Ljxl/biff/drawing/Chart;

    .line 702
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/SheetDrawingWriter;->setCharts([Ljxl/biff/drawing/Chart;)V

    .line 703
    return-void
.end method

.method setConditionalFormats(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "cf"    # Ljava/util/ArrayList;

    .line 1090
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->conditionalFormats:Ljava/util/ArrayList;

    .line 1091
    return-void
.end method

.method setDataValidation(Ljxl/biff/DataValidation;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "dv"    # Ljxl/biff/DataValidation;
    .param p2, "vc"    # Ljava/util/ArrayList;

    .line 1079
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    .line 1080
    iput-object p2, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    .line 1081
    return-void
.end method

.method setDimensions(II)V
    .locals 0
    .param p1, "rws"    # I
    .param p2, "cls"    # I

    .line 656
    iput p1, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    .line 657
    iput p2, p0, Ljxl/write/biff/SheetWriter;->numCols:I

    .line 658
    return-void
.end method

.method setDrawings(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p1, "dr"    # Ljava/util/ArrayList;
    .param p2, "mod"    # Z

    .line 713
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-virtual {v0, p1, p2}, Ljxl/biff/drawing/SheetDrawingWriter;->setDrawings(Ljava/util/ArrayList;Z)V

    .line 714
    return-void
.end method

.method setPLS(Ljxl/write/biff/PLSRecord;)V
    .locals 0
    .param p1, "pls"    # Ljxl/write/biff/PLSRecord;

    .line 1058
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 1059
    return-void
.end method

.method setSettings(Ljxl/SheetSettings;)V
    .locals 0
    .param p1, "sr"    # Ljxl/SheetSettings;

    .line 668
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    .line 669
    return-void
.end method

.method setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V
    .locals 0
    .param p1, "wo"    # Ljxl/biff/WorkspaceInformationRecord;

    .line 688
    if-eqz p1, :cond_0

    .line 690
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    .line 692
    :cond_0
    return-void
.end method

.method setWriteData([Ljxl/write/biff/RowRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljxl/write/biff/MergedCells;Ljava/util/TreeSet;II)V
    .locals 0
    .param p1, "rws"    # [Ljxl/write/biff/RowRecord;
    .param p2, "rb"    # Ljava/util/ArrayList;
    .param p3, "cb"    # Ljava/util/ArrayList;
    .param p4, "hl"    # Ljava/util/ArrayList;
    .param p5, "mc"    # Ljxl/write/biff/MergedCells;
    .param p6, "cf"    # Ljava/util/TreeSet;
    .param p7, "mrol"    # I
    .param p8, "mcol"    # I

    .line 637
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    .line 638
    iput-object p2, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    .line 639
    iput-object p3, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    .line 640
    iput-object p4, p0, Ljxl/write/biff/SheetWriter;->hyperlinks:Ljava/util/ArrayList;

    .line 641
    iput-object p5, p0, Ljxl/write/biff/SheetWriter;->mergedCells:Ljxl/write/biff/MergedCells;

    .line 642
    iput-object p6, p0, Ljxl/write/biff/SheetWriter;->columnFormats:Ljava/util/TreeSet;

    .line 643
    iput p7, p0, Ljxl/write/biff/SheetWriter;->maxRowOutlineLevel:I

    .line 644
    iput p8, p0, Ljxl/write/biff/SheetWriter;->maxColumnOutlineLevel:I

    .line 645
    return-void
.end method

.method public write()V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 215
    iget-boolean v1, v0, Ljxl/write/biff/SheetWriter;->chartOnly:Z

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v2}, Ljxl/biff/drawing/SheetDrawingWriter;->write(Ljxl/write/biff/File;)V

    .line 218
    return-void

    .line 221
    :cond_1
    new-instance v1, Ljxl/write/biff/BOFRecord;

    sget-object v4, Ljxl/write/biff/BOFRecord;->sheet:Ljxl/write/biff/BOFRecord$SheetBOF;

    invoke-direct {v1, v4}, Ljxl/write/biff/BOFRecord;-><init>(Ljxl/write/biff/BOFRecord$SheetBOF;)V

    .line 222
    .local v1, "bof":Ljxl/write/biff/BOFRecord;
    iget-object v4, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v4, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 225
    iget v4, v0, Ljxl/write/biff/SheetWriter;->numRows:I

    div-int/lit8 v5, v4, 0x20

    .line 226
    .local v5, "numBlocks":I
    mul-int/lit8 v6, v5, 0x20

    sub-int/2addr v4, v6

    if-eqz v4, :cond_2

    .line 228
    add-int/lit8 v5, v5, 0x1

    .line 231
    :cond_2
    iget-object v4, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v4}, Ljxl/write/biff/File;->getPos()I

    move-result v4

    .line 235
    .local v4, "indexPos":I
    new-instance v6, Ljxl/write/biff/IndexRecord;

    iget v7, v0, Ljxl/write/biff/SheetWriter;->numRows:I

    invoke-direct {v6, v2, v7, v5}, Ljxl/write/biff/IndexRecord;-><init>(III)V

    .line 236
    .local v6, "indexRecord":Ljxl/write/biff/IndexRecord;
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v6}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 238
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getAutomaticFormulaCalculation()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 240
    new-instance v7, Ljxl/write/biff/CalcModeRecord;

    sget-object v8, Ljxl/write/biff/CalcModeRecord;->automatic:Ljxl/write/biff/CalcModeRecord$CalcMode;

    invoke-direct {v7, v8}, Ljxl/write/biff/CalcModeRecord;-><init>(Ljxl/write/biff/CalcModeRecord$CalcMode;)V

    .line 241
    .local v7, "cmr":Ljxl/write/biff/CalcModeRecord;
    iget-object v8, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 242
    .end local v7    # "cmr":Ljxl/write/biff/CalcModeRecord;
    goto :goto_1

    .line 245
    :cond_3
    new-instance v7, Ljxl/write/biff/CalcModeRecord;

    sget-object v8, Ljxl/write/biff/CalcModeRecord;->manual:Ljxl/write/biff/CalcModeRecord$CalcMode;

    invoke-direct {v7, v8}, Ljxl/write/biff/CalcModeRecord;-><init>(Ljxl/write/biff/CalcModeRecord$CalcMode;)V

    .line 246
    .restart local v7    # "cmr":Ljxl/write/biff/CalcModeRecord;
    iget-object v8, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 249
    .end local v7    # "cmr":Ljxl/write/biff/CalcModeRecord;
    :goto_1
    new-instance v7, Ljxl/write/biff/CalcCountRecord;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljxl/write/biff/CalcCountRecord;-><init>(I)V

    .line 250
    .local v7, "ccr":Ljxl/write/biff/CalcCountRecord;
    iget-object v9, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v9, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 252
    new-instance v9, Ljxl/write/biff/RefModeRecord;

    invoke-direct {v9}, Ljxl/write/biff/RefModeRecord;-><init>()V

    .line 253
    .local v9, "rmr":Ljxl/write/biff/RefModeRecord;
    iget-object v10, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v10, v9}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 255
    new-instance v10, Ljxl/write/biff/IterationRecord;

    invoke-direct {v10, v2}, Ljxl/write/biff/IterationRecord;-><init>(Z)V

    .line 256
    .local v10, "itr":Ljxl/write/biff/IterationRecord;
    iget-object v11, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v11, v10}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 258
    new-instance v11, Ljxl/write/biff/DeltaRecord;

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-direct {v11, v12, v13}, Ljxl/write/biff/DeltaRecord;-><init>(D)V

    .line 259
    .local v11, "dtr":Ljxl/write/biff/DeltaRecord;
    iget-object v12, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v12, v11}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 261
    new-instance v12, Ljxl/write/biff/SaveRecalcRecord;

    iget-object v13, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v13}, Ljxl/SheetSettings;->getRecalculateFormulasBeforeSave()Z

    move-result v13

    invoke-direct {v12, v13}, Ljxl/write/biff/SaveRecalcRecord;-><init>(Z)V

    .line 263
    .local v12, "srr":Ljxl/write/biff/SaveRecalcRecord;
    iget-object v13, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v13, v12}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 265
    new-instance v13, Ljxl/write/biff/PrintHeadersRecord;

    iget-object v14, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v14}, Ljxl/SheetSettings;->getPrintHeaders()Z

    move-result v14

    invoke-direct {v13, v14}, Ljxl/write/biff/PrintHeadersRecord;-><init>(Z)V

    .line 267
    .local v13, "phr":Ljxl/write/biff/PrintHeadersRecord;
    iget-object v14, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v14, v13}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 269
    new-instance v14, Ljxl/write/biff/PrintGridLinesRecord;

    iget-object v15, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v15}, Ljxl/SheetSettings;->getPrintGridLines()Z

    move-result v15

    invoke-direct {v14, v15}, Ljxl/write/biff/PrintGridLinesRecord;-><init>(Z)V

    .line 271
    .local v14, "pglr":Ljxl/write/biff/PrintGridLinesRecord;
    iget-object v15, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v15, v14}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 273
    new-instance v15, Ljxl/write/biff/GridSetRecord;

    invoke-direct {v15, v3}, Ljxl/write/biff/GridSetRecord;-><init>(Z)V

    .line 274
    .local v15, "gsr":Ljxl/write/biff/GridSetRecord;
    iget-object v8, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8, v15}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 276
    new-instance v8, Ljxl/write/biff/GuttersRecord;

    invoke-direct {v8}, Ljxl/write/biff/GuttersRecord;-><init>()V

    .line 277
    .local v8, "gutr":Ljxl/write/biff/GuttersRecord;
    iget v2, v0, Ljxl/write/biff/SheetWriter;->maxColumnOutlineLevel:I

    add-int/2addr v2, v3

    invoke-virtual {v8, v2}, Ljxl/write/biff/GuttersRecord;->setMaxColumnOutline(I)V

    .line 278
    iget v2, v0, Ljxl/write/biff/SheetWriter;->maxRowOutlineLevel:I

    add-int/2addr v2, v3

    invoke-virtual {v8, v2}, Ljxl/write/biff/GuttersRecord;->setMaxRowOutline(I)V

    .line 280
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v8}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 282
    new-instance v2, Ljxl/write/biff/DefaultRowHeightRecord;

    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v3

    move-object/from16 v17, v1

    .end local v1    # "bof":Ljxl/write/biff/BOFRecord;
    .local v17, "bof":Ljxl/write/biff/BOFRecord;
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v1

    move-object/from16 v18, v7

    .end local v7    # "ccr":Ljxl/write/biff/CalcCountRecord;
    .local v18, "ccr":Ljxl/write/biff/CalcCountRecord;
    const/16 v7, 0xff

    if-eq v1, v7, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-direct {v2, v3, v1}, Ljxl/write/biff/DefaultRowHeightRecord;-><init>(IZ)V

    move-object v1, v2

    .line 286
    .local v1, "drhr":Ljxl/write/biff/DefaultRowHeightRecord;
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 288
    iget v2, v0, Ljxl/write/biff/SheetWriter;->maxRowOutlineLevel:I

    if-lez v2, :cond_5

    .line 290
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljxl/biff/WorkspaceInformationRecord;->setRowOutlines(Z)V

    goto :goto_3

    .line 288
    :cond_5
    const/4 v3, 0x1

    .line 293
    :goto_3
    iget v2, v0, Ljxl/write/biff/SheetWriter;->maxColumnOutlineLevel:I

    if-lez v2, :cond_6

    .line 295
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    invoke-virtual {v2, v3}, Ljxl/biff/WorkspaceInformationRecord;->setColumnOutlines(Z)V

    .line 298
    :cond_6
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getFitToPages()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljxl/biff/WorkspaceInformationRecord;->setFitToPages(Z)V

    .line 299
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    invoke-virtual {v2, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 301
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 303
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 305
    .local v2, "rb":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v7, v2

    if-ge v3, v7, :cond_7

    .line 307
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v3

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 310
    .end local v3    # "i":I
    :cond_7
    new-instance v3, Ljxl/write/biff/HorizontalPageBreaksRecord;

    invoke-direct {v3, v2}, Ljxl/write/biff/HorizontalPageBreaksRecord;-><init>([I)V

    .line 311
    .local v3, "hpbr":Ljxl/write/biff/HorizontalPageBreaksRecord;
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 314
    .end local v2    # "rb":[I
    .end local v3    # "hpbr":Ljxl/write/biff/HorizontalPageBreaksRecord;
    :cond_8
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 316
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 318
    .restart local v2    # "rb":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    array-length v7, v2

    if-ge v3, v7, :cond_9

    .line 320
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v3

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 323
    .end local v3    # "i":I
    :cond_9
    new-instance v3, Ljxl/write/biff/VerticalPageBreaksRecord;

    invoke-direct {v3, v2}, Ljxl/write/biff/VerticalPageBreaksRecord;-><init>([I)V

    .line 324
    .local v3, "hpbr":Ljxl/write/biff/VerticalPageBreaksRecord;
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 327
    .end local v2    # "rb":[I
    .end local v3    # "hpbr":Ljxl/write/biff/VerticalPageBreaksRecord;
    :cond_a
    new-instance v2, Ljxl/write/biff/HeaderRecord;

    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getHeader()Ljxl/HeaderFooter;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/HeaderFooter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljxl/write/biff/HeaderRecord;-><init>(Ljava/lang/String;)V

    .line 328
    .local v2, "header":Ljxl/write/biff/HeaderRecord;
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 330
    new-instance v3, Ljxl/write/biff/FooterRecord;

    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getFooter()Ljxl/HeaderFooter;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/HeaderFooter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljxl/write/biff/FooterRecord;-><init>(Ljava/lang/String;)V

    .line 331
    .local v3, "footer":Ljxl/write/biff/FooterRecord;
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 333
    new-instance v7, Ljxl/write/biff/HorizontalCentreRecord;

    move-object/from16 v16, v1

    .end local v1    # "drhr":Ljxl/write/biff/DefaultRowHeightRecord;
    .local v16, "drhr":Ljxl/write/biff/DefaultRowHeightRecord;
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->isHorizontalCentre()Z

    move-result v1

    invoke-direct {v7, v1}, Ljxl/write/biff/HorizontalCentreRecord;-><init>(Z)V

    move-object v1, v7

    .line 335
    .local v1, "hcr":Ljxl/write/biff/HorizontalCentreRecord;
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 337
    new-instance v7, Ljxl/write/biff/VerticalCentreRecord;

    move-object/from16 v19, v1

    .end local v1    # "hcr":Ljxl/write/biff/HorizontalCentreRecord;
    .local v19, "hcr":Ljxl/write/biff/HorizontalCentreRecord;
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->isVerticalCentre()Z

    move-result v1

    invoke-direct {v7, v1}, Ljxl/write/biff/VerticalCentreRecord;-><init>(Z)V

    move-object v1, v7

    .line 339
    .local v1, "vcr":Ljxl/write/biff/VerticalCentreRecord;
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 342
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getLeftMargin()D

    move-result-wide v20

    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getDefaultWidthMargin()D

    move-result-wide v22

    cmpl-double v7, v20, v22

    if-eqz v7, :cond_b

    .line 344
    new-instance v7, Ljxl/write/biff/LeftMarginRecord;

    move-object/from16 v20, v1

    .end local v1    # "vcr":Ljxl/write/biff/VerticalCentreRecord;
    .local v20, "vcr":Ljxl/write/biff/VerticalCentreRecord;
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    move-object/from16 v21, v2

    .end local v2    # "header":Ljxl/write/biff/HeaderRecord;
    .local v21, "header":Ljxl/write/biff/HeaderRecord;
    invoke-virtual {v1}, Ljxl/SheetSettings;->getLeftMargin()D

    move-result-wide v1

    invoke-direct {v7, v1, v2}, Ljxl/write/biff/LeftMarginRecord;-><init>(D)V

    move-object v1, v7

    .line 345
    .local v1, "mr":Ljxl/write/biff/MarginRecord;
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_6

    .line 342
    .end local v20    # "vcr":Ljxl/write/biff/VerticalCentreRecord;
    .end local v21    # "header":Ljxl/write/biff/HeaderRecord;
    .local v1, "vcr":Ljxl/write/biff/VerticalCentreRecord;
    .restart local v2    # "header":Ljxl/write/biff/HeaderRecord;
    :cond_b
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .line 348
    .end local v1    # "vcr":Ljxl/write/biff/VerticalCentreRecord;
    .end local v2    # "header":Ljxl/write/biff/HeaderRecord;
    .restart local v20    # "vcr":Ljxl/write/biff/VerticalCentreRecord;
    .restart local v21    # "header":Ljxl/write/biff/HeaderRecord;
    :goto_6
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getRightMargin()D

    move-result-wide v1

    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getDefaultWidthMargin()D

    move-result-wide v22

    cmpl-double v1, v1, v22

    if-eqz v1, :cond_c

    .line 350
    new-instance v1, Ljxl/write/biff/RightMarginRecord;

    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    move-object v7, v3

    .end local v3    # "footer":Ljxl/write/biff/FooterRecord;
    .local v7, "footer":Ljxl/write/biff/FooterRecord;
    invoke-virtual {v2}, Ljxl/SheetSettings;->getRightMargin()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljxl/write/biff/RightMarginRecord;-><init>(D)V

    .line 351
    .local v1, "mr":Ljxl/write/biff/MarginRecord;
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_7

    .line 348
    .end local v1    # "mr":Ljxl/write/biff/MarginRecord;
    .end local v7    # "footer":Ljxl/write/biff/FooterRecord;
    .restart local v3    # "footer":Ljxl/write/biff/FooterRecord;
    :cond_c
    move-object v7, v3

    .line 354
    .end local v3    # "footer":Ljxl/write/biff/FooterRecord;
    .restart local v7    # "footer":Ljxl/write/biff/FooterRecord;
    :goto_7
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getTopMargin()D

    move-result-wide v1

    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getDefaultHeightMargin()D

    move-result-wide v22

    cmpl-double v1, v1, v22

    if-eqz v1, :cond_d

    .line 356
    new-instance v1, Ljxl/write/biff/TopMarginRecord;

    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getTopMargin()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljxl/write/biff/TopMarginRecord;-><init>(D)V

    .line 357
    .restart local v1    # "mr":Ljxl/write/biff/MarginRecord;
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 360
    .end local v1    # "mr":Ljxl/write/biff/MarginRecord;
    :cond_d
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getBottomMargin()D

    move-result-wide v1

    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getDefaultHeightMargin()D

    move-result-wide v22

    cmpl-double v1, v1, v22

    if-eqz v1, :cond_e

    .line 362
    new-instance v1, Ljxl/write/biff/BottomMarginRecord;

    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getBottomMargin()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljxl/write/biff/BottomMarginRecord;-><init>(D)V

    .line 363
    .restart local v1    # "mr":Ljxl/write/biff/MarginRecord;
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 366
    .end local v1    # "mr":Ljxl/write/biff/MarginRecord;
    :cond_e
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->plsRecord:Ljxl/write/biff/PLSRecord;

    if-eqz v1, :cond_f

    .line 368
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 371
    :cond_f
    new-instance v1, Ljxl/write/biff/SetupRecord;

    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-direct {v1, v2}, Ljxl/write/biff/SetupRecord;-><init>(Ljxl/SheetSettings;)V

    .line 372
    .local v1, "setup":Ljxl/write/biff/SetupRecord;
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 374
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->isProtected()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 376
    new-instance v2, Ljxl/write/biff/ProtectRecord;

    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->isProtected()Z

    move-result v3

    invoke-direct {v2, v3}, Ljxl/write/biff/ProtectRecord;-><init>(Z)V

    .line 377
    .local v2, "pr":Ljxl/write/biff/ProtectRecord;
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 379
    new-instance v3, Ljxl/write/biff/ScenarioProtectRecord;

    move-object/from16 v22, v1

    .end local v1    # "setup":Ljxl/write/biff/SetupRecord;
    .local v22, "setup":Ljxl/write/biff/SetupRecord;
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->isProtected()Z

    move-result v1

    invoke-direct {v3, v1}, Ljxl/write/biff/ScenarioProtectRecord;-><init>(Z)V

    move-object v1, v3

    .line 381
    .local v1, "spr":Ljxl/write/biff/ScenarioProtectRecord;
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 383
    new-instance v3, Ljxl/write/biff/ObjectProtectRecord;

    move-object/from16 v23, v1

    .end local v1    # "spr":Ljxl/write/biff/ScenarioProtectRecord;
    .local v23, "spr":Ljxl/write/biff/ScenarioProtectRecord;
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->isProtected()Z

    move-result v1

    invoke-direct {v3, v1}, Ljxl/write/biff/ObjectProtectRecord;-><init>(Z)V

    move-object v1, v3

    .line 385
    .local v1, "opr":Ljxl/write/biff/ObjectProtectRecord;
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 387
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 389
    new-instance v3, Ljxl/write/biff/PasswordRecord;

    move-object/from16 v24, v1

    .end local v1    # "opr":Ljxl/write/biff/ObjectProtectRecord;
    .local v24, "opr":Ljxl/write/biff/ObjectProtectRecord;
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljxl/write/biff/PasswordRecord;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 390
    .local v1, "pw":Ljxl/write/biff/PasswordRecord;
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 391
    .end local v1    # "pw":Ljxl/write/biff/PasswordRecord;
    goto :goto_8

    .line 392
    .end local v24    # "opr":Ljxl/write/biff/ObjectProtectRecord;
    .local v1, "opr":Ljxl/write/biff/ObjectProtectRecord;
    :cond_10
    move-object/from16 v24, v1

    .end local v1    # "opr":Ljxl/write/biff/ObjectProtectRecord;
    .restart local v24    # "opr":Ljxl/write/biff/ObjectProtectRecord;
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getPasswordHash()I

    move-result v1

    if-eqz v1, :cond_12

    .line 394
    new-instance v1, Ljxl/write/biff/PasswordRecord;

    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getPasswordHash()I

    move-result v3

    invoke-direct {v1, v3}, Ljxl/write/biff/PasswordRecord;-><init>(I)V

    .line 395
    .local v1, "pw":Ljxl/write/biff/PasswordRecord;
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_8

    .line 374
    .end local v2    # "pr":Ljxl/write/biff/ProtectRecord;
    .end local v22    # "setup":Ljxl/write/biff/SetupRecord;
    .end local v23    # "spr":Ljxl/write/biff/ScenarioProtectRecord;
    .end local v24    # "opr":Ljxl/write/biff/ObjectProtectRecord;
    .local v1, "setup":Ljxl/write/biff/SetupRecord;
    :cond_11
    move-object/from16 v22, v1

    .line 399
    .end local v1    # "setup":Ljxl/write/biff/SetupRecord;
    .restart local v22    # "setup":Ljxl/write/biff/SetupRecord;
    :cond_12
    :goto_8
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1}, Ljxl/write/biff/File;->getPos()I

    move-result v1

    invoke-virtual {v6, v1}, Ljxl/write/biff/IndexRecord;->setDataStartPosition(I)V

    .line 400
    new-instance v1, Ljxl/write/biff/DefaultColumnWidth;

    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getDefaultColumnWidth()I

    move-result v2

    invoke-direct {v1, v2}, Ljxl/write/biff/DefaultColumnWidth;-><init>(I)V

    .line 402
    .local v1, "dcw":Ljxl/write/biff/DefaultColumnWidth;
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 405
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object v2

    .line 407
    .local v2, "normalStyle":Ljxl/write/WritableCellFormat;
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/write/biff/Styles;->getDefaultDateFormat()Ljxl/write/WritableCellFormat;

    move-result-object v3

    .line 411
    .local v3, "defaultDateFormat":Ljxl/write/WritableCellFormat;
    const/16 v23, 0x0

    .line 412
    .local v23, "cir":Ljxl/write/biff/ColumnInfoRecord;
    move-object/from16 v24, v1

    .end local v1    # "dcw":Ljxl/write/biff/DefaultColumnWidth;
    .local v24, "dcw":Ljxl/write/biff/DefaultColumnWidth;
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "colit":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_19

    .line 414
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v1

    .end local v1    # "colit":Ljava/util/Iterator;
    .local v26, "colit":Ljava/util/Iterator;
    move-object/from16 v1, v25

    check-cast v1, Ljxl/write/biff/ColumnInfoRecord;

    .line 417
    .end local v23    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    .local v1, "cir":Ljxl/write/biff/ColumnInfoRecord;
    move-object/from16 v25, v7

    .end local v7    # "footer":Ljxl/write/biff/FooterRecord;
    .local v25, "footer":Ljxl/write/biff/FooterRecord;
    invoke-virtual {v1}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v7

    move-object/from16 v27, v8

    .end local v8    # "gutr":Ljxl/write/biff/GuttersRecord;
    .local v27, "gutr":Ljxl/write/biff/GuttersRecord;
    const/16 v8, 0x100

    if-ge v7, v8, :cond_13

    .line 419
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 422
    :cond_13
    invoke-virtual {v1}, Ljxl/write/biff/ColumnInfoRecord;->getCellFormat()Ljxl/biff/XFRecord;

    move-result-object v7

    .line 424
    .local v7, "xfr":Ljxl/biff/XFRecord;
    if-eq v7, v2, :cond_17

    move-object/from16 v28, v9

    .end local v9    # "rmr":Ljxl/write/biff/RefModeRecord;
    .local v28, "rmr":Ljxl/write/biff/RefModeRecord;
    invoke-virtual {v1}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v9

    if-ge v9, v8, :cond_16

    .line 427
    invoke-virtual {v1}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v8

    invoke-direct {v0, v8}, Ljxl/write/biff/SheetWriter;->getColumn(I)[Ljxl/Cell;

    move-result-object v8

    .line 429
    .local v8, "cells":[Ljxl/Cell;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_a
    move-object/from16 v23, v1

    .end local v1    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    .restart local v23    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    array-length v1, v8

    if-ge v9, v1, :cond_18

    .line 431
    aget-object v1, v8, v9

    if-eqz v1, :cond_15

    aget-object v1, v8, v9

    invoke-interface {v1}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v1

    if-eq v1, v2, :cond_14

    aget-object v1, v8, v9

    invoke-interface {v1}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v1

    if-ne v1, v3, :cond_15

    .line 437
    :cond_14
    aget-object v1, v8, v9

    check-cast v1, Ljxl/write/WritableCell;

    invoke-interface {v1, v7}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 429
    :cond_15
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v23

    goto :goto_a

    .line 424
    .end local v8    # "cells":[Ljxl/Cell;
    .end local v9    # "i":I
    .end local v23    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    .restart local v1    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    :cond_16
    move-object/from16 v23, v1

    .end local v1    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    .restart local v23    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    goto :goto_b

    .end local v23    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    .end local v28    # "rmr":Ljxl/write/biff/RefModeRecord;
    .restart local v1    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    .local v9, "rmr":Ljxl/write/biff/RefModeRecord;
    :cond_17
    move-object/from16 v23, v1

    move-object/from16 v28, v9

    .line 441
    .end local v1    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    .end local v7    # "xfr":Ljxl/biff/XFRecord;
    .end local v9    # "rmr":Ljxl/write/biff/RefModeRecord;
    .restart local v23    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    .restart local v28    # "rmr":Ljxl/write/biff/RefModeRecord;
    :cond_18
    :goto_b
    move-object/from16 v7, v25

    move-object/from16 v1, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    goto :goto_9

    .line 412
    .end local v25    # "footer":Ljxl/write/biff/FooterRecord;
    .end local v26    # "colit":Ljava/util/Iterator;
    .end local v27    # "gutr":Ljxl/write/biff/GuttersRecord;
    .end local v28    # "rmr":Ljxl/write/biff/RefModeRecord;
    .local v1, "colit":Ljava/util/Iterator;
    .local v7, "footer":Ljxl/write/biff/FooterRecord;
    .local v8, "gutr":Ljxl/write/biff/GuttersRecord;
    .restart local v9    # "rmr":Ljxl/write/biff/RefModeRecord;
    :cond_19
    move-object/from16 v26, v1

    move-object/from16 v25, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    .line 444
    .end local v1    # "colit":Ljava/util/Iterator;
    .end local v7    # "footer":Ljxl/write/biff/FooterRecord;
    .end local v8    # "gutr":Ljxl/write/biff/GuttersRecord;
    .end local v9    # "rmr":Ljxl/write/biff/RefModeRecord;
    .restart local v25    # "footer":Ljxl/write/biff/FooterRecord;
    .restart local v27    # "gutr":Ljxl/write/biff/GuttersRecord;
    .restart local v28    # "rmr":Ljxl/write/biff/RefModeRecord;
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->autoFilter:Ljxl/biff/AutoFilter;

    if-eqz v1, :cond_1a

    .line 446
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v7}, Ljxl/biff/AutoFilter;->write(Ljxl/write/biff/File;)V

    .line 449
    :cond_1a
    new-instance v1, Ljxl/write/biff/DimensionRecord;

    iget v7, v0, Ljxl/write/biff/SheetWriter;->numRows:I

    iget v8, v0, Ljxl/write/biff/SheetWriter;->numCols:I

    invoke-direct {v1, v7, v8}, Ljxl/write/biff/DimensionRecord;-><init>(II)V

    .line 450
    .local v1, "dr":Ljxl/write/biff/DimensionRecord;
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 453
    const/4 v7, 0x0

    .local v7, "block":I
    :goto_c
    if-ge v7, v5, :cond_20

    .line 455
    new-instance v8, Ljxl/write/biff/DBCellRecord;

    iget-object v9, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v9}, Ljxl/write/biff/File;->getPos()I

    move-result v9

    invoke-direct {v8, v9}, Ljxl/write/biff/DBCellRecord;-><init>(I)V

    .line 457
    .local v8, "dbcell":Ljxl/write/biff/DBCellRecord;
    iget v9, v0, Ljxl/write/biff/SheetWriter;->numRows:I

    mul-int/lit8 v26, v7, 0x20

    sub-int v9, v9, v26

    move-object/from16 v26, v1

    .end local v1    # "dr":Ljxl/write/biff/DimensionRecord;
    .local v26, "dr":Ljxl/write/biff/DimensionRecord;
    const/16 v1, 0x20

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 458
    .local v1, "blockRows":I
    const/4 v9, 0x1

    .line 461
    .local v9, "firstRow":Z
    mul-int/lit8 v29, v7, 0x20

    move/from16 v32, v29

    move-object/from16 v29, v2

    move/from16 v2, v32

    .local v2, "i":I
    .local v29, "normalStyle":Ljxl/write/WritableCellFormat;
    :goto_d
    mul-int/lit8 v30, v7, 0x20

    move-object/from16 v31, v3

    .end local v3    # "defaultDateFormat":Ljxl/write/WritableCellFormat;
    .local v31, "defaultDateFormat":Ljxl/write/WritableCellFormat;
    add-int v3, v30, v1

    if-ge v2, v3, :cond_1d

    .line 463
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v30, v3, v2

    if-eqz v30, :cond_1b

    .line 465
    aget-object v3, v3, v2

    move/from16 v30, v5

    .end local v5    # "numBlocks":I
    .local v30, "numBlocks":I
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v5}, Ljxl/write/biff/RowRecord;->write(Ljxl/write/biff/File;)V

    .line 466
    if-eqz v9, :cond_1c

    .line 468
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3}, Ljxl/write/biff/File;->getPos()I

    move-result v3

    invoke-virtual {v8, v3}, Ljxl/write/biff/DBCellRecord;->setCellOffset(I)V

    .line 469
    const/4 v3, 0x0

    move v9, v3

    .end local v9    # "firstRow":Z
    .local v3, "firstRow":Z
    goto :goto_e

    .line 463
    .end local v3    # "firstRow":Z
    .end local v30    # "numBlocks":I
    .restart local v5    # "numBlocks":I
    .restart local v9    # "firstRow":Z
    :cond_1b
    move/from16 v30, v5

    .line 461
    .end local v5    # "numBlocks":I
    .restart local v30    # "numBlocks":I
    :cond_1c
    :goto_e
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v30

    move-object/from16 v3, v31

    goto :goto_d

    .end local v30    # "numBlocks":I
    .restart local v5    # "numBlocks":I
    :cond_1d
    move/from16 v30, v5

    .line 475
    .end local v2    # "i":I
    .end local v5    # "numBlocks":I
    .restart local v30    # "numBlocks":I
    mul-int/lit8 v2, v7, 0x20

    .restart local v2    # "i":I
    :goto_f
    mul-int/lit8 v3, v7, 0x20

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1f

    .line 477
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1e

    .line 479
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3}, Ljxl/write/biff/File;->getPos()I

    move-result v3

    invoke-virtual {v8, v3}, Ljxl/write/biff/DBCellRecord;->addCellRowPosition(I)V

    .line 480
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v3, v3, v2

    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v5}, Ljxl/write/biff/RowRecord;->writeCells(Ljxl/write/biff/File;)V

    .line 475
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 485
    .end local v2    # "i":I
    :cond_1f
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2}, Ljxl/write/biff/File;->getPos()I

    move-result v2

    invoke-virtual {v6, v2}, Ljxl/write/biff/IndexRecord;->addBlockPosition(I)V

    .line 489
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2}, Ljxl/write/biff/File;->getPos()I

    move-result v2

    invoke-virtual {v8, v2}, Ljxl/write/biff/DBCellRecord;->setPosition(I)V

    .line 490
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v8}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 453
    .end local v1    # "blockRows":I
    .end local v8    # "dbcell":Ljxl/write/biff/DBCellRecord;
    .end local v9    # "firstRow":Z
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    move/from16 v5, v30

    move-object/from16 v3, v31

    goto/16 :goto_c

    .end local v26    # "dr":Ljxl/write/biff/DimensionRecord;
    .end local v29    # "normalStyle":Ljxl/write/WritableCellFormat;
    .end local v30    # "numBlocks":I
    .end local v31    # "defaultDateFormat":Ljxl/write/WritableCellFormat;
    .local v1, "dr":Ljxl/write/biff/DimensionRecord;
    .local v2, "normalStyle":Ljxl/write/WritableCellFormat;
    .local v3, "defaultDateFormat":Ljxl/write/WritableCellFormat;
    .restart local v5    # "numBlocks":I
    :cond_20
    move-object/from16 v26, v1

    move-object/from16 v29, v2

    move-object/from16 v31, v3

    move/from16 v30, v5

    .line 494
    .end local v1    # "dr":Ljxl/write/biff/DimensionRecord;
    .end local v2    # "normalStyle":Ljxl/write/WritableCellFormat;
    .end local v3    # "defaultDateFormat":Ljxl/write/WritableCellFormat;
    .end local v5    # "numBlocks":I
    .end local v7    # "block":I
    .restart local v26    # "dr":Ljxl/write/biff/DimensionRecord;
    .restart local v29    # "normalStyle":Ljxl/write/WritableCellFormat;
    .restart local v30    # "numBlocks":I
    .restart local v31    # "defaultDateFormat":Ljxl/write/WritableCellFormat;
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v1

    if-nez v1, :cond_21

    .line 496
    iget-object v1, v0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v2}, Ljxl/biff/drawing/SheetDrawingWriter;->write(Ljxl/write/biff/File;)V

    .line 499
    :cond_21
    new-instance v1, Ljxl/write/biff/Window2Record;

    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-direct {v1, v2}, Ljxl/write/biff/Window2Record;-><init>(Ljxl/SheetSettings;)V

    .line 500
    .local v1, "w2r":Ljxl/write/biff/Window2Record;
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 503
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_10

    .line 549
    :cond_22
    new-instance v2, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->upperLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 551
    .local v2, "sr":Ljxl/write/biff/SelectionRecord;
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto/16 :goto_11

    .line 506
    .end local v2    # "sr":Ljxl/write/biff/SelectionRecord;
    :cond_23
    :goto_10
    new-instance v2, Ljxl/write/biff/PaneRecord;

    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v3

    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v5

    invoke-direct {v2, v3, v5}, Ljxl/write/biff/PaneRecord;-><init>(II)V

    .line 508
    .local v2, "pr":Ljxl/write/biff/PaneRecord;
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 511
    new-instance v3, Ljxl/write/biff/SelectionRecord;

    sget-object v5, Ljxl/write/biff/SelectionRecord;->upperLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    const/4 v7, 0x0

    invoke-direct {v3, v5, v7, v7}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 513
    .local v3, "sr":Ljxl/write/biff/SelectionRecord;
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 516
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v5

    if-eqz v5, :cond_24

    .line 518
    new-instance v5, Ljxl/write/biff/SelectionRecord;

    sget-object v7, Ljxl/write/biff/SelectionRecord;->upperRight:Ljxl/write/biff/SelectionRecord$PaneType;

    iget-object v8, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v8}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v5, v7, v8, v9}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    move-object v3, v5

    .line 520
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 524
    :cond_24
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v5

    if-eqz v5, :cond_25

    .line 526
    new-instance v5, Ljxl/write/biff/SelectionRecord;

    sget-object v7, Ljxl/write/biff/SelectionRecord;->lowerLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    iget-object v8, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v8}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9, v8}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    move-object v3, v5

    .line 528
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 532
    :cond_25
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v5

    if-eqz v5, :cond_26

    .line 535
    new-instance v5, Ljxl/write/biff/SelectionRecord;

    sget-object v7, Ljxl/write/biff/SelectionRecord;->lowerRight:Ljxl/write/biff/SelectionRecord$PaneType;

    iget-object v8, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v8}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v8

    iget-object v9, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v9}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v9

    invoke-direct {v5, v7, v8, v9}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    move-object v3, v5

    .line 539
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 542
    :cond_26
    new-instance v5, Ljxl/write/biff/Weird1Record;

    invoke-direct {v5}, Ljxl/write/biff/Weird1Record;-><init>()V

    .line 543
    .local v5, "w1r":Ljxl/write/biff/Weird1Record;
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 544
    .end local v2    # "pr":Ljxl/write/biff/PaneRecord;
    .end local v3    # "sr":Ljxl/write/biff/SelectionRecord;
    .end local v5    # "w1r":Ljxl/write/biff/Weird1Record;
    nop

    .line 555
    :goto_11
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getZoomFactor()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_27

    .line 557
    new-instance v2, Ljxl/write/biff/SCLRecord;

    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getZoomFactor()I

    move-result v3

    invoke-direct {v2, v3}, Ljxl/write/biff/SCLRecord;-><init>(I)V

    .line 558
    .local v2, "sclr":Ljxl/write/biff/SCLRecord;
    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 562
    .end local v2    # "sclr":Ljxl/write/biff/SCLRecord;
    :cond_27
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->mergedCells:Ljxl/write/biff/MergedCells;

    iget-object v3, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v3}, Ljxl/write/biff/MergedCells;->write(Ljxl/write/biff/File;)V

    .line 565
    iget-object v2, v0, Ljxl/write/biff/SheetWriter;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 566
    .local v2, "hi":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 567
    .local v3, "hlr":Ljxl/write/WritableHyperlink;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 569
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljxl/write/WritableHyperlink;

    .line 570
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_12

    .line 573
    :cond_28
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    if-eqz v5, :cond_29

    .line 575
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 579
    :cond_29
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    if-nez v5, :cond_2a

    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2b

    .line 581
    :cond_2a
    invoke-direct/range {p0 .. p0}, Ljxl/write/biff/SheetWriter;->writeDataValidation()V

    .line 585
    :cond_2b
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->conditionalFormats:Ljava/util/ArrayList;

    if-eqz v5, :cond_2c

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2c

    .line 587
    iget-object v5, v0, Ljxl/write/biff/SheetWriter;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 589
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljxl/biff/ConditionalFormat;

    .line 590
    .local v7, "cf":Ljxl/biff/ConditionalFormat;
    iget-object v8, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v8}, Ljxl/biff/ConditionalFormat;->write(Ljxl/write/biff/File;)V

    .line 591
    .end local v7    # "cf":Ljxl/biff/ConditionalFormat;
    goto :goto_13

    .line 594
    .end local v5    # "i":Ljava/util/Iterator;
    :cond_2c
    new-instance v5, Ljxl/write/biff/EOFRecord;

    invoke-direct {v5}, Ljxl/write/biff/EOFRecord;-><init>()V

    .line 595
    .local v5, "eof":Ljxl/write/biff/EOFRecord;
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 599
    iget-object v7, v0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v6}, Ljxl/write/biff/IndexRecord;->getData()[B

    move-result-object v8

    add-int/lit8 v9, v4, 0x4

    invoke-virtual {v7, v8, v9}, Ljxl/write/biff/File;->setData([BI)V

    .line 600
    return-void
.end method
