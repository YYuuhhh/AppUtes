.class abstract Ljxl/biff/formula/ParseItem;
.super Ljava/lang/Object;
.source "ParseItem.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private alternateCode:Z

.field private parent:Ljxl/biff/formula/ParseItem;

.field private parseContext:Ljxl/biff/formula/ParseContext;

.field private valid:Z

.field private volatileFunction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Ljxl/biff/formula/ParseItem;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/ParseItem;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->volatileFunction:Z

    .line 65
    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->alternateCode:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->valid:Z

    .line 67
    sget-object v0, Ljxl/biff/formula/ParseContext;->DEFAULT:Ljxl/biff/formula/ParseContext;

    iput-object v0, p0, Ljxl/biff/formula/ParseItem;->parseContext:Ljxl/biff/formula/ParseContext;

    .line 68
    return-void
.end method


# virtual methods
.method abstract adjustRelativeCellReferences(II)V
.end method

.method abstract columnInserted(IIZ)V
.end method

.method abstract columnRemoved(IIZ)V
.end method

.method abstract getBytes()[B
.end method

.method protected final getParseContext()Ljxl/biff/formula/ParseContext;
    .locals 1

    .line 236
    iget-object v0, p0, Ljxl/biff/formula/ParseItem;->parseContext:Ljxl/biff/formula/ParseContext;

    return-object v0
.end method

.method abstract getString(Ljava/lang/StringBuffer;)V
.end method

.method abstract handleImportedCellReferences()V
.end method

.method final isValid()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Ljxl/biff/formula/ParseItem;->valid:Z

    return v0
.end method

.method final isVolatile()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Ljxl/biff/formula/ParseItem;->volatileFunction:Z

    return v0
.end method

.method abstract rowInserted(IIZ)V
.end method

.method abstract rowRemoved(IIZ)V
.end method

.method protected setAlternateCode()V
    .locals 1

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->alternateCode:Z

    .line 206
    return-void
.end method

.method protected final setInvalid()V
    .locals 1

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->valid:Z

    .line 96
    iget-object v0, p0, Ljxl/biff/formula/ParseItem;->parent:Ljxl/biff/formula/ParseItem;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->setInvalid()V

    .line 100
    :cond_0
    return-void
.end method

.method protected setParent(Ljxl/biff/formula/ParseItem;)V
    .locals 0
    .param p1, "p"    # Ljxl/biff/formula/ParseItem;

    .line 75
    iput-object p1, p0, Ljxl/biff/formula/ParseItem;->parent:Ljxl/biff/formula/ParseItem;

    .line 76
    return-void
.end method

.method protected setParseContext(Ljxl/biff/formula/ParseContext;)V
    .locals 0
    .param p1, "pc"    # Ljxl/biff/formula/ParseContext;

    .line 226
    iput-object p1, p0, Ljxl/biff/formula/ParseItem;->parseContext:Ljxl/biff/formula/ParseContext;

    .line 227
    return-void
.end method

.method protected setVolatile()V
    .locals 1

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->volatileFunction:Z

    .line 84
    iget-object v0, p0, Ljxl/biff/formula/ParseItem;->parent:Ljxl/biff/formula/ParseItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Ljxl/biff/formula/ParseItem;->parent:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->setVolatile()V

    .line 88
    :cond_0
    return-void
.end method

.method protected final useAlternateCode()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Ljxl/biff/formula/ParseItem;->alternateCode:Z

    return v0
.end method
