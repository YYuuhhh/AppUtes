.class public final Lcom/google/firebase/database/core/persistence/TrackedQuery;
.super Ljava/lang/Object;
.source "TrackedQuery.java"


# instance fields
.field public final active:Z

.field public final complete:Z

.field public final id:J

.field public final lastUse:J

.field public final querySpec:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method public constructor <init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "querySpec"    # Lcom/google/firebase/database/core/view/QuerySpec;
    .param p4, "lastUse"    # J
    .param p6, "complete"    # Z
    .param p7, "active"    # Z

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    .line 29
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t create TrackedQuery for a non-default query that loads all data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 34
    iput-wide p4, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    .line 35
    iput-boolean p6, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    .line 36
    iput-boolean p7, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 53
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 54
    return v0

    .line 56
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 61
    .local v2, "query":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    iget-wide v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-wide v5, v2, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v4, v2, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 62
    invoke-virtual {v3, v4}, Lcom/google/firebase/database/core/view/QuerySpec;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    iget-wide v5, v2, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    iget-boolean v4, v2, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    iget-boolean v4, v2, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 61
    :goto_0
    return v0

    .line 57
    .end local v2    # "query":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 70
    iget-wide v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 71
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 72
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 73
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 74
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 75
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public setActiveState(Z)Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .locals 9
    .param p1, "isActive"    # Z

    .line 48
    new-instance v8, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-wide v4, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    iget-boolean v6, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    return-object v8
.end method

.method public setComplete()Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .locals 9

    .line 44
    new-instance v8, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-wide v4, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    iget-boolean v7, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackedQuery{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", querySpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLastUse(J)Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .locals 9
    .param p1, "lastUse"    # J

    .line 40
    new-instance v8, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-boolean v6, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    iget-boolean v7, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    move-object v0, v8

    move-wide v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    return-object v8
.end method
