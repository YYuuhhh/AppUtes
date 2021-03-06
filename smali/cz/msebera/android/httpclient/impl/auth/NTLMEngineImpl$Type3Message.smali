.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;
.super Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type3Message"
.end annotation


# instance fields
.field protected final computeMic:Z

.field protected final domainBytes:[B

.field protected final exportedSessionKey:[B

.field protected final hostBytes:[B

.field protected lmResp:[B

.field protected ntResp:[B

.field protected final sessionKey:[B

.field protected final type1Message:[B

.field protected final type2Flags:I

.field protected final type2Message:[B

.field protected final userBytes:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .locals 12
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "nonce"    # [B
    .param p6, "type2Flags"    # I
    .param p7, "target"    # Ljava/lang/String;
    .param p8, "targetInformation"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 1472
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V

    .line 1473
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V
    .locals 15
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "nonce"    # [B
    .param p6, "type2Flags"    # I
    .param p7, "target"    # Ljava/lang/String;
    .param p8, "targetInformation"    # [B
    .param p9, "peerServerCertificate"    # Ljava/security/cert/Certificate;
    .param p10, "type1Message"    # [B
    .param p11, "type2Message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 1503
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$000()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V

    .line 1504
    return-void
.end method

.method constructor <init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .locals 15
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "currentTime"    # J
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "user"    # Ljava/lang/String;
    .param p7, "password"    # Ljava/lang/String;
    .param p8, "nonce"    # [B
    .param p9, "type2Flags"    # I
    .param p10, "target"    # Ljava/lang/String;
    .param p11, "targetInformation"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 1487
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v14}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V

    .line 1488
    return-void
.end method

.method constructor <init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V
    .locals 19
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "currentTime"    # J
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "user"    # Ljava/lang/String;
    .param p7, "password"    # Ljava/lang/String;
    .param p8, "nonce"    # [B
    .param p9, "type2Flags"    # I
    .param p10, "target"    # Ljava/lang/String;
    .param p11, "targetInformation"    # [B
    .param p12, "peerServerCertificate"    # Ljava/security/cert/Certificate;
    .param p13, "type1Message"    # [B
    .param p14, "type2Message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 1519
    move-object/from16 v1, p0

    move/from16 v2, p9

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    invoke-direct/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    .line 1521
    if-eqz p1, :cond_c

    .line 1526
    iput v2, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    .line 1527
    move-object/from16 v15, p13

    iput-object v15, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type1Message:[B

    .line 1528
    move-object/from16 v14, p14

    iput-object v14, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type2Message:[B

    .line 1531
    invoke-static/range {p5 .. p5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1533
    .local v13, "unqualifiedHost":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1535
    .local v12, "unqualifiedDomain":Ljava/lang/String;
    move-object/from16 v0, p11

    .line 1536
    .local v0, "responseTargetInformation":[B
    const/4 v11, 0x0

    if-eqz v4, :cond_0

    .line 1537
    invoke-direct {v1, v3, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addGssMicAvsToTargetInfo([BLjava/security/cert/Certificate;)[B

    move-result-object v0

    .line 1538
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    move-object/from16 v16, v0

    goto :goto_0

    .line 1540
    :cond_0
    iput-boolean v11, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    move-object/from16 v16, v0

    .line 1544
    .end local v0    # "responseTargetInformation":[B
    .local v16, "responseTargetInformation":[B
    :goto_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;

    move-object v5, v0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move-object v9, v12

    move-object/from16 v10, p6

    move v4, v11

    move-object/from16 v11, p7

    move-object/from16 v17, v12

    .end local v12    # "unqualifiedDomain":Ljava/lang/String;
    .local v17, "unqualifiedDomain":Ljava/lang/String;
    move-object/from16 v12, p8

    move-object/from16 v18, v13

    .end local v13    # "unqualifiedHost":Ljava/lang/String;
    .local v18, "unqualifiedHost":Ljava/lang/String;
    move-object/from16 v13, p10

    move-object/from16 v14, v16

    invoke-direct/range {v5 .. v14}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)V

    .line 1558
    .local v5, "gen":Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;
    const/high16 v0, 0x800000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz p10, :cond_2

    .line 1561
    :try_start_0
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2Response()[B

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 1562
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLMv2Response()[B

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    .line 1563
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_1

    .line 1564
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v0

    .local v0, "userSessionKey":[B
    goto :goto_1

    .line 1566
    .end local v0    # "userSessionKey":[B
    :cond_1
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2UserSessionKey()[B

    move-result-object v0

    .restart local v0    # "userSessionKey":[B
    goto :goto_1

    .line 1570
    .end local v0    # "userSessionKey":[B
    :cond_2
    const/high16 v0, 0x80000

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 1572
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponse()[B

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 1573
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLM2SessionResponse()[B

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    .line 1574
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_3

    .line 1575
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v0

    .restart local v0    # "userSessionKey":[B
    goto :goto_1

    .line 1577
    .end local v0    # "userSessionKey":[B
    :cond_3
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponseUserSessionKey()[B

    move-result-object v0

    .restart local v0    # "userSessionKey":[B
    goto :goto_1

    .line 1580
    .end local v0    # "userSessionKey":[B
    :cond_4
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMResponse()[B

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 1581
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    .line 1582
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_5

    .line 1583
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v0

    .restart local v0    # "userSessionKey":[B
    goto :goto_1

    .line 1585
    .end local v0    # "userSessionKey":[B
    :cond_5
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMUserSessionKey()[B

    move-result-object v0
    :try_end_0
    .catch Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1599
    .restart local v0    # "userSessionKey":[B
    :goto_1
    goto :goto_2

    .line 1589
    .end local v0    # "userSessionKey":[B
    :catch_0
    move-exception v0

    .line 1592
    .local v0, "e":Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
    new-array v4, v4, [B

    iput-object v4, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 1593
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v4

    iput-object v4, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    .line 1594
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_6

    .line 1595
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v4

    move-object v0, v4

    .local v4, "userSessionKey":[B
    goto :goto_2

    .line 1597
    .end local v4    # "userSessionKey":[B
    :cond_6
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLMUserSessionKey()[B

    move-result-object v4

    move-object v0, v4

    .line 1601
    .local v0, "userSessionKey":[B
    :goto_2
    and-int/lit8 v4, v2, 0x10

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    .line 1602
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, v2

    if-eqz v4, :cond_7

    .line 1603
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getSecondaryKey()[B

    move-result-object v4

    iput-object v4, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    .line 1604
    invoke-static {v4, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->RC4([B[B)[B

    move-result-object v4

    iput-object v4, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    goto :goto_3

    .line 1606
    :cond_7
    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    .line 1607
    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    goto :goto_3

    .line 1610
    :cond_8
    iget-boolean v4, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    if-nez v4, :cond_b

    .line 1613
    iput-object v6, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    .line 1614
    iput-object v6, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    .line 1616
    :goto_3
    invoke-static/range {p9 .. p9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2500(I)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 1617
    .local v4, "charset":Ljava/nio/charset/Charset;
    move-object/from16 v7, v18

    .end local v18    # "unqualifiedHost":Ljava/lang/String;
    .local v7, "unqualifiedHost":Ljava/lang/String;
    if-eqz v7, :cond_9

    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    goto :goto_4

    :cond_9
    move-object v8, v6

    :goto_4
    iput-object v8, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    .line 1618
    move-object/from16 v8, v17

    .end local v17    # "unqualifiedDomain":Ljava/lang/String;
    .local v8, "unqualifiedDomain":Ljava/lang/String;
    if-eqz v8, :cond_a

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1619
    invoke-virtual {v8, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    goto :goto_5

    :cond_a
    nop

    :goto_5
    iput-object v6, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    .line 1620
    move-object/from16 v6, p6

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    iput-object v9, v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    .line 1621
    return-void

    .line 1611
    .end local v4    # "charset":Ljava/nio/charset/Charset;
    .end local v7    # "unqualifiedHost":Ljava/lang/String;
    .end local v8    # "unqualifiedDomain":Ljava/lang/String;
    .restart local v17    # "unqualifiedDomain":Ljava/lang/String;
    .restart local v18    # "unqualifiedHost":Ljava/lang/String;
    :cond_b
    new-instance v4, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string v9, "Cannot sign/seal: no exported session key"

    invoke-direct {v4, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1522
    .end local v0    # "userSessionKey":[B
    .end local v5    # "gen":Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;
    .end local v16    # "responseTargetInformation":[B
    .end local v17    # "unqualifiedDomain":Ljava/lang/String;
    .end local v18    # "unqualifiedHost":Ljava/lang/String;
    :cond_c
    move-object/from16 v6, p6

    move-object/from16 v15, p13

    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string v4, "Random generator not available"

    invoke-direct {v0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addGssMicAvsToTargetInfo([BLjava/security/cert/Certificate;)[B
    .locals 11
    .param p1, "originalTargetInfo"    # [B
    .param p2, "peerServerCertificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 1776
    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x14

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1777
    .local v0, "newTargetInfo":[B
    array-length v2, p1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    .line 1778
    .local v2, "appendLength":I
    const/4 v4, 0x0

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1779
    const/4 v5, 0x6

    invoke-static {v0, v5, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeUShort([BII)V

    .line 1780
    add-int/lit8 v5, v2, 0x2

    invoke-static {v0, v3, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeUShort([BII)V

    .line 1781
    add-int/lit8 v3, v2, 0x4

    const/4 v5, 0x2

    invoke-static {v0, v5, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    .line 1782
    add-int/lit8 v3, v2, 0x8

    const/16 v5, 0xa

    invoke-static {v0, v5, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeUShort([BII)V

    .line 1783
    add-int/lit8 v3, v2, 0xa

    const/16 v5, 0x10

    invoke-static {v0, v5, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeUShort([BII)V

    .line 1788
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 1789
    .local v3, "certBytes":[B
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 1790
    .local v6, "sha256":Ljava/security/MessageDigest;
    invoke-virtual {v6, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 1791
    .local v7, "certHashBytes":[B
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2600()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v8, v1

    array-length v9, v7

    add-int/2addr v8, v9

    new-array v8, v8, [B

    .line 1793
    .local v8, "channelBindingStruct":[B
    const/16 v9, 0x35

    invoke-static {v8, v9, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    .line 1794
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2600()[B

    move-result-object v9

    .line 1795
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2600()[B

    move-result-object v10

    array-length v10, v10

    .line 1794
    invoke-static {v9, v4, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1796
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2600()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v9, v1

    array-length v1, v7

    invoke-static {v7, v4, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1798
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getMD5()Ljava/security/MessageDigest;

    move-result-object v1

    .line 1799
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v9

    .line 1808
    .end local v3    # "certBytes":[B
    .end local v6    # "sha256":Ljava/security/MessageDigest;
    .end local v7    # "certHashBytes":[B
    .end local v8    # "channelBindingStruct":[B
    .local v1, "channelBindingsHash":[B
    nop

    .line 1810
    add-int/lit8 v3, v2, 0xc

    invoke-static {v1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1811
    return-object v0

    .line 1805
    .end local v1    # "channelBindingsHash":[B
    :catch_0
    move-exception v1

    .line 1807
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1801
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 1803
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method protected buildMessage()V
    .locals 19

    .line 1634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    array-length v1, v1

    .line 1635
    .local v1, "ntRespLen":I
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    array-length v2, v2

    .line 1637
    .local v2, "lmRespLen":I
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    if-eqz v3, :cond_0

    array-length v3, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1638
    .local v3, "domainLen":I
    :goto_0
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    if-eqz v5, :cond_1

    array-length v5, v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 1639
    .local v5, "hostLen":I
    :goto_1
    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    array-length v6, v6

    .line 1641
    .local v6, "userLen":I
    iget-object v7, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v7, :cond_2

    .line 1642
    array-length v7, v7

    .local v7, "sessionKeyLen":I
    goto :goto_2

    .line 1644
    .end local v7    # "sessionKeyLen":I
    :cond_2
    const/4 v7, 0x0

    .line 1648
    .restart local v7    # "sessionKeyLen":I
    :goto_2
    iget-boolean v8, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    if-eqz v8, :cond_3

    const/16 v8, 0x10

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v8, v8, 0x48

    .line 1650
    .local v8, "lmRespOffset":I
    add-int v10, v8, v2

    .line 1651
    .local v10, "ntRespOffset":I
    add-int v11, v10, v1

    .line 1652
    .local v11, "domainOffset":I
    add-int v12, v11, v3

    .line 1653
    .local v12, "userOffset":I
    add-int v13, v12, v6

    .line 1654
    .local v13, "hostOffset":I
    add-int v14, v13, v5

    .line 1655
    .local v14, "sessionKeyOffset":I
    add-int v15, v14, v7

    .line 1658
    .local v15, "finalLength":I
    const/4 v4, 0x3

    invoke-virtual {v0, v15, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->prepareResponse(II)V

    .line 1661
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1662
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1665
    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1668
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1669
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1672
    invoke-virtual {v0, v10}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1675
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1676
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1679
    invoke-virtual {v0, v11}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1682
    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1683
    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1686
    invoke-virtual {v0, v12}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1689
    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1690
    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1693
    invoke-virtual {v0, v13}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1696
    invoke-virtual {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1697
    invoke-virtual {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1700
    invoke-virtual {v0, v14}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1703
    iget v4, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1734
    const/16 v4, 0x105

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1736
    const/16 v4, 0xa28

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1738
    const/16 v4, 0xf00

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1740
    const/4 v4, -0x1

    .line 1741
    .local v4, "micPosition":I
    iget-boolean v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    if-eqz v9, :cond_4

    .line 1742
    iget v4, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->currentOutputPosition:I

    .line 1743
    iget v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->currentOutputPosition:I

    const/16 v16, 0x10

    add-int/lit8 v9, v9, 0x10

    iput v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->currentOutputPosition:I

    .line 1747
    :cond_4
    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1748
    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1749
    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1750
    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1751
    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1752
    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v9, :cond_5

    .line 1753
    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1758
    :cond_5
    iget-boolean v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    if-eqz v9, :cond_6

    .line 1760
    new-instance v9, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;

    move/from16 v16, v1

    .end local v1    # "ntRespLen":I
    .local v16, "ntRespLen":I
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    invoke-direct {v9, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    move-object v1, v9

    .line 1761
    .local v1, "hmacMD5":Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;
    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type1Message:[B

    invoke-virtual {v1, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 1762
    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type2Message:[B

    invoke-virtual {v1, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 1763
    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->messageContents:[B

    invoke-virtual {v1, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 1764
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B

    move-result-object v9

    .line 1765
    .local v9, "mic":[B
    move-object/from16 v17, v1

    .end local v1    # "hmacMD5":Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;
    .local v17, "hmacMD5":Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->messageContents:[B

    array-length v0, v9

    move/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "lmRespLen":I
    .local v18, "lmRespLen":I
    invoke-static {v9, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 1758
    .end local v9    # "mic":[B
    .end local v16    # "ntRespLen":I
    .end local v17    # "hmacMD5":Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;
    .end local v18    # "lmRespLen":I
    .local v1, "ntRespLen":I
    .restart local v2    # "lmRespLen":I
    :cond_6
    move/from16 v16, v1

    move/from16 v18, v2

    .line 1767
    .end local v1    # "ntRespLen":I
    .end local v2    # "lmRespLen":I
    .restart local v16    # "ntRespLen":I
    .restart local v18    # "lmRespLen":I
    :goto_4
    return-void
.end method

.method public getEncryptedRandomSessionKey()[B
    .locals 1

    .line 1624
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    return-object v0
.end method

.method public getExportedSessionKey()[B
    .locals 1

    .line 1628
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    return-object v0
.end method
