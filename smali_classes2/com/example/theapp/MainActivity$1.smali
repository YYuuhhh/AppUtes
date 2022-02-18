.class Lcom/example/theapp/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/theapp/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/theapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/theapp/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/theapp/MainActivity;

    .line 56
    iput-object p1, p0, Lcom/example/theapp/MainActivity$1;->this$0:Lcom/example/theapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "selectedFragment":Landroidx/fragment/app/Fragment;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    new-instance v1, Lcom/example/theapp/SettingsFrag;

    invoke-direct {v1}, Lcom/example/theapp/SettingsFrag;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 62
    :pswitch_1
    new-instance v1, Lcom/example/theapp/NewsFrag;

    invoke-direct {v1}, Lcom/example/theapp/NewsFrag;-><init>()V

    move-object v0, v1

    .line 64
    goto :goto_0

    .line 66
    :pswitch_2
    new-instance v1, Lcom/example/theapp/FoodsFrag;

    invoke-direct {v1}, Lcom/example/theapp/FoodsFrag;-><init>()V

    move-object v0, v1

    .line 67
    nop

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/example/theapp/MainActivity$1;->this$0:Lcom/example/theapp/MainActivity;

    invoke-virtual {v1}, Lcom/example/theapp/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0900c5

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 74
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x7f09012a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
