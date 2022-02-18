.class public final Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;
.super Ljava/lang/Object;
.source "DefaultHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier$HostNameType;
    }
.end annotation


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;-><init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 2
    .param p1, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 87
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 88
    return-void
.end method

.method static determineHostFormat(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier$HostNameType;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .line 255
    invoke-static {p0}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier$HostNameType;->IPv4:Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier$HostNameType;

    return-object v0

    .line 258
    :cond_0
    move-object v0, p0

    .line 259
    .local v0, "s":Ljava/lang/String;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_1
    invoke-static {v0}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    sget-object v1, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier$HostNameType;->IPv6:Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier$HostNameType;

    return-object v1

    .line 265
    :cond_2
    sget-object v1, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier$HostNameType;->DNS:Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier$HostNameType;

    return-object v1
.end method

.method static getSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/conn/ssl/SubjectName;",
            ">;"
        }
    .end annotation

    .line 270
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    .line 271
    .local v0, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 274
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/conn/ssl/SubjectName;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 276
    .local v3, "entry":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 277
    .local v4, "type":Ljava/lang/Integer;
    :goto_1
    if-eqz v4, :cond_4

    .line 278
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    .line 279
    :cond_2
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 280
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 281
    new-instance v6, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 282
    :cond_3
    instance-of v6, v5, [B
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v3    # "entry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "type":Ljava/lang/Integer;
    .end local v5    # "o":Ljava/lang/Object;
    :cond_4
    :goto_2
    goto :goto_0

    .line 288
    :cond_5
    return-object v1

    .line 289
    .end local v0    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/conn/ssl/SubjectName;>;"
    :catch_0
    move-exception v0

    .line 290
    .local v0, "ignore":Ljava/security/cert/CertificateParsingException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static matchCN(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "cn"    # Ljava/lang/String;
    .param p2, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 183
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "normalizedHost":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "normalizedCn":Ljava/lang/String;
    invoke-static {v0, v1, p2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    return-void

    .line 186
    :cond_0
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate for <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> doesn\'t match common name of the certificate subject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static matchDNSName(Ljava/lang/String;Ljava/util/List;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .param p2, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/conn/ssl/SubjectName;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 167
    .local p1, "subjectAlts":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/conn/ssl/SubjectName;>;"
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "normalizedHost":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 169
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;

    .line 170
    .local v2, "subjectAlt":Lcz/msebera/android/httpclient/conn/ssl/SubjectName;
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 171
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;->getValue()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "normalizedSubjectAlt":Ljava/lang/String;
    invoke-static {v0, v3, p2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    return-void

    .line 168
    .end local v2    # "subjectAlt":Lcz/msebera/android/httpclient/conn/ssl/SubjectName;
    .end local v3    # "normalizedSubjectAlt":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Certificate for <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> doesn\'t match any of the subject alternative names: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static matchDomainRoot(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "domainRoot"    # Ljava/lang/String;

    .line 192
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 193
    return v0

    .line 195
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    nop

    .line 195
    :goto_0
    return v0
.end method

.method static matchIPAddress(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/conn/ssl/SubjectName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 138
    .local p1, "subjectAlts":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/conn/ssl/SubjectName;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;

    .line 140
    .local v1, "subjectAlt":Lcz/msebera/android/httpclient/conn/ssl/SubjectName;
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 141
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    return-void

    .line 138
    .end local v1    # "subjectAlt":Lcz/msebera/android/httpclient/conn/ssl/SubjectName;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate for <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> doesn\'t match any of the subject alternative names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static matchIPv6Address(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/conn/ssl/SubjectName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 151
    .local p1, "subjectAlts":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/conn/ssl/SubjectName;>;"
    invoke-static {p0}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->normaliseAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "normalisedHost":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;

    .line 154
    .local v2, "subjectAlt":Lcz/msebera/android/httpclient/conn/ssl/SubjectName;
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 155
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->normaliseAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "normalizedSubjectAlt":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    return-void

    .line 152
    .end local v2    # "subjectAlt":Lcz/msebera/android/httpclient/conn/ssl/SubjectName;
    .end local v3    # "normalizedSubjectAlt":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Certificate for <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> doesn\'t match any of the subject alternative names: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static matchIdentity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "identity"    # Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)Z

    move-result v0

    return v0
.end method

.method static matchIdentity(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 238
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)Z

    move-result v0

    return v0
.end method

.method private static matchIdentity(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)Z
    .locals 8
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .param p3, "strict"    # Z

    .line 202
    const-string v0, "."

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    sget-object v2, Lcz/msebera/android/httpclient/conn/util/DomainType;->ICANN:Lcz/msebera/android/httpclient/conn/util/DomainType;

    invoke-virtual {p2, p1, v2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->getDomainRoot(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchDomainRoot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    return v1

    .line 213
    :cond_0
    const/16 v2, 0x2a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 214
    .local v2, "asteriskIdx":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 215
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "prefix":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "suffix":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 218
    return v1

    .line 220
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 221
    return v1

    .line 224
    :cond_2
    if-eqz p3, :cond_3

    .line 225
    nop

    .line 226
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    .line 225
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "remainder":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    return v1

    .line 231
    .end local v5    # "remainder":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 233
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "suffix":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "identity"    # Ljava/lang/String;

    .line 251
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)Z

    move-result v0

    return v0
.end method

.method static matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 247
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)Z

    move-result v0

    return v0
.end method

.method static normaliseAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "hostname"    # Ljava/lang/String;

    .line 298
    if-nez p0, :cond_0

    .line 299
    return-object p0

    .line 302
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 303
    .local v0, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 304
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "unexpected":Ljava/net/UnknownHostException;
    return-object p0
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 111
    invoke-static {p1}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->determineHostFormat(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier$HostNameType;

    move-result-object v0

    .line 112
    .local v0, "hostType":Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier$HostNameType;
    invoke-static {p2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, "subjectAlts":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/conn/ssl/SubjectName;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    sget-object v2, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier$1;->$SwitchMap$cz$msebera$android$httpclient$conn$ssl$DefaultHostnameVerifier$HostNameType:[I

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier$HostNameType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 122
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-static {p1, v1, v2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchDNSName(Ljava/lang/String;Ljava/util/List;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIPv6Address(Ljava/lang/String;Ljava/util/List;)V

    .line 120
    goto :goto_0

    .line 116
    :cond_1
    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIPAddress(Ljava/lang/String;Ljava/util/List;)V

    .line 117
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 128
    .local v2, "subjectPrincipal":Ljavax/security/auth/x500/X500Principal;
    new-instance v3, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;

    invoke-direct {v3, v2}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string v4, "cn"

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->findMostSpecific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "cn":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 133
    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-static {p1, v3, v4}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchCN(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    .line 135
    .end local v2    # "subjectPrincipal":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "cn":Ljava/lang/String;
    :goto_0
    return-void

    .line 130
    .restart local v2    # "subjectPrincipal":Ljavax/security/auth/x500/X500Principal;
    .restart local v3    # "cn":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljavax/net/ssl/SSLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate subject for <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> doesn\'t contain a common name and does not have alternative names"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 97
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 98
    .local v1, "certs":[Ljava/security/cert/Certificate;
    aget-object v2, v1, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 99
    .local v2, "x509":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    const/4 v0, 0x1

    return v0

    .line 101
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .end local v2    # "x509":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "ex":Ljavax/net/ssl/SSLException;
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 105
    :cond_0
    return v0
.end method
