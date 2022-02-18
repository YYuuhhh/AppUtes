.class Lcom/google/firebase/installations/remote/RequestLimiter;
.super Ljava/lang/Object;
.source "RequestLimiter.java"


# static fields
.field private static final MAXIMUM_BACKOFF_DURATION_FOR_CONFIGURATION_ERRORS:J

.field private static final MAXIMUM_BACKOFF_DURATION_FOR_SERVER_ERRORS:J


# instance fields
.field private attemptCount:I

.field private nextRequestTime:J

.field private final utils:Lcom/google/firebase/installations/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 29
    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/installations/remote/RequestLimiter;->MAXIMUM_BACKOFF_DURATION_FOR_CONFIGURATION_ERRORS:J

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 31
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/installations/remote/RequestLimiter;->MAXIMUM_BACKOFF_DURATION_FOR_SERVER_ERRORS:J

    .line 30
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/firebase/installations/Utils;->getInstance()Lcom/google/firebase/installations/Utils;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->utils:Lcom/google/firebase/installations/Utils;

    .line 48
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/installations/Utils;)V
    .locals 0
    .param p1, "utils"    # Lcom/google/firebase/installations/Utils;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->utils:Lcom/google/firebase/installations/Utils;

    .line 43
    return-void
.end method

.method private declared-synchronized getBackoffDuration(I)J
    .locals 4
    .param p1, "responseCode"    # I

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/installations/remote/RequestLimiter;->isRetryableError(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    sget-wide v0, Lcom/google/firebase/installations/remote/RequestLimiter;->MAXIMUM_BACKOFF_DURATION_FOR_CONFIGURATION_ERRORS:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 73
    .end local p0    # "this":Lcom/google/firebase/installations/remote/RequestLimiter;
    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    :try_start_1
    iget v2, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->attemptCount:I

    int-to-double v2, v2

    .line 75
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->utils:Lcom/google/firebase/installations/Utils;

    invoke-virtual {v2}, Lcom/google/firebase/installations/Utils;->getRandomDelayForSyncPrevention()J

    move-result-wide v2

    long-to-double v2, v2

    add-double/2addr v0, v2

    sget-wide v2, Lcom/google/firebase/installations/remote/RequestLimiter;->MAXIMUM_BACKOFF_DURATION_FOR_SERVER_ERRORS:J

    long-to-double v2, v2

    .line 74
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    double-to-long v0, v0

    .line 73
    monitor-exit p0

    return-wide v0

    .line 67
    .end local p1    # "responseCode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static isRetryableError(I)Z
    .locals 1
    .param p0, "responseCode"    # I

    .line 82
    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSuccessfulOrRequiresNewFidCreation(I)Z
    .locals 1
    .param p0, "responseCode"    # I

    .line 90
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x191

    if-eq p0, v0, :cond_2

    const/16 v0, 0x194

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private declared-synchronized resetBackoffStrategy()V
    .locals 1

    monitor-enter p0

    .line 63
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->attemptCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 62
    .end local p0    # "this":Lcom/google/firebase/installations/remote/RequestLimiter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized isRequestAllowed()Z
    .locals 4

    monitor-enter p0

    .line 99
    :try_start_0
    iget v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->attemptCount:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->utils:Lcom/google/firebase/installations/Utils;

    invoke-virtual {v0}, Lcom/google/firebase/installations/Utils;->currentTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->nextRequestTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .end local p0    # "this":Lcom/google/firebase/installations/remote/RequestLimiter;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNextRequestTime(I)V
    .locals 4
    .param p1, "responseCode"    # I

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/installations/remote/RequestLimiter;->isSuccessfulOrRequiresNewFidCreation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/RequestLimiter;->resetBackoffStrategy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 57
    .end local p0    # "this":Lcom/google/firebase/installations/remote/RequestLimiter;
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->attemptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->attemptCount:I

    .line 58
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/remote/RequestLimiter;->getBackoffDuration(I)J

    move-result-wide v0

    .line 59
    .local v0, "backOffTime":J
    iget-object v2, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->utils:Lcom/google/firebase/installations/Utils;

    invoke-virtual {v2}, Lcom/google/firebase/installations/Utils;->currentTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->nextRequestTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 52
    .end local v0    # "backOffTime":J
    .end local p1    # "responseCode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
