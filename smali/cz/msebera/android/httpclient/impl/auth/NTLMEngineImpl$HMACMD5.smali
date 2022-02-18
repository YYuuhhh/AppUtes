.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HMACMD5"
.end annotation


# instance fields
.field protected final ipad:[B

.field protected final md5:Ljava/security/MessageDigest;

.field protected final opad:[B


# direct methods
.method constructor <init>([B)V
    .locals 8
    .param p1, "input"    # [B

    .line 2028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2029
    move-object v0, p1

    .line 2030
    .local v0, "key":[B
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getMD5()Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    .line 2033
    const/16 v2, 0x40

    new-array v3, v2, [B

    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    .line 2034
    new-array v3, v2, [B

    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    .line 2036
    array-length v3, v0

    .line 2037
    .local v3, "keyLength":I
    if-le v3, v2, :cond_0

    .line 2039
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 2040
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 2041
    array-length v3, v0

    .line 2043
    :cond_0
    const/4 v1, 0x0

    .line 2044
    .local v1, "i":I
    :goto_0
    const/16 v4, 0x5c

    const/16 v5, 0x36

    if-ge v1, v3, :cond_1

    .line 2045
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    aget-byte v7, v0, v1

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v6, v1

    .line 2046
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    aget-byte v6, v0, v1

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    .line 2047
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2049
    :cond_1
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2050
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    aput-byte v5, v6, v1

    .line 2051
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    aput-byte v4, v6, v1

    .line 2052
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2056
    :cond_2
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 2057
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 2059
    return-void
.end method


# virtual methods
.method getOutput()[B
    .locals 3

    .line 2063
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 2064
    .local v0, "digest":[B
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 2065
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method update([B)V
    .locals 1
    .param p1, "input"    # [B

    .line 2070
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 2071
    return-void
.end method

.method update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 2075
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 2076
    return-void
.end method
