.class public Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;
.super Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
.source "ConnectionPoolTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = -0x6d9e70d19be2ee88L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method
