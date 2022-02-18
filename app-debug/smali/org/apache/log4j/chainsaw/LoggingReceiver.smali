.class Lorg/apache/log4j/chainsaw/LoggingReceiver;
.super Ljava/lang/Thread;
.source "LoggingReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;

.field static synthetic class$org$apache$log4j$chainsaw$LoggingReceiver:Ljava/lang/Class;


# instance fields
.field private mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

.field private mSvrSock:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->class$org$apache$log4j$chainsaw$LoggingReceiver:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.LoggingReceiver"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->class$org$apache$log4j$chainsaw$LoggingReceiver:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->LOG:Lorg/apache/log4j/Logger;

    return-void
.end method

.method constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;I)V
    .locals 1
    .param p1, "aModel"    # Lorg/apache/log4j/chainsaw/MyTableModel;
    .param p2, "aPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 99
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 100
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->mSvrSock:Ljava/net/ServerSocket;

    .line 101
    return-void
.end method

.method static synthetic access$000()Lorg/apache/log4j/Logger;
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->LOG:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/log4j/chainsaw/LoggingReceiver;)Lorg/apache/log4j/chainsaw/MyTableModel;
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/LoggingReceiver;

    .line 33
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    return-object v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 33
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 105
    sget-object v0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->LOG:Lorg/apache/log4j/Logger;

    const-string v1, "Thread started"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 107
    :goto_0
    nop

    .line 108
    :try_start_0
    sget-object v0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->LOG:Lorg/apache/log4j/Logger;

    const-string v1, "Waiting for a connection"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 109
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver;->mSvrSock:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 110
    .local v1, "client":Ljava/net/Socket;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Got a connection from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 112
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;

    invoke-direct {v2, p0, v1}, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;-><init>(Lorg/apache/log4j/chainsaw/LoggingReceiver;Ljava/net/Socket;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    .local v0, "t":Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "t":Ljava/lang/Thread;
    .end local v1    # "client":Ljava/net/Socket;
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/log4j/chainsaw/LoggingReceiver;->LOG:Lorg/apache/log4j/Logger;

    const-string v2, "Error in accepting connections, stopping."

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    return-void
.end method
