.class public Ljxl/write/WritableFont;
.super Ljxl/write/biff/WritableFontRecord;
.source "WritableFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/WritableFont$BoldStyle;,
        Ljxl/write/WritableFont$FontName;
    }
.end annotation


# static fields
.field public static final ARIAL:Ljxl/write/WritableFont$FontName;

.field public static final BOLD:Ljxl/write/WritableFont$BoldStyle;

.field public static final COURIER:Ljxl/write/WritableFont$FontName;

.field public static final DEFAULT_POINT_SIZE:I = 0xa

.field public static final NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

.field public static final TAHOMA:Ljxl/write/WritableFont$FontName;

.field public static final TIMES:Ljxl/write/WritableFont$FontName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Ljxl/write/WritableFont$FontName;

    const-string v1, "Arial"

    invoke-direct {v0, v1}, Ljxl/write/WritableFont$FontName;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    .line 85
    new-instance v0, Ljxl/write/WritableFont$FontName;

    const-string v1, "Times New Roman"

    invoke-direct {v0, v1}, Ljxl/write/WritableFont$FontName;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    .line 90
    new-instance v0, Ljxl/write/WritableFont$FontName;

    const-string v1, "Courier New"

    invoke-direct {v0, v1}, Ljxl/write/WritableFont$FontName;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/write/WritableFont;->COURIER:Ljxl/write/WritableFont$FontName;

    .line 95
    new-instance v0, Ljxl/write/WritableFont$FontName;

    const-string v1, "Tahoma"

    invoke-direct {v0, v1}, Ljxl/write/WritableFont$FontName;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/write/WritableFont;->TAHOMA:Ljxl/write/WritableFont$FontName;

    .line 102
    new-instance v0, Ljxl/write/WritableFont$BoldStyle;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Ljxl/write/WritableFont$BoldStyle;-><init>(I)V

    sput-object v0, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    .line 106
    new-instance v0, Ljxl/write/WritableFont$BoldStyle;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1}, Ljxl/write/WritableFont$BoldStyle;-><init>(I)V

    sput-object v0, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    return-void
.end method

.method public constructor <init>(Ljxl/format/Font;)V
    .locals 0
    .param p1, "f"    # Ljxl/format/Font;

    .line 137
    invoke-direct {p0, p1}, Ljxl/write/biff/WritableFontRecord;-><init>(Ljxl/format/Font;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;)V
    .locals 8
    .param p1, "fn"    # Ljxl/write/WritableFont$FontName;

    .line 121
    sget-object v3, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v5, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v6, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v7, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    const/16 v2, 0xa

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;I)V
    .locals 8
    .param p1, "fn"    # Ljxl/write/WritableFont$FontName;
    .param p2, "ps"    # I

    .line 149
    sget-object v3, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v5, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v6, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v7, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V
    .locals 8
    .param p1, "fn"    # Ljxl/write/WritableFont$FontName;
    .param p2, "ps"    # I
    .param p3, "bs"    # Ljxl/write/WritableFont$BoldStyle;

    .line 164
    sget-object v5, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v6, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v7, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;Z)V
    .locals 8
    .param p1, "fn"    # Ljxl/write/WritableFont$FontName;
    .param p2, "ps"    # I
    .param p3, "bs"    # Ljxl/write/WritableFont$BoldStyle;
    .param p4, "italic"    # Z

    .line 181
    sget-object v5, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v6, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v7, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V
    .locals 8
    .param p1, "fn"    # Ljxl/write/WritableFont$FontName;
    .param p2, "ps"    # I
    .param p3, "bs"    # Ljxl/write/WritableFont$BoldStyle;
    .param p4, "it"    # Z
    .param p5, "us"    # Ljxl/format/UnderlineStyle;

    .line 203
    sget-object v6, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v7, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V
    .locals 8
    .param p1, "fn"    # Ljxl/write/WritableFont$FontName;
    .param p2, "ps"    # I
    .param p3, "bs"    # Ljxl/write/WritableFont$BoldStyle;
    .param p4, "it"    # Z
    .param p5, "us"    # Ljxl/format/UnderlineStyle;
    .param p6, "c"    # Ljxl/format/Colour;

    .line 225
    sget-object v7, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V
    .locals 8
    .param p1, "fn"    # Ljxl/write/WritableFont$FontName;
    .param p2, "ps"    # I
    .param p3, "bs"    # Ljxl/write/WritableFont$BoldStyle;
    .param p4, "it"    # Z
    .param p5, "us"    # Ljxl/format/UnderlineStyle;
    .param p6, "c"    # Ljxl/format/Colour;
    .param p7, "ss"    # Ljxl/format/ScriptStyle;

    .line 250
    iget-object v1, p1, Ljxl/write/WritableFont$FontName;->name:Ljava/lang/String;

    iget v3, p3, Ljxl/write/WritableFont$BoldStyle;->value:I

    invoke-virtual {p5}, Ljxl/format/UnderlineStyle;->getValue()I

    move-result v5

    invoke-virtual {p6}, Ljxl/format/Colour;->getValue()I

    move-result v6

    invoke-virtual {p7}, Ljxl/format/ScriptStyle;->getValue()I

    move-result v7

    move-object v0, p0

    move v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v7}, Ljxl/write/biff/WritableFontRecord;-><init>(Ljava/lang/String;IIZIII)V

    .line 253
    return-void
