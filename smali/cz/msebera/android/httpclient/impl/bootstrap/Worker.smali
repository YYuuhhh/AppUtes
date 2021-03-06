.class Lcz/msebera/android/httpclient/impl/bootstrap/Worker;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final conn:Lcz/msebera/android/httpclient/HttpServerConnection;

.field private final exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

.field private final httpservice:Lcz/msebera/android/httpclient/protocol/HttpService;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpServerConnection;Lcz/msebera/android/httpclient/ExceptionLogger;)V
    .locals 0
    .param p1, "httpservice"    # Lcz/msebera/android/httpclient/protocol/HttpService;
    .param p2, "conn"    # Lcz/msebera/android/httpclient/HttpServerConnection;
    .param p3, "exceptionLogger"    # Lcz/msebera/android/httpclient/ExceptionLogger;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->httpservice:Lcz/msebera/android/httpclient/protocol/HttpService;

    .line 52
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    .line 53
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    .line 54
    return-void
.end method


# virtual methods
.method public getConnection()Lcz/msebera/android/httpclient/HttpServerConnection;
    .locals 1

    .line 57
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 63
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    .line 64
    .local v0, "localContext":Lcz/msebera/android/httpclient/protocol/BasicHttpContext;
    invoke-static {v0}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/protocol/HttpCoreContext;

    move-result-object v1

    .line 65
    .local v1, "context":Lcz/msebera/android/httpclient/protocol/HttpCoreContext;
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpServerConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->httpservice:Lcz/msebera/android/httpclient/protocol/HttpService;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/protocol/HttpService;->handleRequest(Lcz/msebera/android/httpclient/HttpServerConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 67
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->clear()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpServerConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v0    # "localContext":Lcz/msebera/android/httpclient/protocol/BasicHttpContext;
    .end local v1    # "context":Lcz/msebera/android/httpclient/protocol/HttpCoreContext;
    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpServerConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .end local v0    # "ex":Ljava/lang/Exception;
    :try_start_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpServerConnection;->shutdown()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 77
    :goto_1
    goto :goto_2

    .line 75
    :catch_1
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V

    .line 78
    .end local v0    # "ex":Ljava/io/IOException;
    nop

    .line 79
    :goto_2
    return-void

    .line 74
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpServerConnection;->shutdown()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 77
    goto :goto_4

    .line 75
    :catch_2
    move-exception v1

    .line 76
    .local v1, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v2, v1}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V

    .line 78
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_4
    throw v0
.end method
