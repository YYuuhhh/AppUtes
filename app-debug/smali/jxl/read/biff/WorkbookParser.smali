.class public Ljxl/read/biff/WorkbookParser;
.super Ljxl/Workbook;
.source "WorkbookParser.java"

# interfaces
.implements Ljxl/biff/formula/ExternalSheet;
.implements Ljxl/biff/WorkbookMethods;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private addInFunctions:Ljava/util/ArrayList;

.field private bofs:I

.field private boundsheets:Ljava/util/ArrayList;

.field private buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

.field private containsMacros:Z

.field private countryRecord:Ljxl/read/biff/CountryRecord;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private excelFile:Ljxl/read/biff/File;

.field private externSheet:Ljxl/read/biff/ExternalSheetRecord;

.field private fonts:Ljxl/biff/Fonts;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private lastSheet:Ljxl/read/biff/SheetImpl;

.field private lastSheetIndex:I

.field private msoDrawingGroup:Ljxl/biff/drawing/MsoDrawingGroupRecord;

.field private nameTable:Ljava/util/ArrayList;

.field private namedRecords:Ljava/util/HashMap;

.field private nineteenFour:Z

.field private settings:Ljxl/WorkbookSettings;

.field private sharedStrings:Ljxl/read/biff/SSTRecord;

.field private sheets:Ljava/util/ArrayList;

.field private supbooks:Ljava/util/ArrayList;

.field private wbProtected:Z

.field private workbookBof:Ljxl/read/biff/BOFRecord;

.field private xctRecords:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Ljxl/read/biff/WorkbookParser;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/WorkbookParser;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/File;Ljxl/WorkbookSettings;)V
    .locals 3
    .param p1, "f"    # Ljxl/read/biff/File;
    .param p2, "s"    # Ljxl/WorkbookSettings;

    .line 187
    invoke-direct {p0}, Ljxl/Workbook;-><init>()V

    .line 188
    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Ljxl/biff/Fonts;

    invoke-direct {v0}, Ljxl/biff/Fonts;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/WorkbookParser;->fonts:Ljxl/biff/Fonts;

    .line 191
    new-instance v0, Ljxl/biff/FormattingRecords;

    iget-object v2, p0, Ljxl/read/biff/WorkbookParser;->fonts:Ljxl/biff/Fonts;

    invoke-direct {v0, v2}, Ljxl/biff/FormattingRecords;-><init>(Ljxl/biff/Fonts;)V

    iput-object v0, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Ljxl/read/biff/WorkbookParser;->lastSheetIndex:I

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/read/biff/WorkbookParser;->wbProtected:Z

    .line 197
    iput-boolean v0, p0, Ljxl/read/biff/WorkbookParser;->containsMacros:Z

    .line 198
    iput-object p2, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/read/biff/WorkbookParser;->xctRecords:Ljava/util/ArrayList;

    .line 200
    return-void
.end method


# virtual methods
.method final addSheet(Ljxl/Sheet;)V
    .locals 1
    .param p1, "s"    # Ljxl/Sheet;

    .line 535
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    return-void
.end method

.method public close()V
    .locals 1

    .line 516
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->clear()V

    .line 520
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->clear()V

    .line 522
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 526
    :cond_1
    return-void
.end method

.method public containsMacros()Z
    .locals 1

    .line 1221
    iget-boolean v0, p0, Ljxl/read/biff/WorkbookParser;->containsMacros:Z

    return v0
.end method

