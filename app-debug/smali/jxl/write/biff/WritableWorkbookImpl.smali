.class public Ljxl/write/biff/WritableWorkbookImpl;
.super Ljxl/write/WritableWorkbook;
.source "WritableWorkbookImpl.java"

# interfaces
.implements Ljxl/biff/formula/ExternalSheet;
.implements Ljxl/biff/WorkbookMethods;


# static fields
.field private static SYNCHRONIZER:Ljava/lang/Object;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private addInFunctionNames:[Ljava/lang/String;

.field private buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private closeStream:Z

.field private containsMacros:Z

.field private countryRecord:Ljxl/write/biff/CountryRecord;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private externSheet:Ljxl/write/biff/ExternalSheetRecord;

.field private fonts:Ljxl/biff/Fonts;

.field private formatRecords:Ljxl/biff/FormattingRecords;

.field private nameRecords:Ljava/util/HashMap;

.field private names:Ljava/util/ArrayList;

.field private outputFile:Ljxl/write/biff/File;

.field private rcirCells:Ljava/util/ArrayList;

.field private settings:Ljxl/WorkbookSettings;

.field private sharedStrings:Ljxl/write/biff/SharedStrings;

.field private sheets:Ljava/util/ArrayList;

.field private styles:Ljxl/write/biff/Styles;

.field private supbooks:Ljava/util/ArrayList;

.field private wbProtected:Z

.field private xctRecords:[Ljxl/biff/XCTRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Ljxl/write/biff/WritableWorkbookImpl;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/WritableWorkbookImpl;->logger:Ljxl/common/Logger;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljxl/write/biff/WritableWorkbookImpl;->SYNCHRONIZER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljxl/Workbook;ZLjxl/WorkbookSettings;)V
    .locals 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "w"    # Ljxl/Workbook;
    .param p3, "cs"    # Z
    .param p4, "ws"    # Ljxl/WorkbookSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Ljxl/write/WritableWorkbook;-><init>()V

    .line 233
    move-object v0, p2

    check-cast v0, Ljxl/read/biff/WorkbookParser;

    .line 240
    .local v0, "wp":Ljxl/read/biff/WorkbookParser;
    sget-object v1, Ljxl/write/biff/WritableWorkbookImpl;->SYNCHRONIZER:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    sget-object v2, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-virtual {v2}, Ljxl/write/WritableFont;->uninitialize()V

    .line 243
    sget-object v2, Ljxl/write/WritableWorkbook;->HYPERLINK_FONT:Ljxl/write/WritableFont;

    invoke-virtual {v2}, Ljxl/write/WritableFont;->uninitialize()V

    .line 244
    sget-object v2, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v2}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 245
    sget-object v2, Ljxl/write/WritableWorkbook;->HYPERLINK_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v2}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 246
    sget-object v2, Ljxl/write/WritableWorkbook;->HIDDEN_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v2}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 247
    sget-object v2, Ljxl/write/biff/DateRecord;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    invoke-virtual {v2}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 248
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iput-boolean p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->closeStream:Z

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    .line 252
    new-instance v1, Ljxl/write/biff/SharedStrings;

    invoke-direct {v1}, Ljxl/write/biff/SharedStrings;-><init>()V

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    .line 253
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    .line 254
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getFonts()Ljxl/biff/Fonts;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->fonts:Ljxl/biff/Fonts;

    .line 255
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getFormattingRecords()Ljxl/biff/FormattingRecords;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    .line 256
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->wbProtected:Z

    .line 257
    iput-object p4, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    .line 259
    new-instance v2, Ljxl/write/biff/Styles;

    invoke-direct {v2}, Ljxl/write/biff/Styles;-><init>()V

    iput-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->styles:Ljxl/write/biff/Styles;

    .line 260
    new-instance v2, Ljxl/write/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getCompoundFile()Ljxl/read/biff/CompoundFile;

    move-result-object v3

    invoke-direct {v2, p1, p4, v3}, Ljxl/write/biff/File;-><init>(Ljava/io/OutputStream;Ljxl/WorkbookSettings;Ljxl/read/biff/CompoundFile;)V

    iput-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    .line 262
    iput-boolean v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->containsMacros:Z

    .line 263
    invoke-virtual {p4}, Ljxl/WorkbookSettings;->getPropertySetsDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->containsMacros()Z

    move-result v1

    iput-boolean v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->containsMacros:Z

    .line 269
    :cond_0
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getCountryRecord()Ljxl/read/biff/CountryRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 271
    new-instance v1, Ljxl/write/biff/CountryRecord;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getCountryRecord()Ljxl/read/biff/CountryRecord;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/write/biff/CountryRecord;-><init>(Ljxl/read/biff/CountryRecord;)V

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->countryRecord:Ljxl/write/biff/CountryRecord;

    .line 275
    :cond_1
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getAddInFunctionNames()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->addInFunctionNames:[Ljava/lang/String;

    .line 278
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getXCTRecords()[Ljxl/biff/XCTRecord;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->xctRecords:[Ljxl/biff/XCTRecord;

    .line 281
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getExternalSheetRecord()Ljxl/read/biff/ExternalSheetRecord;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 283
    new-instance v1, Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getExternalSheetRecord()Ljxl/read/biff/ExternalSheetRecord;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/write/biff/ExternalSheetRecord;-><init>(Ljxl/read/biff/ExternalSheetRecord;)V

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    .line 286
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getSupbookRecords()[Ljxl/read/biff/SupbookRecord;

    move-result-object v1

    .line 287
    .local v1, "readsr":[Ljxl/read/biff/SupbookRecord;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    .line 289
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 291
    aget-object v3, v1, v2

    .line 292
    .local v3, "readSupbook":Ljxl/read/biff/SupbookRecord;
    invoke-virtual {v3}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v4

    sget-object v5, Ljxl/read/biff/SupbookRecord;->INTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v4

    sget-object v5, Ljxl/read/biff/SupbookRecord;->EXTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 299
    :cond_2
    invoke-virtual {v3}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v4

    sget-object v5, Ljxl/read/biff/SupbookRecord;->ADDIN:Ljxl/read/biff/SupbookRecord$Type;

    if-eq v4, v5, :cond_4

    .line 301
    sget-object v4, Ljxl/write/biff/WritableWorkbookImpl;->logger:Ljxl/common/Logger;

    const-string/jumbo v5, "unsupported supbook type - ignoring"

    invoke-virtual {v4, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_2

    .line 295
    :cond_3
    :goto_1
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    new-instance v5, Ljxl/write/biff/SupbookRecord;

    iget-object v6, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v5, v3, v6}, Ljxl/write/biff/SupbookRecord;-><init>(Ljxl/read/biff/SupbookRecord;Ljxl/WorkbookSettings;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v3    # "readSupbook":Ljxl/read/biff/SupbookRecord;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "readsr":[Ljxl/read/biff/SupbookRecord;
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 311
    new-instance v1, Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/drawing/DrawingGroup;-><init>(Ljxl/biff/drawing/DrawingGroup;)V

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 315
    :cond_6
    iget-boolean v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->containsMacros:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 317
    new-instance v1, Ljxl/write/biff/ButtonPropertySetRecord;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/write/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/ButtonPropertySetRecord;)V

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 322
    :cond_7
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getNamesDisabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 324
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getNameRecords()[Ljxl/read/biff/NameRecord;

    move-result-object v1

    .line 325
    .local v1, "na":[Ljxl/read/biff/NameRecord;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    .line 327
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_9

    .line 329
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord;->isBiff8()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 331
    new-instance v3, Ljxl/write/biff/NameRecord;

    aget-object v4, v1, v2

    invoke-direct {v3, v4, v2}, Ljxl/write/biff/NameRecord;-><init>(Ljxl/read/biff/NameRecord;I)V

    .line 332
    .local v3, "n":Ljxl/write/biff/NameRecord;
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {v3}, Ljxl/write/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v3    # "n":Ljxl/write/biff/NameRecord;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_4

    .line 338
    :cond_8
    sget-object v3, Ljxl/write/biff/WritableWorkbookImpl;->logger:Ljxl/common/Logger;

    const-string v4, "Cannot copy Biff7 name records - ignoring"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 327
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 343
    .end local v1    # "na":[Ljxl/read/biff/NameRecord;
    .end local v2    # "i":I
    :cond_9
    invoke-direct {p0, p2}, Ljxl/write/biff/WritableWorkbookImpl;->copyWorkbook(Ljxl/Workbook;)V

    .line 348
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-eqz v1, :cond_a

    .line 350
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/biff/drawing/DrawingGroup;->updateData(Ljxl/biff/drawing/DrawingGroup;)V

    .line 352
    :cond_a
    return-void

    .line 248
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZLjxl/WorkbookSettings;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "cs"    # Z
    .param p3, "ws"    # Ljxl/WorkbookSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Ljxl/write/WritableWorkbook;-><init>()V

    .line 183
    new-instance v0, Ljxl/write/biff/File;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Ljxl/write/biff/File;-><init>(Ljava/io/OutputStream;Ljxl/WorkbookSettings;Ljxl/read/biff/CompoundFile;)V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljxl/write/biff/SharedStrings;

    invoke-direct {v0}, Ljxl/write/biff/SharedStrings;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    .line 187
    iput-boolean p2, p0, Ljxl/write/biff/WritableWorkbookImpl;->closeStream:Z

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->wbProtected:Z

    .line 189
    iput-boolean v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->containsMacros:Z

    .line 190
    iput-object p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Ljxl/write/biff/Styles;

    invoke-direct {v0}, Ljxl/write/biff/Styles;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->styles:Ljxl/write/biff/Styles;

    .line 199
    sget-object v0, Ljxl/write/biff/WritableWorkbookImpl;->SYNCHRONIZER:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    sget-object v1, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-virtual {v1}, Ljxl/write/WritableFont;->uninitialize()V

    .line 202
    sget-object v1, Ljxl/write/WritableWorkbook;->HYPERLINK_FONT:Ljxl/write/WritableFont;

    invoke-virtual {v1}, Ljxl/write/WritableFont;->uninitialize()V

    .line 203
    sget-object v1, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v1}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 204
    sget-object v1, Ljxl/write/WritableWorkbook;->HYPERLINK_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v1}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 205
    sget-object v1, Ljxl/write/WritableWorkbook;->HIDDEN_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v1}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 206
    sget-object v1, Ljxl/write/biff/DateRecord;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    invoke-virtual {v1}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    new-instance v0, Ljxl/write/biff/WritableFonts;

    invoke-direct {v0, p0}, Ljxl/write/biff/WritableFonts;-><init>(Ljxl/write/biff/WritableWorkbookImpl;)V

    .line 210
    .local v0, "wf":Ljxl/write/biff/WritableFonts;
    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->fonts:Ljxl/biff/Fonts;

    .line 212
    new-instance v1, Ljxl/write/biff/WritableFormattingRecords;

    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->fonts:Ljxl/biff/Fonts;

    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->styles:Ljxl/write/biff/Styles;

    invoke-direct {v1, v2, v3}, Ljxl/write/biff/WritableFormattingRecords;-><init>(Ljxl/biff/Fonts;Ljxl/write/biff/Styles;)V

    .line 214
    .local v1, "wfr":Ljxl/write/biff/WritableFormattingRecords;
    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    .line 215
    return-void

    .line 207
    .end local v0    # "wf":Ljxl/write/biff/WritableFonts;
    .end local v1    # "wfr":Ljxl/write/biff/WritableFormattingRecords;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private copyWorkbook(Ljxl/Workbook;)V
    .locals 6
    .param p1, "w"    # Ljxl/Workbook;

    .line 963
    invoke-virtual {p1}, Ljxl/Workbook;->getNumberOfSheets()I

    move-result v0

    .line 964
    .local v0, "numSheets":I
    invoke-virtual {p1}, Ljxl/Workbook;->isProtected()Z

    move-result v1

    iput-boolean v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->wbProtected:Z

    .line 965
    const/4 v1, 0x0

    .line 966
    .local v1, "s":Ljxl/Sheet;
    const/4 v2, 0x0

    .line 967
    .local v2, "ws":Ljxl/write/biff/WritableSheetImpl;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 969
    invoke-virtual {p1, v3}, Ljxl/Workbook;->getSheet(I)Ljxl/Sheet;

    move-result-object v1

    .line 970
    invoke-interface {v1}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v5}, Ljxl/write/biff/WritableWorkbookImpl;->createSheet(Ljava/lang/String;IZ)Ljxl/write/WritableSheet;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljxl/write/biff/WritableSheetImpl;

    .line 971
    invoke-virtual {v2, v1}, Ljxl/write/biff/WritableSheetImpl;->copy(Ljxl/Sheet;)V

    .line 967
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 973
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method private createSheet(Ljava/lang/String;IZ)Ljxl/write/WritableSheet;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "handleRefs"    # Z

    .line 486
    new-instance v7, Ljxl/write/biff/WritableSheetImpl;

    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    iget-object v5, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    move-object v0, v7

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Ljxl/write/biff/WritableSheetImpl;-><init>(Ljava/lang/String;Ljxl/write/biff/File;Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/WorkbookSettings;Ljxl/write/biff/WritableWorkbookImpl;)V

    .line 493
    .local v0, "w":Ljxl/write/WritableSheet;
    move v1, p2

    .line 495
    .local v1, "pos":I
    const/4 v2, 0x0

    if-gtz p2, :cond_0

    .line 497
    const/4 v1, 0x0

    .line 498
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 500
    :cond_0
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p2, v3, :cond_1

    .line 502
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 503
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 507
    :cond_1
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 510
    :goto_0
    if-eqz p3, :cond_2

    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-eqz v3, :cond_2

    .line 512
    invoke-virtual {v3, v1}, Ljxl/write/biff/ExternalSheetRecord;->sheetInserted(I)V

    .line 515
    :cond_2
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 517
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/SupbookRecord;

    .line 518
    .local v2, "supbook":Ljxl/write/biff/SupbookRecord;
    invoke-virtual {v2}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v3

    sget-object v4, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v3, v4, :cond_3

    .line 520
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljxl/write/biff/SupbookRecord;->adjustInternal(I)V

    .line 524
    .end local v2    # "supbook":Ljxl/write/biff/SupbookRecord;
    :cond_3
    return-object v0
.end method

.method private getInternalSheetIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1042
    const/4 v0, -0x1

    .line 1043
    .local v0, "index":I
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getSheetNames()[Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1046
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1048
    move v0, v2

    .line 1049
    goto :goto_1

    .line 1044
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1053
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private rationalize()V
    .locals 6

    .line 1021
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0}, Ljxl/biff/FormattingRecords;->rationalizeFonts()Ljxl/biff/IndexMapping;

    move-result-object v0

    .line 1022
    .local v0, "fontMapping":Ljxl/biff/IndexMapping;
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/biff/FormattingRecords;->rationalizeDisplayFormats()Ljxl/biff/IndexMapping;

    move-result-object v1

    .line 1023
    .local v1, "formatMapping":Ljxl/biff/IndexMapping;
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v2, v0, v1}, Ljxl/biff/FormattingRecords;->rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)Ljxl/biff/IndexMapping;

    move-result-object v2

    .line 1026
    .local v2, "xfMapping":Ljxl/biff/IndexMapping;
    const/4 v3, 0x0

    .line 1027
    .local v3, "wsi":Ljxl/write/biff/WritableSheetImpl;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1029
    iget-object v5, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljxl/write/biff/WritableSheetImpl;

    .line 1030
    invoke-virtual {v3, v2, v0, v1}, Ljxl/write/biff/WritableSheetImpl;->rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)V

    .line 1027
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1032
    .end local v4    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V
    .locals 2
    .param p1, "d"    # Ljxl/biff/drawing/DrawingGroupObject;

    .line 1587
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-nez v0, :cond_0

    .line 1589
    new-instance v0, Ljxl/biff/drawing/DrawingGroup;

    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    invoke-direct {v0, v1}, Ljxl/biff/drawing/DrawingGroup;-><init>(Ljxl/biff/drawing/Origin;)V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 1592
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/DrawingGroup;->add(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 1593
    return-void
.end method

.method public addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheet"    # Ljxl/write/WritableSheet;
    .param p3, "firstCol"    # I
    .param p4, "firstRow"    # I
    .param p5, "lastCol"    # I
    .param p6, "lastRow"    # I

    .line 1718
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Ljxl/write/biff/WritableWorkbookImpl;->addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIIIZ)V

    .line 1719
    return-void
