.class public Lorg/apache/log4j/varia/ExternallyRolledFileAppender;
.super Lorg/apache/log4j/RollingFileAppender;
.source "ExternallyRolledFileAppender.java"


# static fields
.field public static final OK:Ljava/lang/String; = "OK"

.field public static final ROLL_OVER:Ljava/lang/String; = "RollOver"


# instance fields
.field hup:Lorg/apache/log4j/varia/HUP;

.field port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/apache/log4j/RollingFileAppender;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->port:I

    .line 68
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 2

    .line 92
    invoke-super {p0}, Lorg/apache/log4j/FileAppender;->activateOptions()V

    .line 93
    iget v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->port:I

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->hup:Lorg/apache/log4j/varia/HUP;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 97
    :cond_0
    new-instance v0, Lorg/apache/log4j/varia/HUP;

    iget v1, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->port:I

    invoke-direct {v0, p0, v1}, Lorg/apache/log4j/varia/HUP;-><init>(Lorg/apache/log4j/varia/ExternallyRolledFileAppender;I)V

    iput-object v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->hup:Lorg/apache/log4j/varia/HUP;

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 99
    iget-object v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->hup:Lorg/apache/log4j/varia/HUP;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 101
    :cond_1
    return-void
.end method

.method public getPort()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->port:I

    return v0
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 76
    iput p1, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->port:I

    .line 77
    return-void
.end method
