.class public Ljxl/biff/CellFinder;
.super Ljava/lang/Object;
.source "CellFinder.java"


# instance fields
.field private sheet:Ljxl/Sheet;


# direct methods
.method public constructor <init>(Ljxl/Sheet;)V
    .locals 0
    .param p1, "s"    # Ljxl/Sheet;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Ljxl/biff/CellFinder;->sheet:Ljxl/Sheet;

    .line 41
    return-void
.end method


# virtual methods
.method public findCell(Ljava/lang/String;)Ljxl/Cell;
    .locals 6
    .param p1, "contents"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "cell":Ljxl/Cell;
    const/4 v1, 0x0

    .line 111
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljxl/biff/CellFinder;->sheet:Ljxl/Sheet;

    invoke-interface {v3}, Ljxl/Sheet;->getRows()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-nez v1, :cond_2

    .line 113
    iget-object v3, p0, Ljxl/biff/CellFinder;->sheet:Ljxl/Sheet;

    invoke-interface {v3, v2}, Ljxl/Sheet;->getRow(I)[Ljxl/Cell;

    move-result-object v3

    .line 114
    .local v3, "row":[Ljxl/Cell;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    if-nez v1, :cond_1

    .line 116
    aget-object v5, v3, v4

    invoke-interface {v5}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    aget-object v0, v3, v4

    .line 119
    const/4 v1, 0x1

    .line 114
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 111
    .end local v3    # "row":[Ljxl/Cell;
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public findCell(Ljava/lang/String;IIIIZ)Ljxl/Cell;
    .locals 16
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "firstCol"    # I
    .param p3, "firstRow"    # I
    .param p4, "lastCol"    # I
    .param p5, "lastRow"    # I
    .param p6, "reverse"    # Z

    .line 64
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 65
    .local v1, "cell":Ljxl/Cell;
    const/4 v2, 0x0

    .line 67
    .local v2, "found":Z
    sub-int v3, p4, p2

    .line 68
    .local v3, "numCols":I
    sub-int v4, p5, p3

    .line 70
    .local v4, "numRows":I
    if-eqz p6, :cond_0

    move/from16 v5, p5

    goto :goto_0

    :cond_0
    move/from16 v5, p3

    .line 71
    .local v5, "row1":I
    :goto_0
    if-eqz p6, :cond_1

    move/from16 v6, p3

    goto :goto_1

    :cond_1
    move/from16 v6, p5

    .line 72
    .local v6, "row2":I
    :goto_1
    if-eqz p6, :cond_2

    move/from16 v7, p4

    goto :goto_2

    :cond_2
    move/from16 v7, p2

    .line 73
    .local v7, "col1":I
    :goto_2
    if-eqz p6, :cond_3

    move/from16 v8, p2

    goto :goto_3

    :cond_3
    move/from16 v8, p4

    .line 74
    .local v8, "col2":I
    :goto_3
    if-eqz p6, :cond_4

    const/4 v9, -0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x1

    .line 76
    .local v9, "inc":I
    :goto_4
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-gt v10, v3, :cond_9

    if-nez v2, :cond_9

    .line 78
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_6
    if-gt v11, v4, :cond_8

    if-nez v2, :cond_8

    .line 80
    mul-int v12, v10, v9

    add-int/2addr v12, v7

    .line 81
    .local v12, "curCol":I
    mul-int v13, v11, v9

    add-int/2addr v13, v5

    .line 82
    .local v13, "curRow":I
    iget-object v14, v0, Ljxl/biff/CellFinder;->sheet:Ljxl/Sheet;

    invoke-interface {v14}, Ljxl/Sheet;->getColumns()I

    move-result v14

    if-ge v12, v14, :cond_6

    iget-object v14, v0, Ljxl/biff/CellFinder;->sheet:Ljxl/Sheet;

    invoke-interface {v14}, Ljxl/Sheet;->getRows()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 84
    iget-object v14, v0, Ljxl/biff/CellFinder;->sheet:Ljxl/Sheet;

    invoke-interface {v14, v12, v13}, Ljxl/Sheet;->getCell(II)Ljxl/Cell;

    move-result-object v14

    .line 85
    .local v14, "c":Ljxl/Cell;
    invoke-interface {v14}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v15

    sget-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-eq v15, v0, :cond_5

    .line 87
    invoke-interface {v14}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89
    move-object v1, v14

    .line 90
    const/4 v2, 0x1

    goto :goto_7

    .line 85
    :cond_5
    move-object/from16 v15, p1

    goto :goto_7

    .line 82
    .end local v14    # "c":Ljxl/Cell;
    :cond_6
    move-object/from16 v15, p1

    .line 78
    .end local v12    # "curCol":I
    .end local v13    # "curRow":I
    :cond_7
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_8
    move-object/from16 v15, p1

    .line 76
    .end local v11    # "j":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    :cond_9
    move-object/from16 v15, p1

    .line 97
    .end local v10    # "i":I
    return-object v1
.end method

.method public findCell(Ljava/util/regex/Pattern;IIIIZ)Ljxl/Cell;
    .locals 17
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "firstCol"    # I
    .param p3, "firstRow"    # I
    .param p4, "lastCol"    # I
    .param p5, "lastRow"    # I
    .param p6, "reverse"    # Z

    .line 148
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 149
    .local v1, "cell":Ljxl/Cell;
    const/4 v2, 0x0

    .line 151
    .local v2, "found":Z
    sub-int v3, p4, p2

    .line 152
    .local v3, "numCols":I
    sub-int v4, p5, p3

    .line 154
    .local v4, "numRows":I
    if-eqz p6, :cond_0

    move/from16 v5, p5

    goto :goto_0

    :cond_0
    move/from16 v5, p3

    .line 155
    .local v5, "row1":I
    :goto_0
    if-eqz p6, :cond_1

    move/from16 v6, p3

    goto :goto_1

    :cond_1
    move/from16 v6, p5

    .line 156
    .local v6, "row2":I
    :goto_1
    if-eqz p6, :cond_2

    move/from16 v7, p4

    goto :goto_2

    :cond_2
    move/from16 v7, p2

    .line 157
    .local v7, "col1":I
    :goto_2
    if-eqz p6, :cond_3

    move/from16 v8, p2

    goto :goto_3

    :cond_3
    move/from16 v8, p4

    .line 158
    .local v8, "col2":I
    :goto_3
    if-eqz p6, :cond_4

    const/4 v9, -0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x1

    .line 160
    .local v9, "inc":I
    :goto_4
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-gt v10, v3, :cond_9

    if-nez v2, :cond_9

    .line 162
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_6
    if-gt v11, v4, :cond_8

    if-nez v2, :cond_8

    .line 164
    mul-int v12, v10, v9

    add-int/2addr v12, v7

    .line 165
    .local v12, "curCol":I
    mul-int v13, v11, v9

    add-int/2addr v13, v5

    .line 166
    .local v13, "curRow":I
    iget-object v14, v0, Ljxl/biff/CellFinder;->sheet:Ljxl/Sheet;

    invoke-interface {v14}, Ljxl/Sheet;->getColumns()I

    move-result v14

    if-ge v12, v14, :cond_6

    iget-object v14, v0, Ljxl/biff/CellFinder;->sheet:Ljxl/Sheet;

    invoke-interface {v14}, Ljxl/Sheet;->getRows()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 168
    iget-object v14, v0, Ljxl/biff/CellFinder;->sheet:Ljxl/Sheet;

    invoke-interface {v14, v12, v13}, Ljxl/Sheet;->getCell(II)Ljxl/Cell;

    move-result-object v14

    .line 169
    .local v14, "c":Ljxl/Cell;
    invoke-interface {v14}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v15

    sget-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-eq v15, v0, :cond_5

    .line 171
    invoke-interface {v14}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 172
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 174
    move-object v1, v14

    .line 175
    const/4 v2, 0x1

    goto :goto_7

    .line 169
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_5
    move-object/from16 v15, p1

    goto :goto_7

    .line 166
    .end local v14    # "c":Ljxl/Cell;
    :cond_6
    move-object/from16 v15, p1

    .line 162
    .end local v12    # "curCol":I
    .end local v13    # "curRow":I
    :cond_7
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_8
    move-object/from16 v15, p1

    .line 160
    .end local v11    # "j":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    :cond_9
    move-object/from16 v15, p1

    .line 182
    .end local v10    # "i":I
    return-object v1
.end method

.method public findLabelCell(Ljava/lang/String;)Ljxl/LabelCell;
    .locals 7
    .param p1, "contents"    # Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "cell":Ljxl/LabelCell;
    const/4 v1, 0x0

    .line 202
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljxl/biff/CellFinder;->sheet:Ljxl/Sheet;

    invoke-interface {v3}, Ljxl/Sheet;->getRows()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-nez v1, :cond_3

    .line 204
    iget-object v3, p0, Ljxl/biff/CellFinder;->sheet:Ljxl/Sheet;

    invoke-interface {v3, v2}, Ljxl/Sheet;->getRow(I)[Ljxl/Cell;

    move-result-object v3

    .line 205
    .local v3, "row":[Ljxl/Cell;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    if-nez v1, :cond_2

    .line 207
    aget-object v5, v3, v4

    invoke-interface {v5}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v5

    sget-object v6, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-eq v5, v6, :cond_0

    aget-object v5, v3, v4

    invoke-interface {v5}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v5

    sget-object v6, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    if-ne v5, v6, :cond_1

    :cond_0
    aget-object v5, v3, v4

    invoke-interface {v5}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    aget-object v5, v3, v4

    move-object v0, v5

    check-cast v0, Ljxl/LabelCell;

    .line 212
    const/4 v1, 0x1

    .line 205
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 202
    .end local v3    # "row":[Ljxl/Cell;
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method
