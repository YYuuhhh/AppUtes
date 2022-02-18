.class Ljxl/biff/drawing/BStoreContainer;
.super Ljxl/biff/drawing/EscherContainer;
.source "BStoreContainer.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private numBlips:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Ljxl/biff/drawing/BStoreContainer;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/BStoreContainer;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->BSTORE_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 1
    .param p1, "erd"    # Ljxl/biff/drawing/EscherRecordData;

    .line 47
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 48
    invoke-virtual {p0}, Ljxl/biff/drawing/BStoreContainer;->getInstance()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/BStoreContainer;->numBlips:I

    .line 49
    return-void
.end method


# virtual methods
.method public getDrawing(I)Ljxl/biff/drawing/BlipStoreEntry;
    .locals 2
    .param p1, "i"    # I

    .line 88
    invoke-virtual {p0}, Ljxl/biff/drawing/BStoreContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 89
    .local v0, "children":[Ljxl/biff/drawing/EscherRecord;
    aget-object v1, v0, p1

    check-cast v1, Ljxl/biff/drawing/BlipStoreEntry;

    .line 90
    .local v1, "bse":Ljxl/biff/drawing/BlipStoreEntry;
    return-object v1
.end method

.method public getNumBlips()I
    .locals 1

    .line 77
    iget v0, p0, Ljxl/biff/drawing/BStoreContainer;->numBlips:I

    return v0
.end method

.method setNumBlips(I)V
    .locals 0
    .param p1, "count"    # I

    .line 66
    iput p1, p0, Ljxl/biff/drawing/BStoreContainer;->numBlips:I

    .line 67
    invoke-virtual {p0, p1}, Ljxl/biff/drawing/BStoreContainer;->setInstance(I)V

    .line 68
    return-void
.end method