.end method

.method addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIIIZ)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheet"    # Ljxl/write/WritableSheet;
    .param p3, "firstCol"    # I
    .param p4, "firstRow"    # I
    .param p5, "lastCol"    # I
    .param p6, "lastRow"    # I
    .param p7, "global"    # Z

    .line 1741
    move-object v0, p0

    iget-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1743
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    .line 1746
    :cond_0
    invoke-interface {p2}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v1

    .line 1749
    .local v1, "externalSheetIndex":I
    new-instance v11, Ljxl/write/biff/NameRecord;

    iget-object v2, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object v2, v11

    move-object v3, p1

    move v5, v1

    move/from16 v6, p4

    move/from16 v7, p6

    move v8, p3

    move/from16 v9, p5

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Ljxl/write/biff/NameRecord;-><init>(Ljava/lang/String;IIIIIIZ)V

    .line 1758
    .local v2, "nr":Ljxl/write/biff/NameRecord;
    iget-object v3, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1761
    iget-object v3, v0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    move-object v4, p1

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    return-void
.end method

.method addNameArea(Ljxl/biff/BuiltInName;Ljxl/write/WritableSheet;IIIIIIIIZ)V
    .locals 17
    .param p1, "name"    # Ljxl/biff/BuiltInName;
    .param p2, "sheet"    # Ljxl/write/WritableSheet;
    .param p3, "firstCol"    # I
    .param p4, "firstRow"    # I
    .param p5, "lastCol"    # I
    .param p6, "lastRow"    # I
    .param p7, "firstCol2"    # I
    .param p8, "firstRow2"    # I
    .param p9, "lastCol2"    # I
    .param p10, "lastRow2"    # I
    .param p11, "global"    # Z

    .line 1836
    move-object/from16 v0, p0

    iget-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1838
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    .line 1841
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getInternalSheetIndex(Ljava/lang/String;)I

    move-result v1

    .line 1842
    .local v1, "index":I
    invoke-interface/range {p2 .. p2}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v15

    .line 1845
    .local v15, "externalSheetIndex":I
    new-instance v16, Ljxl/write/biff/NameRecord;

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move v4, v1

    move v5, v15

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p4

    move/from16 v11, p6

    move/from16 v12, p3

    move/from16 v13, p5

    move/from16 v14, p11

    invoke-direct/range {v2 .. v14}, Ljxl/write/biff/NameRecord;-><init>(Ljxl/biff/BuiltInName;IIIIIIIIIIZ)V

    .line 1856
    .local v2, "nr":Ljxl/write/biff/NameRecord;
    iget-object v3, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1859
    iget-object v3, v0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    return-void
.end method

