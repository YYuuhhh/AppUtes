.class public Lcom/example/theapp/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field public FullName:Ljava/lang/String;

.field public phonenumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "phonenumber"    # Ljava/lang/String;
    .param p2, "FullName"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/example/theapp/User;->phonenumber:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/example/theapp/User;->FullName:Ljava/lang/String;

    .line 10
    return-void
.end method
