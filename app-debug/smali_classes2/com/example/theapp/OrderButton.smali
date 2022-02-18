.class public Lcom/example/theapp/OrderButton;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "OrderButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/theapp/OrderButton$IOrderButton;
    }
.end annotation


# instance fields
.field private DataBase:Lcom/google/firebase/database/DatabaseReference;

.field private ErrorNam:Landroid/widget/TextView;

.field private OrderButton:Lcom/example/theapp/OrderButton$IOrderButton;

.field private OrderList:Landroid/widget/TextView;

.field private fullname:Landroid/widget/EditText;

.field private phonenumber:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/theapp/OrderButton;)Lcom/example/theapp/OrderButton$IOrderButton;
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/OrderButton;

    .line 22
    iget-object v0, p0, Lcom/example/theapp/OrderButton;->OrderButton:Lcom/example/theapp/OrderButton$IOrderButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/theapp/OrderButton;)Lcom/google/firebase/database/DatabaseReference;
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/OrderButton;

    .line 22
    iget-object v0, p0, Lcom/example/theapp/OrderButton;->DataBase:Lcom/google/firebase/database/DatabaseReference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/example/theapp/OrderButton;Lcom/google/firebase/database/DatabaseReference;)Lcom/google/firebase/database/DatabaseReference;
    .locals 0
    .param p0, "x0"    # Lcom/example/theapp/OrderButton;
    .param p1, "x1"    # Lcom/google/firebase/database/DatabaseReference;

    .line 22
    iput-object p1, p0, Lcom/example/theapp/OrderButton;->DataBase:Lcom/google/firebase/database/DatabaseReference;

    return-object p1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 71
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/example/theapp/OrderButton$IOrderButton;

    iput-object v0, p0, Lcom/example/theapp/OrderButton;->OrderButton:Lcom/example/theapp/OrderButton$IOrderButton;

    .line 73
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/example/theapp/OrderButton;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/example/theapp/OrderButton;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 36
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0c0072

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 37
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/example/theapp/OrderButton$2;

    invoke-direct {v3, p0}, Lcom/example/theapp/OrderButton$2;-><init>(Lcom/example/theapp/OrderButton;)V

    .line 39
    const-string v5, "\u0421\u0434\u0435\u043b\u0430\u0442\u044c \u0437\u0430\u043a\u0430\u0437"

    invoke-virtual {v2, v5, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/example/theapp/OrderButton$1;

    invoke-direct {v3, p0}, Lcom/example/theapp/OrderButton$1;-><init>(Lcom/example/theapp/OrderButton;)V

    .line 50
    const-string v5, "\u041e\u0442\u043c\u0435\u043d\u0438\u0442\u044c"

    invoke-virtual {v2, v5, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 58
    sget-object v2, Lcom/example/theapp/RecyclerAdapterFoods;->currentSelectedItems:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onResume()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->onResume()V

    .line 66
    return-void
.end method