.method addNameArea(Ljxl/biff/BuiltInName;Ljxl/write/WritableSheet;IIIIZ)V
    .locals 13
    .param p1, "name"    # Ljxl/biff/BuiltInName;
    .param p2, "sheet"    # Ljxl/write/WritableSheet;
    .param p3, "firstCol"    # I
    .param p4, "firstRow"    # I
    .param p5, "lastCol"    # I
    .param p6, "lastRow"    # I
    .param p7, "global"    # Z

    .line 1784
    move-object v0, p0

    iget-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1786
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    .line 1789
    :cond_0
    invoke-interface {p2}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getInternalSheetIndex(Ljava/lang/String;)I

    move-result v1

    .line 1790
    .local v1, "index":I
    invoke-interface {p2}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v11

    .line 1793
    .local v11, "externalSheetIndex":I
    new-instance v12, Ljxl/write/biff/NameRecord;

    move-object v2, v12

    move-object v3, p1

    move v4, v1

    move v5, v11

    move/from16 v6, p4

    move/from16 v7, p6

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Ljxl/write/biff/NameRecord;-><init>(Ljxl/biff/BuiltInName;IIIIIIZ)V

    .line 1802
    .local v2, "nr":Ljxl/write/biff/NameRecord;
    iget-object v3, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    iget-object v3, v0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    move-object v4, p1

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    return-void
.end method

.method addRCIRCell(Ljxl/write/biff/CellValue;)V
    .locals 1
    .param p1, "cv"    # Ljxl/write/biff/CellValue;

    .line 1365
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/write/biff/JxlWriteException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    iget-boolean v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->closeStream:Z

    invoke-virtual {v0, v1}, Ljxl/write/biff/File;->close(Z)V

    .line 457
    return-void
.end method

.method columnInserted(Ljxl/write/biff/WritableSheetImpl;I)V
    .locals 3
    .param p1, "s"    # Ljxl/write/biff/WritableSheetImpl;
    .param p2, "col"    # I

    .line 1377
    invoke-virtual {p1}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 1378
    .local v0, "externalSheetIndex":I
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1380
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/CellValue;

    .line 1381
    .local v2, "cv":Ljxl/write/biff/CellValue;
    invoke-virtual {v2, p1, v0, p2}, Ljxl/write/biff/CellValue;->columnInserted(Ljxl/Sheet;II)V

    .line 1382
    .end local v2    # "cv":Ljxl/write/biff/CellValue;
    goto :goto_0

    .line 1385
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1387
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1389
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/NameRecord;

    .line 1390
    .local v2, "nameRecord":Ljxl/write/biff/NameRecord;
    invoke-virtual {v2, v0, p2}, Ljxl/write/biff/NameRecord;->columnInserted(II)V

    .line 1391
    .end local v2    # "nameRecord":Ljxl/write/biff/NameRecord;
    goto :goto_1

    .line 1393
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method columnRemoved(Ljxl/write/biff/WritableSheetImpl;I)V
    .locals 7
    .param p1, "s"    # Ljxl/write/biff/WritableSheetImpl;
    .param p2, "col"    # I

    .line 1404
    invoke-virtual {p1}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 1405
    .local v0, "externalSheetIndex":I
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/CellValue;

    .line 1408
    .local v2, "cv":Ljxl/write/biff/CellValue;
    invoke-virtual {v2, p1, v0, p2}, Ljxl/write/biff/CellValue;->columnRemoved(Ljxl/Sheet;II)V

    .line 1409
    .end local v2    # "cv":Ljxl/write/biff/CellValue;
    goto :goto_0

    .line 1412
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1413
    .local v1, "removedNames":Ljava/util/ArrayList;
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1415
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1417
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/NameRecord;

    .line 1418
    .local v3, "nameRecord":Ljxl/write/biff/NameRecord;
    invoke-virtual {v3, v0, p2}, Ljxl/write/biff/NameRecord;->columnRemoved(II)Z

    move-result v4

    .line 1421
    .local v4, "removeName":Z
    if-eqz v4, :cond_1

    .line 1423
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    .end local v3    # "nameRecord":Ljxl/write/biff/NameRecord;
    .end local v4    # "removeName":Z
    :cond_1
    goto :goto_1

    .line 1428
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/NameRecord;

    .line 1431
    .restart local v3    # "nameRecord":Ljxl/write/biff/NameRecord;
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 1432
    .local v4, "removed":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not remove name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljxl/write/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    .line 1434
    .end local v3    # "nameRecord":Ljxl/write/biff/NameRecord;
    .end local v4    # "removed":Z
    goto :goto_2

    .line 1436
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public copySheet(ILjava/lang/String;I)V
    .locals 2
    .param p1, "s"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 985
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v0

    .line 986
    .local v0, "sheet":Ljxl/write/WritableSheet;
    invoke-virtual {p0, p2, p3}, Ljxl/write/biff/WritableWorkbookImpl;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/WritableSheetImpl;

    .line 987
    .local v1, "ws":Ljxl/write/biff/WritableSheetImpl;
    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableSheetImpl;->copy(Ljxl/write/WritableSheet;)V

    .line 988
    return-void
.end method

