.class public Lorg/apache/log4j/varia/LevelRangeFilter;
.super Lorg/apache/log4j/spi/Filter;
.source "LevelRangeFilter.java"


# instance fields
.field acceptOnMatch:Z

.field levelMax:Lorg/apache/log4j/Level;

.field levelMin:Lorg/apache/log4j/Level;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/apache/log4j/spi/Filter;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    .line 54
    return-void
.end method


# virtual methods
.method public decide(Lorg/apache/log4j/spi/LoggingEvent;)I
    .locals 3
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 70
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v2}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    return v1

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v0

    iget-object v2, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    invoke-virtual {v2}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 83
    return v1

    .line 87
    :cond_1
    iget-boolean v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    if-eqz v0, :cond_2

    .line 90
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getAcceptOnMatch()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    return v0
.end method

.method public getLevelMax()Lorg/apache/log4j/Level;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getLevelMin()Lorg/apache/log4j/Level;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public setAcceptOnMatch(Z)V
    .locals 0
    .param p1, "acceptOnMatch"    # Z

    .line 142
    iput-boolean p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    .line 143
    return-void
.end method

.method public setLevelMax(Lorg/apache/log4j/Level;)V
    .locals 0
    .param p1, "levelMax"    # Lorg/apache/log4j/Level;

    .line 126
    iput-object p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    .line 127
    return-void
.end method

.method public setLevelMin(Lorg/apache/log4j/Level;)V
    .locals 0
    .param p1, "levelMin"    # Lorg/apache/log4j/Level;

    .line 134
    iput-object p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    .line 135
    return-void
.end method
