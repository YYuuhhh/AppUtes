.class public Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;
.super Lcz/msebera/android/httpclient/message/BasicHttpRequest;
.source "BasicHttpEntityEnclosingRequest.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;


# instance fields
.field private entity:Lcz/msebera/android/httpclient/HttpEntity;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/RequestLine;)V
    .locals 0
    .param p1, "requestline"    # Lcz/msebera/android/httpclient/RequestLine;

    .line 57
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Lcz/msebera/android/httpclient/RequestLine;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ver"    # Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 54
    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .locals 3

    .line 72
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 73
    .local v0, "expect":Lcz/msebera/android/httpclient/Header;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "100-continue"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getEntity()Lcz/msebera/android/httpclient/HttpEntity;
    .locals 1

    .line 62
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lcz/msebera/android/httpclient/HttpEntity;

    .line 67
    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    .line 68
    return-void
.end method
