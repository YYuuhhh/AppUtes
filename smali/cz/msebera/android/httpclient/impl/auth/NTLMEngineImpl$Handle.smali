.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Handle"
.end annotation


# instance fields
.field private final exportedSessionKey:[B

.field private final isConnection:Z

.field final mode:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;

.field private final rc4:Ljavax/crypto/Cipher;

.field private sealingKey:[B

.field sequenceNumber:I

.field private signingKey:[B


# direct methods
.method constructor <init>([BLcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;Z)V
    .locals 3
    .param p1, "exportedSessionKey"    # [B
    .param p2, "mode"    # Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;
    .param p3, "isConnection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sequenceNumber:I

    .line 786
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->exportedSessionKey:[B

    .line 787
    iput-boolean p3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->isConnection:Z

    .line 788
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->mode:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;

    .line 791
    :try_start_0
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getMD5()Ljava/security/MessageDigest;

    move-result-object v0

    .line 792
    .local v0, "signMd5":Ljava/security/MessageDigest;
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getMD5()Ljava/security/MessageDigest;

    move-result-object v1

    .line 793
    .local v1, "sealMd5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 794
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 795
    sget-object v2, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;->CLIENT:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;

    if-ne p2, v2, :cond_0

    .line 797
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1100()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 798
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1200()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_0

    .line 802
    :cond_0
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1300()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 803
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1400()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 805
    :goto_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->signingKey:[B

    .line 806
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sealingKey:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    .end local v0    # "signMd5":Ljava/security/MessageDigest;
    .end local v1    # "sealMd5":Ljava/security/MessageDigest;
    nop

    .line 812
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->initCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->rc4:Ljavax/crypto/Cipher;

    .line 813
    return-void

    .line 808
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private advanceMessageSequence()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 851
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->isConnection:Z

    if-nez v0, :cond_0

    .line 853
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getMD5()Ljava/security/MessageDigest;

    move-result-object v0

    .line 854
    .local v0, "sealMd5":Ljava/security/MessageDigest;
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sealingKey:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 855
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 856
    .local v1, "seqNumBytes":[B
    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sequenceNumber:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    .line 857
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 858
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sealingKey:[B

    .line 859
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->initCipher()Ljavax/crypto/Cipher;

    .line 861
    .end local v0    # "sealMd5":Ljava/security/MessageDigest;
    .end local v1    # "seqNumBytes":[B
    :cond_0
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sequenceNumber:I

    .line 862
    return-void
.end method

.method private computeSignature([B)[B
    .locals 8
    .param p1, "message"    # [B

    .line 876
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 879
    .local v0, "sig":[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 880
    aput-byte v1, v0, v2

    .line 881
    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 882
    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 885
    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->signingKey:[B

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 886
    .local v2, "hmacMD5":Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;
    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sequenceNumber:I

    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1500(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 887
    invoke-virtual {v2, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 888
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B

    move-result-object v3

    .line 889
    .local v3, "hmac":[B
    const/16 v4, 0x8

    new-array v5, v4, [B

    .line 890
    .local v5, "trimmedHmac":[B
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 891
    invoke-direct {p0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->encrypt([B)[B

    move-result-object v6

    .line 892
    .local v6, "encryptedHmac":[B
    const/4 v7, 0x4

    invoke-static {v6, v1, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sequenceNumber:I

    const/16 v4, 0xc

    invoke-static {v0, v4, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1600([BII)V

    .line 897
    return-object v0
.end method

.method private decrypt([B)[B
    .locals 1
    .param p1, "data"    # [B

    .line 871
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->rc4:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v0

    return-object v0
.end method

.method private encrypt([B)[B
    .locals 1
    .param p1, "data"    # [B

    .line 866
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->rc4:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v0

    return-object v0
.end method

.method private initCipher()Ljavax/crypto/Cipher;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 831
    const-string v0, "RC4"

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 832
    .local v1, "cipher":Ljavax/crypto/Cipher;
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->mode:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;

    sget-object v3, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;->CLIENT:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;

    if-ne v2, v3, :cond_0

    .line 834
    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sealingKey:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0

    .line 838
    :cond_0
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sealingKey:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_0
    nop

    .line 845
    return-object v1

    .line 841
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private validateSignature([B[B)Z
    .locals 2
    .param p1, "signature"    # [B
    .param p2, "message"    # [B

    .line 902
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->computeSignature([B)[B

    move-result-object v0

    .line 906
    .local v0, "computedSignature":[B
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public decryptAndVerifySignedMessage([B)[B
    .locals 5
    .param p1, "inMessage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 922
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 923
    .local v1, "signature":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 924
    array-length v2, p1

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 925
    .local v2, "encryptedMessage":[B
    array-length v4, v2

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 926
    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->decrypt([B)[B

    move-result-object v0

    .line 927
    .local v0, "cleartextMessage":[B
    invoke-direct {p0, v1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->validateSignature([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 931
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->advanceMessageSequence()V

    .line 932
    return-object v0

    .line 929
    :cond_0
    new-instance v3, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string v4, "Wrong signature"

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSealingKey()[B
    .locals 1

    .line 823
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sealingKey:[B

    return-object v0
.end method

.method public getSigningKey()[B
    .locals 1

    .line 817
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->signingKey:[B

    return-object v0
.end method

.method public signAndEncryptMessage([B)[B
    .locals 6
    .param p1, "cleartextMessage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 911
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->encrypt([B)[B

    move-result-object v0

    .line 912
    .local v0, "encryptedMessage":[B
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->computeSignature([B)[B

    move-result-object v1

    .line 913
    .local v1, "signature":[B
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 914
    .local v2, "outMessage":[B
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    array-length v3, v1

    array-length v5, v0

    invoke-static {v0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->advanceMessageSequence()V

    .line 917
    return-object v2
.end method
