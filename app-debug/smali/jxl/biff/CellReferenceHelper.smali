.class public final Ljxl/biff/CellReferenceHelper;
.super Ljava/lang/Object;
.source "CellReferenceHelper.java"


# static fields
.field private static final fixedInd:C = '$'

.field private static logger:Ljxl/common/Logger; = null

.field private static final sheetInd:C = '!'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Ljxl/biff/CellReferenceHelper;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/CellReferenceHelper;->logger:Ljxl/common/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static getCellReference(II)Ljava/lang/String;
    .locals 2
    .param p0, "column"    # I
    .param p1, "row"    # I

    .line 223
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {p0, p1, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCellReference(IIILjxl/biff/formula/ExternalSheet;)Ljava/lang/String;
    .locals 2
    .param p0, "sheet"    # I
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "workbook"    # Ljxl/biff/formula/ExternalSheet;

    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0, p1, p2, p3, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IIILjxl/biff/formula/ExternalSheet;Ljava/lang/StringBuffer;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCellReference(IIILjxl/biff/formula/ExternalSheet;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p0, "sheet"    # I
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "workbook"    # Ljxl/biff/formula/ExternalSheet;
    .param p4, "buf"    # Ljava/lang/StringBuffer;

    .line 164
    invoke-interface {p3, p0}, Ljxl/biff/formula/ExternalSheet;->getExternalSheetName(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "name":Ljava/lang/String;
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-static {v0, v1, v2}, Ljxl/biff/StringHelper;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const/16 v1, 0x21

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    invoke-static {p1, p2, p4}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 168
    return-void
.end method

.method public static getCellReference(IILjava/lang/StringBuffer;)V
    .locals 1
    .param p0, "column"    # I
    .param p1, "row"    # I
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 68
    invoke-static {p0, p2}, Ljxl/biff/CellReferenceHelper;->getColumnReference(ILjava/lang/StringBuffer;)V

    .line 71
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    return-void
.end method

.method public static getCellReference(IIZIZLjxl/biff/formula/ExternalSheet;Ljava/lang/StringBuffer;)V
    .locals 2
    .param p0, "sheet"    # I
    .param p1, "column"    # I
    .param p2, "colabs"    # Z
    .param p3, "row"    # I
    .param p4, "rowabs"    # Z
    .param p5, "workbook"    # Ljxl/biff/formula/ExternalSheet;
    .param p6, "buf"    # Ljava/lang/StringBuffer;

    .line 188
    invoke-interface {p5, p0}, Ljxl/biff/formula/ExternalSheet;->getExternalSheetName(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const/16 v1, 0x21

    invoke-virtual {p6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    invoke-static {p1, p2, p3, p4, p6}, Ljxl/biff/CellReferenceHelper;->getCellReference(IZIZLjava/lang/StringBuffer;)V

    .line 192
    return-void
.end method

.method public static getCellReference(IZIZLjava/lang/StringBuffer;)V
    .locals 1
    .param p0, "column"    # I
    .param p1, "colabs"    # Z
    .param p2, "row"    # I
    .param p3, "rowabs"    # Z
    .param p4, "buf"    # Ljava/lang/StringBuffer;

    .line 87
    const/16 v0, 0x24

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    :cond_0
    invoke-static {p0, p4}, Ljxl/biff/CellReferenceHelper;->getColumnReference(ILjava/lang/StringBuffer;)V

    .line 95
    if-eqz p3, :cond_1

    .line 97
    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    :cond_1
    add-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    return-void
.end method

.method public static getColumn(Ljava/lang/String;)I
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "colnum":I
    invoke-static {p0}, Ljxl/biff/CellReferenceHelper;->getNumberIndex(Ljava/lang/String;)I

    move-result v1

    .line 239
    .local v1, "numindex":I
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "s2":Ljava/lang/String;
    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 242
    .local v3, "startPos":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_0

    .line 244
    add-int/lit8 v3, v3, 0x1

    .line 247
    :cond_0
    move v4, v1

    .line 248
    .local v4, "endPos":I
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    .line 250
    add-int/lit8 v4, v4, -0x1

    .line 253
    :cond_1
    move v5, v3

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 256
    if-eq v5, v3, :cond_2

    .line 258
    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v0, v6, 0x1a

    .line 260
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x41

    add-int/2addr v0, v6

    .line 253
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 263
    .end local v5    # "i":I
    :cond_3
    return v0
.end method

.method public static getColumnReference(I)Ljava/lang/String;
    .locals 2
    .param p0, "column"    # I

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {p0, v0}, Ljxl/biff/CellReferenceHelper;->getColumnReference(ILjava/lang/StringBuffer;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getColumnReference(ILjava/lang/StringBuffer;)V
    .locals 6
    .param p0, "column"    # I
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 125
    div-int/lit8 v0, p0, 0x1a

    .line 126
    .local v0, "v":I
    rem-int/lit8 v1, p0, 0x1a

    .line 128
    .local v1, "r":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .local v2, "tmp":Ljava/lang/StringBuffer;
    :goto_0
    if-eqz v0, :cond_0

    .line 131
    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    .line 133
    .local v3, "col":C
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    rem-int/lit8 v4, v0, 0x1a

    add-int/lit8 v1, v4, -0x1

    .line 136
    div-int/lit8 v0, v0, 0x1a

    .line 137
    .end local v3    # "col":C
    goto :goto_0

    .line 139
    :cond_0
    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    .line 140
    .restart local v3    # "col":C
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 145
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 147
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method private static getNumberIndex(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "numberFound":Z
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 290
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 292
    .local v2, "c":C
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 294
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 296
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 298
    const/4 v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_1
    return v1
.end method

.method public static getRow(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 273
    :try_start_0
    invoke-static {p0}, Ljxl/biff/CellReferenceHelper;->getNumberIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Ljxl/biff/CellReferenceHelper;->logger:Ljxl/common/Logger;

    invoke-virtual {v1, v0, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 278
    const v1, 0xffff

    return v1
.end method

.method public static getSheet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ref"    # Ljava/lang/String;

    .line 339
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 340
    .local v0, "sheetPos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 342
    const-string v1, ""

    return-object v1

    .line 345
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isColumnRelative(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isRowRelative(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 328
    invoke-static {p0}, Ljxl/biff/CellReferenceHelper;->getNumberIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x24

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
