.class public Lcom/loopj/android/http/BlackholeHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "BlackholeHttpResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 33
    return-void
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .line 23
    return-void
.end method

.method public onFinish()V
    .locals 0

    .line 38
    return-void
.end method

.method public onPostProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 0
    .param p1, "instance"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .param p2, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .line 43
    return-void
.end method

.method public onPreProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 0
    .param p1, "instance"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .param p2, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .line 48
    return-void
.end method

.method public onProgress(JJ)V
    .locals 0
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .line 28
    return-void
.end method

.method public onRetry(I)V
    .locals 0
    .param p1, "retryNo"    # I

    .line 53
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 58
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .line 18
    return-void
.end method

.method public onUserException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 63
    return-void
.end method
