.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;
.super Ljava/lang/Object;
.source "WaitingThreadAborter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private aborted:Z

.field private waitingThread:Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;->aborted:Z

    .line 50
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->interrupt()V

    .line 54
    :cond_0
    return-void
.end method

.method public setWaitingThread(Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;)V
    .locals 1
    .param p1, "waitingThread"    # Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;

    .line 63
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;

    .line 64
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;->aborted:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->interrupt()V

    .line 67
    :cond_0
    return-void
.end method
