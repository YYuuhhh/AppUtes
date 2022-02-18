.class public Lorg/apache/log4j/helpers/AppenderAttachableImpl;
.super Ljava/lang/Object;
.source "AppenderAttachableImpl.java"

# interfaces
.implements Lorg/apache/log4j/spi/AppenderAttachable;


# instance fields
.field protected appenderList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAppender(Lorg/apache/log4j/Appender;)V
    .locals 2
    .param p1, "newAppender"    # Lorg/apache/log4j/Appender;

    .line 44
    if-nez p1, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    .line 50
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 52
    :cond_2
    return-void
.end method

.method public appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I
    .locals 3
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 58
    const/4 v0, 0x0

    .line 61
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 63
    .end local v0    # "size":I
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "appender":Lorg/apache/log4j/Appender;
    :goto_0
    if-lt v0, v1, :cond_0

    move v0, v1

    goto :goto_1

    .line 64
    .end local v2    # "appender":Lorg/apache/log4j/Appender;
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/Appender;

    .line 65
    .restart local v2    # "appender":Lorg/apache/log4j/Appender;
    invoke-interface {v2, p1}, Lorg/apache/log4j/Appender;->doAppend(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "size":I
    .local v0, "size":I
    :cond_1
    :goto_1
    return v0
.end method

.method public getAllAppenders()Ljava/util/Enumeration;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 100
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v3, v1

    .local v3, "appender":Lorg/apache/log4j/Appender;
    :goto_0
    if-lt v2, v0, :cond_1

    .line 105
    return-object v1

    .line 101
    .end local v3    # "appender":Lorg/apache/log4j/Appender;
    :cond_1
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/Appender;

    .line 102
    .restart local v3    # "appender":Lorg/apache/log4j/Appender;
    invoke-interface {v3}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    return-object v3

    .line 100
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "size":I
    .end local v2    # "i":I
    .end local v3    # "appender":Lorg/apache/log4j/Appender;
    :cond_3
    :goto_1
    return-object v1
.end method

.method public isAttached(Lorg/apache/log4j/Appender;)Z
    .locals 4
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .line 116
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 121
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "a":Lorg/apache/log4j/Appender;
    :goto_0
    if-lt v2, v0, :cond_1

    .line 126
    return v1

    .line 122
    .end local v3    # "a":Lorg/apache/log4j/Appender;
    :cond_1
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/Appender;

    .line 123
    .restart local v3    # "a":Lorg/apache/log4j/Appender;
    if-ne v3, p1, :cond_2

    .line 124
    const/4 v1, 0x1

    return v1

    .line 121
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "size":I
    .end local v2    # "i":I
    .end local v3    # "a":Lorg/apache/log4j/Appender;
    :cond_3
    :goto_1
    return v1
.end method

.method public removeAllAppenders()V
    .locals 3

    .line 136
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 138
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 142
    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 143
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    goto :goto_1

    .line 139
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/Appender;

    .line 140
    .local v2, "a":Lorg/apache/log4j/Appender;
    invoke-interface {v2}, Lorg/apache/log4j/Appender;->close()V

    .line 138
    .end local v2    # "a":Lorg/apache/log4j/Appender;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "len":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public removeAppender(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 165
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-nez v0, :cond_0

    goto :goto_2

    .line 166
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 167
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    .line 168
    :cond_1
    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/Appender;

    invoke-interface {v2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 170
    nop

    .line 173
    .end local v0    # "size":I
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 167
    .restart local v0    # "size":I
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method public removeAppender(Lorg/apache/log4j/Appender;)V
    .locals 1
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .line 153
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 156
    return-void

    .line 154
    :cond_1
    :goto_0
    return-void
.end method
