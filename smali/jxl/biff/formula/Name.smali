.class Ljxl/biff/formula/Name;
.super Ljxl/biff/formula/Operand;
.source "Name.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 1

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 56
    .local v0, "data":[B
    return-object v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 67
    const-string v0, "[Name record not implemented]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Ljxl/biff/formula/Name;->setInvalid()V

    .line 78
    return-void
.end method

.method public read([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 44
    const/4 v0, 0x6

    return v0
.end method
