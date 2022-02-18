.class Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;
.super Ljava/lang/Object;
.source "LoggingReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/chainsaw/LoggingReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Slurper"
.end annotation


# instance fields
.field private final mClient:Ljava/net/Socket;

.field private final synthetic this$0:Lorg/apache/log4j/chainsaw/LoggingReceiver;


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/LoggingReceiver;Ljava/net/Socket;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/log4j/chainsaw/LoggingReceiver;
    .param p2, "aClient"    # Ljava/net/Socket;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->this$0:Lorg/apache/log4j/chainsaw/LoggingReceiver;

    .line 53
    iput-object p2, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->mClient:Ljava/net/Socket;

    .line 54
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 58
    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "Starting to get data"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 60
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    iget-object v2, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->mClient:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 62
    .local v1, "ois":Ljava/io/ObjectInputStream;
    move-object v2, v0

    .line 63
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/spi/LoggingEvent;

    move-object v2, v3

    .line 64
    .local v2, "event":Lorg/apache/log4j/spi/LoggingEvent;
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->this$0:Lorg/apache/log4j/chainsaw/LoggingReceiver;

    invoke-static {v3}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$100(Lorg/apache/log4j/chainsaw/LoggingReceiver;)Lorg/apache/log4j/chainsaw/MyTableModel;

    move-result-object v3

    new-instance v4, Lorg/apache/log4j/chainsaw/EventDetails;

    invoke-direct {v4, v2}, Lorg/apache/log4j/chainsaw/EventDetails;-><init>(Lorg/apache/log4j/spi/LoggingEvent;)V

    invoke-virtual {v3, v4}, Lorg/apache/log4j/chainsaw/MyTableModel;->addEvent(Lorg/apache/log4j/chainsaw/EventDetails;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .end local v2    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    goto :goto_0

    .line 73
    :catch_0
    move-exception v3

    .local v2, "e":Ljava/net/SocketException;
    goto :goto_1

    .line 71
    .end local v2    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .local v1, "e":Ljava/io/EOFException;
    .restart local v2    # "e":Ljava/net/SocketException;
    goto :goto_2

    .line 69
    .end local v1    # "e":Ljava/io/EOFException;
    .end local v2    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v0

    .restart local v1    # "e":Ljava/io/EOFException;
    goto :goto_3

    .line 73
    .end local v1    # "e":Ljava/io/EOFException;
    :catch_3
    move-exception v3

    move-object v2, v0

    .restart local v2    # "e":Ljava/net/SocketException;
    move-object v1, v0

    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "e":Ljava/io/EOFException;
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v4

    const-string v5, "Got ClassNotFoundException, closing connection"

    invoke-virtual {v4, v5, v3}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/io/EOFException;
    .end local v2    # "e":Ljava/net/SocketException;
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v1

    move-object v2, v0

    .restart local v2    # "e":Ljava/net/SocketException;
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "e":Ljava/io/EOFException;
    :goto_2
    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v3

    const-string v4, "Got IOException, closing connection"

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 72
    goto :goto_4

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/io/EOFException;
    .end local v2    # "e":Ljava/net/SocketException;
    :catch_5
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .local v0, "e":Ljava/net/SocketException;
    .restart local v1    # "e":Ljava/io/EOFException;
    :goto_3
    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v2

    const-string v3, "Caught SocketException, closing connection"

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 70
    goto :goto_4

    .line 67
    .end local v0    # "e":Ljava/net/SocketException;
    .end local v1    # "e":Ljava/io/EOFException;
    :catch_6
    move-exception v0

    .local v0, "e":Ljava/io/EOFException;
    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v1

    const-string v2, "Reached EOF, closing connection"

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 68
    nop

    .line 77
    .end local v0    # "e":Ljava/io/EOFException;
    :goto_4
    :try_start_2
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->mClient:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 78
    goto :goto_5

    .line 79
    :catch_7
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v1

    const-string v2, "Error closing connection"

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    return-void
.end method
