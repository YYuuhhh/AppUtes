.class public Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;
.super Ljava/lang/Object;
.source "HeapResource.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/cache/Resource;


# static fields
.field private static final serialVersionUID:J = -0x1cd8ab99ecab0f22L


# instance fields
.field private final b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "b"    # [B

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;->b:[B

    .line 51
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 69
    return-void
.end method

.method getByteArray()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;->b:[B

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 59
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public length()J
    .locals 2

    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
