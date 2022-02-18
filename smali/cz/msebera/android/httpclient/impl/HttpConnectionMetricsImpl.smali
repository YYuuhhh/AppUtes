.class public Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpConnectionMetrics;


# static fields
.field public static final RECEIVED_BYTES_COUNT:Ljava/lang/String; = "http.received-bytes-count"

.field public static final REQUEST_COUNT:Ljava/lang/String; = "http.request-count"

.field public static final RESPONSE_COUNT:Ljava/lang/String; = "http.response-count"

.field public static final SENT_BYTES_COUNT:Ljava/lang/String; = "http.sent-bytes-count"


# instance fields
.field private final inTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

.field private metricsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final outTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

.field private requestCount:J

.field private responseCount:J


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/HttpTransportMetrics;Lcz/msebera/android/httpclient/io/HttpTransportMetrics;)V
    .locals 2
    .param p1, "inTransportMetric"    # Lcz/msebera/android/httpclient/io/HttpTransportMetrics;
    .param p2, "outTransportMetric"    # Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 51
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 62
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    .line 63
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    .line 64
    return-void
.end method


# virtual methods
.method public getMetric(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "metricName"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    :cond_0
    if-nez v0, :cond_6

    .line 103
    const-string v1, "http.request-count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->requestCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    .line 105
    :cond_1
    const-string v1, "http.response-count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->responseCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    .line 107
    :cond_2
    const-string v1, "http.received-bytes-count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 108
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    if-eqz v1, :cond_3

    .line 109
    invoke-interface {v1}, Lcz/msebera/android/httpclient/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_3
    nop

    .line 108
    :goto_0
    return-object v2

    .line 111
    :cond_4
    const-string v1, "http.sent-bytes-count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 112
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    if-eqz v1, :cond_5

    .line 113
    invoke-interface {v1}, Lcz/msebera/android/httpclient/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_5
    nop

    .line 112
    :goto_1
    return-object v2

    .line 117
    :cond_6
    :goto_2
    return-object v0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    .line 70
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getRequestCount()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->requestCount:J

    return-wide v0
.end method

.method public getResponseCount()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->responseCount:J

    return-wide v0
.end method

.method public getSentBytesCount()J
    .locals 2

    .line 75
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public incrementRequestCount()V
    .locals 4

    .line 84
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->requestCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 85
    return-void
.end method

.method public incrementResponseCount()V
    .locals 4

    .line 93
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->responseCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 94
    return-void
.end method

.method public reset()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/HttpTransportMetrics;->reset()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/HttpTransportMetrics;->reset()V

    .line 135
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 136
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    .line 138
    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "metricName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    .line 124
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method
