.class public Lcom/example/theapp/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/example/theapp/LogFrag$ILogFrag;
.implements Lcom/example/theapp/OrderButton$IOrderButton;


# static fields
.field public static Admin:Z

.field public static Logged:Z


# instance fields
.field private exit:Landroid/widget/Button;

.field private log:Landroid/widget/Button;

.field private mAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private navListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/example/theapp/MainActivity;->Logged:Z

    .line 23
    sput-boolean v0, Lcom/example/theapp/MainActivity;->Admin:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 55
    new-instance v0, Lcom/example/theapp/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/example/theapp/MainActivity$1;-><init>(Lcom/example/theapp/MainActivity;)V

    iput-object v0, p0, Lcom/example/theapp/MainActivity;->navListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/example/theapp/MainActivity;->setContentView(I)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/example/theapp/MainActivity;->setRequestedOrientation(I)V

    .line 44
    const v0, 0x7f090129

    invoke-virtual {p0, v0}, Lcom/example/theapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 45
    .local v0, "bottomNav":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    iget-object v1, p0, Lcom/example/theapp/MainActivity;->navListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 46
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/example/theapp/MainActivity;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 47
    if-nez p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/example/theapp/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0900c5

    new-instance v3, Lcom/example/theapp/NewsFrag;

    invoke-direct {v3}, Lcom/example/theapp/NewsFrag;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 51
    :cond_0
    return-void
.end method

.method public onDialogNegativeClick(Landroidx/fragment/app/DialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Landroidx/fragment/app/DialogFragment;

    .line 86
    return-void
.end method

.method public onDialogPositiveClick(Landroidx/fragment/app/DialogFragment;)V
    .locals 3
    .param p1, "dialog"    # Landroidx/fragment/app/DialogFragment;

    .line 80
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 81
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0c0072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "view":Landroid/view/View;
    return-void
.end method

.method public onDialogPositiveClick(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V
    .locals 4
    .param p1, "dialog"    # Landroidx/fragment/app/DialogFragment;
    .param p2, "phonenumber"    # Ljava/lang/String;

    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0c0031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, "view":Landroid/view/View;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "adadada"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public onLog(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 53
    invoke-static {p1}, Lcom/example/theapp/SettingsFrag;->onLog(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 30
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 32
    iget-object v0, p0, Lcom/example/theapp/MainActivity;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 33
    .local v0, "currentUser":Lcom/google/firebase/auth/FirebaseUser;
    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x1

    sput-boolean v1, Lcom/example/theapp/MainActivity;->Logged:Z

    .line 36
    :cond_0
    return-void
.end method
