.class public Lorg/apache/log4j/lf5/util/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceAsStream(Ljava/lang/Object;Lorg/apache/log4j/lf5/util/Resource;)Ljava/io/InputStream;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "resource"    # Lorg/apache/log4j/lf5/util/Resource;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 74
    .local v0, "loader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 76
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/util/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/util/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 82
    :goto_0
    return-object v1
.end method

.method public static getResourceAsURL(Ljava/lang/Object;Lorg/apache/log4j/lf5/util/Resource;)Ljava/net/URL;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "resource"    # Lorg/apache/log4j/lf5/util/Resource;

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 103
    .local v0, "loader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 105
    .local v1, "url":Ljava/net/URL;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/util/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/util/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 111
    :goto_0
    return-object v1
.end method
