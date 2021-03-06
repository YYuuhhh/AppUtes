.class public Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionKeepAliveStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)J
    .locals 8
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 56
    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;

    .line 58
    const-string v1, "Keep-Alive"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpResponse;->headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    .line 59
    .local v0, "it":Lcz/msebera/android/httpclient/HeaderElementIterator;
    :goto_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElementIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElementIterator;->nextElement()Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    .line 61
    .local v1, "he":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "param":Ljava/lang/String;
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "timeout"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    return-wide v4

    .line 66
    :catch_0
    move-exception v4

    .line 69
    .end local v1    # "he":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 70
    :cond_1
    const-wide/16 v1, -0x1

    return-wide v1
.end method
