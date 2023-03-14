.class public Lcom/ghomesdk/gameplus/utils/MySpannableString;
.super Landroid/text/SpannableString;
.source "MySpannableString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static getAttributeSize(Landroid/content/Context;I)I
    .locals 3

    .line 97
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 100
    new-array p1, v2, [I

    const/4 v1, 0x0

    const v2, 0x1010095

    aput v2, p1, v1

    .line 102
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 103
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 104
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method


# virtual methods
.method public varargs setFontStyle(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 6

    if-eqz p3, :cond_0

    .line 81
    :try_start_0
    array-length v0, p3

    if-lez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 84
    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 85
    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 86
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v4, p1, p2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x21

    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public setTextClick(Ljava/lang/String;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 169
    new-instance v1, Lcom/ghomesdk/gameplus/utils/MySpannableString$1;

    invoke-direct {v1, p0, p2}, Lcom/ghomesdk/gameplus/utils/MySpannableString$1;-><init>(Lcom/ghomesdk/gameplus/utils/MySpannableString;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    const/16 p2, 0x21

    .line 169
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public setTextStyle(IIIII)V
    .locals 1

    .line 38
    :try_start_0
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 p4, 0x21

    invoke-virtual {p0, v0, p1, p2, p4}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 40
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, p4}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 42
    new-instance p3, Landroid/text/style/StyleSpan;

    invoke-direct {p3, p5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public varargs setTextStyle(III[Ljava/lang/String;)V
    .locals 6

    if-eqz p4, :cond_0

    .line 60
    :try_start_0
    array-length v0, p4

    if-lez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_0

    .line 63
    aget-object v2, p4, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 64
    aget-object v3, p4, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 65
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v4, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 67
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 69
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, p3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public varargs setTextStyle(II[Ljava/lang/String;)V
    .locals 6

    if-eqz p3, :cond_0

    .line 111
    :try_start_0
    array-length v0, p3

    if-lez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 114
    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 115
    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 116
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v4, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 118
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public varargs setTextStyle(I[Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 151
    :try_start_0
    array-length v0, p2

    if-lez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 153
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 154
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 155
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 156
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public varargs setTextStyleSize(I[Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 130
    :try_start_0
    array-length v0, p2

    if-lez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 132
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 133
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 134
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 135
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v4, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
