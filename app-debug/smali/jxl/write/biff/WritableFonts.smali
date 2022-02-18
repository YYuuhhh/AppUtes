.class public Ljxl/write/biff/WritableFonts;
.super Ljxl/biff/Fonts;
.source "WritableFonts.java"


# direct methods
.method public constructor <init>(Ljxl/write/biff/WritableWorkbookImpl;)V
    .locals 3
    .param p1, "w"    # Ljxl/write/biff/WritableWorkbookImpl;

    .line 37
    invoke-direct {p0}, Ljxl/biff/Fonts;-><init>()V

    .line 39
    invoke-virtual {p1}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFonts;->addFont(Ljxl/biff/FontRecord;)V

    .line 42
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {v0, v1}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;)V

    .line 43
    .local v0, "f":Ljxl/write/WritableFont;
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFonts;->addFont(Ljxl/biff/FontRecord;)V

    .line 45
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {v1, v2}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;)V

    move-object v0, v1

    .line 46
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFonts;->addFont(Ljxl/biff/FontRecord;)V

    .line 48
    new-instance v1, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {v1, v2}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;)V

    move-object v0, v1

    .line 49
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFonts;->addFont(Ljxl/biff/FontRecord;)V

    .line 50
    return-void
.end method