.end method

.method public static createFont(Ljava/lang/String;)Ljxl/write/WritableFont$FontName;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;

    .line 357
    new-instance v0, Ljxl/write/WritableFont$FontName;

    invoke-direct {v0, p0}, Ljxl/write/WritableFont$FontName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isStruckout()Z
    .locals 1

    .line 332
    invoke-super {p0}, Ljxl/write/biff/WritableFontRecord;->isStruckout()Z

    move-result v0

    return v0
.end method

.method public setBoldStyle(Ljxl/write/WritableFont$BoldStyle;)V
    .locals 1
    .param p1, "boldStyle"    # Ljxl/write/WritableFont$BoldStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 274
    iget v0, p1, Ljxl/write/WritableFont$BoldStyle;->value:I

    invoke-super {p0, v0}, Ljxl/write/biff/WritableFontRecord;->setBoldStyle(I)V

    .line 275
    return-void
.end method

.method public setColour(Ljxl/format/Colour;)V
    .locals 1
    .param p1, "colour"    # Ljxl/format/Colour;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 310
    invoke-virtual {p1}, Ljxl/format/Colour;->getValue()I

    move-result v0

    invoke-super {p0, v0}, Ljxl/write/biff/WritableFontRecord;->setColour(I)V

    .line 311
    return-void
.end method

.method public setItalic(Z)V
    .locals 0
    .param p1, "italic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 286
    invoke-super {p0, p1}, Ljxl/write/biff/WritableFontRecord;->setItalic(Z)V

    .line 287
    return-void
.end method

.method public setPointSize(I)V
    .locals 0
    .param p1, "pointSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 263
    invoke-super {p0, p1}, Ljxl/write/biff/WritableFontRecord;->setPointSize(I)V

    .line 264
    return-void
.end method

.method public setScriptStyle(Ljxl/format/ScriptStyle;)V
    .locals 1
    .param p1, "scriptStyle"    # Ljxl/format/ScriptStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Ljxl/format/ScriptStyle;->getValue()I

    move-result v0

    invoke-super {p0, v0}, Ljxl/write/biff/WritableFontRecord;->setScriptStyle(I)V

    .line 323
    return-void
.end method

.method public setStruckout(Z)V
    .locals 0
    .param p1, "struckout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 344
    invoke-super {p0, p1}, Ljxl/write/biff/WritableFontRecord;->setStruckout(Z)V

    .line 345
    return-void
.end method

.method public setUnderlineStyle(Ljxl/format/UnderlineStyle;)V
    .locals 1
    .param p1, "us"    # Ljxl/format/UnderlineStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 298
    invoke-virtual {p1}, Ljxl/format/UnderlineStyle;->getValue()I

    move-result v0

    invoke-super {p0, v0}, Ljxl/write/biff/WritableFontRecord;->setUnderlineStyle(I)V

    .line 299
    return-void
.end method
