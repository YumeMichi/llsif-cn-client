.class Lcom/geetest/sdk/dialog/views/a$b$d;
.super Ljava/lang/Object;
.source "WebviewBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/dialog/views/a$b;->gtNotify(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/dialog/views/a$b;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/dialog/views/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->g(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/dialog/views/GtWebView;->setVoice(Z)V

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->c(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/model/beans/b;

    move-result-object v0

    const-string v2, "voice"

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/model/beans/b;->j(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/utils/i;->a(Landroid/content/Context;)I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v2, v2, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v2}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/geetest/sdk/utils/i;->b(Landroid/content/Context;)I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v3, v3, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v3}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x43898000    # 275.0f

    invoke-static {v3, v4}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v4, v4, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v4}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x43ae0000    # 348.0f

    invoke-static {v4, v5}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v4

    .line 8
    iget-object v5, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v5, v5, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v5}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x43960000    # 300.0f

    invoke-static {v5, v6}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    .line 10
    iget-object v6, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v6, v6, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v6}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v1, :cond_2

    mul-int/lit8 v2, v2, 0x4

    .line 12
    div-int/lit8 v2, v2, 0x5

    if-ge v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    if-le v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    .line 21
    :goto_1
    sput v4, Lcom/geetest/sdk/dialog/views/a;->n:I

    .line 22
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->i(Lcom/geetest/sdk/dialog/views/a;)I

    move-result v0

    mul-int v4, v4, v0

    div-int/lit8 v4, v4, 0x64

    sput v4, Lcom/geetest/sdk/dialog/views/a;->o:I

    goto :goto_3

    .line 25
    :cond_2
    iget-object v2, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v2, v2, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v2}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v5, v5, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v5}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v5

    int-to-float v0, v0

    invoke-static {v5, v0}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;F)I

    move-result v0

    add-int/lit8 v0, v0, -0x2c

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    if-ge v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    if-le v0, v4, :cond_4

    move v3, v4

    .line 35
    :cond_4
    sput v3, Lcom/geetest/sdk/dialog/views/a;->o:I

    mul-int/lit8 v3, v3, 0x64

    .line 36
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->i(Lcom/geetest/sdk/dialog/views/a;)I

    move-result v0

    div-int/2addr v3, v0

    sput v3, Lcom/geetest/sdk/dialog/views/a;->n:I

    .line 41
    :goto_3
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->g(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->g(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 42
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->g(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 43
    sget v2, Lcom/geetest/sdk/dialog/views/a;->n:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    sget v2, Lcom/geetest/sdk/dialog/views/a;->o:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    iget-object v2, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v2, v2, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v2}, Lcom/geetest/sdk/dialog/views/a;->g(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    :cond_5
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->b(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/f;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 49
    sput-boolean v1, Lcom/geetest/sdk/utils/d;->a:Z

    .line 50
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$d;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->b(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/d;->show()V

    :cond_6
    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/geetest/sdk/utils/d;->a:Z

    return-void
.end method
