.class public Lorg/apache/log4j/varia/NullAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "NullAppender.java"


# static fields
.field private static instance:Lorg/apache/log4j/varia/NullAppender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/log4j/varia/NullAppender;

    invoke-direct {v0}, Lorg/apache/log4j/varia/NullAppender;-><init>()V

    sput-object v0, Lorg/apache/log4j/varia/NullAppender;->instance:Lorg/apache/log4j/varia/NullAppender;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    .line 43
    return-void
.end method

.method protected append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 66
    return-void
.end method

.method public close()V
    .locals 0

    .line 54
    return-void
.end method

.method public doAppend(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 60
    return-void
.end method

.method public getInstance()Lorg/apache/log4j/varia/NullAppender;
    .locals 1

    .line 50
    sget-object v0, Lorg/apache/log4j/varia/NullAppender;->instance:Lorg/apache/log4j/varia/NullAppender;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method
