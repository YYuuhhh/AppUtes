.class Ljxl/biff/formula/BooleanValue;
.super Ljxl/biff/formula/Operand;
.source "BooleanValue.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ljxl/biff/formula/BooleanValue;->value:Z

    .line 48
    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 4

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 72
    .local v0, "data":[B
    sget-object v1, Ljxl/biff/formula/Token;->BOOL:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 73
    iget-boolean v1, p0, Ljxl/biff/formula/BooleanValue;->value:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    int-to-byte v1, v2

    aput-byte v1, v0, v3

    .line 75
    return-object v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 86
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Ljxl/biff/formula/BooleanValue;->value:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 96
    return-void
.end method

.method public read([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 60
    aget-byte v0, p1, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ljxl/biff/formula/BooleanValue;->value:Z

    .line 61
    return v1
.end method