.method public copySheet(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 1000
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(Ljava/lang/String;)Ljxl/write/WritableSheet;

    move-result-object v0

    .line 1001
    .local v0, "sheet":Ljxl/write/WritableSheet;
    invoke-virtual {p0, p2, p3}, Ljxl/write/biff/WritableWorkbookImpl;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/WritableSheetImpl;

    .line 1002
    .local v1, "ws":Ljxl/write/biff/WritableSheetImpl;
    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableSheetImpl;->copy(Ljxl/write/WritableSheet;)V

    .line 1003
    return-void
.end method

.method createDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 2

    .line 1626
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-nez v0, :cond_0

    .line 1628
    new-instance v0, Ljxl/biff/drawing/DrawingGroup;

    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    invoke-direct {v0, v1}, Ljxl/biff/drawing/DrawingGroup;-><init>(Ljxl/biff/drawing/Origin;)V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 1631
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 538
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljxl/write/biff/WritableWorkbookImpl;->createSheet(Ljava/lang/String;IZ)Ljxl/write/WritableSheet;

    move-result-object v0

    return-object v0
.end method

.method public findByName(Ljava/lang/String;)[Ljxl/Range;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;

    .line 1554
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/biff/NameRecord;

    .line 1556
    .local v0, "nr":Ljxl/write/biff/NameRecord;
    if-nez v0, :cond_0

    .line 1558
    const/4 v1, 0x0

    return-object v1

    .line 1561
    :cond_0
    invoke-virtual {v0}, Ljxl/write/biff/NameRecord;->getRanges()[Ljxl/write/biff/NameRecord$NameRange;

    move-result-object v1

    .line 1563
    .local v1, "ranges":[Ljxl/write/biff/NameRecord$NameRange;
    array-length v2, v1

    new-array v2, v2, [Ljxl/Range;

    .line 1565
    .local v2, "cellRanges":[Ljxl/Range;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1567
    new-instance v4, Ljxl/biff/RangeImpl;

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v5

    invoke-virtual {p0, v5}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(I)I

    move-result v7

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljxl/write/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v8

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljxl/write/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v9

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v5

    invoke-virtual {p0, v5}, Ljxl/write/biff/WritableWorkbookImpl;->getLastExternalSheetIndex(I)I

    move-result v10

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljxl/write/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v11

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljxl/write/biff/NameRecord$NameRange;->getLastRow()I

    move-result v12

    move-object v5, v4

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Ljxl/biff/RangeImpl;-><init>(Ljxl/biff/WorkbookMethods;IIIIII)V

    aput-object v4, v2, v3

    .line 1565
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1577
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public findCellByName(Ljava/lang/String;)Ljxl/write/WritableCell;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1520
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/biff/NameRecord;

    .line 1522
    .local v0, "nr":Ljxl/write/biff/NameRecord;
    if-nez v0, :cond_0

    .line 1524
    const/4 v1, 0x0

    return-object v1

    .line 1527
    :cond_0
    invoke-virtual {v0}, Ljxl/write/biff/NameRecord;->getRanges()[Ljxl/write/biff/NameRecord$NameRange;

    move-result-object v1

    .line 1530
    .local v1, "ranges":[Ljxl/write/biff/NameRecord$NameRange;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v3

    invoke-virtual {p0, v3}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(I)I

    move-result v3

    .line 1531
    .local v3, "sheetIndex":I
    invoke-virtual {p0, v3}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v4

    .line 1532
    .local v4, "s":Ljxl/write/WritableSheet;
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljxl/write/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v5

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v2

    invoke-interface {v4, v5, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v2

    .line 1535
    .local v2, "cell":Ljxl/write/WritableCell;
    return-object v2
.end method

.method public getColourRGB(Ljxl/format/Colour;)Ljxl/format/RGB;
    .locals 1
    .param p1, "c"    # Ljxl/format/Colour;

    .line 1329
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, p1}, Ljxl/biff/FormattingRecords;->getColourRGB(Ljxl/format/Colour;)Ljxl/format/RGB;

    move-result-object v0

    return-object v0
.end method

.method getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 1

    .line 1614
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getExternalSheetIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1137
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-nez v0, :cond_0

    .line 1139
    return p1

    .line 1142
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 1144
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/write/biff/ExternalSheetRecord;->getFirstTabIndex(I)I

    move-result v0

    .line 1146
    .local v0, "firstTab":I
    return v0
.end method

.method public getExternalSheetIndex(Ljava/lang/String;)I
    .locals 17
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 1177
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-nez v2, :cond_0

    .line 1179
    new-instance v2, Ljxl/write/biff/ExternalSheetRecord;

    invoke-direct {v2}, Ljxl/write/biff/ExternalSheetRecord;-><init>()V

    iput-object v2, v0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    .line 1180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    .line 1181
    new-instance v3, Ljxl/write/biff/SupbookRecord;

    invoke-virtual/range {p0 .. p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v4

    iget-object v5, v0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/SupbookRecord;-><init>(ILjxl/WorkbookSettings;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    :cond_0
    const/4 v2, 0x0

    .line 1186
    .local v2, "found":Z
    iget-object v3, v0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1187
    .local v3, "i":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 1188
    .local v4, "sheetpos":I
    const/4 v5, 0x0

    .line 1190
    .local v5, "s":Ljxl/write/biff/WritableSheetImpl;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    .line 1192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljxl/write/biff/WritableSheetImpl;

    .line 1194
    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1196
    const/4 v2, 0x1

    goto :goto_0

    .line 1200
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1204
    :cond_2
    const/4 v6, 0x0

    if-eqz v2, :cond_5

    .line 1208
    iget-object v7, v0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljxl/write/biff/SupbookRecord;

    .line 1209
    .local v7, "supbook":Ljxl/write/biff/SupbookRecord;
    invoke-virtual {v7}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v8

    sget-object v9, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v8, v9, :cond_3

    invoke-virtual {v7}, Ljxl/write/biff/SupbookRecord;->getNumberOfSheets()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 1212
    :cond_3
    sget-object v8, Ljxl/write/biff/WritableWorkbookImpl;->logger:Ljxl/common/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find sheet "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in supbook record"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1215
    :cond_4
    iget-object v8, v0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v8, v6, v4}, Ljxl/write/biff/ExternalSheetRecord;->getIndex(II)I

    move-result v6

    return v6

    .line 1219
    .end local v7    # "supbook":Ljxl/write/biff/SupbookRecord;
    :cond_5
    const/16 v7, 0x5d

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1220
    .local v7, "closeSquareBracketsIndex":I
    const/16 v8, 0x5b

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1222
    .local v8, "openSquareBracketsIndex":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_a

    if-ne v8, v9, :cond_6

    move/from16 v16, v2

    goto/16 :goto_2

    .line 1229
    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1230
    .local v9, "worksheetName":Ljava/lang/String;
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1232
    .local v10, "workbookName":Ljava/lang/String;
    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1233
    .local v6, "path":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1235
    .local v11, "fileName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1236
    .local v12, "supbookFound":Z
    const/4 v13, 0x0

    .line 1237
    .local v13, "externalSupbook":Ljxl/write/biff/SupbookRecord;
    const/4 v14, -0x1

    .line 1238
    .local v14, "supbookIndex":I
    const/4 v15, 0x0

    .local v15, "ind":I
    :goto_1
    iget-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_8

    if-nez v12, :cond_8

    .line 1240
    iget-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljxl/write/biff/SupbookRecord;

    .line 1241
    invoke-virtual {v13}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v1

    move/from16 v16, v2

    .end local v2    # "found":Z
    .local v16, "found":Z
    sget-object v2, Ljxl/write/biff/SupbookRecord;->EXTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v1, v2, :cond_7

    invoke-virtual {v13}, Ljxl/write/biff/SupbookRecord;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1244
    const/4 v1, 0x1

    .line 1245
    .end local v12    # "supbookFound":Z
    .local v1, "supbookFound":Z
    move v2, v15

    move v12, v1

    move v14, v2

    .line 1238
    .end local v1    # "supbookFound":Z
    .restart local v12    # "supbookFound":Z
    :cond_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v16

    goto :goto_1

    .end local v16    # "found":Z
    .restart local v2    # "found":Z
    :cond_8
    move/from16 v16, v2

    .line 1249
    .end local v2    # "found":Z
    .end local v15    # "ind":I
    .restart local v16    # "found":Z
    if-nez v12, :cond_9

    .line 1251
    new-instance v1, Ljxl/write/biff/SupbookRecord;

    iget-object v2, v0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v11, v2}, Ljxl/write/biff/SupbookRecord;-><init>(Ljava/lang/String;Ljxl/WorkbookSettings;)V

    move-object v13, v1

    .line 1252
    iget-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1253
    iget-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    :cond_9
    invoke-virtual {v13, v9}, Ljxl/write/biff/SupbookRecord;->getSheetIndex(Ljava/lang/String;)I

    move-result v1

    .line 1258
    .local v1, "sheetIndex":I
    iget-object v2, v0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v2, v14, v1}, Ljxl/write/biff/ExternalSheetRecord;->getIndex(II)I

    move-result v2

    return v2

    .line 1222
    .end local v1    # "sheetIndex":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v9    # "worksheetName":Ljava/lang/String;
    .end local v10    # "workbookName":Ljava/lang/String;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "supbookFound":Z
    .end local v13    # "externalSupbook":Ljxl/write/biff/SupbookRecord;
    .end local v14    # "supbookIndex":I
    .end local v16    # "found":Z
    .restart local v2    # "found":Z
    :cond_a
    move/from16 v16, v2

    .line 1225
    .end local v2    # "found":Z
    .restart local v16    # "found":Z
    :goto_2
    sget-object v1, Ljxl/write/biff/WritableWorkbookImpl;->logger:Ljxl/common/Logger;

    const-string v2, "Square brackets"

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1226
    return v9
.end method

.method public getExternalSheetName(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .line 1064
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/write/biff/ExternalSheetRecord;->getSupbookIndex(I)I

    move-result v0

    .line 1065
    .local v0, "supbookIndex":I
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/SupbookRecord;

    .line 1067
    .local v1, "sr":Ljxl/write/biff/SupbookRecord;
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v2, p1}, Ljxl/write/biff/ExternalSheetRecord;->getFirstTabIndex(I)I

    move-result v2

    .line 1069
    .local v2, "firstTab":I
    invoke-virtual {v1}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v3

    sget-object v4, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v3, v4, :cond_0

    .line 1072
    invoke-virtual {p0, v2}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v3

    .line 1074
    .local v3, "ws":Ljxl/write/WritableSheet;
    invoke-interface {v3}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1076
    .end local v3    # "ws":Ljxl/write/WritableSheet;
    :cond_0
    invoke-virtual {v1}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v3

    sget-object v4, Ljxl/write/biff/SupbookRecord;->EXTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v3, v4, :cond_1

    .line 1078
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljxl/write/biff/SupbookRecord;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljxl/write/biff/SupbookRecord;->getSheetName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1079
    .local v3, "name":Ljava/lang/String;
    return-object v3

    .line 1083
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    sget-object v3, Ljxl/write/biff/WritableWorkbookImpl;->logger:Ljxl/common/Logger;

    const-string v4, "Unknown Supbook 1"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1084
    const-string v3, "[UNKNOWN]"

    return-object v3
.end method

.method public getLastExternalSheetIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1157
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-nez v0, :cond_0

    .line 1159
    return p1

    .line 1162
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 1164
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/write/biff/ExternalSheetRecord;->getLastTabIndex(I)I

    move-result v0

    .line 1166
    .local v0, "lastTab":I
    return v0
.end method

.method public getLastExternalSheetIndex(Ljava/lang/String;)I
    .locals 8
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 1268
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-nez v0, :cond_0

    .line 1270
    new-instance v0, Ljxl/write/biff/ExternalSheetRecord;

    invoke-direct {v0}, Ljxl/write/biff/ExternalSheetRecord;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    .line 1272
    new-instance v1, Ljxl/write/biff/SupbookRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v2

    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v2, v3}, Ljxl/write/biff/SupbookRecord;-><init>(ILjxl/WorkbookSettings;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    :cond_0
    const/4 v0, 0x0

    .line 1277
    .local v0, "found":Z
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1278
    .local v1, "i":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 1279
    .local v2, "sheetpos":I
    const/4 v3, 0x0

    .line 1281
    .local v3, "s":Ljxl/write/biff/WritableSheetImpl;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 1283
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljxl/write/biff/WritableSheetImpl;

    .line 1285
    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1287
    const/4 v0, 0x1

    goto :goto_0

    .line 1291
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1295
    :cond_2
    if-nez v0, :cond_3

    .line 1297
    const/4 v4, -0x1

    return v4

    .line 1302
    :cond_3
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/write/biff/SupbookRecord;

    .line 1303
    .local v4, "supbook":Ljxl/write/biff/SupbookRecord;
    invoke-virtual {v4}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v6

    sget-object v7, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v6, v7, :cond_4

    invoke-virtual {v4}, Ljxl/write/biff/SupbookRecord;->getNumberOfSheets()I

    move-result v6

    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v7

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    move v6, v5

    :goto_1
    invoke-static {v6}, Ljxl/common/Assert;->verify(Z)V

    .line 1306
    iget-object v6, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v6, v5, v2}, Ljxl/write/biff/ExternalSheetRecord;->getIndex(II)I

    move-result v5

    return v5
.end method

.method public getLastExternalSheetName(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .line 1095
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/write/biff/ExternalSheetRecord;->getSupbookIndex(I)I

    move-result v0

    .line 1096
    .local v0, "supbookIndex":I
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/SupbookRecord;

    .line 1098
    .local v1, "sr":Ljxl/write/biff/SupbookRecord;
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v2, p1}, Ljxl/write/biff/ExternalSheetRecord;->getLastTabIndex(I)I

    move-result v2

    .line 1100
    .local v2, "lastTab":I
    invoke-virtual {v1}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v3

    sget-object v4, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v3, v4, :cond_0

    .line 1103
    invoke-virtual {p0, v2}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v3

    .line 1105
    .local v3, "ws":Ljxl/write/WritableSheet;
    invoke-interface {v3}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1107
    .end local v3    # "ws":Ljxl/write/WritableSheet;
    :cond_0
    invoke-virtual {v1}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v3

    sget-object v4, Ljxl/write/biff/SupbookRecord;->EXTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v3, v4, :cond_1

    .line 1109
    const/4 v3, 0x0

    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1113
    :cond_1
    sget-object v3, Ljxl/write/biff/WritableWorkbookImpl;->logger:Ljxl/common/Logger;

    const-string v4, "Unknown Supbook 2"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1114
    const-string v3, "[UNKNOWN]"

    return-object v3
.end method

.method public getName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 1340
    if-ltz p1, :cond_0

    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 1341
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/biff/NameRecord;

    .line 1342
    .local v0, "n":Ljxl/write/biff/NameRecord;
    invoke-virtual {v0}, Ljxl/write/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1353
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/biff/NameRecord;

    .line 1354
    .local v0, "nr":Ljxl/write/biff/NameRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljxl/write/biff/NameRecord;->getIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getNumberOfSheets()I
    .locals 1

    .line 444
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRangeNames()[Ljava/lang/String;
    .locals 4

    .line 1641
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1643
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 1646
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1647
    .local v0, "n":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1649
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/NameRecord;

    .line 1650
    .local v2, "nr":Ljxl/write/biff/NameRecord;
    invoke-virtual {v2}, Ljxl/write/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1647
    .end local v2    # "nr":Ljxl/write/biff/NameRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1653
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getReadSheet(I)Ljxl/Sheet;
    .locals 1
    .param p1, "index"    # I

    .line 397
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v0

    return-object v0
.end method

.method getSettings()Ljxl/WorkbookSettings;
    .locals 1

    .line 1867
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    return-object v0
.end method

.method public getSheet(I)Ljxl/write/WritableSheet;
    .locals 1
    .param p1, "index"    # I

    .line 408
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/WritableSheet;

    return-object v0
.end method

.method public getSheet(Ljava/lang/String;)Ljxl/write/WritableSheet;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "found":Z
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 422
    .local v1, "i":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 424
    .local v2, "s":Ljxl/write/WritableSheet;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 426
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljxl/write/WritableSheet;

    .line 428
    invoke-interface {v2}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    const/4 v0, 0x1

    goto :goto_0

    .line 434
    :cond_1
    if-eqz v0, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public getSheetNames()[Ljava/lang/String;
    .locals 3

    .line 378
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 380
    .local v0, "sheetNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 382
    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v2

    invoke-interface {v2}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getSheets()[Ljxl/write/WritableSheet;
    .locals 3

    .line 362
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v0

    new-array v0, v0, [Ljxl/write/WritableSheet;

    .line 364
    .local v0, "sheetArray":[Ljxl/write/WritableSheet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 366
    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v2

    aput-object v2, v0, v1

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method getStyles()Ljxl/write/biff/Styles;
    .locals 1

    .line 1698
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->styles:Ljxl/write/biff/Styles;

    return-object v0
.end method

.method public getWorkbookBof()Ljxl/read/biff/BOFRecord;
    .locals 1

    .line 1125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWritableCell(Ljava/lang/String;)Ljxl/write/WritableCell;
    .locals 2
    .param p1, "loc"    # Ljava/lang/String;

    .line 1881
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getSheet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(Ljava/lang/String;)Ljxl/write/WritableSheet;

    move-result-object v0

    .line 1882
    .local v0, "s":Ljxl/write/WritableSheet;
    invoke-interface {v0, p1}, Ljxl/write/WritableSheet;->getWritableCell(Ljava/lang/String;)Ljxl/write/WritableCell;

    move-result-object v1

    return-object v1
.end method

.method public importSheet(Ljava/lang/String;ILjxl/Sheet;)Ljxl/write/WritableSheet;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "sheet"    # Ljxl/Sheet;

    .line 1896
    invoke-virtual {p0, p1, p2}, Ljxl/write/biff/WritableWorkbookImpl;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v0

    .line 1897
    .local v0, "ws":Ljxl/write/WritableSheet;
    move-object v1, v0

    check-cast v1, Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1, p3}, Ljxl/write/biff/WritableSheetImpl;->importSheet(Ljxl/Sheet;)V

    .line 1899
    return-object v0
.end method

.method public moveSheet(II)Ljxl/write/WritableSheet;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 613
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 614
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 615
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 616
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 618
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/WritableSheet;

    .line 619
    .local v0, "sheet":Ljxl/write/WritableSheet;
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 621
    return-object v0
.end method

.method removeDrawing(Ljxl/biff/drawing/Drawing;)V
    .locals 1
    .param p1, "d"    # Ljxl/biff/drawing/Drawing;

    .line 1602
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 1604
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/DrawingGroup;->remove(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 1605
    return-void
.end method

.method public removeRangeName(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1663
    const/4 v0, 0x0

    .line 1664
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 1665
    .local v1, "found":Z
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 1667
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/NameRecord;

    .line 1668
    .local v3, "nr":Ljxl/write/biff/NameRecord;
    invoke-virtual {v3}, Ljxl/write/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1670
    const/4 v1, 0x1

    goto :goto_1

    .line 1674
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1676
    .end local v3    # "nr":Ljxl/write/biff/NameRecord;
    :goto_1
    goto :goto_0

    .line 1681
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_2

    .line 1683
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1684
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1686
    sget-object v2, Ljxl/write/biff/WritableWorkbookImpl;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from index lookups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1689
    :cond_2
    return-void
.end method

.method public removeSheet(I)V
    .locals 7
    .param p1, "index"    # I

    .line 550
    move v0, p1

    .line 551
    .local v0, "pos":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz p1, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 554
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 556
    :cond_0
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 558
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 559
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 563
    :cond_1
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 566
    :goto_0
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-eqz v3, :cond_2

    .line 568
    invoke-virtual {v3, v0}, Ljxl/write/biff/ExternalSheetRecord;->sheetRemoved(I)V

    .line 571
    :cond_2
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 573
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/SupbookRecord;

    .line 574
    .local v3, "supbook":Ljxl/write/biff/SupbookRecord;
    invoke-virtual {v3}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v4

    sget-object v5, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v4, v5, :cond_3

    .line 576
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljxl/write/biff/SupbookRecord;->adjustInternal(I)V

    .line 580
    .end local v3    # "supbook":Ljxl/write/biff/SupbookRecord;
    :cond_3
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 582
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 584
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/write/biff/NameRecord;

    .line 585
    .local v4, "n":Ljxl/write/biff/NameRecord;
    invoke-virtual {v4}, Ljxl/write/biff/NameRecord;->getSheetRef()I

    move-result v5

    .line 586
    .local v5, "oldRef":I
    add-int/lit8 v6, v0, 0x1

    if-ne v5, v6, :cond_4

    .line 588
    invoke-virtual {v4, v1}, Ljxl/write/biff/NameRecord;->setSheetRef(I)V

    goto :goto_2

    .line 590
    :cond_4
    add-int/lit8 v6, v0, 0x1

    if-le v5, v6, :cond_6

    .line 592
    if-ge v5, v2, :cond_5

    .line 594
    const/4 v5, 0x1

    .line 596
    :cond_5
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v6}, Ljxl/write/biff/NameRecord;->setSheetRef(I)V

    .line 582
    .end local v4    # "n":Ljxl/write/biff/NameRecord;
    .end local v5    # "oldRef":I
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 600
    .end local v3    # "i":I
    :cond_7
    return-void
.end method

.method rowInserted(Ljxl/write/biff/WritableSheetImpl;I)V
    .locals 3
    .param p1, "s"    # Ljxl/write/biff/WritableSheetImpl;
    .param p2, "row"    # I

    .line 1447
    invoke-virtual {p1}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 1450
    .local v0, "externalSheetIndex":I
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1452
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/CellValue;

    .line 1453
    .local v2, "cv":Ljxl/write/biff/CellValue;
    invoke-virtual {v2, p1, v0, p2}, Ljxl/write/biff/CellValue;->rowInserted(Ljxl/Sheet;II)V

    .line 1454
    .end local v2    # "cv":Ljxl/write/biff/CellValue;
    goto :goto_0

    .line 1457
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1459
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1461
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/NameRecord;

    .line 1462
    .local v2, "nameRecord":Ljxl/write/biff/NameRecord;
    invoke-virtual {v2, v0, p2}, Ljxl/write/biff/NameRecord;->rowInserted(II)V

    .line 1463
    .end local v2    # "nameRecord":Ljxl/write/biff/NameRecord;
    goto :goto_1

    .line 1465
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method rowRemoved(Ljxl/write/biff/WritableSheetImpl;I)V
    .locals 7
    .param p1, "s"    # Ljxl/write/biff/WritableSheetImpl;
    .param p2, "row"    # I

    .line 1476
    invoke-virtual {p1}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 1477
    .local v0, "externalSheetIndex":I
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1479
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/CellValue;

    .line 1480
    .local v2, "cv":Ljxl/write/biff/CellValue;
    invoke-virtual {v2, p1, v0, p2}, Ljxl/write/biff/CellValue;->rowRemoved(Ljxl/Sheet;II)V

    .line 1481
    .end local v2    # "cv":Ljxl/write/biff/CellValue;
    goto :goto_0

    .line 1484
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1485
    .local v1, "removedNames":Ljava/util/ArrayList;
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1487
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1489
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/NameRecord;

    .line 1490
    .local v3, "nameRecord":Ljxl/write/biff/NameRecord;
    invoke-virtual {v3, v0, p2}, Ljxl/write/biff/NameRecord;->rowRemoved(II)Z

    move-result v4

    .line 1492
    .local v4, "removeName":Z
    if-eqz v4, :cond_1

    .line 1494
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    .end local v3    # "nameRecord":Ljxl/write/biff/NameRecord;
    .end local v4    # "removeName":Z
    :cond_1
    goto :goto_1

    .line 1499
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1501
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/NameRecord;

    .line 1502
    .restart local v3    # "nameRecord":Ljxl/write/biff/NameRecord;
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 1503
    .local v4, "removed":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not remove name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljxl/write/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    .line 1505
    .end local v3    # "nameRecord":Ljxl/write/biff/NameRecord;
    .end local v4    # "removed":Z
    goto :goto_2

    .line 1507
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public setColourRGB(Ljxl/format/Colour;III)V
    .locals 1
    .param p1, "c"    # Ljxl/format/Colour;
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 1319
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljxl/biff/FormattingRecords;->setColourRGB(Ljxl/format/Colour;III)V

    .line 1320
    return-void
.end method

.method public setOutputFile(Ljava/io/File;)V
    .locals 2
    .param p1, "fileName"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 470
    .local v0, "fos":Ljava/io/FileOutputStream;
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v0}, Ljxl/write/biff/File;->setOutputFile(Ljava/io/OutputStream;)V

    .line 471
    return-void
.end method

.method public setProtected(Z)V
    .locals 0
    .param p1, "prot"    # Z

    .line 1012
    iput-boolean p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->wbProtected:Z

    .line 1013
    return-void
.end method

.method public write()V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    move-object/from16 v12, p0

    const/4 v0, 0x0

    .line 636
    .local v0, "wsi":Ljxl/write/biff/WritableSheetImpl;
    const/4 v1, 0x0

    move v13, v1

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v1

    if-ge v13, v1, :cond_4

    .line 638
    invoke-virtual {v12, v13}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljxl/write/biff/WritableSheetImpl;

    .line 642
    .end local v0    # "wsi":Ljxl/write/biff/WritableSheetImpl;
    .local v14, "wsi":Ljxl/write/biff/WritableSheetImpl;
    invoke-virtual {v14}, Ljxl/write/biff/WritableSheetImpl;->checkMergedBorders()V

    .line 645
    invoke-virtual {v14}, Ljxl/write/biff/WritableSheetImpl;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/SheetSettings;->getPrintArea()Ljxl/Range;

    move-result-object v15

    .line 646
    .local v15, "range":Ljxl/Range;
    if-eqz v15, :cond_0

    .line 648
    sget-object v1, Ljxl/biff/BuiltInName;->PRINT_AREA:Ljxl/biff/BuiltInName;

    invoke-interface {v15}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v3

    invoke-interface {v15}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v4

    invoke-interface {v15}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v5

    invoke-interface {v15}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v2, v14

    invoke-virtual/range {v0 .. v7}, Ljxl/write/biff/WritableWorkbookImpl;->addNameArea(Ljxl/biff/BuiltInName;Ljxl/write/WritableSheet;IIIIZ)V

    .line 658
    :cond_0
    invoke-virtual {v14}, Ljxl/write/biff/WritableSheetImpl;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/SheetSettings;->getPrintTitlesRow()Ljxl/Range;

    move-result-object v16

    .line 659
    .local v16, "rangeR":Ljxl/Range;
    invoke-virtual {v14}, Ljxl/write/biff/WritableSheetImpl;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/SheetSettings;->getPrintTitlesCol()Ljxl/Range;

    move-result-object v17

    .line 660
    .local v17, "rangeC":Ljxl/Range;
    if-eqz v16, :cond_1

    if-eqz v17, :cond_1

    .line 662
    sget-object v1, Ljxl/biff/BuiltInName;->PRINT_TITLES:Ljxl/biff/BuiltInName;

    invoke-interface/range {v16 .. v16}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v3

    invoke-interface/range {v16 .. v16}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v4

    invoke-interface/range {v16 .. v16}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v5

    invoke-interface/range {v16 .. v16}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-interface/range {v17 .. v17}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v7

    invoke-interface/range {v17 .. v17}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v8

    invoke-interface/range {v17 .. v17}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v9

    invoke-interface/range {v17 .. v17}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v2, v14

    invoke-virtual/range {v0 .. v11}, Ljxl/write/biff/WritableWorkbookImpl;->addNameArea(Ljxl/biff/BuiltInName;Ljxl/write/WritableSheet;IIIIIIIIZ)V

    goto :goto_1

    .line 675
    :cond_1
    if-eqz v16, :cond_2

    .line 677
    sget-object v1, Ljxl/biff/BuiltInName;->PRINT_TITLES:Ljxl/biff/BuiltInName;

    invoke-interface/range {v16 .. v16}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v3

    invoke-interface/range {v16 .. v16}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v4

    invoke-interface/range {v16 .. v16}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v5

    invoke-interface/range {v16 .. v16}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v2, v14

    invoke-virtual/range {v0 .. v7}, Ljxl/write/biff/WritableWorkbookImpl;->addNameArea(Ljxl/biff/BuiltInName;Ljxl/write/WritableSheet;IIIIZ)V

    goto :goto_1

    .line 686
    :cond_2
    if-eqz v17, :cond_3

    .line 688
    sget-object v1, Ljxl/biff/BuiltInName;->PRINT_TITLES:Ljxl/biff/BuiltInName;

    invoke-interface/range {v17 .. v17}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v3

    invoke-interface/range {v17 .. v17}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v4

    invoke-interface/range {v17 .. v17}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v5

    invoke-interface/range {v17 .. v17}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v2, v14

    invoke-virtual/range {v0 .. v7}, Ljxl/write/biff/WritableWorkbookImpl;->addNameArea(Ljxl/biff/BuiltInName;Ljxl/write/WritableSheet;IIIIZ)V

    .line 636
    .end local v15    # "range":Ljxl/Range;
    .end local v16    # "rangeR":Ljxl/Range;
    .end local v17    # "rangeC":Ljxl/Range;
    :cond_3
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move-object v0, v14

    goto/16 :goto_0

    .line 699
    .end local v13    # "i":I
    .end local v14    # "wsi":Ljxl/write/biff/WritableSheetImpl;
    .restart local v0    # "wsi":Ljxl/write/biff/WritableSheetImpl;
    :cond_4
    iget-object v1, v12, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getRationalizationDisabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 701
    invoke-direct/range {p0 .. p0}, Ljxl/write/biff/WritableWorkbookImpl;->rationalize()V

    .line 705
    :cond_5
    new-instance v1, Ljxl/write/biff/BOFRecord;

    sget-object v2, Ljxl/write/biff/BOFRecord;->workbookGlobals:Ljxl/write/biff/BOFRecord$WorkbookGlobalsBOF;

    invoke-direct {v1, v2}, Ljxl/write/biff/BOFRecord;-><init>(Ljxl/write/biff/BOFRecord$WorkbookGlobalsBOF;)V

    .line 706
    .local v1, "bof":Ljxl/write/biff/BOFRecord;
    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 709
    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v2}, Ljxl/WorkbookSettings;->getTemplate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 712
    new-instance v2, Ljxl/write/biff/TemplateRecord;

    invoke-direct {v2}, Ljxl/write/biff/TemplateRecord;-><init>()V

    .line 713
    .local v2, "trec":Ljxl/write/biff/TemplateRecord;
    iget-object v3, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 717
    .end local v2    # "trec":Ljxl/write/biff/TemplateRecord;
    :cond_6
    new-instance v2, Ljxl/write/biff/InterfaceHeaderRecord;

    invoke-direct {v2}, Ljxl/write/biff/InterfaceHeaderRecord;-><init>()V

    .line 718
    .local v2, "ihr":Ljxl/write/biff/InterfaceHeaderRecord;
    iget-object v3, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 720
    new-instance v3, Ljxl/write/biff/MMSRecord;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Ljxl/write/biff/MMSRecord;-><init>(II)V

    .line 721
    .local v3, "mms":Ljxl/write/biff/MMSRecord;
    iget-object v5, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 723
    new-instance v5, Ljxl/write/biff/InterfaceEndRecord;

    invoke-direct {v5}, Ljxl/write/biff/InterfaceEndRecord;-><init>()V

    .line 724
    .local v5, "ier":Ljxl/write/biff/InterfaceEndRecord;
    iget-object v6, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v6, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 726
    new-instance v6, Ljxl/write/biff/WriteAccessRecord;

    iget-object v7, v12, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v7}, Ljxl/WorkbookSettings;->getWriteAccess()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljxl/write/biff/WriteAccessRecord;-><init>(Ljava/lang/String;)V

    .line 727
    .local v6, "wr":Ljxl/write/biff/WriteAccessRecord;
    iget-object v7, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v6}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 729
    new-instance v7, Ljxl/write/biff/CodepageRecord;

    invoke-direct {v7}, Ljxl/write/biff/CodepageRecord;-><init>()V

    .line 730
    .local v7, "cp":Ljxl/write/biff/CodepageRecord;
    iget-object v8, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 732
    new-instance v8, Ljxl/write/biff/DSFRecord;

    invoke-direct {v8}, Ljxl/write/biff/DSFRecord;-><init>()V

    .line 733
    .local v8, "dsf":Ljxl/write/biff/DSFRecord;
    iget-object v9, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v9, v8}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 735
    iget-object v9, v12, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v9}, Ljxl/WorkbookSettings;->getExcel9File()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 739
    new-instance v9, Ljxl/write/biff/Excel9FileRecord;

    invoke-direct {v9}, Ljxl/write/biff/Excel9FileRecord;-><init>()V

    .line 740
    .local v9, "e9rec":Ljxl/write/biff/Excel9FileRecord;
    iget-object v10, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v10, v9}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 743
    .end local v9    # "e9rec":Ljxl/write/biff/Excel9FileRecord;
    :cond_7
    new-instance v9, Ljxl/write/biff/TabIdRecord;

    invoke-virtual/range {p0 .. p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v10

    invoke-direct {v9, v10}, Ljxl/write/biff/TabIdRecord;-><init>(I)V

    .line 744
    .local v9, "tabid":Ljxl/write/biff/TabIdRecord;
    iget-object v10, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v10, v9}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 746
    iget-boolean v10, v12, Ljxl/write/biff/WritableWorkbookImpl;->containsMacros:Z

    if-eqz v10, :cond_8

    .line 748
    new-instance v10, Ljxl/write/biff/ObjProjRecord;

    invoke-direct {v10}, Ljxl/write/biff/ObjProjRecord;-><init>()V

    .line 749
    .local v10, "objproj":Ljxl/write/biff/ObjProjRecord;
    iget-object v11, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v11, v10}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 752
    .end local v10    # "objproj":Ljxl/write/biff/ObjProjRecord;
    :cond_8
    iget-object v10, v12, Ljxl/write/biff/WritableWorkbookImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    if-eqz v10, :cond_9

    .line 754
    iget-object v11, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v11, v10}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 757
    :cond_9
    new-instance v10, Ljxl/write/biff/FunctionGroupCountRecord;

    invoke-direct {v10}, Ljxl/write/biff/FunctionGroupCountRecord;-><init>()V

    .line 758
    .local v10, "fgcr":Ljxl/write/biff/FunctionGroupCountRecord;
    iget-object v11, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v11, v10}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 761
    new-instance v11, Ljxl/write/biff/WindowProtectRecord;

    iget-object v13, v12, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v13}, Ljxl/WorkbookSettings;->getWindowProtected()Z

    move-result v13

    invoke-direct {v11, v13}, Ljxl/write/biff/WindowProtectRecord;-><init>(Z)V

    .line 763
    .local v11, "wpr":Ljxl/write/biff/WindowProtectRecord;
    iget-object v13, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v13, v11}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 765
    new-instance v13, Ljxl/write/biff/ProtectRecord;

    iget-boolean v14, v12, Ljxl/write/biff/WritableWorkbookImpl;->wbProtected:Z

    invoke-direct {v13, v14}, Ljxl/write/biff/ProtectRecord;-><init>(Z)V

    .line 766
    .local v13, "pr":Ljxl/write/biff/ProtectRecord;
    iget-object v14, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v14, v13}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 768
    new-instance v14, Ljxl/write/biff/PasswordRecord;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljxl/write/biff/PasswordRecord;-><init>(Ljava/lang/String;)V

    .line 769
    .local v14, "pw":Ljxl/write/biff/PasswordRecord;
    iget-object v15, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v15, v14}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 771
    new-instance v15, Ljxl/write/biff/Prot4RevRecord;

    invoke-direct {v15, v4}, Ljxl/write/biff/Prot4RevRecord;-><init>(Z)V

    .line 772
    .local v15, "p4r":Ljxl/write/biff/Prot4RevRecord;
    iget-object v4, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v4, v15}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 774
    new-instance v4, Ljxl/write/biff/Prot4RevPassRecord;

    invoke-direct {v4}, Ljxl/write/biff/Prot4RevPassRecord;-><init>()V

    .line 775
    .local v4, "p4rp":Ljxl/write/biff/Prot4RevPassRecord;
    move-object/from16 v17, v0

    .end local v0    # "wsi":Ljxl/write/biff/WritableSheetImpl;
    .local v17, "wsi":Ljxl/write/biff/WritableSheetImpl;
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 779
    const/4 v0, 0x0

    .line 780
    .local v0, "sheetSelected":Z
    const/16 v18, 0x0

    .line 781
    .local v18, "wsheet":Ljxl/write/biff/WritableSheetImpl;
    const/16 v19, 0x0

    .line 782
    .local v19, "selectedSheetIndex":I
    const/16 v20, 0x0

    move/from16 v35, v20

    move-object/from16 v20, v1

    move/from16 v1, v35

    .local v1, "i":I
    .local v20, "bof":Ljxl/write/biff/BOFRecord;
    :goto_2
    move-object/from16 v21, v2

    .end local v2    # "ihr":Ljxl/write/biff/InterfaceHeaderRecord;
    .local v21, "ihr":Ljxl/write/biff/InterfaceHeaderRecord;
    invoke-virtual/range {p0 .. p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v2

    if-ge v1, v2, :cond_b

    if-nez v0, :cond_b

    .line 784
    invoke-virtual {v12, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljxl/write/biff/WritableSheetImpl;

    .line 785
    invoke-virtual/range {v18 .. v18}, Ljxl/write/biff/WritableSheetImpl;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/SheetSettings;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 787
    const/4 v0, 0x1

    .line 788
    move v2, v1

    move/from16 v19, v2

    .line 782
    :cond_a
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v21

    goto :goto_2

    .line 792
    .end local v1    # "i":I
    :cond_b
    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 794
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v22

    move-object/from16 v18, v22

    check-cast v18, Ljxl/write/biff/WritableSheetImpl;

    .line 795
    invoke-virtual/range {v18 .. v18}, Ljxl/write/biff/WritableSheetImpl;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljxl/SheetSettings;->setSelected(Z)V

    .line 796
    const/16 v19, 0x0

    move/from16 v2, v19

    goto :goto_3

    .line 792
    :cond_c
    move/from16 v2, v19

    .line 799
    .end local v19    # "selectedSheetIndex":I
    .local v2, "selectedSheetIndex":I
    :goto_3
    new-instance v1, Ljxl/write/biff/Window1Record;

    invoke-direct {v1, v2}, Ljxl/write/biff/Window1Record;-><init>(I)V

    .line 800
    .local v1, "w1r":Ljxl/write/biff/Window1Record;
    move/from16 v22, v0

    .end local v0    # "sheetSelected":Z
    .local v22, "sheetSelected":Z
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 802
    new-instance v0, Ljxl/write/biff/BackupRecord;

    move-object/from16 v23, v1

    const/4 v1, 0x0

    .end local v1    # "w1r":Ljxl/write/biff/Window1Record;
    .local v23, "w1r":Ljxl/write/biff/Window1Record;
    invoke-direct {v0, v1}, Ljxl/write/biff/BackupRecord;-><init>(Z)V

    .line 803
    .local v0, "bkr":Ljxl/write/biff/BackupRecord;
    iget-object v1, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 805
    new-instance v1, Ljxl/write/biff/HideobjRecord;

    move-object/from16 v24, v0

    .end local v0    # "bkr":Ljxl/write/biff/BackupRecord;
    .local v24, "bkr":Ljxl/write/biff/BackupRecord;
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getHideobj()I

    move-result v0

    invoke-direct {v1, v0}, Ljxl/write/biff/HideobjRecord;-><init>(I)V

    move-object v0, v1

    .line 806
    .local v0, "ho":Ljxl/write/biff/HideobjRecord;
    iget-object v1, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 808
    new-instance v1, Ljxl/write/biff/NineteenFourRecord;

    move-object/from16 v25, v0

    const/4 v0, 0x0

    .end local v0    # "ho":Ljxl/write/biff/HideobjRecord;
    .local v25, "ho":Ljxl/write/biff/HideobjRecord;
    invoke-direct {v1, v0}, Ljxl/write/biff/NineteenFourRecord;-><init>(Z)V

    .line 809
    .local v1, "nf":Ljxl/write/biff/NineteenFourRecord;
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 811
    new-instance v0, Ljxl/write/biff/PrecisionRecord;

    move-object/from16 v26, v1

    const/4 v1, 0x0

    .end local v1    # "nf":Ljxl/write/biff/NineteenFourRecord;
    .local v26, "nf":Ljxl/write/biff/NineteenFourRecord;
    invoke-direct {v0, v1}, Ljxl/write/biff/PrecisionRecord;-><init>(Z)V

    .line 812
    .local v0, "pc":Ljxl/write/biff/PrecisionRecord;
    iget-object v1, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 814
    new-instance v1, Ljxl/write/biff/RefreshAllRecord;

    move-object/from16 v16, v0

    .end local v0    # "pc":Ljxl/write/biff/PrecisionRecord;
    .local v16, "pc":Ljxl/write/biff/PrecisionRecord;
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getRefreshAll()Z

    move-result v0

    invoke-direct {v1, v0}, Ljxl/write/biff/RefreshAllRecord;-><init>(Z)V

    move-object v0, v1

    .line 815
    .local v0, "rar":Ljxl/write/biff/RefreshAllRecord;
    iget-object v1, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 817
    new-instance v1, Ljxl/write/biff/BookboolRecord;

    move-object/from16 v27, v0

    const/4 v0, 0x1

    .end local v0    # "rar":Ljxl/write/biff/RefreshAllRecord;
    .local v27, "rar":Ljxl/write/biff/RefreshAllRecord;
    invoke-direct {v1, v0}, Ljxl/write/biff/BookboolRecord;-><init>(Z)V

    move-object v0, v1

    .line 818
    .local v0, "bb":Ljxl/write/biff/BookboolRecord;
    iget-object v1, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 821
    iget-object v1, v12, Ljxl/write/biff/WritableWorkbookImpl;->fonts:Ljxl/biff/Fonts;

    move-object/from16 v19, v0

    .end local v0    # "bb":Ljxl/write/biff/BookboolRecord;
    .local v19, "bb":Ljxl/write/biff/BookboolRecord;
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v0}, Ljxl/biff/Fonts;->write(Ljxl/write/biff/File;)V

    .line 824
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    iget-object v1, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->write(Ljxl/write/biff/File;)V

    .line 827
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0}, Ljxl/biff/FormattingRecords;->getPalette()Ljxl/biff/PaletteRecord;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 829
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    iget-object v1, v12, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/biff/FormattingRecords;->getPalette()Ljxl/biff/PaletteRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 833
    :cond_d
    new-instance v0, Ljxl/write/biff/UsesElfsRecord;

    invoke-direct {v0}, Ljxl/write/biff/UsesElfsRecord;-><init>()V

    .line 834
    .local v0, "uer":Ljxl/write/biff/UsesElfsRecord;
    iget-object v1, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 838
    invoke-virtual/range {p0 .. p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v1

    new-array v1, v1, [I

    .line 839
    .local v1, "boundsheetPos":[I
    const/16 v28, 0x0

    .line 841
    .local v28, "sheet":Ljxl/Sheet;
    const/16 v29, 0x0

    move/from16 v35, v29

    move-object/from16 v29, v0

    move/from16 v0, v35

    .local v0, "i":I
    .local v29, "uer":Ljxl/write/biff/UsesElfsRecord;
    :goto_4
    move/from16 v30, v2

    .end local v2    # "selectedSheetIndex":I
    .local v30, "selectedSheetIndex":I
    invoke-virtual/range {p0 .. p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v2

    if-ge v0, v2, :cond_10

    .line 843
    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2}, Ljxl/write/biff/File;->getPos()I

    move-result v2

    aput v2, v1, v0

    .line 844
    invoke-virtual {v12, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v28

    .line 845
    new-instance v2, Ljxl/write/biff/BoundsheetRecord;

    move-object/from16 v31, v3

    .end local v3    # "mms":Ljxl/write/biff/MMSRecord;
    .local v31, "mms":Ljxl/write/biff/MMSRecord;
    invoke-interface/range {v28 .. v28}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljxl/write/biff/BoundsheetRecord;-><init>(Ljava/lang/String;)V

    .line 846
    .local v2, "br":Ljxl/write/biff/BoundsheetRecord;
    invoke-interface/range {v28 .. v28}, Ljxl/Sheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/SheetSettings;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 848
    invoke-virtual {v2}, Ljxl/write/biff/BoundsheetRecord;->setHidden()V

    .line 851
    :cond_e
    iget-object v3, v12, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->isChartOnly()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 853
    invoke-virtual {v2}, Ljxl/write/biff/BoundsheetRecord;->setChartOnly()V

    .line 856
    :cond_f
    iget-object v3, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 841
    .end local v2    # "br":Ljxl/write/biff/BoundsheetRecord;
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v30

    move-object/from16 v3, v31

    goto :goto_4

    .end local v31    # "mms":Ljxl/write/biff/MMSRecord;
    .restart local v3    # "mms":Ljxl/write/biff/MMSRecord;
    :cond_10
    move-object/from16 v31, v3

    .line 859
    .end local v0    # "i":I
    .end local v3    # "mms":Ljxl/write/biff/MMSRecord;
    .restart local v31    # "mms":Ljxl/write/biff/MMSRecord;
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->countryRecord:Ljxl/write/biff/CountryRecord;

    if-nez v0, :cond_12

    .line 861
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getExcelDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljxl/biff/CountryCode;->getCountryCode(Ljava/lang/String;)Ljxl/biff/CountryCode;

    move-result-object v0

    .line 863
    .local v0, "lang":Ljxl/biff/CountryCode;
    sget-object v2, Ljxl/biff/CountryCode;->UNKNOWN:Ljxl/biff/CountryCode;

    const-string v3, " using "

    move-object/from16 v32, v4

    .end local v4    # "p4rp":Ljxl/write/biff/Prot4RevPassRecord;
    .local v32, "p4rp":Ljxl/write/biff/Prot4RevPassRecord;
    const-string v4, "Unknown country code "

    if-ne v0, v2, :cond_11

    .line 865
    sget-object v2, Ljxl/write/biff/WritableWorkbookImpl;->logger:Ljxl/common/Logger;

    move-object/from16 v33, v0

    .end local v0    # "lang":Ljxl/biff/CountryCode;
    .local v33, "lang":Ljxl/biff/CountryCode;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v34, v5

    .end local v5    # "ier":Ljxl/write/biff/InterfaceEndRecord;
    .local v34, "ier":Ljxl/write/biff/InterfaceEndRecord;
    iget-object v5, v12, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v5}, Ljxl/WorkbookSettings;->getExcelDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljxl/biff/CountryCode;->USA:Ljxl/biff/CountryCode;

    invoke-virtual {v5}, Ljxl/biff/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 868
    sget-object v0, Ljxl/biff/CountryCode;->USA:Ljxl/biff/CountryCode;

    .end local v33    # "lang":Ljxl/biff/CountryCode;
    .restart local v0    # "lang":Ljxl/biff/CountryCode;
    goto :goto_5

    .line 863
    .end local v34    # "ier":Ljxl/write/biff/InterfaceEndRecord;
    .restart local v5    # "ier":Ljxl/write/biff/InterfaceEndRecord;
    :cond_11
    move-object/from16 v33, v0

    move-object/from16 v34, v5

    .line 870
    .end local v5    # "ier":Ljxl/write/biff/InterfaceEndRecord;
    .restart local v34    # "ier":Ljxl/write/biff/InterfaceEndRecord;
    :goto_5
    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v2}, Ljxl/WorkbookSettings;->getExcelRegionalSettings()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljxl/biff/CountryCode;->getCountryCode(Ljava/lang/String;)Ljxl/biff/CountryCode;

    move-result-object v2

    .line 872
    .local v2, "region":Ljxl/biff/CountryCode;
    new-instance v5, Ljxl/write/biff/CountryRecord;

    invoke-direct {v5, v0, v2}, Ljxl/write/biff/CountryRecord;-><init>(Ljxl/biff/CountryCode;Ljxl/biff/CountryCode;)V

    iput-object v5, v12, Ljxl/write/biff/WritableWorkbookImpl;->countryRecord:Ljxl/write/biff/CountryRecord;

    .line 873
    sget-object v5, Ljxl/biff/CountryCode;->UNKNOWN:Ljxl/biff/CountryCode;

    if-ne v2, v5, :cond_13

    .line 875
    .end local v2    # "region":Ljxl/biff/CountryCode;
    sget-object v2, Ljxl/write/biff/WritableWorkbookImpl;->logger:Ljxl/common/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v5}, Ljxl/WorkbookSettings;->getExcelDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljxl/biff/CountryCode;->UK:Ljxl/biff/CountryCode;

    invoke-virtual {v4}, Ljxl/biff/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 878
    sget-object v2, Ljxl/biff/CountryCode;->UK:Ljxl/biff/CountryCode;

    goto :goto_6

    .line 859
    .end local v0    # "lang":Ljxl/biff/CountryCode;
    .end local v32    # "p4rp":Ljxl/write/biff/Prot4RevPassRecord;
    .end local v34    # "ier":Ljxl/write/biff/InterfaceEndRecord;
    .restart local v4    # "p4rp":Ljxl/write/biff/Prot4RevPassRecord;
    .restart local v5    # "ier":Ljxl/write/biff/InterfaceEndRecord;
    :cond_12
    move-object/from16 v32, v4

    move-object/from16 v34, v5

    .line 882
    .end local v4    # "p4rp":Ljxl/write/biff/Prot4RevPassRecord;
    .end local v5    # "ier":Ljxl/write/biff/InterfaceEndRecord;
    .restart local v32    # "p4rp":Ljxl/write/biff/Prot4RevPassRecord;
    .restart local v34    # "ier":Ljxl/write/biff/InterfaceEndRecord;
    :cond_13
    :goto_6
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->countryRecord:Ljxl/write/biff/CountryRecord;

    invoke-virtual {v0, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 885
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->addInFunctionNames:[Ljava/lang/String;

    if-eqz v0, :cond_14

    array-length v0, v0

    if-lez v0, :cond_14

    .line 891
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->addInFunctionNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_14

    .line 893
    new-instance v2, Ljxl/write/biff/ExternalNameRecord;

    iget-object v3, v12, Ljxl/write/biff/WritableWorkbookImpl;->addInFunctionNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Ljxl/write/biff/ExternalNameRecord;-><init>(Ljava/lang/String;)V

    .line 894
    .local v2, "enr":Ljxl/write/biff/ExternalNameRecord;
    iget-object v3, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 891
    .end local v2    # "enr":Ljxl/write/biff/ExternalNameRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 898
    .end local v0    # "i":I
    :cond_14
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->xctRecords:[Ljxl/biff/XCTRecord;

    if-eqz v0, :cond_15

    .line 900
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->xctRecords:[Ljxl/biff/XCTRecord;

    array-length v3, v2

    if-ge v0, v3, :cond_15

    .line 902
    iget-object v3, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 907
    .end local v0    # "i":I
    :cond_15
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-eqz v0, :cond_17

    .line 910
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 912
    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/SupbookRecord;

    .line 913
    .local v2, "supbook":Ljxl/write/biff/SupbookRecord;
    iget-object v3, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 910
    .end local v2    # "supbook":Ljxl/write/biff/SupbookRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 915
    .end local v0    # "i":I
    :cond_16
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v0, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 919
    :cond_17
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 921
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 923
    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/NameRecord;

    .line 924
    .local v2, "n":Ljxl/write/biff/NameRecord;
    iget-object v3, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 921
    .end local v2    # "n":Ljxl/write/biff/NameRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 929
    .end local v0    # "i":I
    :cond_18
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-eqz v0, :cond_19

    .line 931
    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v2}, Ljxl/biff/drawing/DrawingGroup;->write(Ljxl/write/biff/File;)V

    .line 934
    :cond_19
    iget-object v0, v12, Ljxl/write/biff/WritableWorkbookImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v2}, Ljxl/write/biff/SharedStrings;->write(Ljxl/write/biff/File;)V

    .line 936
    new-instance v0, Ljxl/write/biff/EOFRecord;

    invoke-direct {v0}, Ljxl/write/biff/EOFRecord;-><init>()V

    .line 937
    .local v0, "eof":Ljxl/write/biff/EOFRecord;
    iget-object v2, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 941
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 945
    iget-object v3, v12, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3}, Ljxl/write/biff/File;->getPos()I

    move-result v4

    invoke-static {v4}, Ljxl/biff/IntegerHelper;->getFourBytes(I)[B

    move-result-object v4

    aget v5, v1, v2

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljxl/write/biff/File;->setData([BI)V

    .line 949
    invoke-virtual {v12, v2}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Ljxl/write/biff/WritableSheetImpl;

    .line 950
    invoke-virtual/range {v18 .. v18}, Ljxl/write/biff/WritableSheetImpl;->write()V

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 952
    .end local v2    # "i":I
    :cond_1a
    return-void
.end method
