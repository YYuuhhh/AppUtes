.class public Lcom/loopj/android/http/TokenCredentials;
.super Ljava/lang/Object;
.source "TokenCredentials.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/Credentials;


# instance fields
.field private userPrincipal:Ljava/security/Principal;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loopj/android/http/TokenCredentials;->userPrincipal:Ljava/security/Principal;

    .line 30
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/loopj/android/http/TokenCredentials;->userPrincipal:Ljava/security/Principal;

    return-object v0
.end method
