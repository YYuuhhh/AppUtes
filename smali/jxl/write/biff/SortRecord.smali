.class Ljxl/write/biff/SortRecord;
.super Ljxl/biff/WritableRecordData;
.source "SortRecord.java"


# instance fields
.field private column1Name:Ljava/lang/String;

.field private column2Name:Ljava/lang/String;

.field private column3Name:Ljava/lang/String;

.field private sortCaseSensitive:Z

.field private sortColumns:Z

.field private sortKey1Desc:Z

.field private sortKey2Desc:Z

.field private sortKey3Desc:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # Ljava/lang/String;
    .param p4, "sc"    # Z
    .param p5, "sk1d"    # Z
    .param p6, "sk2d"    # Z
    .param p7, "sk3d"    # Z
    .param p8, "scs"    # Z

    .line 56
    sget-object v0, Ljxl/biff/Type;->SORT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 58
    iput-object p1, p0, Ljxl/write/biff/SortRecord;->column1Name:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Ljxl/write/biff/SortRecord;->column2Name:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Ljxl/write/biff/SortRecord;->column3Name:Ljava/lang/String;

    .line 61
    iput-boolean p4, p0, Ljxl/write/biff/SortRecord;->sortColumns:Z

    .line 62
    iput-boolean p5, p0, Ljxl/write/biff/SortRecord;->sortKey1Desc:Z

    .line 63
    iput-boolean p6, p0, Ljxl/write/biff/SortRecord;->sortKey2Desc:Z

    .line 64
    iput-boolean p7, p0, Ljxl/write/biff/SortRecord;->sortKey3Desc:Z

    .line 65
    iput-boolean p8, p0, Ljxl/write/biff/SortRecord;->sortCaseSensitive:Z

    .line 66
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 8

    .line 75
    iget-object v0, p0, Ljxl/write/biff/SortRecord;->column1Name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    const/4 v2, 0x5

    add-int/2addr v0, v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 76
    .local v0, "byteCount":I
    iget-object v4, p0, Ljxl/write/biff/SortRecord;->column2Name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 77
    iget-object v4, p0, Ljxl/write/biff/SortRecord;->column2Name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 78
    :cond_0
    iget-object v4, p0, Ljxl/write/biff/SortRecord;->column3Name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 79
    iget-object v4, p0, Ljxl/write/biff/SortRecord;->column3Name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 80
    :cond_1
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [B

    .line 82
    .local v4, "data":[B
    const/4 v5, 0x0

    .line 83
    .local v5, "optionFlag":I
    iget-boolean v6, p0, Ljxl/write/biff/SortRecord;->sortColumns:Z

    if-eqz v6, :cond_2

    .line 84
    or-int/lit8 v5, v5, 0x1

    .line 85
    :cond_2
    iget-boolean v6, p0, Ljxl/write/biff/SortRecord;->sortKey1Desc:Z

    if-eqz v6, :cond_3

    .line 86
    or-int/lit8 v5, v5, 0x2

    .line 87
    :cond_3
    iget-boolean v6, p0, Ljxl/write/biff/SortRecord;->sortKey2Desc:Z

    if-eqz v6, :cond_4

    .line 88
    or-int/lit8 v5, v5, 0x4

    .line 89
    :cond_4
    iget-boolean v6, p0, Ljxl/write/biff/SortRecord;->sortKey3Desc:Z

    if-eqz v6, :cond_5

    .line 90
    or-int/lit8 v5, v5, 0x8

    .line 91
    :cond_5
    iget-boolean v6, p0, Ljxl/write/biff/SortRecord;->sortCaseSensitive:Z

    if-eqz v6, :cond_6

    .line 92
    or-int/lit8 v5, v5, 0x10

    .line 94
    :cond_6
    const/4 v6, 0x0

    int-to-byte v7, v5

    aput-byte v7, v4, v6

    .line 96
    iget-object v6, p0, Ljxl/write/biff/SortRecord;->column1Name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v1

    .line 97
    const/4 v6, 0x3

    iget-object v7, p0, Ljxl/write/biff/SortRecord;->column2Name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 98
    iget-object v6, p0, Ljxl/write/biff/SortRecord;->column3Name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x4

    aput-byte v6, v4, v7

    .line 100
    aput-byte v3, v4, v2

    .line 101
    iget-object v2, p0, Ljxl/write/biff/SortRecord;->column1Name:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-static {v2, v4, v6}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 102
    iget-object v2, p0, Ljxl/write/biff/SortRecord;->column1Name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v6

    .line 103
    .local v2, "curPos":I
    iget-object v6, p0, Ljxl/write/biff/SortRecord;->column2Name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 105
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "curPos":I
    .local v6, "curPos":I
    aput-byte v3, v4, v2

    .line 106
    iget-object v2, p0, Ljxl/write/biff/SortRecord;->column2Name:Ljava/lang/String;

    invoke-static {v2, v4, v6}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 107
    iget-object v2, p0, Ljxl/write/biff/SortRecord;->column2Name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v6

    .line 109
    .end local v6    # "curPos":I
    .restart local v2    # "curPos":I
    :cond_7
    iget-object v6, p0, Ljxl/write/biff/SortRecord;->column3Name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 111
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "curPos":I
    .restart local v6    # "curPos":I
    aput-byte v3, v4, v2

    .line 112
    iget-object v2, p0, Ljxl/write/biff/SortRecord;->column3Name:Ljava/lang/String;

    invoke-static {v2, v4, v6}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 113
    iget-object v2, p0, Ljxl/write/biff/SortRecord;->column3Name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v6

    .line 116
    .end local v6    # "curPos":I
    .restart local v2    # "curPos":I
    :cond_8
    return-object v4
.end method
