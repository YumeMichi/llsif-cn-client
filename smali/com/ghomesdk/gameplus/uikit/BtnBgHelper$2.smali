.class final Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$2;
.super Ljava/lang/Object;
.source "BtnBgHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$2;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$2;->val$tv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$2;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$2;->val$tv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$2;->val$et:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$2;->val$tv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$2;->val$tv:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

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
