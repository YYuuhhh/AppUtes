.class Ljxl/biff/formula/ColumnRange3d;
.super Ljxl/biff/formula/Area3d;
.source "ColumnRange3d.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private sheet:I

.field private workbook:Ljxl/biff/formula/ExternalSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/biff/formula/ColumnRange3d;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/ColumnRange3d;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V
    .locals 27
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "es"    # Ljxl/biff/formula/ExternalSheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 67
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-direct {v10, v12}, Ljxl/biff/formula/Area3d;-><init>(Ljxl/biff/formula/ExternalSheet;)V

    .line 68
    iput-object v12, v10, Ljxl/biff/formula/ColumnRange3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    .line 69
    const-string v0, ":"

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 70
    .local v13, "seppos":I
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v13, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 71
    invoke-virtual {v11, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 72
    .local v14, "startcell":Ljava/lang/String;
    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 75
    .local v15, "endcell":Ljava/lang/String;
    const/16 v2, 0x21

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 76
    .local v9, "sep":I
    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v11, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 77
    .local v16, "cellString":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v17

    .line 78
    .local v17, "columnFirst":I
    const/16 v18, 0x0

    .line 81
    .local v18, "rowFirst":I
    invoke-virtual {v11, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "sheetName":Ljava/lang/String;
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 85
    .local v19, "sheetNamePos":I
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x27

    if-ne v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    .line 88
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_1

    .line 91
    :cond_1
    move-object v8, v2

    .end local v2    # "sheetName":Ljava/lang/String;
    .local v8, "sheetName":Ljava/lang/String;
    :goto_1
    invoke-interface {v12, v8}, Ljxl/biff/formula/ExternalSheet;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Ljxl/biff/formula/ColumnRange3d;->sheet:I

    .line 93
    if-ltz v0, :cond_2

    .line 100
    invoke-static {v15}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v20

    .line 101
    .local v20, "columnLast":I
    const v21, 0xffff

    .line 103
    .local v21, "rowLast":I
    const/16 v22, 0x1

    .line 104
    .local v22, "columnFirstRelative":Z
    const/16 v23, 0x1

    .line 105
    .local v23, "rowFirstRelative":Z
    const/16 v24, 0x1

    .line 106
    .local v24, "columnLastRelative":Z
    const/16 v25, 0x1

    .line 108
    .local v25, "rowLastRelative":Z
    iget v1, v10, Ljxl/biff/formula/ColumnRange3d;->sheet:I

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v18

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move-object v10, v8

    .end local v8    # "sheetName":Ljava/lang/String;
    .local v10, "sheetName":Ljava/lang/String;
    move/from16 v8, v24

    move/from16 v26, v9

    .end local v9    # "sep":I
    .local v26, "sep":I
    move/from16 v9, v25

    invoke-virtual/range {v0 .. v9}, Ljxl/biff/formula/ColumnRange3d;->setRangeData(IIIIIZZZZ)V

    .line 111
    return-void

    .line 95
    .end local v10    # "sheetName":Ljava/lang/String;
    .end local v20    # "columnLast":I
    .end local v21    # "rowLast":I
    .end local v22    # "columnFirstRelative":Z
    .end local v23    # "rowFirstRelative":Z
    .end local v24    # "columnLastRelative":Z
    .end local v25    # "rowLastRelative":Z
    .end local v26    # "sep":I
    .restart local v8    # "sheetName":Ljava/lang/String;
    .restart local v9    # "sep":I
    :cond_2
    move-object v10, v8

    .end local v8    # "sheetName":Ljava/lang/String;
    .restart local v10    # "sheetName":Ljava/lang/String;
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->SHEET_REF_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1, v10}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljxl/biff/formula/ExternalSheet;)V
    .locals 0
    .param p1, "es"    # Ljxl/biff/formula/ExternalSheet;

    .line 54
    invoke-direct {p0, p1}, Ljxl/biff/formula/Area3d;-><init>(Ljxl/biff/formula/ExternalSheet;)V

    .line 55
    iput-object p1, p0, Ljxl/biff/formula/ColumnRange3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    .line 56
    return-void
.end method


# virtual methods
.method public getString(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 120
    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    iget-object v1, p0, Ljxl/biff/formula/ColumnRange3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    iget v2, p0, Ljxl/biff/formula/ColumnRange3d;->sheet:I

    invoke-interface {v1, v2}, Ljxl/biff/formula/ExternalSheet;->getExternalSheetName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {p0}, Ljxl/biff/formula/ColumnRange3d;->getFirstColumn()I

    move-result v0

    invoke-static {v0, p1}, Ljxl/biff/CellReferenceHelper;->getColumnReference(ILjava/lang/StringBuffer;)V

    .line 126
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {p0}, Ljxl/biff/formula/ColumnRange3d;->getLastColumn()I

    move-result v0

    invoke-static {v0, p1}, Ljxl/biff/CellReferenceHelper;->getColumnReference(ILjava/lang/StringBuffer;)V

    .line 128
    return-void
.end method
