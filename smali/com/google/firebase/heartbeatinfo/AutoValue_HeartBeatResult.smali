.class final Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;
.super Lcom/google/firebase/heartbeatinfo/HeartBeatResult;
.source "AutoValue_HeartBeatResult.java"


# instance fields
.field private final heartBeat:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

.field private final millis:J

.field private final sdkName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;)V
    .locals 2
    .param p1, "sdkName"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "heartBeat"    # Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;-><init>()V

    .line 18
    if-eqz p1, :cond_1

    .line 21
    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->sdkName:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->millis:J

    .line 23
    if-eqz p4, :cond_0

    .line 26
    iput-object p4, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->heartBeat:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 27
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null heartBeat"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null sdkName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 56
    return v0

    .line 58
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 59
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;

    .line 60
    .local v1, "that":Lcom/google/firebase/heartbeatinfo/HeartBeatResult;
    iget-object v3, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->sdkName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;->getSdkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->millis:J

    .line 61
    invoke-virtual {v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;->getMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->heartBeat:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 62
    invoke-virtual {v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;->getHeartBeat()Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 60
    :goto_0
    return v0

    .line 64
    .end local v1    # "that":Lcom/google/firebase/heartbeatinfo/HeartBeatResult;
    :cond_2
    return v2
.end method

.method public getHeartBeat()Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->heartBeat:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    return-object v0
.end method

.method public getMillis()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->millis:J

    return-wide v0
.end method

.method public getSdkName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->sdkName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 69
    const/4 v0, 0x1

    .line 70
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 71
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->sdkName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 72
    mul-int/2addr v0, v1

    .line 73
    iget-wide v2, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->millis:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 74
    mul-int/2addr v0, v1

    .line 75
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->heartBeat:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    invoke-virtual {v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 76
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeartBeatResult{sdkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->sdkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", millis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->millis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heartBeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;->heartBeat:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
