.class public Ljxl/write/biff/WritableFormattingRecords;
.super Ljxl/biff/FormattingRecords;
.source "WritableFormattingRecords.java"


# static fields
.field public static normalStyle:Ljxl/write/WritableCellFormat;


# direct methods
.method public constructor <init>(Ljxl/biff/Fonts;Ljxl/write/biff/Styles;)V
    .locals 6
    .param p1, "f"    # Ljxl/biff/Fonts;
    .param p2, "styles"    # Ljxl/write/biff/Styles;

    .line 52
    invoke-direct {p0, p1}, Ljxl/biff/FormattingRecords;-><init>(Ljxl/biff/Fonts;)V

    .line 57
    :try_start_0
    new-instance v0, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v1

    sget-object v2, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v0, v1, v2}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 59
    .local v0, "sxf":Ljxl/write/biff/StyleXFRecord;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 60
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 62
    new-instance v2, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v3

    sget-object v4, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3, v4}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v2

    .line 63
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 64
    const v2, 0xf400

    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 65
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 67
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 68
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 69
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 70
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 72
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 73
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 74
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 75
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 77
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 78
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 79
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 80
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 82
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 83
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 84
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 85
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 87
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 89
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 90
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 91
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 93
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 95
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 96
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 97
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 99
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 101
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 102
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 103
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 105
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 107
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 108
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 109
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 111
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 113
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 114
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 115
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 117
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 119
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 120
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 121
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 123
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 125
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 126
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 127
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 129
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 131
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 132
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 133
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 135
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 137
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 138
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 139
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 143
    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 146
    new-instance v2, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v3

    sget-object v4, Ljxl/write/NumberFormats;->FORMAT7:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3, v4}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v2

    .line 148
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 149
    const v2, 0xf800

    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 150
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 152
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->FORMAT5:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 154
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 155
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 156
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 158
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->FORMAT8:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 160
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 161
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 162
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 164
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->FORMAT6:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 166
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 167
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 168
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 170
    new-instance v3, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v4

    sget-object v5, Ljxl/write/NumberFormats;->PERCENT_INTEGER:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v4, v5}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    move-object v0, v3

    .line 172
    invoke-virtual {v0, v1}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 173
    invoke-virtual {v0, v2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 174
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V
    :try_end_0
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "sxf":Ljxl/write/biff/StyleXFRecord;
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljxl/biff/NumFormatRecordsException;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljxl/biff/NumFormatRecordsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljxl/common/Assert;->verify(ZLjava/lang/String;)V

    .line 221
    .end local v0    # "e":Ljxl/biff/NumFormatRecordsException;
    :goto_0
    return-void
.end method
