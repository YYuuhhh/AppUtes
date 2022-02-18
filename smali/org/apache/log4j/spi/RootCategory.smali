.class public final Lorg/apache/log4j/spi/RootCategory;
.super Lorg/apache/log4j/Logger;
.source "RootCategory.java"


# direct methods
.method public constructor <init>(Lorg/apache/log4j/Level;)V
    .locals 1
    .param p1, "level"    # Lorg/apache/log4j/Level;

    .line 35
    const-string v0, "root"

    invoke-direct {p0, v0}, Lorg/apache/log4j/Logger;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/log4j/spi/RootCategory;->setLevel(Lorg/apache/log4j/Level;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final getChainedLevel()Lorg/apache/log4j/Level;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public final setLevel(Lorg/apache/log4j/Level;)V
    .locals 2
    .param p1, "level"    # Lorg/apache/log4j/Level;

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "You have tried to set a null level to root."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    :cond_0
    iput-object p1, p0, Lorg/apache/log4j/Category;->level:Lorg/apache/log4j/Level;

    .line 65
    :goto_0
    return-void
.end method

.method public final setPriority(Lorg/apache/log4j/Level;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/log4j/Level;

    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/log4j/spi/RootCategory;->setLevel(Lorg/apache/log4j/Level;)V

    .line 71
    return-void
.end method
