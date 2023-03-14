.class public Lcom/gsk/TouchMatrixActivity;
.super Landroid/app/Activity;
.source "TouchMatrixActivity.java"


# static fields
.field static instance:Lcom/gsk/TouchMatrixActivity;

.field static touchMatrixEventListener:Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;


# instance fields
.field btnBack:Landroid/widget/Button;

.field skipUserCancelCallback:Z

.field touchMatrix:Lcom/gsk/ui/TouchMatrix;

.field txtFooter:Landroid/widget/TextView;

.field txtMessage:Landroid/widget/TextView;

.field txtTip:Landroid/widget/TextView;

.field txtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/gsk/TouchMatrixActivity;->skipUserCancelCallback:Z

    return-void
.end method

.method public static getInstance()Lcom/gsk/TouchMatrixActivity;
    .locals 1

    .line 69
    sget-object v0, Lcom/gsk/TouchMatrixActivity;->instance:Lcom/gsk/TouchMatrixActivity;

    return-object v0
.end method

.method public static setTouchMatrixEventListener(Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;)V
    .locals 0

    .line 129
    sput-object p0, Lcom/gsk/TouchMatrixActivity;->touchMatrixEventListener:Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 200
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 202
    sget-object v0, Lcom/gsk/TouchMatrixActivity;->touchMatrixEventListener:Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/gsk/TouchMatrixActivity;->skipUserCancelCallback:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string v2, ""

    .line 203
    invoke-interface {v0, v1, v2}, Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;->onTouchFinished(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method getIconForHtmlText(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/gsk/TouchMatrixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gsk/TouchMatrixActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/gsk/TouchMatrixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    if-lez p2, :cond_2

    .line 142
    invoke-virtual {p1, v0, v0, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    return-object p1
.end method

.method observeUrlClick(Landroid/widget/TextView;)V
    .locals 9

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 163
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_3

    .line 164
    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    .line 165
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 166
    array-length v3, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 167
    new-instance v7, Lcom/gsk/TouchMatrixActivity$1SpanInfo;

    invoke-direct {v7, p0}, Lcom/gsk/TouchMatrixActivity$1SpanInfo;-><init>(Lcom/gsk/TouchMatrixActivity;)V

    .line 168
    invoke-interface {v2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    iput v8, v7, Lcom/gsk/TouchMatrixActivity$1SpanInfo;->Start:I

    .line 169
    invoke-interface {v2, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    iput v8, v7, Lcom/gsk/TouchMatrixActivity$1SpanInfo;->End:I

    .line 170
    invoke-interface {v2, v6}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    iput v8, v7, Lcom/gsk/TouchMatrixActivity$1SpanInfo;->Flags:I

    .line 172
    instance-of v8, v6, Landroid/text/style/URLSpan;

    if-eqz v8, :cond_0

    .line 173
    new-instance v8, Lcom/gsk/TouchMatrixActivity$6;

    check-cast v6, Landroid/text/style/URLSpan;

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, p0, v6}, Lcom/gsk/TouchMatrixActivity$6;-><init>(Lcom/gsk/TouchMatrixActivity;Ljava/lang/String;)V

    iput-object v8, v7, Lcom/gsk/TouchMatrixActivity$1SpanInfo;->Span:Ljava/lang/Object;

    goto :goto_1

    .line 184
    :cond_0
    iput-object v6, v7, Lcom/gsk/TouchMatrixActivity$1SpanInfo;->Span:Ljava/lang/Object;

    .line 186
    :goto_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 188
    :cond_1
    array-length v3, v1

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 189
    invoke-interface {v2, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 191
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsk/TouchMatrixActivity$1SpanInfo;

    .line 192
    iget-object v3, v1, Lcom/gsk/TouchMatrixActivity$1SpanInfo;->Span:Ljava/lang/Object;

    iget v4, v1, Lcom/gsk/TouchMatrixActivity$1SpanInfo;->Start:I

    iget v5, v1, Lcom/gsk/TouchMatrixActivity$1SpanInfo;->End:I

    iget v1, v1, Lcom/gsk/TouchMatrixActivity$1SpanInfo;->Flags:I

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 195
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "R.layout.youyun_activity_touch_matrix"

    .line 40
    invoke-static {p0, p1}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gsk/TouchMatrixActivity;->setContentView(I)V

    .line 42
    sput-object p0, Lcom/gsk/TouchMatrixActivity;->instance:Lcom/gsk/TouchMatrixActivity;

    const-string p1, "R.id.touch_matrix"

    .line 43
    invoke-static {p0, p1}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gsk/TouchMatrixActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gsk/ui/TouchMatrix;

    iput-object p1, p0, Lcom/gsk/TouchMatrixActivity;->touchMatrix:Lcom/gsk/ui/TouchMatrix;

    .line 44
    iget-object p1, p0, Lcom/gsk/TouchMatrixActivity;->touchMatrix:Lcom/gsk/ui/TouchMatrix;

    sget-object v0, Lcom/gsk/TouchMatrixActivity;->touchMatrixEventListener:Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;

    invoke-virtual {p1, v0}, Lcom/gsk/ui/TouchMatrix;->setTouchMatrixEventListener(Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;)V

    const-string p1, "R.id.btn_back"

    .line 46
    invoke-static {p0, p1}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gsk/TouchMatrixActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/gsk/TouchMatrixActivity;->btnBack:Landroid/widget/Button;

    const-string p1, "R.id.txt_title"

    .line 47
    invoke-static {p0, p1}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gsk/TouchMatrixActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gsk/TouchMatrixActivity;->txtTitle:Landroid/widget/TextView;

    .line 48
    iget-object p1, p0, Lcom/gsk/TouchMatrixActivity;->txtTitle:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const-string p1, "R.id.txt_tip"

    .line 49
    invoke-static {p0, p1}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gsk/TouchMatrixActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gsk/TouchMatrixActivity;->txtTip:Landroid/widget/TextView;

    .line 50
    iget-object p1, p0, Lcom/gsk/TouchMatrixActivity;->txtTip:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const-string p1, "R.id.txt_message"

    .line 51
    invoke-static {p0, p1}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gsk/TouchMatrixActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gsk/TouchMatrixActivity;->txtMessage:Landroid/widget/TextView;

    .line 52
    iget-object p1, p0, Lcom/gsk/TouchMatrixActivity;->txtMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const-string p1, "R.id.txt_footer"

    .line 53
    invoke-static {p0, p1}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gsk/TouchMatrixActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gsk/TouchMatrixActivity;->txtFooter:Landroid/widget/TextView;

    .line 54
    iget-object p1, p0, Lcom/gsk/TouchMatrixActivity;->txtFooter:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 56
    iget-object p1, p0, Lcom/gsk/TouchMatrixActivity;->btnBack:Landroid/widget/Button;

    new-instance v0, Lcom/gsk/TouchMatrixActivity$1;

    invoke-direct {v0, p0}, Lcom/gsk/TouchMatrixActivity$1;-><init>(Lcom/gsk/TouchMatrixActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget-object p1, Lcom/gsk/TouchMatrixActivity;->touchMatrixEventListener:Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;

    if-eqz p1, :cond_0

    .line 64
    invoke-interface {p1}, Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;->onTouchMatrixWillShown()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/gsk/TouchMatrixActivity;->btnBack:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 212
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method replaceURLSpan()V
    .locals 0

    return-void
.end method

.method public setFooter(Ljava/lang/String;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/gsk/TouchMatrixActivity;->txtFooter:Landroid/widget/TextView;

    new-instance v1, Lcom/gsk/TouchMatrixActivity$5;

    invoke-direct {v1, p0}, Lcom/gsk/TouchMatrixActivity$5;-><init>(Lcom/gsk/TouchMatrixActivity;)V

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lcom/gsk/TouchMatrixActivity;->txtFooter:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/gsk/TouchMatrixActivity;->observeUrlClick(Landroid/widget/TextView;)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/gsk/TouchMatrixActivity;->txtMessage:Landroid/widget/TextView;

    new-instance v1, Lcom/gsk/TouchMatrixActivity$4;

    invoke-direct {v1, p0}, Lcom/gsk/TouchMatrixActivity$4;-><init>(Lcom/gsk/TouchMatrixActivity;)V

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Lcom/gsk/TouchMatrixActivity;->txtMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/gsk/TouchMatrixActivity;->observeUrlClick(Landroid/widget/TextView;)V

    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/gsk/TouchMatrixActivity;->txtTip:Landroid/widget/TextView;

    new-instance v1, Lcom/gsk/TouchMatrixActivity$3;

    invoke-direct {v1, p0}, Lcom/gsk/TouchMatrixActivity$3;-><init>(Lcom/gsk/TouchMatrixActivity;)V

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/gsk/TouchMatrixActivity;->txtTip:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/gsk/TouchMatrixActivity;->observeUrlClick(Landroid/widget/TextView;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/gsk/TouchMatrixActivity;->txtTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/gsk/TouchMatrixActivity$2;

    invoke-direct {v1, p0}, Lcom/gsk/TouchMatrixActivity$2;-><init>(Lcom/gsk/TouchMatrixActivity;)V

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/gsk/TouchMatrixActivity;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/gsk/TouchMatrixActivity;->observeUrlClick(Landroid/widget/TextView;)V

    return-void
.end method

.method public showBackButton(Z)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/gsk/TouchMatrixActivity;->btnBack:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public showError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 77
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showPasswordErrorMark()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/gsk/TouchMatrixActivity;->touchMatrix:Lcom/gsk/ui/TouchMatrix;

    invoke-virtual {v0}, Lcom/gsk/ui/TouchMatrix;->showPasswordErrorMark()V

    return-void
.end method
