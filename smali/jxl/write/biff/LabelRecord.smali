.class public abstract Ljxl/write/biff/LabelRecord;
.super Ljxl/write/biff/CellValue;
.source "LabelRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private contents:Ljava/lang/String;

.field private index:I

.field private sharedStrings:Ljxl/write/biff/SharedStrings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Ljxl/write/biff/LabelRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/LabelRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "cont"    # Ljava/lang/String;

    .line 66
    sget-object v0, Ljxl/biff/Type;->LABELSST:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;II)V

    .line 67
    iput-object p3, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    .line 68
    if-nez p3, :cond_0

    .line 70
    const-string v0, ""

    iput-object v0, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    .line 72
    :cond_0
    return-void
.end method

.method protected constructor <init>(IILjava/lang/String;Ljxl/format/CellFormat;)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "cont"    # Ljava/lang/String;
    .param p4, "st"    # Ljxl/format/CellFormat;

    .line 85
    sget-object v0, Ljxl/biff/Type;->LABELSST:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p4}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 86
    iput-object p3, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    .line 88
    if-nez p3, :cond_0

    .line 90
    const-string v0, ""

    iput-object v0, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    .line 92
    :cond_0
    return-void
.end method

.method protected constructor <init>(IILjxl/write/biff/LabelRecord;)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "lr"    # Ljxl/write/biff/LabelRecord;

    .line 104
    sget-object v0, Ljxl/biff/Type;->LABELSST:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V

    .line 105
    iget-object v0, p3, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    iput-object v0, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    .line 106
    return-void
.end method

.method protected constructor <init>(Ljxl/LabelCell;)V
    .locals 1
    .param p1, "lc"    # Ljxl/LabelCell;

    .line 116
    sget-object v0, Ljxl/biff/Type;->LABELSST:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;Ljxl/Cell;)V

    .line 117
    invoke-interface {p1}, Ljxl/LabelCell;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    .line 118
    if-nez v0, :cond_0

    .line 120
    const-string v0, ""

    iput-object v0, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 4

    .line 141
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    .line 142
    .local v0, "celldata":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 143
    .local v1, "data":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget v2, p0, Ljxl/write/biff/LabelRecord;->index:I

    array-length v3, v0

    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 146
    return-object v1
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 131
    sget-object v0, Ljxl/CellType;->LABEL:Ljxl/CellType;

    return-object v0
.end method

.method setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V
    .locals 2
    .param p1, "fr"    # Ljxl/biff/FormattingRecords;
    .param p2, "ss"    # Ljxl/write/biff/SharedStrings;
    .param p3, "s"    # Ljxl/write/biff/WritableSheetImpl;

    .line 216
    invoke-super {p0, p1, p2, p3}, Ljxl/write/biff/CellValue;->setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V

    .line 218
    iput-object p2, p0, Ljxl/write/biff/LabelRecord;->sharedStrings:Ljxl/write/biff/SharedStrings;

    .line 220
    iget-object v0, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljxl/write/biff/SharedStrings;->getIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/write/biff/LabelRecord;->index:I

    .line 225
    iget-object v1, p0, Ljxl/write/biff/LabelRecord;->sharedStrings:Ljxl/write/biff/SharedStrings;

    invoke-virtual {v1, v0}, Ljxl/write/biff/SharedStrings;->get(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    .line 226
    return-void
.end method

.method protected setString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 179
    if-nez p1, :cond_0

    .line 181
    const-string p1, ""

    .line 184
    :cond_0
    iput-object p1, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Ljxl/write/biff/LabelRecord;->isReferenced()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Ljxl/write/biff/LabelRecord;->sharedStrings:Ljxl/write/biff/SharedStrings;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 196
    iget-object v0, p0, Ljxl/write/biff/LabelRecord;->sharedStrings:Ljxl/write/biff/SharedStrings;

    iget-object v1, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljxl/write/biff/SharedStrings;->getIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/write/biff/LabelRecord;->index:I

    .line 201
    iget-object v1, p0, Ljxl/write/biff/LabelRecord;->sharedStrings:Ljxl/write/biff/SharedStrings;

    invoke-virtual {v1, v0}, Ljxl/write/biff/SharedStrings;->get(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    .line 202
    return-void
.end method
