.class public final enum Lcom/example/theapp/PointerPopupWindow$AlignMode;
.super Ljava/lang/Enum;
.source "PointerPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/theapp/PointerPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlignMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/example/theapp/PointerPopupWindow$AlignMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/example/theapp/PointerPopupWindow$AlignMode;

.field public static final enum AUTO_OFFSET:Lcom/example/theapp/PointerPopupWindow$AlignMode;

.field public static final enum CENTER_FIX:Lcom/example/theapp/PointerPopupWindow$AlignMode;

.field public static final enum DEFAULT:Lcom/example/theapp/PointerPopupWindow$AlignMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 141
    new-instance v0, Lcom/example/theapp/PointerPopupWindow$AlignMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/example/theapp/PointerPopupWindow$AlignMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/theapp/PointerPopupWindow$AlignMode;->DEFAULT:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    .line 142
    new-instance v1, Lcom/example/theapp/PointerPopupWindow$AlignMode;

    const-string v3, "CENTER_FIX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/example/theapp/PointerPopupWindow$AlignMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/example/theapp/PointerPopupWindow$AlignMode;->CENTER_FIX:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    .line 143
    new-instance v3, Lcom/example/theapp/PointerPopupWindow$AlignMode;

    const-string v5, "AUTO_OFFSET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/example/theapp/PointerPopupWindow$AlignMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/example/theapp/PointerPopupWindow$AlignMode;->AUTO_OFFSET:Lcom/example/theapp/PointerPopupWindow$AlignMode;

    .line 140
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/example/theapp/PointerPopupWindow$AlignMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/example/theapp/PointerPopupWindow$AlignMode;->$VALUES:[Lcom/example/theapp/PointerPopupWindow$AlignMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/theapp/PointerPopupWindow$AlignMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 140
    const-class v0, Lcom/example/theapp/PointerPopupWindow$AlignMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/example/theapp/PointerPopupWindow$AlignMode;

    return-object v0
.end method

.method public static values()[Lcom/example/theapp/PointerPopupWindow$AlignMode;
    .locals 1

    .line 140
    sget-object v0, Lcom/example/theapp/PointerPopupWindow$AlignMode;->$VALUES:[Lcom/example/theapp/PointerPopupWindow$AlignMode;

    invoke-virtual {v0}, [Lcom/example/theapp/PointerPopupWindow$AlignMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/example/theapp/PointerPopupWindow$AlignMode;

    return-object v0
.end method
