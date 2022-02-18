.class public abstract Ljxl/write/biff/DateRecord;
.super Ljxl/write/biff/CellValue;
.source "DateRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/DateRecord$GMTDate;
    }
.end annotation


# static fields
.field static final defaultDateFormat:Ljxl/write/WritableCellFormat;

.field private static logger:Ljxl/common/Logger; = null

.field private static final msInADay:J = 0x5265c00L

.field private static final nonLeapDay:I = 0x3d

.field private static final utcOffsetDays:I = 0x63e1


# instance fields
.field private date:Ljava/util/Date;

.field private time:Z

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-class v0, Ljxl/write/biff/DateRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/DateRecord;->logger:Ljxl/common/Logger;

    .line 75
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/write/DateFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    sput-object v0, Ljxl/write/biff/DateRecord;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    return-void
.end method

.method protected constructor <init>(IILjava/util/Date;)V
    .locals 6
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "d"    # Ljava/util/Date;

    .line 103
    sget-object v4, Ljxl/write/biff/DateRecord;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Z)V

    .line 104
    return-void
.end method

.method protected constructor <init>(IILjava/util/Date;Ljxl/format/CellFormat;)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "st"    # Ljxl/format/CellFormat;

    .line 129
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p4}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 130
    iput-object p3, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    .line 132
    return-void
.end method

.method protected constructor <init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "st"    # Ljxl/format/CellFormat;
    .param p5, "a"    # Ljxl/write/biff/DateRecord$GMTDate;

    .line 145
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p4}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 146
    iput-object p3, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    .line 148
    return-void
.end method

.method protected constructor <init>(IILjava/util/Date;Ljxl/format/CellFormat;Z)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "st"    # Ljxl/format/CellFormat;
    .param p5, "tim"    # Z

    .line 161
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p4}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 162
    iput-object p3, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    .line 163
    iput-boolean p5, p0, Ljxl/write/biff/DateRecord;->time:Z

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    .line 165
    return-void
.end method

.method protected constructor <init>(IILjava/util/Date;Ljxl/write/biff/DateRecord$GMTDate;)V
    .locals 6
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "a"    # Ljxl/write/biff/DateRecord$GMTDate;

    .line 116
    sget-object v4, Ljxl/write/biff/DateRecord;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Z)V

    .line 117
    return-void
.end method

.method protected constructor <init>(IILjxl/write/biff/DateRecord;)V
    .locals 2
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "dr"    # Ljxl/write/biff/DateRecord;

    .line 189
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V

    .line 190
    iget-wide v0, p3, Ljxl/write/biff/DateRecord;->value:D

    iput-wide v0, p0, Ljxl/write/biff/DateRecord;->value:D

    .line 191
    iget-boolean v0, p3, Ljxl/write/biff/DateRecord;->time:Z

    iput-boolean v0, p0, Ljxl/write/biff/DateRecord;->time:Z

    .line 192
    iget-object v0, p3, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    iput-object v0, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    .line 193
    return-void
.end method

.method protected constructor <init>(Ljxl/DateCell;)V
    .locals 1
    .param p1, "dc"    # Ljxl/DateCell;

    .line 174
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;Ljxl/Cell;)V

    .line 175
    invoke-interface {p1}, Ljxl/DateCell;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    .line 176
    invoke-interface {p1}, Ljxl/DateCell;->isTime()Z

    move-result v0

    iput-boolean v0, p0, Ljxl/write/biff/DateRecord;->time:Z

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    .line 178
    return-void
.end method

.method private calculateValue(Z)V
    .locals 13
    .param p1, "adjust"    # Z

    .line 205
    const-wide/16 v0, 0x0

    .line 206
    .local v0, "zoneOffset":J
    const-wide/16 v2, 0x0

    .line 210
    .local v2, "dstOffset":J
    if-eqz p1, :cond_0

    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 214
    .local v4, "cal":Ljava/util/Calendar;
    iget-object v5, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 216
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v0, v5

    .line 217
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v2, v5

    .line 220
    .end local v4    # "cal":Ljava/util/Calendar;
    :cond_0
    iget-object v4, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    add-long/2addr v4, v2

    .line 224
    .local v4, "utcValue":J
    long-to-double v6, v4

    const-wide v8, 0x4194997000000000L    # 8.64E7

    div-double/2addr v6, v8

    .line 227
    .local v6, "utcDays":D
    const-wide v8, 0x40d8f84000000000L    # 25569.0

    add-double/2addr v8, v6

    iput-wide v8, p0, Ljxl/write/biff/DateRecord;->value:D

    .line 233
    iget-boolean v10, p0, Ljxl/write/biff/DateRecord;->time:Z

    if-nez v10, :cond_1

    const-wide v11, 0x404e800000000000L    # 61.0

    cmpg-double v11, v8, v11

    if-gez v11, :cond_1

    .line 235
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v11

    iput-wide v8, p0, Ljxl/write/biff/DateRecord;->value:D

    .line 239
    :cond_1
    if-eqz v10, :cond_2

    .line 241
    iget-wide v8, p0, Ljxl/write/biff/DateRecord;->value:D

    double-to-int v10, v8

    int-to-double v10, v10

    sub-double/2addr v8, v10

    iput-wide v8, p0, Ljxl/write/biff/DateRecord;->value:D

    .line 243
    :cond_2
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 5

    .line 262
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    .line 263
    .local v0, "celldata":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 264
    .local v1, "data":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget-wide v2, p0, Ljxl/write/biff/DateRecord;->value:D

    array-length v4, v0

    invoke-static {v2, v3, v1, v4}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    .line 267
    return-object v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 313
    iget-object v0, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 252
    sget-object v0, Ljxl/CellType;->DATE:Ljxl/CellType;

    return-object v0
.end method

.method public isTime()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Ljxl/write/biff/DateRecord;->time:Z

    return v0
.end method

.method protected setDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "d"    # Ljava/util/Date;

    .line 289
    iput-object p1, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    .line 291
    return-void
.end method

.method protected setDate(Ljava/util/Date;Ljxl/write/biff/DateRecord$GMTDate;)V
    .locals 1
    .param p1, "d"    # Ljava/util/Date;
    .param p2, "a"    # Ljxl/write/biff/DateRecord$GMTDate;

    .line 301
    iput-object p1, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    .line 303
    return-void
.end method
