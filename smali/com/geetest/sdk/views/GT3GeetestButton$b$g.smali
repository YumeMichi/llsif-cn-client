.class Lcom/geetest/sdk/views/GT3GeetestButton$b$g;
.super Ljava/lang/Object;
.source "GT3GeetestButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/views/GT3GeetestButton$b;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/geetest/sdk/views/GT3GeetestButton$b;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/views/GT3GeetestButton$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iput-object p2, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$500(Lcom/geetest/sdk/views/GT3GeetestButton;)Lcom/geetest/sdk/views/GT3GeetestView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/views/GT3GeetestView;->b()V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "gt3_lin_file_shape"

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 5
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$600(Lcom/geetest/sdk/views/GT3GeetestButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$700(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v1, v1, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "gt3logogray"

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/o;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$1300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$1300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->a:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$800(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$800(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$800(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/geetest/sdk/model/beans/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$1100(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$1100(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/geetest/sdk/model/beans/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$800(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x9e9e9f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$800(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 24
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;->c:Lcom/geetest/sdk/views/GT3GeetestButton$b;

    iget-object v0, v0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$1002(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    return-void
.end method
