.class public Lcom/google/firebase/installations/local/PersistedInstallation;
.super Ljava/lang/Object;
.source "PersistedInstallation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;
    }
.end annotation


# static fields
.field private static final AUTH_TOKEN_KEY:Ljava/lang/String; = "AuthToken"

.field private static final EXPIRES_IN_SECONDS_KEY:Ljava/lang/String; = "ExpiresInSecs"

.field private static final FIREBASE_INSTALLATION_ID_KEY:Ljava/lang/String; = "Fid"

.field private static final FIS_ERROR_KEY:Ljava/lang/String; = "FisError"

.field private static final PERSISTED_STATUS_KEY:Ljava/lang/String; = "Status"

.field private static final REFRESH_TOKEN_KEY:Ljava/lang/String; = "RefreshToken"

.field private static final SETTINGS_FILE_NAME_PREFIX:Ljava/lang/String; = "PersistedInstallation"

.field private static final TOKEN_CREATION_TIME_IN_SECONDS_KEY:Ljava/lang/String; = "TokenCreationEpochInSecs"


# instance fields
.field private final dataFile:Ljava/io/File;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 4
    .param p1, "firebaseApp"    # Lcom/google/firebase/FirebaseApp;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/io/File;

    .line 84
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PersistedInstallation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/installations/local/PersistedInstallation;->dataFile:Ljava/io/File;

    .line 86
    iput-object p1, p0, Lcom/google/firebase/installations/local/PersistedInstallation;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 87
    return-void
.end method

.method private readJSONFromFile()Lorg/json/JSONObject;
    .locals 5

    .line 115
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 117
    .local v1, "tmpBuf":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/google/firebase/installations/local/PersistedInstallation;->dataFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .local v2, "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 120
    .local v3, "numRead":I
    if-gez v3, :cond_0

    .line 121
    nop

    .line 125
    .end local v3    # "numRead":I
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    return-object v3

    .line 123
    .restart local v3    # "numRead":I
    :cond_0
    :try_start_3
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .end local v3    # "numRead":I
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "tmpBuf":[B
    :goto_1
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 126
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "tmpBuf":[B
    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    return-object v3
.end method


# virtual methods
.method public clearForTesting()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/firebase/installations/local/PersistedInstallation;->dataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 177
    return-void
.end method

.method public insertOrUpdatePersistedInstallationEntry(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 5
    .param p1, "prefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 141
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "Fid"

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v1, "Status"

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRegistrationStatus()Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    const-string v1, "AuthToken"

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v1, "RefreshToken"

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v1, "TokenCreationEpochInSecs"

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getTokenCreationEpochInSecs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 147
    const-string v1, "ExpiresInSecs"

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getExpiresInSecs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 148
    const-string v1, "FisError"

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFisError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v1, "PersistedInstallation"

    const-string v2, "tmp"

    iget-object v3, p0, Lcom/google/firebase/installations/local/PersistedInstallation;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 151
    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 150
    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 154
    .local v1, "tmpFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 155
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 156
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 159
    iget-object v3, p0, Lcom/google/firebase/installations/local/PersistedInstallation;->dataFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "tmpFile":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 160
    .restart local v0    # "json":Lorg/json/JSONObject;
    .restart local v1    # "tmpFile":Ljava/io/File;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "unable to rename the tmpfile to PersistedInstallation"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    throw v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "tmpFile":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local p1    # "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 171
    :goto_0
    return-object p1
.end method

.method public readPersistedInstallationEntryValue()Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 12

    .line 91
    invoke-direct {p0}, Lcom/google/firebase/installations/local/PersistedInstallation;->readJSONFromFile()Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "Fid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "fid":Ljava/lang/String;
    sget-object v3, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->ATTEMPT_MIGRATION:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    invoke-virtual {v3}, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->ordinal()I

    move-result v3

    const-string v4, "Status"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 95
    .local v3, "status":I
    const-string v4, "AuthToken"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "authToken":Ljava/lang/String;
    const-string v5, "RefreshToken"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "refreshToken":Ljava/lang/String;
    const-string v6, "TokenCreationEpochInSecs"

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 98
    .local v9, "tokenCreationTime":J
    const-string v6, "ExpiresInSecs"

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 99
    .local v6, "expiresIn":J
    const-string v8, "FisError"

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "fisError":Ljava/lang/String;
    invoke-static {}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->builder()Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    move-result-object v8

    .line 103
    invoke-virtual {v8, v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setFirebaseInstallationId(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    move-result-object v8

    .line 104
    invoke-static {}, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->values()[Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {v8, v11}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setRegistrationStatus(Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    move-result-object v8

    .line 105
    invoke-virtual {v8, v4}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    move-result-object v8

    .line 106
    invoke-virtual {v8, v5}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setRefreshToken(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    move-result-object v8

    .line 107
    invoke-virtual {v8, v9, v10}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setTokenCreationEpochInSecs(J)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    move-result-object v8

    .line 108
    invoke-virtual {v8, v6, v7}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setExpiresInSecs(J)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    move-result-object v8

    .line 109
    invoke-virtual {v8, v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setFisError(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    move-result-object v8

    .line 110
    invoke-virtual {v8}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->build()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v8

    .line 111
    .local v8, "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    return-object v8
.end method
