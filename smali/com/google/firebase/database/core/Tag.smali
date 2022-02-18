.class public final Lcom/google/firebase/database/core/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# instance fields
.field private final tagNumber:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "tagNumber"    # J

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/google/firebase/database/core/Tag;->tagNumber:J

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 35
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 36
    return v0

    .line 38
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/database/core/Tag;

    .line 44
    .local v2, "tag":Lcom/google/firebase/database/core/Tag;
    iget-wide v3, p0, Lcom/google/firebase/database/core/Tag;->tagNumber:J

    iget-wide v5, v2, Lcom/google/firebase/database/core/Tag;->tagNumber:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 45
    return v1

    .line 48
    :cond_2
    return v0

    .line 39
    .end local v2    # "tag":Lcom/google/firebase/database/core/Tag;
    :cond_3
    :goto_0
    return v1
.end method

.method public getTagNumber()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/google/firebase/database/core/Tag;->tagNumber:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 53
    iget-wide v0, p0, Lcom/google/firebase/database/core/Tag;->tagNumber:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag{tagNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/database/core/Tag;->tagNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
