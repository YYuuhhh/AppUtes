.class Ljxl/write/biff/ArbitraryRecord;
.super Ljxl/biff/WritableRecordData;
.source "ArbitraryRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/write/biff/ArbitraryRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/ArbitraryRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "d"    # [B

    .line 50
    invoke-static {p1}, Ljxl/biff/Type;->createType(I)Ljxl/biff/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 52
    iput-object p2, p0, Ljxl/write/biff/ArbitraryRecord;->data:[B

    .line 53
    sget-object v0, Ljxl/write/biff/ArbitraryRecord;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArbitraryRecord of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 63
    iget-object v0, p0, Ljxl/write/biff/ArbitraryRecord;->data:[B

    return-object v0
.end method
