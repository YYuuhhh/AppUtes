.class public Lcom/google/firebase/installations/local/IidStore;
.super Ljava/lang/Object;
.source "IidStore.java"


# static fields
.field private static final ALLOWABLE_SCOPES:[Ljava/lang/String;

.field private static final IID_SHARED_PREFS_NAME:Ljava/lang/String; = "com.google.android.gms.appid"

.field private static final JSON_ENCODED_PREFIX:Ljava/lang/String; = "{"

.field private static final JSON_TOKEN_KEY:Ljava/lang/String; = "token"

.field private static final STORE_KEY_ID:Ljava/lang/String; = "|S|id"

.field private static final STORE_KEY_PUB:Ljava/lang/String; = "|S||P|"

.field private static final STORE_KEY_SEPARATOR:Ljava/lang/String; = "|"

.field private static final STORE_KEY_TOKEN:Ljava/lang/String; = "|T|"


# instance fields
.field private final defaultSenderId:Ljava/lang/String;

.field private final iidPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    const-string v0, "*"

    const-string v1, "FCM"

    const-string v2, "GCM"

    const-string v3, ""

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/installations/local/IidStore;->ALLOWABLE_SCOPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "iidPrefs"    # Landroid/content/SharedPreferences;
    .param p2, "defaultSenderId"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/firebase/installations/local/IidStore;->iidPrefs:Landroid/content/SharedPreferences;

    .line 69
    iput-object p2, p0, Lcom/google/firebase/installations/local/IidStore;->defaultSenderId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 3
    .param p1, "firebaseApp"    # Lcom/google/firebase/FirebaseApp;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    nop

    .line 60
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    const-string v1, "com.google.android.gms.appid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/local/IidStore;->iidPrefs:Landroid/content/SharedPreferences;

    .line 63
    invoke-static {p1}, Lcom/google/firebase/installations/local/IidStore;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/local/IidStore;->defaultSenderId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private createTokenKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "|T|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;
    .locals 6
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;

    .line 74
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "senderId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 76
    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "appId":Ljava/lang/String;
    const-string v2, "1:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "2:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    return-object v1

    .line 85
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    .line 87
    return-object v5

    .line 89
    :cond_2
    const/4 v3, 0x1

    aget-object v3, v2, v3

    .line 90
    .local v3, "projectNumber":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    return-object v5

    .line 93
    :cond_3
    return-object v3
.end method

.method private static getIdFromPublicKey(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 7
    .param p0, "publicKey"    # Ljava/security/PublicKey;

    .line 177
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 184
    .local v0, "derPub":[B
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 186
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 187
    .local v2, "digest":[B
    const/4 v3, 0x0

    aget-byte v4, v2, v3

    .line 188
    .local v4, "b0":I
    and-int/lit8 v5, v4, 0xf

    add-int/lit8 v5, v5, 0x70

    .line 189
    .end local v4    # "b0":I
    .local v5, "b0":I
    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 190
    const/16 v4, 0x8

    const/16 v6, 0xb

    invoke-static {v2, v3, v4, v6}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 192
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "digest":[B
    .end local v5    # "b0":I
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "ContentValues"

    const-string v3, "Unexpected error, device missing required algorithms"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private parseIidTokenFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .line 118
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 120
    .end local v0    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private parseKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "base64PublicKey"    # Ljava/lang/String;

    .line 203
    const/16 v0, 0x8

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 204
    .local v0, "publicKeyBytes":[B
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 205
    .local v1, "kf":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 206
    .end local v0    # "publicKeyBytes":[B
    .end local v1    # "kf":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key stored "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentValues"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private readInstanceIdFromLocalStorage()Ljava/lang/String;
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/google/firebase/installations/local/IidStore;->iidPrefs:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/local/IidStore;->iidPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "|S|id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readPublicKeyFromLocalStorageAndCalculateInstanceId()Ljava/lang/String;
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/google/firebase/installations/local/IidStore;->iidPrefs:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/local/IidStore;->iidPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "|S||P|"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "base64PublicKey":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 158
    monitor-exit v0

    return-object v3

    .line 161
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/local/IidStore;->parseKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 162
    .local v2, "publicKey":Ljava/security/PublicKey;
    if-nez v2, :cond_1

    .line 163
    monitor-exit v0

    return-object v3

    .line 166
    :cond_1
    invoke-static {v2}, Lcom/google/firebase/installations/local/IidStore;->getIdFromPublicKey(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 167
    .end local v1    # "base64PublicKey":Ljava/lang/String;
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public readIid()Ljava/lang/String;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/google/firebase/installations/local/IidStore;->iidPrefs:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/installations/local/IidStore;->readInstanceIdFromLocalStorage()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 137
    monitor-exit v0

    return-object v1

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/installations/local/IidStore;->readPublicKeyFromLocalStorageAndCalculateInstanceId()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 143
    .end local v1    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readToken()Ljava/lang/String;
    .locals 8

    .line 102
    iget-object v0, p0, Lcom/google/firebase/installations/local/IidStore;->iidPrefs:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/google/firebase/installations/local/IidStore;->ALLOWABLE_SCOPES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 104
    .local v5, "scope":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/firebase/installations/local/IidStore;->defaultSenderId:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Lcom/google/firebase/installations/local/IidStore;->createTokenKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "tokenKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/firebase/installations/local/IidStore;->iidPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "token":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 107
    const-string/jumbo v1, "{"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v4}, Lcom/google/firebase/installations/local/IidStore;->parseIidTokenFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v4

    :goto_1
    monitor-exit v0

    return-object v1

    .line 103
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "scope":Ljava/lang/String;
    .end local v6    # "tokenKey":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_2
    monitor-exit v0

    return-object v4

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
