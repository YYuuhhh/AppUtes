.class Ljxl/biff/formula/ColumnRange;
.super Ljxl/biff/formula/Area;
.source "ColumnRange.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/biff/formula/ColumnRange;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/ColumnRange;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljxl/biff/formula/Area;-><init>()V

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 21
    .param p1, "s"    # Ljava/lang/String;

    .line 51
    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Ljxl/biff/formula/Area;-><init>()V

    .line 52
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 53
    .local v1, "seppos":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 54
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "startcell":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "endcell":Ljava/lang/String;
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v13

    .line 58
    .local v13, "columnFirst":I
    const/4 v14, 0x0

    .line 59
    .local v14, "rowFirst":I
    invoke-static {v3}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v15

    .line 60
    .local v15, "columnLast":I
    const v16, 0xffff

    .line 62
    .local v16, "rowLast":I
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->isColumnRelative(Ljava/lang/String;)Z

    move-result v17

    .line 64
    .local v17, "columnFirstRelative":Z
    const/16 v18, 0x0

    .line 65
    .local v18, "rowFirstRelative":Z
    invoke-static {v3}, Ljxl/biff/CellReferenceHelper;->isColumnRelative(Ljava/lang/String;)Z

    move-result v19

    .line 66
    .local v19, "columnLastRelative":Z
    const/16 v20, 0x0

    .line 68
    .local v20, "rowLastRelative":Z
    move-object/from16 v4, p0

    move v5, v13

    move v6, v15

    move v7, v14

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v19

    move/from16 v11, v18

    move/from16 v12, v20

    invoke-virtual/range {v4 .. v12}, Ljxl/biff/formula/ColumnRange;->setRangeData(IIIIZZZZ)V

    .line 72
    return-void
.end method


# virtual methods
.method public getString(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {p0}, Ljxl/biff/formula/ColumnRange;->getFirstColumn()I

    move-result v0

    invoke-static {v0, p1}, Ljxl/biff/CellReferenceHelper;->getColumnReference(ILjava/lang/StringBuffer;)V

    .line 82
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {p0}, Ljxl/biff/formula/ColumnRange;->getLastColumn()I

    move-result v0

    invoke-static {v0, p1}, Ljxl/biff/CellReferenceHelper;->getColumnReference(ILjava/lang/StringBuffer;)V

    .line 84
    return-void
.end method
