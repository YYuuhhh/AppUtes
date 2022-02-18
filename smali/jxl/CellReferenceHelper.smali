.class public final Ljxl/CellReferenceHelper;
.super Ljava/lang/Object;
.source "CellReferenceHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getCellReference(II)Ljava/lang/String;
    .locals 1
    .param p0, "column"    # I
    .param p1, "row"    # I

    .line 79
    invoke-static {p0, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCellReference(IIILjxl/Workbook;)Ljava/lang/String;
    .locals 1
    .param p0, "sheet"    # I
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "workbook"    # Ljxl/Workbook;

    .line 214
    move-object v0, p3

    check-cast v0, Ljxl/biff/formula/ExternalSheet;

    invoke-static {p0, p1, p2, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IIILjxl/biff/formula/ExternalSheet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCellReference(IIILjxl/write/WritableWorkbook;)Ljava/lang/String;
    .locals 1
    .param p0, "sheet"    # I
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "workbook"    # Ljxl/write/WritableWorkbook;

    .line 233
    move-object v0, p3

    check-cast v0, Ljxl/biff/formula/ExternalSheet;

    invoke-static {p0, p1, p2, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IIILjxl/biff/formula/ExternalSheet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCellReference(Ljxl/Cell;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Ljxl/Cell;

    .line 256
    invoke-interface {p0}, Ljxl/Cell;->getColumn()I

    move-result v0

    invoke-interface {p0}, Ljxl/Cell;->getRow()I

    move-result v1

    invoke-static {v0, v1}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCellReference(IIILjxl/Workbook;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p0, "sheet"    # I
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "workbook"    # Ljxl/Workbook;
    .param p4, "buf"    # Ljava/lang/StringBuffer;

    .line 150
    move-object v0, p3

    check-cast v0, Ljxl/biff/formula/ExternalSheet;

    invoke-static {p0, p1, p2, v0, p4}, Ljxl/biff/CellReferenceHelper;->getCellReference(IIILjxl/biff/formula/ExternalSheet;Ljava/lang/StringBuffer;)V

    .line 152
    return-void
.end method

.method public static getCellReference(IIILjxl/write/WritableWorkbook;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p0, "sheet"    # I
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "workbook"    # Ljxl/write/WritableWorkbook;
    .param p4, "buf"    # Ljava/lang/StringBuffer;

    .line 170
    move-object v0, p3

    check-cast v0, Ljxl/biff/formula/ExternalSheet;

    invoke-static {p0, p1, p2, v0, p4}, Ljxl/biff/CellReferenceHelper;->getCellReference(IIILjxl/biff/formula/ExternalSheet;Ljava/lang/StringBuffer;)V

    .line 172
    return-void
.end method

.method public static getCellReference(IILjava/lang/StringBuffer;)V
    .locals 0
    .param p0, "column"    # I
    .param p1, "row"    # I
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 46
    invoke-static {p0, p1, p2}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 47
    return-void
.end method

.method public static getCellReference(IIZIZLjxl/Workbook;Ljava/lang/StringBuffer;)V
    .locals 7
    .param p0, "sheet"    # I
    .param p1, "column"    # I
    .param p2, "colabs"    # Z
    .param p3, "row"    # I
    .param p4, "rowabs"    # Z
    .param p5, "workbook"    # Ljxl/Workbook;
    .param p6, "buf"    # Ljava/lang/StringBuffer;

    .line 194
    move-object v5, p5

    check-cast v5, Ljxl/biff/formula/ExternalSheet;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Ljxl/biff/CellReferenceHelper;->getCellReference(IIZIZLjxl/biff/formula/ExternalSheet;Ljava/lang/StringBuffer;)V

    .line 197
    return-void
.end method

.method public static getCellReference(IZIZLjava/lang/StringBuffer;)V
    .locals 0
    .param p0, "column"    # I
    .param p1, "colabs"    # Z
    .param p2, "row"    # I
    .param p3, "rowabs"    # Z
    .param p4, "buf"    # Ljava/lang/StringBuffer;

    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Ljxl/biff/CellReferenceHelper;->getCellReference(IZIZLjava/lang/StringBuffer;)V

    .line 67
    return-void
.end method

.method public static getCellReference(Ljxl/Cell;Ljava/lang/StringBuffer;)V
    .locals 2
    .param p0, "c"    # Ljxl/Cell;
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 267
    invoke-interface {p0}, Ljxl/Cell;->getColumn()I

    move-result v0

    invoke-interface {p0}, Ljxl/Cell;->getRow()I

    move-result v1

    invoke-static {v0, v1, p1}, Ljxl/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 268
    return-void
.end method

.method public static getColumn(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 90
    invoke-static {p0}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColumnReference(I)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # I

    .line 101
    invoke-static {p0}, Ljxl/biff/CellReferenceHelper;->getColumnReference(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRow(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 111
    invoke-static {p0}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSheet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ref"    # Ljava/lang/String;

    .line 246
    invoke-static {p0}, Ljxl/biff/CellReferenceHelper;->getSheet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isColumnRelative(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 122
    invoke-static {p0}, Ljxl/biff/CellReferenceHelper;->isColumnRelative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRowRelative(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 133
    invoke-static {p0}, Ljxl/biff/CellReferenceHelper;->isRowRelative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
