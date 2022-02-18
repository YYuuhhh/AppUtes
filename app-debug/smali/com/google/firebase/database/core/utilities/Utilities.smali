.class public Lcom/google/firebase/database/core/utilities/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final HEX_CHARACTERS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/utilities/Utilities;->HEX_CHARACTERS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 210
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    return-object p0

    .line 213
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static compareInts(II)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "j"    # I

    .line 190
    if-ge p0, p1, :cond_0

    .line 191
    const/4 v0, -0x1

    return v0

    .line 192
    :cond_0
    if-ne p0, p1, :cond_1

    .line 193
    const/4 v0, 0x0

    return v0

    .line 195
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static compareLongs(JJ)I
    .locals 1
    .param p0, "i"    # J
    .param p2, "j"    # J

    .line 200
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 201
    const/4 v0, -0x1

    return v0

    .line 202
    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    .line 203
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static doubleToHashString(D)Ljava/lang/String;
    .locals 9
    .param p0, "value"    # D

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 140
    .local v1, "bits":J
    const/4 v3, 0x7

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 141
    mul-int/lit8 v4, v3, 0x8

    ushr-long v4, v1, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    .line 142
    .local v4, "byteValue":I
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 143
    .local v5, "high":I
    and-int/lit8 v6, v4, 0xf

    .line 144
    .local v6, "low":I
    sget-object v7, Lcom/google/firebase/database/core/utilities/Utilities;->HEX_CHARACTERS:[C

    aget-char v8, v7, v5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    aget-char v7, v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .end local v4    # "byteValue":I
    .end local v5    # "high":I
    .end local v6    # "low":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 147
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "left"    # Ljava/lang/Object;
    .param p1, "right"    # Ljava/lang/Object;

    .line 268
    if-ne p0, p1, :cond_0

    .line 269
    const/4 v0, 0x1

    return v0

    .line 271
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 272
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static extractPathString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "originalUrl"    # Ljava/lang/String;

    .line 93
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, "schemeOffset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 98
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "urlWithoutScheme":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 100
    .local v3, "pathOffset":I
    if-eq v3, v1, :cond_1

    .line 101
    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 102
    .local v4, "queryOffset":I
    if-eq v4, v1, :cond_0

    .line 103
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 105
    :cond_0
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 108
    .end local v4    # "queryOffset":I
    :cond_1
    const-string v1, ""

    return-object v1

    .line 95
    .end local v2    # "urlWithoutScheme":Ljava/lang/String;
    .end local v3    # "pathOffset":I
    :cond_2
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    const-string v2, "Firebase Database URL is missing URL scheme"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 218
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 219
    return-object v0

    .line 221
    :cond_0
    const-class v1, Ljava/util/Map;

    invoke-static {p0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 222
    .local v1, "map":Ljava/util/Map;
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 223
    .local v2, "result":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 224
    invoke-static {v2, p2}, Lcom/google/firebase/database/core/utilities/Utilities;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 226
    :cond_1
    return-object v0
.end method

.method public static hardAssert(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .line 231
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 232
    return-void
.end method

.method public static hardAssert(ZLjava/lang/String;)V
    .locals 2
    .param p0, "condition"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .line 235
    if-nez p0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assertion failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseDatabase"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    return-void
.end method

.method public static parseUrl(Ljava/lang/String;)Lcom/google/firebase/database/core/utilities/ParsedUrl;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 41
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 43
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 48
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "host":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 53
    const-string v3, "ns"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "namespace":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez v3, :cond_0

    .line 55
    const-string v6, "\\."

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "parts":[Ljava/lang/String;
    aget-object v7, v6, v4

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 59
    .end local v6    # "parts":[Ljava/lang/String;
    :cond_0
    new-instance v6, Lcom/google/firebase/database/core/RepoInfo;

    invoke-direct {v6}, Lcom/google/firebase/database/core/RepoInfo;-><init>()V

    .line 60
    .local v6, "repoInfo":Lcom/google/firebase/database/core/RepoInfo;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v7

    .line 62
    .local v7, "port":I
    const/4 v8, 0x1

    if-eq v7, v5, :cond_3

    .line 63
    const-string v5, "https"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "wss"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v4, v8

    :cond_2
    iput-boolean v4, v6, Lcom/google/firebase/database/core/RepoInfo;->secure:Z

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_3
    iput-boolean v8, v6, Lcom/google/firebase/database/core/RepoInfo;->secure:Z

    .line 69
    :goto_0
    iget-object v4, v6, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    iput-object v4, v6, Lcom/google/firebase/database/core/RepoInfo;->internalHost:Ljava/lang/String;

    .line 70
    iput-object v3, v6, Lcom/google/firebase/database/core/RepoInfo;->namespace:Ljava/lang/String;

    .line 72
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Utilities;->extractPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "originalPathString":Ljava/lang/String;
    const-string v5, "+"

    const-string v8, " "

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 76
    invoke-static {v4}, Lcom/google/firebase/database/core/utilities/Validation;->validateRootPathString(Ljava/lang/String;)V

    .line 78
    new-instance v5, Lcom/google/firebase/database/core/utilities/ParsedUrl;

    invoke-direct {v5}, Lcom/google/firebase/database/core/utilities/ParsedUrl;-><init>()V

    .line 79
    .local v5, "parsedUrl":Lcom/google/firebase/database/core/utilities/ParsedUrl;
    new-instance v8, Lcom/google/firebase/database/core/Path;

    invoke-direct {v8, v4}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    iput-object v8, v5, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    .line 80
    iput-object v6, v5, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    .line 82
    return-object v5

    .line 50
    .end local v3    # "namespace":Ljava/lang/String;
    .end local v4    # "originalPathString":Ljava/lang/String;
    .end local v5    # "parsedUrl":Lcom/google/firebase/database/core/utilities/ParsedUrl;
    .end local v6    # "repoInfo":Lcom/google/firebase/database/core/RepoInfo;
    .end local v7    # "port":I
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Database URL does not specify a valid host"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "url":Ljava/lang/String;
    throw v3

    .line 45
    .end local v2    # "host":Ljava/lang/String;
    .restart local p0    # "url":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Database URL does not specify a URL scheme"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "url":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "scheme":Ljava/lang/String;
    .restart local p0    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Firebase Database url specified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 114
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 115
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 116
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 117
    .local v1, "bytes":[B
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 120
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 encoding is required for Firebase Database to run!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing SHA-1 MessageDigest provider."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static stringHashV2Representation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 126
    move-object v0, p0

    .line 127
    .local v0, "escaped":Ljava/lang/String;
    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 128
    const-string v1, "\\"

    const-string v3, "\\\\"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_0
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 131
    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10
    .param p0, "num"    # Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-gt v0, v2, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 157
    .local v0, "i":I
    const/4 v2, 0x0

    .line 158
    .local v2, "negative":Z
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_2

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 160
    return-object v1

    .line 162
    :cond_1
    const/4 v2, 0x1

    .line 163
    const/4 v0, 0x1

    .line 166
    :cond_2
    const-wide/16 v3, 0x0

    .line 167
    .local v3, "number":J
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 168
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 169
    .local v5, "c":C
    const/16 v6, 0x30

    if-lt v5, v6, :cond_4

    const/16 v6, 0x39

    if-le v5, v6, :cond_3

    goto :goto_1

    .line 172
    :cond_3
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v3

    add-int/lit8 v8, v5, -0x30

    int-to-long v8, v8

    add-long v3, v6, v8

    .line 173
    nop

    .end local v5    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 174
    goto :goto_0

    .line 170
    .restart local v5    # "c":C
    :cond_4
    :goto_1
    return-object v1

    .line 175
    .end local v5    # "c":C
    :cond_5
    if-eqz v2, :cond_7

    .line 176
    neg-long v5, v3

    const-wide/32 v7, -0x80000000

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    .line 177
    return-object v1

    .line 179
    :cond_6
    neg-long v5, v3

    long-to-int v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 182
    :cond_7
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-lez v5, :cond_8

    .line 183
    return-object v1

    .line 185
    :cond_8
    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 154
    .end local v0    # "i":I
    .end local v2    # "negative":Z
    .end local v3    # "number":J
    :cond_9
    :goto_2
    return-object v1
.end method

.method public static wrapOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/firebase/database/core/utilities/Pair;
    .locals 4
    .param p0, "optListener"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/firebase/database/core/utilities/Pair<",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ">;"
        }
    .end annotation

    .line 246
    if-nez p0, :cond_0

    .line 247
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 248
    .local v0, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    new-instance v1, Lcom/google/firebase/database/core/utilities/Utilities$1;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/core/utilities/Utilities$1;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 259
    .local v1, "listener":Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    new-instance v2, Lcom/google/firebase/database/core/utilities/Pair;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/firebase/database/core/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 262
    .end local v0    # "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    .end local v1    # "listener":Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    :cond_0
    new-instance v0, Lcom/google/firebase/database/core/utilities/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/database/core/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
