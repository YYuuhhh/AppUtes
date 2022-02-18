.class public Lcom/example/theapp/SplashScreen;
.super Landroid/app/Activity;
.source "SplashScreen.java"


# static fields
.field public static Foods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/theapp/FoodsData;",
            ">;"
        }
    .end annotation
.end field

.field public static Newses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/theapp/NewsData;",
            ">;"
        }
    .end annotation
.end field

.field public static OldNewses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/theapp/NewsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field End:Ljava/util/Date;

.field private Logged:Z

.field Start:Ljava/util/Date;

.field date:Ljava/util/Date;

.field format:Ljava/text/DateFormat;

.field private mDatabase:Lcom/google/firebase/database/DatabaseReference;

.field private ms:J

.field private paused:Z

.field private splashActive:Z

.field private splashImage:Landroid/widget/ImageView;

.field private splashTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/example/theapp/SplashScreen;->Newses:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/example/theapp/SplashScreen;->OldNewses:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/example/theapp/SplashScreen;->Foods:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/example/theapp/SplashScreen;->ms:J

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/theapp/SplashScreen;->Logged:Z

    .line 27
    const-wide/16 v1, 0x2bc

    iput-wide v1, p0, Lcom/example/theapp/SplashScreen;->splashTime:J

    .line 28
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/example/theapp/SplashScreen;->splashActive:Z

    .line 29
    iput-boolean v0, p0, Lcom/example/theapp/SplashScreen;->paused:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/theapp/SplashScreen;->Start:Ljava/util/Date;

    .line 35
    iput-object v0, p0, Lcom/example/theapp/SplashScreen;->End:Ljava/util/Date;

    .line 36
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/example/theapp/SplashScreen;->date:Ljava/util/Date;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "dd.MM"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/example/theapp/SplashScreen;->format:Ljava/text/DateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/example/theapp/SplashScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/example/theapp/SplashScreen;

    .line 23
    iget-boolean v0, p0, Lcom/example/theapp/SplashScreen;->Logged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/example/theapp/SplashScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/example/theapp/SplashScreen;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/example/theapp/SplashScreen;->Logged:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/example/theapp/SplashScreen;->setContentView(I)V

    .line 42
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iput-object v0, p0, Lcom/example/theapp/SplashScreen;->mDatabase:Lcom/google/firebase/database/DatabaseReference;

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/example/theapp/SplashScreen;->format:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/example/theapp/SplashScreen;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/example/theapp/SplashScreen;->date:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 48
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_0
    new-instance v0, Lcom/example/theapp/SplashScreen$1;

    invoke-direct {v0, p0}, Lcom/example/theapp/SplashScreen$1;-><init>(Lcom/example/theapp/SplashScreen;)V

    .line 90
    .local v0, "postListener":Lcom/google/firebase/database/ValueEventListener;
    iget-object v1, p0, Lcom/example/theapp/SplashScreen;->mDatabase:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 91
    const v1, 0x7f0900dc

    invoke-virtual {p0, v1}, Lcom/example/theapp/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/example/theapp/SplashScreen;->splashImage:Landroid/widget/ImageView;

    .line 92
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 94
    .local v1, "Images":[I
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 95
    .local v2, "random":Ljava/util/Random;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 96
    .local v3, "posOfImage":I
    iget-object v4, p0, Lcom/example/theapp/SplashScreen;->splashImage:Landroid/widget/ImageView;

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0700be
        0x7f0700c6
        0x7f0700c7
        0x7f070082
    .end array-data
.end method
