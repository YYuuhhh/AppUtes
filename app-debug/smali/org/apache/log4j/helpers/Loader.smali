.class public Lorg/apache/log4j/helpers/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# static fields
.field static final TSTR:Ljava/lang/String; = "Caught Exception while in Loader.getResource. This may be innocuous."

.field static synthetic class$java$lang$Thread:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$helpers$Loader:Ljava/lang/Class;

.field private static ignoreTCL:Z

.field private static java1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/log4j/helpers/Loader;->java1:Z

    .line 38
    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/log4j/helpers/Loader;->ignoreTCL:Z

    .line 41
    const-string v2, "java.version"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "prop":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 44
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 45
    .local v4, "i":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 46
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-eq v5, v6, :cond_0

    .line 47
    sput-boolean v1, Lorg/apache/log4j/helpers/Loader;->java1:Z

    .line 50
    .end local v4    # "i":I
    :cond_0
    const-string v1, "log4j.ignoreTCL"

    invoke-static {v1, v3}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "ignoreTCLProp":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 52
    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/log4j/helpers/Loader;->ignoreTCL:Z

    .line 36
    .end local v1    # "ignoreTCLProp":Ljava/lang/String;
    .end local v2    # "prop":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 31
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

.method public static getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p0, "resource"    # Ljava/lang/String;

    .line 87
    const-string v0, "Trying to find ["

    const/4 v1, 0x0

    .line 88
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 91
    .local v2, "url":Ljava/net/URL;
    :try_start_0
    sget-boolean v3, Lorg/apache/log4j/helpers/Loader;->java1:Z

    if-nez v3, :cond_0

    .line 92
    invoke-static {}, Lorg/apache/log4j/helpers/Loader;->getTCL()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v1, v3

    .line 93
    if-eqz v1, :cond_0

    .line 94
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] using context classloader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    move-object v2, v3

    .line 97
    if-eqz v2, :cond_0

    .line 98
    return-object v2

    .line 105
    :cond_0
    sget-object v3, Lorg/apache/log4j/helpers/Loader;->class$org$apache$log4j$helpers$Loader:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "org.apache.log4j.helpers.Loader"

    invoke-static {v3}, Lorg/apache/log4j/helpers/Loader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/helpers/Loader;->class$org$apache$log4j$helpers$Loader:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v1, v3

    .line 106
    if-eqz v1, :cond_2

    .line 107
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " class loader."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 110
    if-eqz v2, :cond_2

    .line 111
    return-object v2

    .line 114
    :cond_2
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v3

    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "Caught Exception while in Loader.getResource. This may be innocuous."

    invoke-static {v4, v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "] using ClassLoader.getSystemResource()."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 124
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 64
    invoke-static {p0}, Lorg/apache/log4j/helpers/Loader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method private static getTCL()Ljava/lang/ClassLoader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/log4j/helpers/Loader;->class$java$lang$Thread:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.lang.Thread"

    invoke-static {v2}, Lorg/apache/log4j/helpers/Loader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/helpers/Loader;->class$java$lang$Thread:Ljava/lang/Class;

    :cond_0
    const-string v3, "getContextClassLoader"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 149
    nop

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    return-object v1

    .line 151
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NoSuchMethodException;
    return-object v1
.end method

.method public static isJava1()Z
    .locals 1

    .line 133
    sget-boolean v0, Lorg/apache/log4j/helpers/Loader;->java1:Z

    return v0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 169
    sget-boolean v0, Lorg/apache/log4j/helpers/Loader;->java1:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/log4j/helpers/Loader;->ignoreTCL:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/apache/log4j/helpers/Loader;->getTCL()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 170
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
