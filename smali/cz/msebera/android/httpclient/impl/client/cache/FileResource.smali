.class public Lcz/msebera/android/httpclient/impl/client/cache/FileResource;
.super Ljava/lang/Object;
.source "FileResource.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/cache/Resource;


# static fields
.field private static final serialVersionUID:J = 0x3958ae6717f23345L


# instance fields
.field private volatile disposed:Z

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->file:Ljava/io/File;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->disposed:Z

    .line 56
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 75
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->disposed:Z

    .line 78
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 73
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/cache/FileResource;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFile()Ljava/io/File;
    .locals 1

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 59
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/cache/FileResource;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/cache/FileResource;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized length()J
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 69
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/cache/FileResource;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
