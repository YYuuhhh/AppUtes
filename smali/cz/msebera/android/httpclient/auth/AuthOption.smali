.class public final Lcz/msebera/android/httpclient/auth/AuthOption;
.super Ljava/lang/Object;
.source "AuthOption.java"


# instance fields
.field private final authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

.field private final creds:Lcz/msebera/android/httpclient/auth/Credentials;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V
    .locals 1
    .param p1, "authScheme"    # Lcz/msebera/android/httpclient/auth/AuthScheme;
    .param p2, "creds"    # Lcz/msebera/android/httpclient/auth/Credentials;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "Auth scheme"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    const-string v0, "User credentials"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    .line 47
    iput-object p2, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->creds:Lcz/msebera/android/httpclient/auth/Credentials;

    .line 48
    return-void
.end method


# virtual methods
.method public getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;
    .locals 1

    .line 51
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    return-object v0
.end method

.method public getCredentials()Lcz/msebera/android/httpclient/auth/Credentials;
    .locals 1

    .line 55
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->creds:Lcz/msebera/android/httpclient/auth/Credentials;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthOption;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
