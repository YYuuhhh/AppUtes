.class public Lcom/example/theapp/SettingsFrag;
.super Landroidx/fragment/app/Fragment;
.source "SettingsFrag.java"


# static fields
.field private static myContext:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static onLog(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 22
    sget-object v0, Lcom/example/theapp/SettingsFrag;->myContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 23
    .local v0, "manager":Landroidx/fragment/app/FragmentManager;
    new-instance v1, Lcom/example/theapp/LogFrag;

    invoke-direct {v1}, Lcom/example/theapp/LogFrag;-><init>()V

    .line 24
    .local v1, "logfrag":Lcom/example/theapp/LogFrag;
    const-string v2, "Dialog"

    invoke-virtual {v1, v0, v2}, Lcom/example/theapp/LogFrag;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    const v0, 0x7f0c0037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 18
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    sput-object v2, Lcom/example/theapp/SettingsFrag;->myContext:Landroidx/fragment/app/FragmentActivity;

    .line 19
    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
