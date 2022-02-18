.class public Ljxl/write/biff/NumberFormatRecord;
.super Ljxl/biff/FormatRecord;
.source "NumberFormatRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;
    }
.end annotation


# static fields
.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Ljxl/write/biff/NumberFormatRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/NumberFormatRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljxl/biff/FormatRecord;-><init>()V

    .line 51
    move-object v0, p1

    .line 53
    .local v0, "fs":Ljava/lang/String;
    const-string v1, "E0"

    const-string v2, "E+0"

    invoke-virtual {p0, v0, v1, v2}, Ljxl/write/biff/NumberFormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Ljxl/write/biff/NumberFormatRecord;->trimInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Ljxl/write/biff/NumberFormatRecord;->setFormatString(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "dummy"    # Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    .line 68
    invoke-direct {p0}, Ljxl/biff/FormatRecord;-><init>()V

    .line 71
    move-object v0, p1

    .line 73
    .local v0, "fs":Ljava/lang/String;
    const-string v1, "E0"

    const-string v2, "E+0"

    invoke-virtual {p0, v0, v1, v2}, Ljxl/write/biff/NumberFormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Ljxl/write/biff/NumberFormatRecord;->setFormatString(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private trimInvalidChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "fs"    # Ljava/lang/String;

    .line 87
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 88
    .local v1, "firstHash":I
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 89
    .local v3, "firstZero":I
    const/4 v4, 0x0

    .line 91
    .local v4, "firstValidChar":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    if-ne v3, v5, :cond_0

    .line 94
    const-string v0, "#.###"

    return-object v0

    .line 97
    :cond_0
    const/4 v6, 0x0

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    const/4 v7, 0x1

    if-eq v1, v7, :cond_3

    if-eq v3, v7, :cond_3

    .line 101
    const v7, 0x7fffffff

    if-ne v1, v5, :cond_1

    move v1, v7

    :cond_1
    move v8, v1

    .line 102
    if-ne v3, v5, :cond_2

    move v3, v7

    :cond_2
    move v5, v3

    .line 103
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 105
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v5, "tmp":Ljava/lang/StringBuffer;
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    .end local v5    # "tmp":Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 113
    .local v0, "lastHash":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 115
    .local v2, "lastZero":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_4

    goto :goto_1

    .line 122
    :cond_4
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 125
    .local v5, "lastValidChar":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v5, 0x1

    if-le v7, v8, :cond_6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x29

    if-eq v7, v8, :cond_5

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x25

    if-ne v7, v8, :cond_6

    .line 129
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 132
    :cond_6
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 118
    .end local v5    # "lastValidChar":I
    :cond_7
    :goto_1
    return-object p1
.end method
