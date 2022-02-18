.class public Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;
.super Ljava/lang/Object;
.source "DefaultServiceUnavailableRetryStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;


# instance fields
.field private final maxRetries:I

.field private final retryInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;-><init>(II)V

    .line 70
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "maxRetries"    # I
    .param p2, "retryInterval"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "Max retries"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 63
    const-string v0, "Retry interval"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 64
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;->maxRetries:I

    .line 65
    int-to-long v0, p2

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;->retryInterval:J

    .line 66
    return-void
.end method


# virtual methods
.method public getRetryInterval()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;->retryInterval:J

    return-wide v0
.end method

.method public retryRequest(Lcz/msebera/android/httpclient/HttpResponse;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 2
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 74
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;->maxRetries:I

    if-gt p2, v0, :cond_0

    .line 75
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0
.end method
