.class public Lcom/example/theapp/LogFrag;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "LogFrag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/theapp/LogFrag$ILogFrag;
    }
.end annotation


# instance fields
.field private DataBase:Lcom/google/firebase/database/DatabaseReference;

.field private ErrorNam:Landroid/widget/TextView;

.field private ErrorNum:Landroid/widget/TextView;

.field private LogFrag:Lcom/example/theapp/LogFrag$ILogFrag;

.field private fullname:Landroid/widget/EditText;

.field private phonenumber:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/theapp/LogFrag;)Lcom/example/theapp/LogFrag$ILogFrag;
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/LogFrag;

    .line 22
    iget-object v0, p0, Lcom/example/theapp/LogFrag;->LogFrag:Lcom/example/theapp/LogFrag$ILogFrag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/theapp/LogFrag;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/LogFrag;

    .line 22
    iget-object v0, p0, Lcom/example/theapp/LogFrag;->phonenumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/theapp/LogFrag;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/LogFrag;

    .line 22
    iget-object v0, p0, Lcom/example/theapp/LogFrag;->fullname:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/example/theapp/LogFrag;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/LogFrag;

    .line 22
    iget-object v0, p0, Lcom/example/theapp/LogFrag;->ErrorNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/example/theapp/LogFrag;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/LogFrag;

    .line 22
    iget-object v0, p0, Lcom/example/theapp/LogFrag;->ErrorNam:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/example/theapp/LogFrag;)Lcom/google/firebase/database/DatabaseReference;
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/LogFrag;

    .line 22
    iget-object v0, p0, Lcom/example/theapp/LogFrag;->DataBase:Lcom/google/firebase/database/DatabaseReference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/example/theapp/LogFrag;Lcom/google/firebase/database/DatabaseReference;)Lcom/google/firebase/database/DatabaseReference;
    .locals 0
    .param p0, "x0"    # Lcom/example/theapp/LogFrag;
    .param p1, "x1"    # Lcom/google/firebase/database/DatabaseReference;

    .line 22
    iput-object p1, p0, Lcom/example/theapp/LogFrag;->DataBase:Lcom/google/firebase/database/DatabaseReference;

    return-object p1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 88
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    move-object v0, p1

    check-cast v0, Lcom/example/theapp/LogFrag$ILogFrag;

    iput-object v0, p0, Lcom/example/theapp/LogFrag;->LogFrag:Lcom/example/theapp/LogFrag$ILogFrag;

    .line 90
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/example/theapp/LogFrag;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    const-string v1, "\u0412\u0445\u043e\u0434 \u0432 \u0430\u043a\u043a\u0430\u0443\u043d\u0442"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 35
    invoke-virtual {p0}, Lcom/example/theapp/LogFrag;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 36
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0c0031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 38
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/example/theapp/LogFrag$2;

    invoke-direct {v3, p0}, Lcom/example/theapp/LogFrag$2;-><init>(Lcom/example/theapp/LogFrag;)V

    .line 40
    const-string v5, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0438\u0442\u044c"

    invoke-virtual {v2, v5, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/example/theapp/LogFrag$1;

    invoke-direct {v3, p0}, Lcom/example/theapp/LogFrag$1;-><init>(Lcom/example/theapp/LogFrag;)V

    .line 64
    const-string v5, "\u041e\u0442\u043c\u0435\u043d\u0438\u0442\u044c"

    invoke-virtual {v2, v5, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onResume()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->onResume()V

    .line 79
    invoke-virtual {p0}, Lcom/example/theapp/LogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/theapp/LogFrag;->phonenumber:Landroid/widget/EditText;

    .line 80
    invoke-virtual {p0}, Lcom/example/theapp/LogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0900c6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/theapp/LogFrag;->fullname:Landroid/widget/EditText;

    .line 81
    invoke-virtual {p0}, Lcom/example/theapp/LogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/theapp/LogFrag;->ErrorNum:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/example/theapp/LogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/theapp/LogFrag;->ErrorNam:Landroid/widget/TextView;

    .line 83
    return-void
.end method

.method public validCellPhone(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 99
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
