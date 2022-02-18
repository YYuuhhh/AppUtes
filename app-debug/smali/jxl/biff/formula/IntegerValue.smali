.class Ljxl/biff/formula/IntegerValue;
.super Ljxl/biff/formula/NumberValue;
.source "IntegerValue.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private outOfRange:Z

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Ljxl/biff/formula/IntegerValue;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/IntegerValue;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljxl/biff/formula/NumberValue;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/formula/IntegerValue;->outOfRange:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljxl/biff/formula/NumberValue;-><init>()V

    .line 61
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Ljxl/biff/formula/IntegerValue;->value:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Ljxl/biff/formula/IntegerValue;->logger:Ljxl/common/Logger;

    invoke-virtual {v1, v0, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljxl/biff/formula/IntegerValue;->value:D

    .line 69
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    iget-wide v0, p0, Ljxl/biff/formula/IntegerValue;->value:D

    double-to-int v2, v0

    int-to-short v2, v2

    .line 70
    .local v2, "v":S
    int-to-double v3, v2

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Ljxl/biff/formula/IntegerValue;->outOfRange:Z

    .line 71
    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 3

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 95
    .local v0, "data":[B
    sget-object v1, Ljxl/biff/formula/Token;->INTEGER:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 97
    iget-wide v1, p0, Ljxl/biff/formula/IntegerValue;->value:D

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 99
    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 109
    iget-wide v0, p0, Ljxl/biff/formula/IntegerValue;->value:D

    return-wide v0
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 129
    return-void
.end method

.method isOutOfRange()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Ljxl/biff/formula/IntegerValue;->outOfRange:Z

    return v0
.end method

.method public read([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 82
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Ljxl/biff/formula/IntegerValue;->value:D

    .line 84
    const/4 v0, 0x2

    return v0
.end method