.method public findByName(Ljava/lang/String;)[Ljxl/Range;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;

    .line 1067
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/NameRecord;

    .line 1069
    .local v0, "nr":Ljxl/read/biff/NameRecord;
    if-nez v0, :cond_0

    .line 1071
    const/4 v1, 0x0

    return-object v1

    .line 1074
    :cond_0
    invoke-virtual {v0}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v1

    .line 1076
    .local v1, "ranges":[Ljxl/read/biff/NameRecord$NameRange;
    array-length v2, v1

    new-array v2, v2, [Ljxl/Range;

    .line 1078
    .local v2, "cellRanges":[Ljxl/Range;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1080
    new-instance v4, Ljxl/biff/RangeImpl;

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljxl/read/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v5

    invoke-virtual {p0, v5}, Ljxl/read/biff/WorkbookParser;->getExternalSheetIndex(I)I

    move-result v7

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v8

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v9

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljxl/read/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v5

    invoke-virtual {p0, v5}, Ljxl/read/biff/WorkbookParser;->getLastExternalSheetIndex(I)I

    move-result v10

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v11

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljxl/read/biff/NameRecord$NameRange;->getLastRow()I

    move-result v12

    move-object v5, v4

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Ljxl/biff/RangeImpl;-><init>(Ljxl/biff/WorkbookMethods;IIIIII)V

    aput-object v4, v2, v3

    .line 1078
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1090
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public findCellByName(Ljava/lang/String;)Ljxl/Cell;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1025
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/NameRecord;

    .line 1027
    .local v0, "nr":Ljxl/read/biff/NameRecord;
    if-nez v0, :cond_0

    .line 1029
    const/4 v1, 0x0

    return-object v1

    .line 1032
    :cond_0
    invoke-virtual {v0}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v1

    .line 1035
    .local v1, "ranges":[Ljxl/read/biff/NameRecord$NameRange;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v3

    invoke-virtual {p0, v3}, Ljxl/read/biff/WorkbookParser;->getExternalSheetIndex(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljxl/read/biff/WorkbookParser;->getSheet(I)Ljxl/Sheet;

    move-result-object v3

    .line 1036
    .local v3, "s":Ljxl/Sheet;
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v4

    .line 1037
    .local v4, "col":I
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v2

    .line 1041
    .local v2, "row":I
    invoke-interface {v3}, Ljxl/Sheet;->getColumns()I

    move-result v5

    if-gt v4, v5, :cond_2

    invoke-interface {v3}, Ljxl/Sheet;->getRows()I

    move-result v5

    if-le v2, v5, :cond_1

    goto :goto_0

    .line 1046
    :cond_1
    invoke-interface {v3, v4, v2}, Ljxl/Sheet;->getCell(II)Ljxl/Cell;

    move-result-object v5

    .line 1048
    .local v5, "cell":Ljxl/Cell;
    return-object v5

    .line 1043
    .end local v5    # "cell":Ljxl/Cell;
    :cond_2
    :goto_0
    new-instance v5, Ljxl/biff/EmptyCell;

    invoke-direct {v5, v4, v2}, Ljxl/biff/EmptyCell;-><init>(II)V

    return-object v5
.end method

.method public getAddInFunctionNames()[Ljava/lang/String;
    .locals 2

    .line 1251
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1252
    .local v0, "addins":[Ljava/lang/String;
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->addInFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;
    .locals 1

    .line 1231
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method public getCell(Ljava/lang/String;)Ljxl/Cell;
    .locals 2
    .param p1, "loc"    # Ljava/lang/String;

    .line 1010
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getSheet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/read/biff/WorkbookParser;->getSheet(Ljava/lang/String;)Ljxl/Sheet;

    move-result-object v0

    .line 1011
    .local v0, "s":Ljxl/Sheet;
    invoke-interface {v0, p1}, Ljxl/Sheet;->getCell(Ljava/lang/String;)Ljxl/Cell;

    move-result-object v1

    return-object v1
.end method

.method public getCompoundFile()Ljxl/read/biff/CompoundFile;
    .locals 1

    .line 1211
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->getCompoundFile()Ljxl/read/biff/CompoundFile;

    move-result-object v0

    return-object v0
.end method

.method public getCountryRecord()Ljxl/read/biff/CountryRecord;
    .locals 1

    .line 1241
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->countryRecord:Ljxl/read/biff/CountryRecord;

    return-object v0
.end method

.method public getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 1

    .line 1197
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getExternalSheetIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 325
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    return p1

    .line 330
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 332
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/read/biff/ExternalSheetRecord;->getFirstTabIndex(I)I

    move-result v0

    .line 334
    .local v0, "firstTab":I
    return v0
.end method

.method public getExternalSheetIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 1146
    const/4 v0, 0x0

    return v0
.end method

.method public getExternalSheetName(I)Ljava/lang/String;
    .locals 11
    .param p1, "index"    # I

    .line 371
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/BoundsheetRecord;

    .line 375
    .local v0, "br":Ljxl/read/biff/BoundsheetRecord;
    invoke-virtual {v0}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 378
    .end local v0    # "br":Ljxl/read/biff/BoundsheetRecord;
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/read/biff/ExternalSheetRecord;->getSupbookIndex(I)I

    move-result v0

    .line 379
    .local v0, "supbookIndex":I
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/SupbookRecord;

    .line 381
    .local v1, "sr":Ljxl/read/biff/SupbookRecord;
    iget-object v2, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v2, p1}, Ljxl/read/biff/ExternalSheetRecord;->getFirstTabIndex(I)I

    move-result v2

    .line 382
    .local v2, "firstTab":I
    iget-object v3, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v3, p1}, Ljxl/read/biff/ExternalSheetRecord;->getLastTabIndex(I)I

    move-result v3

    .line 383
    .local v3, "lastTab":I
    const-string v4, ""

    .line 384
    .local v4, "firstTabName":Ljava/lang/String;
    const-string v5, ""

    .line 386
    .local v5, "lastTabName":Ljava/lang/String;
    invoke-virtual {v1}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v6

    sget-object v7, Ljxl/read/biff/SupbookRecord;->INTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    const-string v8, "\'"

    const v9, 0xffff

    if-ne v6, v7, :cond_6

    .line 389
    if-ne v2, v9, :cond_1

    .line 391
    const-string v4, "#REF"

    goto :goto_0

    .line 395
    :cond_1
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/read/biff/BoundsheetRecord;

    .line 396
    .local v6, "br":Ljxl/read/biff/BoundsheetRecord;
    invoke-virtual {v6}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v4

    .line 399
    .end local v6    # "br":Ljxl/read/biff/BoundsheetRecord;
    :goto_0
    if-ne v3, v9, :cond_2

    .line 401
    const-string v5, "#REF"

    goto :goto_1

    .line 405
    :cond_2
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/read/biff/BoundsheetRecord;

    .line 406
    .restart local v6    # "br":Ljxl/read/biff/BoundsheetRecord;
    invoke-virtual {v6}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v5

    .line 409
    .end local v6    # "br":Ljxl/read/biff/BoundsheetRecord;
    :goto_1
    if-ne v2, v3, :cond_3

    move-object v6, v4

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, "sheetName":Ljava/lang/String;
    :goto_2
    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    move-object v8, v6

    goto :goto_3

    :cond_4
    const-string v9, "\'\'"

    invoke-static {v6, v8, v9}, Ljxl/biff/StringHelper;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    move-object v6, v8

    .line 418
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v10, :cond_5

    move-object v7, v6

    goto :goto_4

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    return-object v7

    .line 421
    .end local v6    # "sheetName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v6

    sget-object v7, Ljxl/read/biff/SupbookRecord;->EXTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-ne v6, v7, :cond_9

    .line 424
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 425
    .local v6, "sb":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v1}, Ljxl/read/biff/SupbookRecord;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v7, "fl":Ljava/io/File;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    const-string v10, "["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    const-string v10, "]"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    if-ne v2, v9, :cond_7

    const-string v9, "#REF"

    goto :goto_5

    :cond_7
    invoke-virtual {v1, v2}, Ljxl/read/biff/SupbookRecord;->getSheetName(I)Ljava/lang/String;

    move-result-object v9

    :goto_5
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    if-eq v3, v2, :cond_8

    .line 434
    invoke-virtual {v1, v3}, Ljxl/read/biff/SupbookRecord;->getSheetName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    :cond_8
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 441
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "fl":Ljava/io/File;
    :cond_9
    sget-object v6, Ljxl/read/biff/WorkbookParser;->logger:Ljxl/common/Logger;

    const-string v7, "Unknown Supbook 3"

    invoke-virtual {v6, v7}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 442
    const-string v6, "[UNKNOWN]"

    return-object v6
.end method

.method public getExternalSheetRecord()Ljxl/read/biff/ExternalSheetRecord;
    .locals 1

    .line 951
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    return-object v0
.end method

.method public getFonts()Ljxl/biff/Fonts;
    .locals 1

    .line 996
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->fonts:Ljxl/biff/Fonts;

    return-object v0
.end method

.method public getFormattingRecords()Ljxl/biff/FormattingRecords;
    .locals 1

    .line 940
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    return-object v0
.end method

.method public getIndex(Ljxl/Sheet;)I
    .locals 6
    .param p1, "sheet"    # Ljxl/Sheet;

    .line 1263
    invoke-interface {p1}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1264
    .local v0, "name":Ljava/lang/String;
    const/4 v1, -0x1

    .line 1265
    .local v1, "index":I
    const/4 v2, 0x0

    .line 1267
    .local v2, "pos":I
    iget-object v3, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 1269
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/read/biff/BoundsheetRecord;

    .line 1271
    .local v4, "br":Ljxl/read/biff/BoundsheetRecord;
    invoke-virtual {v4}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1273
    move v1, v2

    goto :goto_1

    .line 1277
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1279
    .end local v4    # "br":Ljxl/read/biff/BoundsheetRecord;
    :goto_1
    goto :goto_0

    .line 1281
    .end local v3    # "i":Ljava/util/Iterator;
    :cond_1
    return v1
.end method

.method public getLastExternalSheetIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 349
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    return p1

    .line 354
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 356
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/read/biff/ExternalSheetRecord;->getLastTabIndex(I)I

    move-result v0

    .line 358
    .local v0, "lastTab":I
    return v0
.end method

.method public getLastExternalSheetIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 1157
    const/4 v0, 0x0

    return v0
.end method

.method public getLastExternalSheetName(I)Ljava/lang/String;
    .locals 9
    .param p1, "index"    # I

    .line 455
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/BoundsheetRecord;

    .line 459
    .local v0, "br":Ljxl/read/biff/BoundsheetRecord;
    invoke-virtual {v0}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 462
    .end local v0    # "br":Ljxl/read/biff/BoundsheetRecord;
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/read/biff/ExternalSheetRecord;->getSupbookIndex(I)I

    move-result v0

    .line 463
    .local v0, "supbookIndex":I
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/SupbookRecord;

    .line 465
    .local v1, "sr":Ljxl/read/biff/SupbookRecord;
    iget-object v2, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v2, p1}, Ljxl/read/biff/ExternalSheetRecord;->getLastTabIndex(I)I

    move-result v2

    .line 467
    .local v2, "lastTab":I
    invoke-virtual {v1}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v3

    sget-object v4, Ljxl/read/biff/SupbookRecord;->INTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    const-string v5, "#REF"

    const v6, 0xffff

    if-ne v3, v4, :cond_2

    .line 470
    if-ne v2, v6, :cond_1

    .line 472
    return-object v5

    .line 476
    :cond_1
    iget-object v3, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/read/biff/BoundsheetRecord;

    .line 477
    .local v3, "br":Ljxl/read/biff/BoundsheetRecord;
    invoke-virtual {v3}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 480
    .end local v3    # "br":Ljxl/read/biff/BoundsheetRecord;
    :cond_2
    invoke-virtual {v1}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v3

    sget-object v4, Ljxl/read/biff/SupbookRecord;->EXTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-ne v3, v4, :cond_4

    .line 483
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 484
    .local v3, "sb":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljxl/read/biff/SupbookRecord;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 485
    .local v4, "fl":Ljava/io/File;
    const-string v7, "\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    const-string v8, "["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    const-string v8, "]"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    if-ne v2, v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Ljxl/read/biff/SupbookRecord;->getSheetName(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 496
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "fl":Ljava/io/File;
    :cond_4
    sget-object v3, Ljxl/read/biff/WorkbookParser;->logger:Ljxl/common/Logger;

    const-string v4, "Unknown Supbook 4"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 497
    const-string v3, "[UNKNOWN]"

    return-object v3
.end method

.method public getMsoDrawingGroupRecord()Ljxl/biff/drawing/MsoDrawingGroupRecord;
    .locals 1

    .line 962
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->msoDrawingGroup:Ljxl/biff/drawing/MsoDrawingGroupRecord;

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/NameRangeException;
        }
    .end annotation

    .line 1170
    if-ltz p1, :cond_0

    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1174
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/NameRecord;

    invoke-virtual {v0}, Ljxl/read/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1172
    :cond_0
    new-instance v0, Ljxl/biff/NameRangeException;

    invoke-direct {v0}, Ljxl/biff/NameRangeException;-><init>()V

    throw v0
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1185
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/NameRecord;

    .line 1187
    .local v0, "nr":Ljxl/read/biff/NameRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljxl/read/biff/NameRecord;->getIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getNameRecords()[Ljxl/read/biff/NameRecord;
    .locals 2

    .line 985
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/NameRecord;

    .line 986
    .local v0, "na":[Ljxl/read/biff/NameRecord;
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljxl/read/biff/NameRecord;

    check-cast v1, [Ljxl/read/biff/NameRecord;

    return-object v1
.end method

.method public getNumberOfSheets()I
    .locals 1

    .line 507
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRangeNames()[Ljava/lang/String;
    .locals 4

    .line 1100
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1101
    .local v0, "keys":[Ljava/lang/Object;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 1102
    .local v1, "names":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1104
    return-object v1
.end method

.method public getReadSheet(I)Ljxl/Sheet;
    .locals 1
    .param p1, "index"    # I

    .line 225
    invoke-virtual {p0, p1}, Ljxl/read/biff/WorkbookParser;->getSheet(I)Ljxl/Sheet;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Ljxl/WorkbookSettings;
    .locals 1

    .line 1135
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    return-object v0
.end method

.method public getSheet(I)Ljxl/Sheet;
    .locals 2
    .param p1, "index"    # I

    .line 239
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    if-eqz v0, :cond_0

    iget v1, p0, Ljxl/read/biff/WorkbookParser;->lastSheetIndex:I

    if-ne v1, p1, :cond_0

    .line 241
    return-object v0

    .line 245
    :cond_0
    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->clear()V

    .line 249
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 255
    :cond_1
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/SheetImpl;

    iput-object v0, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    .line 256
    iput p1, p0, Ljxl/read/biff/WorkbookParser;->lastSheetIndex:I

    .line 257
    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 259
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    return-object v0
.end method

.method public getSheet(Ljava/lang/String;)Ljxl/Sheet;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 273
    .local v1, "found":Z
    iget-object v2, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 274
    .local v2, "i":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 276
    .local v3, "br":Ljxl/read/biff/BoundsheetRecord;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 278
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljxl/read/biff/BoundsheetRecord;

    .line 280
    invoke-virtual {v3}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    const/4 v1, 0x1

    goto :goto_0

    .line 286
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljxl/read/biff/WorkbookParser;->getSheet(I)Ljxl/Sheet;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    return-object v4
.end method

.method public getSheetNames()[Ljava/lang/String;
    .locals 4

    .line 300
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 302
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 303
    .local v1, "br":Ljxl/read/biff/BoundsheetRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 305
    iget-object v3, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljxl/read/biff/BoundsheetRecord;

    .line 306
    invoke-virtual {v1}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public getSheets()[Ljxl/Sheet;
    .locals 2

    .line 212
    invoke-virtual {p0}, Ljxl/read/biff/WorkbookParser;->getNumberOfSheets()I

    move-result v0

    new-array v0, v0, [Ljxl/Sheet;

    .line 213
    .local v0, "sheetArray":[Ljxl/Sheet;
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljxl/Sheet;

    check-cast v1, [Ljxl/Sheet;

    return-object v1
.end method

.method public getSupbookRecords()[Ljxl/read/biff/SupbookRecord;
    .locals 2

    .line 973
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/SupbookRecord;

    .line 974
    .local v0, "sr":[Ljxl/read/biff/SupbookRecord;
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljxl/read/biff/SupbookRecord;

    check-cast v1, [Ljxl/read/biff/SupbookRecord;

    return-object v1
.end method

.method public getWorkbookBof()Ljxl/read/biff/BOFRecord;
    .locals 1

    .line 1115
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    return-object v0
.end method

.method public getXCTRecords()[Ljxl/biff/XCTRecord;
    .locals 2

    .line 1286
    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/XCTRecord;

    .line 1287
    .local v0, "xctr":[Ljxl/biff/XCTRecord;
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->xctRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljxl/biff/XCTRecord;

    check-cast v1, [Ljxl/biff/XCTRecord;

    return-object v1
.end method

.method public isProtected()Z
    .locals 1

    .line 1125
    iget-boolean v0, p0, Ljxl/read/biff/WorkbookParser;->wbProtected:Z

    return v0
.end method

.method protected parse()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;,
            Ljxl/read/biff/PasswordException;
        }
    .end annotation

    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, "r":Ljxl/read/biff/Record;
    new-instance v1, Ljxl/read/biff/BOFRecord;

    iget-object v2, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 549
    .local v1, "bof":Ljxl/read/biff/BOFRecord;
    iput-object v1, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    .line 550
    iget v2, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    .line 552
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    new-instance v2, Ljxl/read/biff/BiffException;

    sget-object v3, Ljxl/read/biff/BiffException;->unrecognizedBiffVersion:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v2, v3}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v2

    .line 557
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isWorkbookGlobals()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 561
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v2, "continueRecords":Ljava/util/ArrayList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v4, "localNames":Ljava/util/ArrayList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    .line 564
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Ljxl/read/biff/WorkbookParser;->addInFunctions:Ljava/util/ArrayList;

    .line 567
    :cond_2
    :goto_1
    iget v5, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    if-ne v5, v3, :cond_2a

    .line 569
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->SST:Ljxl/biff/Type;

    if-ne v5, v6, :cond_4

    .line 573
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 574
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v5

    .line 575
    .local v5, "nextrec":Ljxl/read/biff/Record;
    :goto_2
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_3

    .line 577
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v5

    goto :goto_2

    .line 582
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljxl/read/biff/Record;

    .line 583
    .local v6, "records":[Ljxl/read/biff/Record;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljxl/read/biff/Record;

    move-object v6, v7

    check-cast v6, [Ljxl/read/biff/Record;

    .line 585
    new-instance v7, Ljxl/read/biff/SSTRecord;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v7, v0, v6, v8}, Ljxl/read/biff/SSTRecord;-><init>(Ljxl/read/biff/Record;[Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    iput-object v7, p0, Ljxl/read/biff/WorkbookParser;->sharedStrings:Ljxl/read/biff/SSTRecord;

    .line 586
    .end local v5    # "nextrec":Ljxl/read/biff/Record;
    .end local v6    # "records":[Ljxl/read/biff/Record;
    goto :goto_1

    .line 587
    :cond_4
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->FILEPASS:Ljxl/biff/Type;

    if-eq v5, v6, :cond_29

    .line 591
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    if-ne v5, v6, :cond_7

    .line 593
    const/4 v5, 0x0

    .line 595
    .local v5, "nr":Ljxl/read/biff/NameRecord;
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 597
    new-instance v6, Ljxl/read/biff/NameRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v6, v0, v7, v8}, Ljxl/read/biff/NameRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;I)V

    move-object v5, v6

    goto :goto_3

    .line 602
    :cond_5
    new-instance v6, Ljxl/read/biff/NameRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget-object v9, Ljxl/read/biff/NameRecord;->biff7:Ljxl/read/biff/NameRecord$Biff7;

    invoke-direct {v6, v0, v7, v8, v9}, Ljxl/read/biff/NameRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;ILjxl/read/biff/NameRecord$Biff7;)V

    move-object v5, v6

    .line 608
    :goto_3
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {v5}, Ljxl/read/biff/NameRecord;->isGlobal()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 612
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljxl/read/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 616
    :cond_6
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .end local v5    # "nr":Ljxl/read/biff/NameRecord;
    :goto_4
    goto/16 :goto_1

    .line 619
    :cond_7
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->FONT:Ljxl/biff/Type;

    if-ne v5, v6, :cond_9

    .line 621
    const/4 v5, 0x0

    .line 623
    .local v5, "fr":Ljxl/biff/FontRecord;
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 625
    new-instance v6, Ljxl/biff/FontRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v0, v7}, Ljxl/biff/FontRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    move-object v5, v6

    goto :goto_5

    .line 629
    :cond_8
    new-instance v6, Ljxl/biff/FontRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v8, Ljxl/biff/FontRecord;->biff7:Ljxl/biff/FontRecord$Biff7;

    invoke-direct {v6, v0, v7, v8}, Ljxl/biff/FontRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FontRecord$Biff7;)V

    move-object v5, v6

    .line 631
    :goto_5
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->fonts:Ljxl/biff/Fonts;

    invoke-virtual {v6, v5}, Ljxl/biff/Fonts;->addFont(Ljxl/biff/FontRecord;)V

    .line 632
    .end local v5    # "fr":Ljxl/biff/FontRecord;
    goto/16 :goto_1

    .line 633
    :cond_9
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->PALETTE:Ljxl/biff/Type;

    if-ne v5, v6, :cond_a

    .line 635
    new-instance v5, Ljxl/biff/PaletteRecord;

    invoke-direct {v5, v0}, Ljxl/biff/PaletteRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 636
    .local v5, "palette":Ljxl/biff/PaletteRecord;
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v6, v5}, Ljxl/biff/FormattingRecords;->setPalette(Ljxl/biff/PaletteRecord;)V

    .line 637
    .end local v5    # "palette":Ljxl/biff/PaletteRecord;
    goto/16 :goto_1

    .line 638
    :cond_a
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->NINETEENFOUR:Ljxl/biff/Type;

    if-ne v5, v6, :cond_b

    .line 640
    new-instance v5, Ljxl/read/biff/NineteenFourRecord;

    invoke-direct {v5, v0}, Ljxl/read/biff/NineteenFourRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 641
    .local v5, "nr":Ljxl/read/biff/NineteenFourRecord;
    invoke-virtual {v5}, Ljxl/read/biff/NineteenFourRecord;->is1904()Z

    move-result v6

    iput-boolean v6, p0, Ljxl/read/biff/WorkbookParser;->nineteenFour:Z

    .line 642
    .end local v5    # "nr":Ljxl/read/biff/NineteenFourRecord;
    goto/16 :goto_1

    .line 643
    :cond_b
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->FORMAT:Ljxl/biff/Type;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_d

    .line 645
    const/4 v5, 0x0

    .line 646
    .local v5, "fr":Ljxl/biff/FormatRecord;
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 648
    new-instance v6, Ljxl/biff/FormatRecord;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v9, Ljxl/biff/FormatRecord;->biff8:Ljxl/biff/FormatRecord$BiffType;

    invoke-direct {v6, v0, v8, v9}, Ljxl/biff/FormatRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FormatRecord$BiffType;)V

    move-object v5, v6

    goto :goto_6

    .line 652
    :cond_c
    new-instance v6, Ljxl/biff/FormatRecord;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v9, Ljxl/biff/FormatRecord;->biff7:Ljxl/biff/FormatRecord$BiffType;

    invoke-direct {v6, v0, v8, v9}, Ljxl/biff/FormatRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FormatRecord$BiffType;)V

    move-object v5, v6

    .line 656
    :goto_6
    :try_start_0
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v6, v5}, Ljxl/biff/FormattingRecords;->addFormat(Ljxl/biff/DisplayFormat;)V
    :try_end_0
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    goto :goto_7

    .line 658
    :catch_0
    move-exception v6

    .line 661
    .local v6, "e":Ljxl/biff/NumFormatRecordsException;
    invoke-virtual {v6}, Ljxl/biff/NumFormatRecordsException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    .line 663
    .end local v5    # "fr":Ljxl/biff/FormatRecord;
    .end local v6    # "e":Ljxl/biff/NumFormatRecordsException;
    :goto_7
    goto/16 :goto_1

    .line 664
    :cond_d
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    if-ne v5, v6, :cond_f

    .line 666
    const/4 v5, 0x0

    .line 667
    .local v5, "xfr":Ljxl/biff/XFRecord;
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 669
    new-instance v6, Ljxl/biff/XFRecord;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v9, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    invoke-direct {v6, v0, v8, v9}, Ljxl/biff/XFRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/XFRecord$BiffType;)V

    move-object v5, v6

    goto :goto_8

    .line 673
    :cond_e
    new-instance v6, Ljxl/biff/XFRecord;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v9, Ljxl/biff/XFRecord;->biff7:Ljxl/biff/XFRecord$BiffType;

    invoke-direct {v6, v0, v8, v9}, Ljxl/biff/XFRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/XFRecord$BiffType;)V

    move-object v5, v6

    .line 678
    :goto_8
    :try_start_1
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v6, v5}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V
    :try_end_1
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 684
    goto :goto_9

    .line 680
    :catch_1
    move-exception v6

    .line 683
    .restart local v6    # "e":Ljxl/biff/NumFormatRecordsException;
    invoke-virtual {v6}, Ljxl/biff/NumFormatRecordsException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    .line 685
    .end local v5    # "xfr":Ljxl/biff/XFRecord;
    .end local v6    # "e":Ljxl/biff/NumFormatRecordsException;
    :goto_9
    goto/16 :goto_1

    .line 686
    :cond_f
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->BOUNDSHEET:Ljxl/biff/Type;

    if-ne v5, v6, :cond_13

    .line 688
    const/4 v5, 0x0

    .line 690
    .local v5, "br":Ljxl/read/biff/BoundsheetRecord;
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 692
    new-instance v6, Ljxl/read/biff/BoundsheetRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v0, v7}, Ljxl/read/biff/BoundsheetRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    move-object v5, v6

    goto :goto_a

    .line 696
    :cond_10
    new-instance v6, Ljxl/read/biff/BoundsheetRecord;

    sget-object v7, Ljxl/read/biff/BoundsheetRecord;->biff7:Ljxl/read/biff/BoundsheetRecord$Biff7;

    invoke-direct {v6, v0, v7}, Ljxl/read/biff/BoundsheetRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/BoundsheetRecord$Biff7;)V

    move-object v5, v6

    .line 699
    :goto_a
    invoke-virtual {v5}, Ljxl/read/biff/BoundsheetRecord;->isSheet()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 701
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 703
    :cond_11
    invoke-virtual {v5}, Ljxl/read/biff/BoundsheetRecord;->isChart()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v6}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v6

    if-nez v6, :cond_12

    .line 705
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    .end local v5    # "br":Ljxl/read/biff/BoundsheetRecord;
    :cond_12
    :goto_b
    goto/16 :goto_1

    .line 708
    :cond_13
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->EXTERNSHEET:Ljxl/biff/Type;

    if-ne v5, v6, :cond_15

    .line 710
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 712
    new-instance v5, Ljxl/read/biff/ExternalSheetRecord;

    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v5, v0, v6}, Ljxl/read/biff/ExternalSheetRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    iput-object v5, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    goto/16 :goto_1

    .line 716
    :cond_14
    new-instance v5, Ljxl/read/biff/ExternalSheetRecord;

    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v7, Ljxl/read/biff/ExternalSheetRecord;->biff7:Ljxl/read/biff/ExternalSheetRecord$Biff7;

    invoke-direct {v5, v0, v6, v7}, Ljxl/read/biff/ExternalSheetRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/ExternalSheetRecord$Biff7;)V

    iput-object v5, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    goto/16 :goto_1

    .line 720
    :cond_15
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->XCT:Ljxl/biff/Type;

    if-ne v5, v6, :cond_16

    .line 722
    new-instance v5, Ljxl/biff/XCTRecord;

    invoke-direct {v5, v0}, Ljxl/biff/XCTRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 723
    .local v5, "xctr":Ljxl/biff/XCTRecord;
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->xctRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    .end local v5    # "xctr":Ljxl/biff/XCTRecord;
    goto/16 :goto_1

    .line 725
    :cond_16
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->CODEPAGE:Ljxl/biff/Type;

    if-ne v5, v6, :cond_17

    .line 727
    new-instance v5, Ljxl/read/biff/CodepageRecord;

    invoke-direct {v5, v0}, Ljxl/read/biff/CodepageRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 728
    .local v5, "cr":Ljxl/read/biff/CodepageRecord;
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v5}, Ljxl/read/biff/CodepageRecord;->getCharacterSet()I

    move-result v7

    invoke-virtual {v6, v7}, Ljxl/WorkbookSettings;->setCharacterSet(I)V

    .line 729
    .end local v5    # "cr":Ljxl/read/biff/CodepageRecord;
    goto/16 :goto_1

    .line 730
    :cond_17
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->SUPBOOK:Ljxl/biff/Type;

    if-ne v5, v6, :cond_19

    .line 732
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v5

    .line 733
    .local v5, "nextrec":Ljxl/read/biff/Record;
    :goto_c
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_18

    .line 735
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljxl/read/biff/Record;->addContinueRecord(Ljxl/read/biff/Record;)V

    .line 736
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v5

    goto :goto_c

    .line 739
    :cond_18
    new-instance v6, Ljxl/read/biff/SupbookRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v0, v7}, Ljxl/read/biff/SupbookRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    .line 740
    .local v6, "sr":Ljxl/read/biff/SupbookRecord;
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    .end local v5    # "nextrec":Ljxl/read/biff/Record;
    .end local v6    # "sr":Ljxl/read/biff/SupbookRecord;
    goto/16 :goto_1

    .line 742
    :cond_19
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->EXTERNNAME:Ljxl/biff/Type;

    if-ne v5, v6, :cond_1b

    .line 744
    new-instance v5, Ljxl/read/biff/ExternalNameRecord;

    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v5, v0, v6}, Ljxl/read/biff/ExternalNameRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    .line 746
    .local v5, "enr":Ljxl/read/biff/ExternalNameRecord;
    invoke-virtual {v5}, Ljxl/read/biff/ExternalNameRecord;->isAddInFunction()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 748
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->addInFunctions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljxl/read/biff/ExternalNameRecord;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .end local v5    # "enr":Ljxl/read/biff/ExternalNameRecord;
    :cond_1a
    goto/16 :goto_1

    .line 751
    :cond_1b
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->PROTECT:Ljxl/biff/Type;

    if-ne v5, v6, :cond_1c

    .line 753
    new-instance v5, Ljxl/read/biff/ProtectRecord;

    invoke-direct {v5, v0}, Ljxl/read/biff/ProtectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 754
    .local v5, "pr":Ljxl/read/biff/ProtectRecord;
    invoke-virtual {v5}, Ljxl/read/biff/ProtectRecord;->isProtected()Z

    move-result v6

    iput-boolean v6, p0, Ljxl/read/biff/WorkbookParser;->wbProtected:Z

    .line 755
    .end local v5    # "pr":Ljxl/read/biff/ProtectRecord;
    goto/16 :goto_1

    .line 756
    :cond_1c
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->OBJPROJ:Ljxl/biff/Type;

    if-ne v5, v6, :cond_1d

    .line 758
    iput-boolean v3, p0, Ljxl/read/biff/WorkbookParser;->containsMacros:Z

    goto/16 :goto_1

    .line 760
    :cond_1d
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->COUNTRY:Ljxl/biff/Type;

    if-ne v5, v6, :cond_1e

    .line 762
    new-instance v5, Ljxl/read/biff/CountryRecord;

    invoke-direct {v5, v0}, Ljxl/read/biff/CountryRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v5, p0, Ljxl/read/biff/WorkbookParser;->countryRecord:Ljxl/read/biff/CountryRecord;

    goto/16 :goto_1

    .line 764
    :cond_1e
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->MSODRAWINGGROUP:Ljxl/biff/Type;

    if-ne v5, v6, :cond_21

    .line 766
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v5}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 768
    new-instance v5, Ljxl/biff/drawing/MsoDrawingGroupRecord;

    invoke-direct {v5, v0}, Ljxl/biff/drawing/MsoDrawingGroupRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v5, p0, Ljxl/read/biff/WorkbookParser;->msoDrawingGroup:Ljxl/biff/drawing/MsoDrawingGroupRecord;

    .line 770
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-nez v5, :cond_1f

    .line 772
    new-instance v5, Ljxl/biff/drawing/DrawingGroup;

    sget-object v6, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    invoke-direct {v5, v6}, Ljxl/biff/drawing/DrawingGroup;-><init>(Ljxl/biff/drawing/Origin;)V

    iput-object v5, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 775
    :cond_1f
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->msoDrawingGroup:Ljxl/biff/drawing/MsoDrawingGroupRecord;

    invoke-virtual {v5, v6}, Ljxl/biff/drawing/DrawingGroup;->add(Ljxl/biff/drawing/MsoDrawingGroupRecord;)V

    .line 777
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v5

    .line 778
    .local v5, "nextrec":Ljxl/read/biff/Record;
    :goto_d
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_20

    .line 780
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v7}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljxl/biff/drawing/DrawingGroup;->add(Ljxl/read/biff/Record;)V

    .line 781
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v5

    goto :goto_d

    .line 783
    .end local v5    # "nextrec":Ljxl/read/biff/Record;
    :cond_20
    goto/16 :goto_1

    .line 785
    :cond_21
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->BUTTONPROPERTYSET:Ljxl/biff/Type;

    if-ne v5, v6, :cond_22

    .line 787
    new-instance v5, Ljxl/read/biff/ButtonPropertySetRecord;

    invoke-direct {v5, v0}, Ljxl/read/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v5, p0, Ljxl/read/biff/WorkbookParser;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    goto/16 :goto_1

    .line 789
    :cond_22
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    if-ne v5, v6, :cond_23

    .line 791
    iget v5, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    sub-int/2addr v5, v3

    iput v5, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    goto/16 :goto_1

    .line 793
    :cond_23
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->REFRESHALL:Ljxl/biff/Type;

    if-ne v5, v6, :cond_24

    .line 795
    new-instance v5, Ljxl/read/biff/RefreshAllRecord;

    invoke-direct {v5, v0}, Ljxl/read/biff/RefreshAllRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 796
    .local v5, "rfm":Ljxl/read/biff/RefreshAllRecord;
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v5}, Ljxl/read/biff/RefreshAllRecord;->getRefreshAll()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljxl/WorkbookSettings;->setRefreshAll(Z)V

    .line 797
    .end local v5    # "rfm":Ljxl/read/biff/RefreshAllRecord;
    goto/16 :goto_1

    .line 798
    :cond_24
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->TEMPLATE:Ljxl/biff/Type;

    if-ne v5, v6, :cond_25

    .line 800
    new-instance v5, Ljxl/read/biff/TemplateRecord;

    invoke-direct {v5, v0}, Ljxl/read/biff/TemplateRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 801
    .local v5, "rfm":Ljxl/read/biff/TemplateRecord;
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v5}, Ljxl/read/biff/TemplateRecord;->getTemplate()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljxl/WorkbookSettings;->setTemplate(Z)V

    .line 802
    .end local v5    # "rfm":Ljxl/read/biff/TemplateRecord;
    goto/16 :goto_1

    .line 803
    :cond_25
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->EXCEL9FILE:Ljxl/biff/Type;

    if-ne v5, v6, :cond_26

    .line 805
    new-instance v5, Ljxl/read/biff/Excel9FileRecord;

    invoke-direct {v5, v0}, Ljxl/read/biff/Excel9FileRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 806
    .local v5, "e9f":Ljxl/read/biff/Excel9FileRecord;
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v5}, Ljxl/read/biff/Excel9FileRecord;->getExcel9File()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljxl/WorkbookSettings;->setExcel9File(Z)V

    .line 807
    .end local v5    # "e9f":Ljxl/read/biff/Excel9FileRecord;
    goto/16 :goto_1

    .line 808
    :cond_26
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->WINDOWPROTECT:Ljxl/biff/Type;

    if-ne v5, v6, :cond_27

    .line 810
    new-instance v5, Ljxl/read/biff/WindowProtectedRecord;

    invoke-direct {v5, v0}, Ljxl/read/biff/WindowProtectedRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 811
    .local v5, "winp":Ljxl/read/biff/WindowProtectedRecord;
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v5}, Ljxl/read/biff/WindowProtectedRecord;->getWindowProtected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljxl/WorkbookSettings;->setWindowProtected(Z)V

    .line 812
    .end local v5    # "winp":Ljxl/read/biff/WindowProtectedRecord;
    goto/16 :goto_1

    .line 813
    :cond_27
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->HIDEOBJ:Ljxl/biff/Type;

    if-ne v5, v6, :cond_28

    .line 815
    new-instance v5, Ljxl/read/biff/HideobjRecord;

    invoke-direct {v5, v0}, Ljxl/read/biff/HideobjRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 816
    .local v5, "hobj":Ljxl/read/biff/HideobjRecord;
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v5}, Ljxl/read/biff/HideobjRecord;->getHideMode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljxl/WorkbookSettings;->setHideobj(I)V

    .line 817
    .end local v5    # "hobj":Ljxl/read/biff/HideobjRecord;
    goto/16 :goto_1

    .line 818
    :cond_28
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->WRITEACCESS:Ljxl/biff/Type;

    if-ne v5, v6, :cond_2

    .line 820
    new-instance v5, Ljxl/read/biff/WriteAccessRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v5, v0, v6, v7}, Ljxl/read/biff/WriteAccessRecord;-><init>(Ljxl/read/biff/Record;ZLjxl/WorkbookSettings;)V

    .line 822
    .local v5, "war":Ljxl/read/biff/WriteAccessRecord;
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v5}, Ljxl/read/biff/WriteAccessRecord;->getWriteAccess()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljxl/WorkbookSettings;->setWriteAccess(Ljava/lang/String;)V

    .line 823
    .end local v5    # "war":Ljxl/read/biff/WriteAccessRecord;
    goto/16 :goto_1

    .line 589
    :cond_29
    new-instance v3, Ljxl/read/biff/PasswordException;

    invoke-direct {v3}, Ljxl/read/biff/PasswordException;-><init>()V

    throw v3

    .line 831
    :cond_2a
    const/4 v1, 0x0

    .line 832
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 834
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 836
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v5, v6, :cond_2b

    .line 838
    new-instance v5, Ljxl/read/biff/BOFRecord;

    invoke-direct {v5, v0}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v1, v5

    .line 843
    :cond_2b
    :goto_e
    if-eqz v1, :cond_31

    invoke-virtual {p0}, Ljxl/read/biff/WorkbookParser;->getNumberOfSheets()I

    move-result v5

    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_31

    .line 845
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v5

    if-nez v5, :cond_2d

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_f

    .line 847
    :cond_2c
    new-instance v3, Ljxl/read/biff/BiffException;

    sget-object v5, Ljxl/read/biff/BiffException;->unrecognizedBiffVersion:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v3, v5}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v3

    .line 850
    :cond_2d
    :goto_f
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isWorksheet()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 853
    new-instance v13, Ljxl/read/biff/SheetImpl;

    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v10, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    iget-boolean v11, p0, Ljxl/read/biff/WorkbookParser;->nineteenFour:Z

    move-object v5, v13

    move-object v9, v1

    move-object v12, p0

    invoke-direct/range {v5 .. v12}, Ljxl/read/biff/SheetImpl;-><init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;)V

    .line 861
    .local v5, "s":Ljxl/read/biff/SheetImpl;
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljxl/read/biff/WorkbookParser;->getNumberOfSheets()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/read/biff/BoundsheetRecord;

    .line 863
    .local v6, "br":Ljxl/read/biff/BoundsheetRecord;
    invoke-virtual {v6}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljxl/read/biff/SheetImpl;->setName(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v6}, Ljxl/read/biff/BoundsheetRecord;->isHidden()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljxl/read/biff/SheetImpl;->setHidden(Z)V

    .line 865
    invoke-virtual {p0, v5}, Ljxl/read/biff/WorkbookParser;->addSheet(Ljxl/Sheet;)V

    .line 866
    .end local v5    # "s":Ljxl/read/biff/SheetImpl;
    .end local v6    # "br":Ljxl/read/biff/BoundsheetRecord;
    goto :goto_11

    .line 867
    :cond_2e
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 870
    new-instance v13, Ljxl/read/biff/SheetImpl;

    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v10, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    iget-boolean v11, p0, Ljxl/read/biff/WorkbookParser;->nineteenFour:Z

    move-object v5, v13

    move-object v9, v1

    move-object v12, p0

    invoke-direct/range {v5 .. v12}, Ljxl/read/biff/SheetImpl;-><init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;)V

    .line 878
    .restart local v5    # "s":Ljxl/read/biff/SheetImpl;
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljxl/read/biff/WorkbookParser;->getNumberOfSheets()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/read/biff/BoundsheetRecord;

    .line 880
    .restart local v6    # "br":Ljxl/read/biff/BoundsheetRecord;
    invoke-virtual {v6}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljxl/read/biff/SheetImpl;->setName(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v6}, Ljxl/read/biff/BoundsheetRecord;->isHidden()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljxl/read/biff/SheetImpl;->setHidden(Z)V

    .line 882
    invoke-virtual {p0, v5}, Ljxl/read/biff/WorkbookParser;->addSheet(Ljxl/Sheet;)V

    .line 883
    .end local v5    # "s":Ljxl/read/biff/SheetImpl;
    .end local v6    # "br":Ljxl/read/biff/BoundsheetRecord;
    goto :goto_11

    .line 886
    :cond_2f
    sget-object v5, Ljxl/read/biff/WorkbookParser;->logger:Ljxl/common/Logger;

    const-string v6, "BOF is unrecognized"

    invoke-virtual {v5, v6}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 889
    :goto_10
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    if-eq v5, v6, :cond_30

    .line 891
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    goto :goto_10

    .line 900
    :cond_30
    :goto_11
    const/4 v1, 0x0

    .line 901
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 903
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v5, v6, :cond_2b

    .line 907
    new-instance v5, Ljxl/read/biff/BOFRecord;

    invoke-direct {v5, v0}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v1, v5

    goto/16 :goto_e

    .line 913
    :cond_31
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 915
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/read/biff/NameRecord;

    .line 917
    .local v6, "nr":Ljxl/read/biff/NameRecord;
    invoke-virtual {v6}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v7

    if-nez v7, :cond_32

    .line 919
    sget-object v7, Ljxl/read/biff/WorkbookParser;->logger:Ljxl/common/Logger;

    const-string v8, "Usage of a local non-builtin name"

    invoke-virtual {v7, v8}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_13

    .line 921
    :cond_32
    invoke-virtual {v6}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v7

    sget-object v8, Ljxl/biff/BuiltInName;->PRINT_AREA:Ljxl/biff/BuiltInName;

    if-eq v7, v8, :cond_33

    invoke-virtual {v6}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v7

    sget-object v8, Ljxl/biff/BuiltInName;->PRINT_TITLES:Ljxl/biff/BuiltInName;

    if-ne v7, v8, :cond_34

    .line 926
    :cond_33
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljxl/read/biff/NameRecord;->getSheetRef()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljxl/read/biff/SheetImpl;

    .line 927
    .local v7, "s":Ljxl/read/biff/SheetImpl;
    invoke-virtual {v7, v6}, Ljxl/read/biff/SheetImpl;->addLocalName(Ljxl/read/biff/NameRecord;)V

    .line 929
    .end local v6    # "nr":Ljxl/read/biff/NameRecord;
    .end local v7    # "s":Ljxl/read/biff/SheetImpl;
    :cond_34
    :goto_13
    goto :goto_12

    .line 930
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_35
    return-void

    .line 559
    .end local v2    # "continueRecords":Ljava/util/ArrayList;
    .end local v4    # "localNames":Ljava/util/ArrayList;
    :cond_36
    new-instance v2, Ljxl/read/biff/BiffException;

    sget-object v3, Ljxl/read/biff/BiffException;->expectedGlobals:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v2, v3}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v2
.end method
