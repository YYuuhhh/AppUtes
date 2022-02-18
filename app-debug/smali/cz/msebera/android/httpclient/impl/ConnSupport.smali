.class public final Lcz/msebera/android/httpclient/impl/ConnSupport;
.super Ljava/lang/Object;
.source "ConnSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDecoder(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Ljava/nio/charset/CharsetDecoder;
    .locals 5
    .param p0, "cconfig"    # Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 44
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 45
    return-object v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 48
    .local v1, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    .line 49
    .local v2, "malformed":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v3

    .line 50
    .local v3, "unmappable":Ljava/nio/charset/CodingErrorAction;
    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    if-eqz v2, :cond_1

    move-object v4, v2

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 52
    :goto_0
    invoke-virtual {v0, v4}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    if-eqz v3, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 53
    :goto_1
    invoke-virtual {v0, v4}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 51
    return-object v0

    .line 55
    :cond_3
    return-object v0
.end method

.method public static createEncoder(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Ljava/nio/charset/CharsetEncoder;
    .locals 5
    .param p0, "cconfig"    # Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 59
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 60
    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 63
    .local v1, "charset":Ljava/nio/charset/Charset;
    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    .line 65
    .local v0, "malformed":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    .line 66
    .local v2, "unmappable":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    if-eqz v0, :cond_1

    move-object v4, v0

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 67
    :goto_0
    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    if-eqz v2, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 68
    :goto_1
    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 66
    return-object v3

    .line 70
    .end local v0    # "malformed":Ljava/nio/charset/CodingErrorAction;
    .end local v2    # "unmappable":Ljava/nio/charset/CodingErrorAction;
    :cond_3
    return-object v0
.end method
