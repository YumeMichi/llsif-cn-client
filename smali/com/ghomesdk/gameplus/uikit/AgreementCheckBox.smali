.class public Lcom/ghomesdk/gameplus/uikit/AgreementCheckBox;
.super Landroid/widget/CheckBox;
.source "AgreementCheckBox.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/uikit/AgreementCheckBox;->initState(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/uikit/AgreementCheckBox;->initState(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/uikit/AgreementCheckBox;->initState(Landroid/content/Context;)V

    return-void
.end method

.method private initState(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/uikit/AgreementCheckBox;->setChecked(Z)V

    return-void
.end method
