.class public Ljxl/read/biff/SortRecord;
.super Ljxl/biff/RecordData;
.source "SortRecord.java"


# instance fields
.field private col1Name:Ljava/lang/String;

.field private col1Size:I

.field private col2Name:Ljava/lang/String;

.field private col2Size:I

.field private col3Name:Ljava/lang/String;

.field private col3Size:I

.field private optionFlags:B

.field private sortCaseSensitive:Z

.field private sortColumns:Z

.field private sortKey1Desc:Z

.field private sortKey2Desc:Z

.field private sortKey3Desc:Z


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 6
    .param p1, "r"    # Ljxl/read/biff/Record;

    .line 50
    sget-object v0, Ljxl/biff/Type;->SORT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortColumns:Z

    .line 39
    iput-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortKey1Desc:Z

    .line 40
    iput-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortKey2Desc:Z

    .line 41
    iput-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortKey3Desc:Z

    .line 42
    iput-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortCaseSensitive:Z

    .line 52
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v1

    .line 54
    .local v1, "data":[B
    aget-byte v2, v1, v0

    iput-byte v2, p0, Ljxl/read/biff/SortRecord;->optionFlags:B

    .line 56
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Ljxl/read/biff/SortRecord;->sortColumns:Z

    .line 57
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Ljxl/read/biff/SortRecord;->sortKey1Desc:Z

    .line 58
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    iput-boolean v3, p0, Ljxl/read/biff/SortRecord;->sortKey2Desc:Z

    .line 59
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    iput-boolean v3, p0, Ljxl/read/biff/SortRecord;->sortKey3Desc:Z

    .line 60
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    move v0, v4

    :cond_4
    iput-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortCaseSensitive:Z

    .line 64
    const/4 v0, 0x2

    aget-byte v2, v1, v0

    iput v2, p0, Ljxl/read/biff/SortRecord;->col1Size:I

    .line 65
    const/4 v3, 0x3

    aget-byte v3, v1, v3

    iput v3, p0, Ljxl/read/biff/SortRecord;->col2Size:I

    .line 66
    const/4 v3, 0x4

    aget-byte v3, v1, v3

    iput v3, p0, Ljxl/read/biff/SortRecord;->col3Size:I

    .line 67
    const/4 v3, 0x5

    .line 68
    .local v3, "curPos":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "curPos":I
    .local v4, "curPos":I
    aget-byte v3, v1, v3

    if-nez v3, :cond_5

    .line 70
    new-instance v2, Ljava/lang/String;

    iget v3, p0, Ljxl/read/biff/SortRecord;->col1Size:I

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p0, Ljxl/read/biff/SortRecord;->col1Name:Ljava/lang/String;

    .line 71
    iget v2, p0, Ljxl/read/biff/SortRecord;->col1Size:I

    add-int/2addr v4, v2

    goto :goto_4

    .line 75
    :cond_5
    invoke-static {v1, v2, v4}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SortRecord;->col1Name:Ljava/lang/String;

    .line 76
    iget v2, p0, Ljxl/read/biff/SortRecord;->col1Size:I

    mul-int/2addr v2, v0

    add-int/2addr v4, v2

    .line 79
    :goto_4
    iget v2, p0, Ljxl/read/biff/SortRecord;->col2Size:I

    const-string v3, ""

    if-lez v2, :cond_7

    .line 81
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "curPos":I
    .local v5, "curPos":I
    aget-byte v4, v1, v4

    if-nez v4, :cond_6

    .line 83
    new-instance v2, Ljava/lang/String;

    iget v4, p0, Ljxl/read/biff/SortRecord;->col2Size:I

    invoke-direct {v2, v1, v5, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p0, Ljxl/read/biff/SortRecord;->col2Name:Ljava/lang/String;

    .line 84
    iget v2, p0, Ljxl/read/biff/SortRecord;->col2Size:I

    add-int v4, v5, v2

    .end local v5    # "curPos":I
    .restart local v4    # "curPos":I
    goto :goto_5

    .line 88
    .end local v4    # "curPos":I
    .restart local v5    # "curPos":I
    :cond_6
    invoke-static {v1, v2, v5}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SortRecord;->col2Name:Ljava/lang/String;

    .line 89
    iget v2, p0, Ljxl/read/biff/SortRecord;->col2Size:I

    mul-int/2addr v2, v0

    add-int v4, v5, v2

    .end local v5    # "curPos":I
    .restart local v4    # "curPos":I
    goto :goto_5

    .line 94
    :cond_7
    iput-object v3, p0, Ljxl/read/biff/SortRecord;->col2Name:Ljava/lang/String;

    .line 96
    :goto_5
    iget v2, p0, Ljxl/read/biff/SortRecord;->col3Size:I

    if-lez v2, :cond_9

    .line 98
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "curPos":I
    .restart local v3    # "curPos":I
    aget-byte v4, v1, v4

    if-nez v4, :cond_8

    .line 100
    new-instance v0, Ljava/lang/String;

    iget v2, p0, Ljxl/read/biff/SortRecord;->col3Size:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Ljxl/read/biff/SortRecord;->col3Name:Ljava/lang/String;

    .line 101
    iget v0, p0, Ljxl/read/biff/SortRecord;->col3Size:I

    add-int v4, v3, v0

    .end local v3    # "curPos":I
    .restart local v4    # "curPos":I
    goto :goto_6

    .line 105
    .end local v4    # "curPos":I
    .restart local v3    # "curPos":I
    :cond_8
    invoke-static {v1, v2, v3}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SortRecord;->col3Name:Ljava/lang/String;

    .line 106
    iget v2, p0, Ljxl/read/biff/SortRecord;->col3Size:I

    mul-int/2addr v2, v0

    add-int v4, v3, v2

    .end local v3    # "curPos":I
    .restart local v4    # "curPos":I
    goto :goto_6

    .line 111
    :cond_9
    iput-object v3, p0, Ljxl/read/biff/SortRecord;->col3Name:Ljava/lang/String;

    .line 113
    :goto_6
    return-void
.end method


# virtual methods
.method public getSortCaseSensitive()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortCaseSensitive:Z

    return v0
.end method

.method public getSortCol1Name()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Ljxl/read/biff/SortRecord;->col1Name:Ljava/lang/String;

    return-object v0
.end method

.method public getSortCol2Name()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Ljxl/read/biff/SortRecord;->col2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getSortCol3Name()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Ljxl/read/biff/SortRecord;->col3Name:Ljava/lang/String;

    return-object v0
.end method

.method public getSortColumns()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortColumns:Z

    return v0
.end method

.method public getSortKey1Desc()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortKey1Desc:Z

    return v0
.end method

.method public getSortKey2Desc()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortKey2Desc:Z

    return v0
.end method

.method public getSortKey3Desc()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Ljxl/read/biff/SortRecord;->sortKey3Desc:Z

    return v0
.end method
