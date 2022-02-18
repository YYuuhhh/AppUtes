.class public Ljxl/biff/FormatRecord;
.super Ljxl/biff/WritableRecordData;
.source "FormatRecord.java"

# interfaces
.implements Ljxl/biff/DisplayFormat;
.implements Ljxl/format/Format;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/FormatRecord$BiffType;
    }
.end annotation


# static fields
.field public static final biff7:Ljxl/biff/FormatRecord$BiffType;

.field public static final biff8:Ljxl/biff/FormatRecord$BiffType;

.field private static dateStrings:[Ljava/lang/String;

.field public static logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private date:Z

.field private format:Ljava/text/Format;

.field private formatString:Ljava/lang/String;

.field private indexCode:I

.field private initialized:Z

.field private number:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 42
    const-class v0, Ljxl/biff/FormatRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/FormatRecord;->logger:Ljxl/common/Logger;

    .line 82
    const-string v1, "dd"

    const-string v2, "mm"

    const-string/jumbo v3, "yy"

    const-string v4, "hh"

    const-string v5, "ss"

    const-string v6, "m/"

    const-string v7, "/d"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljxl/biff/FormatRecord;->dateStrings:[Ljava/lang/String;

    .line 98
    new-instance v0, Ljxl/biff/FormatRecord$BiffType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/biff/FormatRecord$BiffType;-><init>(Ljxl/biff/FormatRecord$1;)V

    sput-object v0, Ljxl/biff/FormatRecord;->biff8:Ljxl/biff/FormatRecord$BiffType;

    .line 99
    new-instance v0, Ljxl/biff/FormatRecord$BiffType;

    invoke-direct {v0, v1}, Ljxl/biff/FormatRecord$BiffType;-><init>(Ljxl/biff/FormatRecord$1;)V

    sput-object v0, Ljxl/biff/FormatRecord;->biff7:Ljxl/biff/FormatRecord$BiffType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 120
    sget-object v0, Ljxl/biff/Type;->FORMAT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/FormatRecord;->initialized:Z

    .line 122
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "refno"    # I

    .line 109
    sget-object v0, Ljxl/biff/Type;->FORMAT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 110
    iput-object p1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    .line 111
    iput p2, p0, Ljxl/biff/FormatRecord;->indexCode:I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/FormatRecord;->initialized:Z

    .line 113
    return-void
.end method

.method protected constructor <init>(Ljxl/biff/FormatRecord;)V
    .locals 1
    .param p1, "fr"    # Ljxl/biff/FormatRecord;

    .line 131
    sget-object v0, Ljxl/biff/Type;->FORMAT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/FormatRecord;->initialized:Z

    .line 134
    iget-object v0, p1, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    .line 135
    iget-boolean v0, p1, Ljxl/biff/FormatRecord;->date:Z

    iput-boolean v0, p0, Ljxl/biff/FormatRecord;->date:Z

    .line 136
    iget-boolean v0, p1, Ljxl/biff/FormatRecord;->number:Z

    iput-boolean v0, p0, Ljxl/biff/FormatRecord;->number:Z

    .line 138
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FormatRecord$BiffType;)V
    .locals 7
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "ws"    # Ljxl/WorkbookSettings;
    .param p3, "biffType"    # Ljxl/biff/FormatRecord$BiffType;

    .line 150
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 152
    invoke-virtual {p0}, Ljxl/biff/FormatRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 153
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/biff/FormatRecord;->indexCode:I

    .line 154
    iput-boolean v3, p0, Ljxl/biff/FormatRecord;->initialized:Z

    .line 156
    sget-object v2, Ljxl/biff/FormatRecord;->biff8:Ljxl/biff/FormatRecord$BiffType;

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne p3, v2, :cond_1

    .line 158
    aget-byte v2, v0, v5

    aget-byte v4, v0, v4

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 159
    .local v2, "numchars":I
    const/4 v4, 0x4

    aget-byte v4, v0, v4

    const/4 v5, 0x5

    if-nez v4, :cond_0

    .line 161
    invoke-static {v0, v2, v5, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {v0, v2, v5}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    .line 167
    .end local v2    # "numchars":I
    :goto_0
    goto :goto_1

    .line 170
    :cond_1
    aget-byte v2, v0, v5

    .line 171
    .restart local v2    # "numchars":I
    new-array v5, v2, [B

    .line 172
    .local v5, "chars":[B
    array-length v6, v5

    invoke-static {v0, v4, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    .line 176
    .end local v2    # "numchars":I
    .end local v5    # "chars":[B
    :goto_1
    iput-boolean v1, p0, Ljxl/biff/FormatRecord;->date:Z

    .line 177
    iput-boolean v1, p0, Ljxl/biff/FormatRecord;->number:Z

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Ljxl/biff/FormatRecord;->dateStrings:[Ljava/lang/String;

    array-length v4, v2

    const/4 v5, -0x1

    if-ge v1, v4, :cond_4

    .line 182
    aget-object v2, v2, v1

    .line 183
    .local v2, "dateString":Ljava/lang/String;
    iget-object v4, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_2

    goto :goto_3

    .line 180
    .end local v2    # "dateString":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 186
    .restart local v2    # "dateString":Ljava/lang/String;
    :cond_3
    :goto_3
    iput-boolean v3, p0, Ljxl/biff/FormatRecord;->date:Z

    .line 192
    .end local v1    # "i":I
    .end local v2    # "dateString":Ljava/lang/String;
    :cond_4
    iget-boolean v1, p0, Ljxl/biff/FormatRecord;->date:Z

    if-nez v1, :cond_6

    .line 194
    iget-object v1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v5, :cond_6

    .line 197
    :cond_5
    iput-boolean v3, p0, Ljxl/biff/FormatRecord;->number:Z

    .line 200
    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 608
    if-ne p1, p0, :cond_0

    .line 610
    const/4 v0, 0x1

    return v0

    .line 613
    :cond_0
    instance-of v0, p1, Ljxl/biff/FormatRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 615
    return v1

    .line 618
    :cond_1
    move-object v0, p1

    check-cast v0, Ljxl/biff/FormatRecord;

    .line 621
    .local v0, "fr":Ljxl/biff/FormatRecord;
    iget-boolean v2, p0, Ljxl/biff/FormatRecord;->initialized:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Ljxl/biff/FormatRecord;->initialized:Z

    if-eqz v2, :cond_4

    .line 624
    iget-boolean v2, p0, Ljxl/biff/FormatRecord;->date:Z

    iget-boolean v3, v0, Ljxl/biff/FormatRecord;->date:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Ljxl/biff/FormatRecord;->number:Z

    iget-boolean v3, v0, Ljxl/biff/FormatRecord;->number:Z

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 630
    :cond_2
    iget-object v1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    iget-object v2, v0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 627
    :cond_3
    :goto_0
    return v1

    .line 634
    :cond_4
    iget-object v1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    iget-object v2, v0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getData()[B
    .locals 4

    .line 209
    iget-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/biff/FormatRecord;->data:[B

    .line 211
    iget v2, p0, Ljxl/biff/FormatRecord;->indexCode:I

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 212
    iget-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Ljxl/biff/FormatRecord;->data:[B

    invoke-static {v0, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 213
    iget-object v0, p0, Ljxl/biff/FormatRecord;->data:[B

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 214
    iget-object v1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 216
    iget-object v0, p0, Ljxl/biff/FormatRecord;->data:[B

    return-object v0
.end method

.method public final getDateFormat()Ljava/text/DateFormat;
    .locals 11

    .line 349
    iget-object v0, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/text/DateFormat;

    if-eqz v1, :cond_0

    .line 351
    check-cast v0, Ljava/text/DateFormat;

    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    .line 357
    .local v0, "fmt":Ljava/lang/String;
    const-string v1, "AM/PM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 358
    .local v2, "pos":I
    :goto_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 360
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 361
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/16 v4, 0x61

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 362
    add-int/lit8 v4, v2, 0x5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 365
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 369
    :cond_1
    const-string v1, "ss.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 370
    :goto_1
    if-eq v2, v4, :cond_3

    .line 372
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 373
    .local v5, "sb":Ljava/lang/StringBuffer;
    const-string v6, "ss.SSS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    add-int/lit8 v2, v2, 0x4

    .line 377
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_2

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 382
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 385
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    goto :goto_1

    .line 389
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 390
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 392
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_4

    .line 394
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 390
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 398
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5b

    if-ne v3, v5, :cond_6

    .line 404
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 405
    .local v3, "end":I
    if-eq v3, v4, :cond_6

    .line 407
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    .end local v3    # "end":I
    :cond_6
    const-string v3, ";@"

    const-string v4, ""

    invoke-virtual {p0, v0, v3, v4}, Ljxl/biff/FormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 418
    .local v3, "formatBytes":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_20

    .line 420
    aget-char v5, v3, v4

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_1f

    .line 424
    if-lez v4, :cond_8

    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    if-eq v5, v6, :cond_7

    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    const/16 v6, 0x4d

    if-ne v5, v6, :cond_8

    .line 426
    :cond_7
    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    aput-char v5, v3, v4

    goto/16 :goto_19

    .line 434
    :cond_8
    const v5, 0x7fffffff

    .line 435
    .local v5, "minuteDist":I
    add-int/lit8 v6, v4, -0x1

    .local v6, "j":I
    :goto_5
    const/16 v7, 0x68

    if-lez v6, :cond_a

    .line 437
    aget-char v8, v3, v6

    if-ne v8, v7, :cond_9

    .line 439
    sub-int v5, v4, v6

    .line 440
    goto :goto_6

    .line 435
    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 444
    .end local v6    # "j":I
    :cond_a
    :goto_6
    add-int/lit8 v6, v4, 0x1

    .restart local v6    # "j":I
    :goto_7
    array-length v8, v3

    if-ge v6, v8, :cond_c

    .line 446
    aget-char v8, v3, v6

    if-ne v8, v7, :cond_b

    .line 448
    sub-int v7, v6, v4

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 449
    goto :goto_8

    .line 444
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 453
    .end local v6    # "j":I
    :cond_c
    :goto_8
    add-int/lit8 v6, v4, -0x1

    .restart local v6    # "j":I
    :goto_9
    const/16 v7, 0x48

    if-lez v6, :cond_e

    .line 455
    aget-char v8, v3, v6

    if-ne v8, v7, :cond_d

    .line 457
    sub-int v5, v4, v6

    .line 458
    goto :goto_a

    .line 453
    :cond_d
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 462
    .end local v6    # "j":I
    :cond_e
    :goto_a
    add-int/lit8 v6, v4, 0x1

    .restart local v6    # "j":I
    :goto_b
    array-length v8, v3

    if-ge v6, v8, :cond_10

    .line 464
    aget-char v8, v3, v6

    if-ne v8, v7, :cond_f

    .line 466
    sub-int v7, v6, v4

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 467
    goto :goto_c

    .line 462
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 472
    .end local v6    # "j":I
    :cond_10
    :goto_c
    add-int/lit8 v6, v4, -0x1

    .restart local v6    # "j":I
    :goto_d
    const/16 v7, 0x73

    if-lez v6, :cond_12

    .line 474
    aget-char v8, v3, v6

    if-ne v8, v7, :cond_11

    .line 476
    sub-int v8, v4, v6

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 477
    goto :goto_e

    .line 472
    :cond_11
    add-int/lit8 v6, v6, -0x1

    goto :goto_d

    .line 480
    .end local v6    # "j":I
    :cond_12
    :goto_e
    add-int/lit8 v6, v4, 0x1

    .restart local v6    # "j":I
    :goto_f
    array-length v8, v3

    if-ge v6, v8, :cond_14

    .line 482
    aget-char v8, v3, v6

    if-ne v8, v7, :cond_13

    .line 484
    sub-int v7, v6, v4

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 485
    goto :goto_10

    .line 480
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 491
    .end local v6    # "j":I
    :cond_14
    :goto_10
    const v6, 0x7fffffff

    .line 492
    .local v6, "monthDist":I
    add-int/lit8 v7, v4, -0x1

    .local v7, "j":I
    :goto_11
    const/16 v8, 0x64

    if-lez v7, :cond_16

    .line 494
    aget-char v9, v3, v7

    if-ne v9, v8, :cond_15

    .line 496
    sub-int v6, v4, v7

    .line 497
    goto :goto_12

    .line 492
    :cond_15
    add-int/lit8 v7, v7, -0x1

    goto :goto_11

    .line 501
    .end local v7    # "j":I
    :cond_16
    :goto_12
    add-int/lit8 v7, v4, 0x1

    .restart local v7    # "j":I
    :goto_13
    array-length v9, v3

    if-ge v7, v9, :cond_18

    .line 503
    aget-char v9, v3, v7

    if-ne v9, v8, :cond_17

    .line 505
    sub-int v9, v7, v4

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 506
    goto :goto_14

    .line 501
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 510
    .end local v7    # "j":I
    :cond_18
    :goto_14
    add-int/lit8 v7, v4, -0x1

    .restart local v7    # "j":I
    :goto_15
    const/16 v9, 0x79

    if-lez v7, :cond_1a

    .line 512
    aget-char v10, v3, v7

    if-ne v10, v9, :cond_19

    .line 514
    sub-int v10, v4, v7

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 515
    goto :goto_16

    .line 510
    :cond_19
    add-int/lit8 v7, v7, -0x1

    goto :goto_15

    .line 518
    .end local v7    # "j":I
    :cond_1a
    :goto_16
    add-int/lit8 v7, v4, 0x1

    .restart local v7    # "j":I
    :goto_17
    array-length v10, v3

    if-ge v7, v10, :cond_1c

    .line 520
    aget-char v10, v3, v7

    if-ne v10, v9, :cond_1b

    .line 522
    sub-int v10, v7, v4

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 523
    goto :goto_18

    .line 518
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 527
    .end local v7    # "j":I
    :cond_1c
    :goto_18
    if-ge v6, v5, :cond_1d

    .line 530
    aget-char v7, v3, v4

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    aput-char v7, v3, v4

    goto :goto_19

    .line 532
    :cond_1d
    if-ne v6, v5, :cond_1f

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_1f

    .line 537
    sub-int v7, v4, v6

    aget-char v7, v3, v7

    .line 538
    .local v7, "ind":C
    if-eq v7, v9, :cond_1e

    if-ne v7, v8, :cond_1f

    .line 541
    :cond_1e
    aget-char v8, v3, v4

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    aput-char v8, v3, v4

    .line 418
    .end local v5    # "minuteDist":I
    .end local v6    # "monthDist":I
    .end local v7    # "ind":C
    :cond_1f
    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 550
    .end local v4    # "i":I
    :cond_20
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    goto :goto_1a

    .line 552
    :catch_0
    move-exception v4

    .line 555
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "dd MM yyyy hh:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;

    .line 557
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1a
    iget-object v4, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;

    check-cast v4, Ljava/text/DateFormat;

    return-object v4
.end method

.method public getFormatIndex()I
    .locals 1

    .line 226
    iget v0, p0, Ljxl/biff/FormatRecord;->indexCode:I

    return v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    .line 577
    iget-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexCode()I
    .locals 1

    .line 567
    iget v0, p0, Ljxl/biff/FormatRecord;->indexCode:I

    return v0
.end method

.method public final getNumberFormat()Ljava/text/NumberFormat;
    .locals 4

    .line 314
    const-string v0, ""

    iget-object v1, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;

    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/text/NumberFormat;

    if-eqz v2, :cond_0

    .line 316
    check-cast v1, Ljava/text/NumberFormat;

    return-object v1

    .line 321
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    .line 324
    .local v1, "fs":Ljava/lang/String;
    const-string v2, "E+"

    const-string v3, "E"

    invoke-virtual {p0, v1, v2, v3}, Ljxl/biff/FormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 325
    const-string v2, "_)"

    invoke-virtual {p0, v1, v2, v0}, Ljxl/biff/FormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 326
    const-string v2, "_"

    invoke-virtual {p0, v1, v2, v0}, Ljxl/biff/FormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 327
    const-string v2, "[Red]"

    invoke-virtual {p0, v1, v2, v0}, Ljxl/biff/FormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 328
    const-string v2, "\\"

    invoke-virtual {p0, v1, v2, v0}, Ljxl/biff/FormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .end local v1    # "fs":Ljava/lang/String;
    .local v0, "fs":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0    # "fs":Ljava/lang/String;
    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;

    .line 339
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v0, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;

    check-cast v0, Ljava/text/NumberFormat;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 596
    iget-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public initialize(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 248
    iput p1, p0, Ljxl/biff/FormatRecord;->indexCode:I

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/FormatRecord;->initialized:Z

    .line 250
    return-void
.end method

.method public isBuiltIn()Z
    .locals 1

    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public final isDate()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Ljxl/biff/FormatRecord;->date:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Ljxl/biff/FormatRecord;->initialized:Z

    return v0
.end method

.method public final isNumber()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Ljxl/biff/FormatRecord;->number:Z

    return v0
.end method

.method protected final replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "search"    # Ljava/lang/String;
    .param p3, "replace"    # Ljava/lang/String;

    .line 263
    move-object v0, p1

    .line 264
    .local v0, "fmtstr":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 265
    .local v1, "pos":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 267
    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 268
    .local v2, "tmp":Ljava/lang/StringBuffer;
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 272
    .end local v2    # "tmp":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 273
    :cond_0
    return-object v0
.end method

.method protected final setFormatString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 284
    iput-object p1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    .line 285
    return-void
.end method
