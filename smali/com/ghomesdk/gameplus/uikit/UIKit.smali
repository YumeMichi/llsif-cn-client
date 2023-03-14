.class public Lcom/ghomesdk/gameplus/uikit/UIKit;
.super Ljava/lang/Object;
.source "UIKit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIKit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V
    .locals 0

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/content/Context;Landroid/widget/EditText;I)V

    return-void
.end method

.method private static initHint(Landroid/content/Context;Landroid/widget/EditText;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 34
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/ghomesdk/gameplus/utils/MySpannableString;

    invoke-direct {v1, v0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 37
    invoke-static {p0, p2}, Lcom/ghomesdk/gameplus/utils/StyleUtil;->getTypeValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p2

    .line 38
    invoke-static {p0, p2}, Lcom/ghomesdk/gameplus/utils/StyleUtil;->getTextSize(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v2

    .line 39
    invoke-static {p0, p2}, Lcom/ghomesdk/gameplus/utils/StyleUtil;->getTextColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v3

    .line 40
    invoke-static {p0, p2}, Lcom/ghomesdk/gameplus/utils/StyleUtil;->getTextAlpha(Landroid/content/Context;Landroid/util/TypedValue;)F

    move-result p0

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float p2, p2, p0

    float-to-int p2, p2

    shl-int/lit8 p2, p2, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr p2, v4

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr p2, v3

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "color = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UIKit"

    invoke-static {v4, v3}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 44
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, p2, v2, v3}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextStyle(II[Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Landroid/widget/EditText;->getAlpha()F

    move-result p2

    .line 47
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setAlpha(F)V

    .line 48
    new-instance v0, Lcom/ghomesdk/gameplus/uikit/UIKit$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/ghomesdk/gameplus/uikit/UIKit$1;-><init>(Landroid/widget/EditText;FF)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
