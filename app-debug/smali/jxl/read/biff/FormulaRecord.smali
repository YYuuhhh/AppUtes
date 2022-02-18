.class Ljxl/read/biff/FormulaRecord;
.super Ljxl/read/biff/CellValue;
.source "FormulaRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;
    }
.end annotation


# static fields
.field public static final ignoreSharedFormula:Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private formula:Ljxl/read/biff/CellValue;

.field private shared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Ljxl/read/biff/FormulaRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/FormulaRecord;->logger:Ljxl/common/Logger;

    .line 58
    new-instance v0, Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;-><init>(Ljxl/read/biff/FormulaRecord$1;)V

    sput-object v0, Ljxl/read/biff/FormulaRecord;->ignoreSharedFormula:Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V
    .locals 14
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "excelFile"    # Ljxl/read/biff/File;
    .param p3, "fr"    # Ljxl/biff/FormattingRecords;
    .param p4, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p5, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p6, "i"    # Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;
    .param p7, "si"    # Ljxl/read/biff/SheetImpl;
    .param p8, "ws"    # Ljxl/WorkbookSettings;

    .line 195
    move-object v0, p0

    move-object v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p7

    invoke-direct {p0, p1, v10, v11}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 196
    invoke-virtual {p0}, Ljxl/read/biff/FormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v12

    .line 198
    .local v12, "data":[B
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljxl/read/biff/FormulaRecord;->shared:Z

    .line 202
    const/4 v1, 0x6

    aget-byte v2, v12, v1

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/4 v5, -0x1

    if-nez v2, :cond_0

    aget-byte v2, v12, v4

    if-ne v2, v5, :cond_0

    aget-byte v2, v12, v3

    if-ne v2, v5, :cond_0

    .line 205
    new-instance v13, Ljxl/read/biff/StringFormulaRecord;

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Ljxl/read/biff/StringFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    iput-object v13, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    goto :goto_0

    .line 207
    :cond_0
    aget-byte v2, v12, v1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    aget-byte v2, v12, v4

    if-ne v2, v5, :cond_1

    aget-byte v2, v12, v3

    if-ne v2, v5, :cond_1

    .line 213
    new-instance v7, Ljxl/read/biff/BooleanFormulaRecord;

    move-object v1, v7

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Ljxl/read/biff/BooleanFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    iput-object v7, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    goto :goto_0

    .line 215
    :cond_1
    aget-byte v1, v12, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    aget-byte v1, v12, v4

    if-ne v1, v5, :cond_2

    aget-byte v1, v12, v3

    if-ne v1, v5, :cond_2

    .line 220
    new-instance v7, Ljxl/read/biff/ErrorFormulaRecord;

    move-object v1, v7

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Ljxl/read/biff/ErrorFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    iput-object v7, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    goto :goto_0

    .line 225
    :cond_2
    new-instance v7, Ljxl/read/biff/NumberFormulaRecord;

    move-object v1, v7

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Ljxl/read/biff/NumberFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    iput-object v7, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    .line 227
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V
    .locals 18
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "excelFile"    # Ljxl/read/biff/File;
    .param p3, "fr"    # Ljxl/biff/FormattingRecords;
    .param p4, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p5, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p6, "si"    # Ljxl/read/biff/SheetImpl;
    .param p7, "ws"    # Ljxl/WorkbookSettings;

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p1

    move-object/from16 v12, p6

    invoke-direct {v0, v11, v10, v12}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Ljxl/read/biff/FormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v13

    .line 86
    .local v13, "data":[B
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljxl/read/biff/FormulaRecord;->shared:Z

    .line 89
    const/16 v2, 0xe

    aget-byte v2, v13, v2

    const/16 v3, 0xf

    aget-byte v3, v13, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v14

    .line 90
    .local v14, "grbit":I
    and-int/lit8 v2, v14, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/16 v6, 0xd

    const/16 v7, 0xc

    const/4 v8, 0x6

    const/4 v9, -0x1

    if-eqz v2, :cond_5

    .line 92
    iput-boolean v5, v0, Ljxl/read/biff/FormulaRecord;->shared:Z

    .line 94
    aget-byte v2, v13, v8

    if-nez v2, :cond_0

    aget-byte v2, v13, v7

    if-ne v2, v9, :cond_0

    aget-byte v2, v13, v6

    if-ne v2, v9, :cond_0

    .line 97
    new-instance v9, Ljxl/read/biff/SharedStringFormulaRecord;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Ljxl/read/biff/SharedStringFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    iput-object v9, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    goto/16 :goto_1

    .line 100
    :cond_0
    aget-byte v2, v13, v8

    if-ne v2, v4, :cond_1

    aget-byte v2, v13, v7

    if-ne v2, v9, :cond_1

    aget-byte v2, v13, v6

    if-ne v2, v9, :cond_1

    .line 103
    new-instance v9, Ljxl/read/biff/SharedStringFormulaRecord;

    sget-object v8, Ljxl/read/biff/SharedStringFormulaRecord;->EMPTY_STRING:Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Ljxl/read/biff/SharedStringFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;)V

    iput-object v9, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    goto/16 :goto_1

    .line 107
    :cond_1
    aget-byte v2, v13, v8

    const/16 v4, 0x8

    if-ne v2, v3, :cond_2

    aget-byte v2, v13, v7

    if-ne v2, v9, :cond_2

    aget-byte v2, v13, v6

    if-ne v2, v9, :cond_2

    .line 112
    aget-byte v9, v13, v4

    .line 113
    .local v9, "errorCode":I
    new-instance v15, Ljxl/read/biff/SharedErrorFormulaRecord;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v9

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Ljxl/read/biff/SharedErrorFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;ILjxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    iput-object v15, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    .line 115
    .end local v9    # "errorCode":I
    goto :goto_1

    .line 116
    :cond_2
    aget-byte v2, v13, v8

    if-ne v2, v5, :cond_4

    aget-byte v2, v13, v7

    if-ne v2, v9, :cond_4

    aget-byte v2, v13, v6

    if-ne v2, v9, :cond_4

    .line 120
    aget-byte v2, v13, v4

    if-ne v2, v5, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v1

    .line 121
    .local v4, "value":Z
    :goto_0
    new-instance v9, Ljxl/read/biff/SharedBooleanFormulaRecord;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Ljxl/read/biff/SharedBooleanFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;ZLjxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    iput-object v9, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    .line 123
    .end local v4    # "value":Z
    goto :goto_1

    .line 127
    :cond_4
    invoke-static {v13, v8}, Ljxl/biff/DoubleHelper;->getIEEEDouble([BI)D

    move-result-wide v15

    .line 128
    .local v15, "value":D
    new-instance v17, Ljxl/read/biff/SharedNumberFormulaRecord;

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v4, v15

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Ljxl/read/biff/SharedNumberFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;DLjxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    .line 130
    .local v1, "snfr":Ljxl/read/biff/SharedNumberFormulaRecord;
    invoke-virtual/range {p0 .. p0}, Ljxl/read/biff/FormulaRecord;->getXFIndex()I

    move-result v2

    invoke-virtual {v10, v2}, Ljxl/biff/FormattingRecords;->getNumberFormat(I)Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/read/biff/SharedNumberFormulaRecord;->setNumberFormat(Ljava/text/NumberFormat;)V

    .line 131
    iput-object v1, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    .line 134
    .end local v1    # "snfr":Ljxl/read/biff/SharedNumberFormulaRecord;
    .end local v15    # "value":D
    :goto_1
    return-void

    .line 139
    :cond_5
    aget-byte v1, v13, v8

    if-nez v1, :cond_6

    aget-byte v1, v13, v7

    if-ne v1, v9, :cond_6

    aget-byte v1, v13, v6

    if-ne v1, v9, :cond_6

    .line 142
    new-instance v9, Ljxl/read/biff/StringFormulaRecord;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Ljxl/read/biff/StringFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    iput-object v9, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    goto/16 :goto_2

    .line 144
    :cond_6
    aget-byte v1, v13, v8

    if-ne v1, v5, :cond_7

    aget-byte v1, v13, v7

    if-ne v1, v9, :cond_7

    aget-byte v1, v13, v6

    if-ne v1, v9, :cond_7

    .line 150
    new-instance v7, Ljxl/read/biff/BooleanFormulaRecord;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Ljxl/read/biff/BooleanFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    iput-object v7, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    goto :goto_2

    .line 152
    :cond_7
    aget-byte v1, v13, v8

    if-ne v1, v3, :cond_8

    aget-byte v1, v13, v7

    if-ne v1, v9, :cond_8

    aget-byte v1, v13, v6

    if-ne v1, v9, :cond_8

    .line 157
    new-instance v7, Ljxl/read/biff/ErrorFormulaRecord;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Ljxl/read/biff/ErrorFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    iput-object v7, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    goto :goto_2

    .line 159
    :cond_8
    aget-byte v1, v13, v8

    if-ne v1, v4, :cond_9

    aget-byte v1, v13, v7

    if-ne v1, v9, :cond_9

    aget-byte v1, v13, v6

    if-ne v1, v9, :cond_9

    .line 162
    new-instance v7, Ljxl/read/biff/StringFormulaRecord;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Ljxl/read/biff/StringFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    iput-object v7, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    goto :goto_2

    .line 167
    :cond_9
    new-instance v7, Ljxl/read/biff/NumberFormulaRecord;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Ljxl/read/biff/NumberFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    iput-object v7, v0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    .line 169
    :goto_2
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 236
    const/4 v0, 0x0

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 237
    const-string v0, ""

    return-object v0
.end method

.method final getFormula()Ljxl/read/biff/CellValue;
    .locals 1

    .line 258
    iget-object v0, p0, Ljxl/read/biff/FormulaRecord;->formula:Ljxl/read/biff/CellValue;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 247
    const/4 v0, 0x0

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 248
    sget-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    return-object v0
.end method

.method final isShared()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Ljxl/read/biff/FormulaRecord;->shared:Z

    return v0
.end method
