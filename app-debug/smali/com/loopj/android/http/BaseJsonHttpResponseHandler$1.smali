.class Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;
.super Ljava/lang/Object;
.source "BaseJsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;

.field final synthetic val$headers:[Lcz/msebera/android/httpclient/Header;

.field final synthetic val$responseString:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/loopj/android/http/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lcz/msebera/android/httpclient/Header;)V
    .locals 0
    .param p1, "this$0"    # Lcom/loopj/android/http/BaseJsonHttpResponseHandler;

    .line 76
    .local p0, "this":Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;, "Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;"
    iput-object p1, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;

    iput-object p2, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->val$responseString:Ljava/lang/String;

    iput p3, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->val$statusCode:I

    iput-object p4, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->val$headers:[Lcz/msebera/android/httpclient/Header;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 80
    .local p0, "this":Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;, "Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;"
    :try_start_0
    iget-object v0, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->val$responseString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->parseResponse(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "jsonResponse":Ljava/lang/Object;, "TJSON_TYPE;"
    iget-object v1, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;

    new-instance v2, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1$1;

    invoke-direct {v2, p0, v0}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1$1;-><init>(Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v0    # "jsonResponse":Ljava/lang/Object;, "TJSON_TYPE;"
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "BaseJsonHttpRH"

    const-string v3, "parseResponse thrown an problem"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    iget-object v1, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;

    new-instance v2, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1$2;

    invoke-direct {v2, p0, v0}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1$2;-><init>(Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 96
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
