.class public final Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;
.super Ljava/lang/Object;
.source "PublicSuffixMatcherLoader.java"


# static fields
.field private static volatile DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .locals 5

    .line 82
    const-class v0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;

    sget-object v1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    if-nez v1, :cond_3

    .line 83
    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    if-nez v1, :cond_2

    .line 85
    const-string v1, "/mozilla/public-suffix-list.txt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_1

    .line 89
    :try_start_1
    invoke-static {v1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->load(Ljava/net/URL;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    move-result-object v2

    sput-object v2, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :cond_0
    :goto_0
    goto :goto_1

    .line 90
    :catch_0
    move-exception v2

    .line 92
    .local v2, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-direct {v3, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    .line 93
    .local v3, "log":Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    const-string v4, "Failure loading public suffix list from default resource"

    invoke-virtual {v3, v4, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "log":Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;
    :cond_1
    new-instance v2, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    const-string v3, "com"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    sput-object v2, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 101
    .end local v1    # "url":Ljava/net/URL;
    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 103
    :cond_3
    :goto_2
    sget-object v0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    return-object v0
.end method

.method public static load(Ljava/io/File;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    const-string v0, "File"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 73
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->load(Ljava/io/InputStream;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 73
    return-object v1

    .line 75
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 76
    throw v1
.end method

.method private static load(Ljava/io/InputStream;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;-><init>()V

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;->parseByType(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;>;"
    new-instance v1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static load(Ljava/net/URL;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const-string v0, "URL"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 63
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->load(Ljava/io/InputStream;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 63
    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 66
    throw v1
.end method
