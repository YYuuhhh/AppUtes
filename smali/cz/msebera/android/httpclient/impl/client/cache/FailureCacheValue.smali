.class public Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
.super Ljava/lang/Object;
.source "FailureCacheValue.java"


# instance fields
.field private final creationTimeInNanos:J

.field private final errorCount:I

.field private final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "errorCount"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->creationTimeInNanos:J

    .line 46
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->key:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->errorCount:I

    .line 48
    return-void
.end method


# virtual methods
.method public getCreationTimeInNanos()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->creationTimeInNanos:J

    return-wide v0
.end method

.method public getErrorCount()I
    .locals 1

    .line 60
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->errorCount:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[entry creationTimeInNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->creationTimeInNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; errorCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->errorCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
