.class public Ljxl/demo/Formulas;
.super Ljava/lang/Object;
.source "Formulas.java"


# direct methods
.method public constructor <init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 17
    .param p1, "w"    # Ljxl/Workbook;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    move-object/from16 v0, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz v0, :cond_1

    const-string v1, "UnicodeBig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    const-string v0, "UTF8"

    move-object v1, v0

    .line 65
    .end local p3    # "encoding":Ljava/lang/String;
    .local v1, "encoding":Ljava/lang/String;
    :goto_1
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v2, p2

    :try_start_1
    invoke-direct {v0, v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object v3, v0

    .line 66
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v4, v0

    .line 68
    .local v4, "bw":Ljava/io/BufferedWriter;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 70
    .local v5, "parseErrors":Ljava/util/ArrayList;
    const/4 v0, 0x0

    move v6, v0

    .local v6, "sheet":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljxl/Workbook;->getNumberOfSheets()I

    move-result v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4

    if-ge v6, v0, :cond_6

    .line 72
    move-object/from16 v7, p1

    :try_start_2
    invoke-virtual {v7, v6}, Ljxl/Workbook;->getSheet(I)Ljxl/Sheet;

    move-result-object v0

    move-object v8, v0

    .line 74
    .local v8, "s":Ljxl/Sheet;
    invoke-interface {v8}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "row":[Ljxl/Cell;
    const/4 v9, 0x0

    .line 80
    .local v9, "c":Ljxl/Cell;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    invoke-interface {v8}, Ljxl/Sheet;->getRows()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 82
    invoke-interface {v8, v10}, Ljxl/Sheet;->getRow(I)[Ljxl/Cell;

    move-result-object v11

    .line 84
    .end local v0    # "row":[Ljxl/Cell;
    .local v11, "row":[Ljxl/Cell;
    const/4 v0, 0x0

    move-object/from16 v16, v9

    move v9, v0

    move-object/from16 v0, v16

    .local v0, "c":Ljxl/Cell;
    .local v9, "j":I
    :goto_4
    array-length v12, v11

    if-ge v9, v12, :cond_4

    .line 86
    aget-object v12, v11, v9

    .line 87
    .end local v0    # "c":Ljxl/Cell;
    .local v12, "c":Ljxl/Cell;
    invoke-interface {v12}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v13, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v0, v13, :cond_3

    :try_start_3
    invoke-interface {v12}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v13, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    if-eq v0, v13, :cond_3

    invoke-interface {v12}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v13, Ljxl/CellType;->BOOLEAN_FORMULA:Ljxl/CellType;

    if-eq v0, v13, :cond_3

    invoke-interface {v12}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v13, Ljxl/CellType;->DATE_FORMULA:Ljxl/CellType;

    if-eq v0, v13, :cond_3

    invoke-interface {v12}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v13, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v0, v13, :cond_2

    goto :goto_5

    :cond_2
    move-object/from16 p3, v1

    goto/16 :goto_6

    .line 132
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "parseErrors":Ljava/util/ArrayList;
    .end local v6    # "sheet":I
    .end local v8    # "s":Ljxl/Sheet;
    .end local v9    # "j":I
    .end local v10    # "i":I
    .end local v11    # "row":[Ljxl/Cell;
    .end local v12    # "c":Ljxl/Cell;
    :catch_0
    move-exception v0

    move-object/from16 p3, v1

    goto/16 :goto_9

    .line 93
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "parseErrors":Ljava/util/ArrayList;
    .restart local v6    # "sheet":I
    .restart local v8    # "s":Ljxl/Sheet;
    .restart local v9    # "j":I
    .restart local v10    # "i":I
    .restart local v11    # "row":[Ljxl/Cell;
    .restart local v12    # "c":Ljxl/Cell;
    :cond_3
    :goto_5
    :try_start_4
    move-object v0, v12

    check-cast v0, Ljxl/FormulaCell;

    move-object v13, v0

    .line 94
    .local v13, "nfc":Ljxl/FormulaCell;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v0

    .line 95
    .local v14, "sb":Ljava/lang/StringBuffer;
    invoke-interface {v12}, Ljxl/Cell;->getColumn()I

    move-result v0

    invoke-interface {v12}, Ljxl/Cell;->getRow()I

    move-result v15

    invoke-static {v0, v15, v14}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 100
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Formula in "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " value:  "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v12}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " formula: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v13}, Ljxl/FormulaCell;->getFormula()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 105
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_5
    .catch Ljxl/biff/formula/FormulaException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0

    .line 112
    move-object/from16 p3, v1

    goto :goto_6

    .line 107
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljxl/biff/formula/FormulaException;
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 110
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 p3, v1

    .end local v1    # "encoding":Ljava/lang/String;
    .restart local p3    # "encoding":Ljava/lang/String;
    :try_start_7
    invoke-interface {v8}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v15, 0x21

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ": "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v0    # "e":Ljxl/biff/formula/FormulaException;
    .end local v13    # "nfc":Ljxl/FormulaCell;
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p3

    move-object v0, v12

    goto/16 :goto_4

    .end local v12    # "c":Ljxl/Cell;
    .end local p3    # "encoding":Ljava/lang/String;
    .local v0, "c":Ljxl/Cell;
    .restart local v1    # "encoding":Ljava/lang/String;
    :cond_4
    move-object/from16 p3, v1

    .line 80
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v9    # "j":I
    .restart local p3    # "encoding":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move-object v9, v0

    move-object v0, v11

    goto/16 :goto_3

    .end local v11    # "row":[Ljxl/Cell;
    .end local p3    # "encoding":Ljava/lang/String;
    .local v0, "row":[Ljxl/Cell;
    .restart local v1    # "encoding":Ljava/lang/String;
    .local v9, "c":Ljxl/Cell;
    :cond_5
    move-object/from16 p3, v1

    .line 70
    .end local v0    # "row":[Ljxl/Cell;
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v8    # "s":Ljxl/Sheet;
    .end local v9    # "c":Ljxl/Cell;
    .end local v10    # "i":I
    .restart local p3    # "encoding":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 132
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "parseErrors":Ljava/util/ArrayList;
    .end local v6    # "sheet":I
    .end local p3    # "encoding":Ljava/lang/String;
    .restart local v1    # "encoding":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_8

    .line 70
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "parseErrors":Ljava/util/ArrayList;
    .restart local v6    # "sheet":I
    :cond_6
    move-object/from16 v7, p1

    move-object/from16 p3, v1

    .line 117
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v6    # "sheet":I
    .restart local p3    # "encoding":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 118
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 120
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 122
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 123
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There were "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " errors"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    .local v0, "i":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 128
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    .line 135
    .end local v0    # "i":Ljava/util/Iterator;
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "parseErrors":Ljava/util/ArrayList;
    :cond_7
    goto :goto_a

    .line 132
    :catch_3
    move-exception v0

    goto :goto_9

    .end local p3    # "encoding":Ljava/lang/String;
    .restart local v1    # "encoding":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v7, p1

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v2, p2

    :goto_8
    move-object/from16 p3, v1

    .line 134
    .end local v1    # "encoding":Ljava/lang/String;
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    .restart local p3    # "encoding":Ljava/lang/String;
    :goto_9
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_a
    return-void
.end method
