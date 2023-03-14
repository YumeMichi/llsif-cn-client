.class public Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;
.super Ljava/lang/Object;
.source "BtnBgHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBtnBg(Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 82
    :goto_1
    new-instance v0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$3;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$3;-><init>(Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    new-instance v0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$4;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$4;-><init>(Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    new-instance p0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$5;

    invoke-direct {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$5;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static setBtnBg(Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 29
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 35
    :goto_0
    new-instance v0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$1;-><init>(Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    new-instance v0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$2;-><init>(Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static setBtnBg(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 1

    .line 179
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 182
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 180
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    :goto_1
    new-instance v0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$7;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    new-instance v0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$8;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static setBtnBg(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 151
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    :goto_0
    new-instance v0, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$6;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$6;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static setBtnBg(Ljava/util/List;Landroid/widget/TextView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 230
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 231
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 232
    new-instance v2, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$9;

    invoke-direct {v2, p1, p0}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper$9;-><init>(Landroid/widget/TextView;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 254
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 255
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
