.class final Lcom/ghomesdk/gameplus/uikit/UIKit$1;
.super Ljava/lang/Object;
.source "UIKit.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/content/Context;Landroid/widget/EditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_et:Landroid/widget/EditText;

.field final synthetic val$alpha:F

.field final synthetic val$textAlpha:F


# direct methods
.method constructor <init>(Landroid/widget/EditText;FF)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ghomesdk/gameplus/uikit/UIKit$1;->val$_et:Landroid/widget/EditText;

    iput p2, p0, Lcom/ghomesdk/gameplus/uikit/UIKit$1;->val$textAlpha:F

    iput p3, p0, Lcom/ghomesdk/gameplus/uikit/UIKit$1;->val$alpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/ghomesdk/gameplus/uikit/UIKit$1;->val$_et:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/ghomesdk/gameplus/uikit/UIKit$1;->val$_et:Landroid/widget/EditText;

    iget v0, p0, Lcom/ghomesdk/gameplus/uikit/UIKit$1;->val$textAlpha:F

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setAlpha(F)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/uikit/UIKit$1;->val$_et:Landroid/widget/EditText;

    iget v0, p0, Lcom/ghomesdk/gameplus/uikit/UIKit$1;->val$alpha:F

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
