.class public Lcom/bytedance/applog/util/SimulateLaunchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/util/SimulateLaunchActivity$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/bytedance/applog/util/SimulateLaunchActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/bytedance/applog/util/SimulateLaunchActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->h:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/bytedance/applog/R$layout;->activity_simulate:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lcom/bytedance/applog/R$id;->text_tip:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/bytedance/applog/AppLog;->hasStarted()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->h:Landroid/widget/TextView;

    const-string v0, "\u542f\u52a8\u5931\u8d25,\u8bf7\u6309\u7535\u8111\u63d0\u793a\u68c0\u67e5\u539f\u56e0\u7136\u540e\u91cd\u65b0\u626b\u7801(AppLog\u672a\u521d\u59cb\u5316)"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "aid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->g:Ljava/lang/String;

    const-string v1, "debug_log"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->h:Landroid/widget/TextView;

    const-string v0, "\u542f\u52a8\u5931\u8d25,type\u53c2\u6570\u9519\u8bef"

    goto :goto_0

    :cond_1
    const-string v0, "url_prefix"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "urlPrefix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->h:Landroid/widget/TextView;

    const-string v0, "\u542f\u52a8\u5931\u8d25,\u65e0url_prefix\u53c2\u6570"

    goto :goto_0

    .line 1
    :cond_2
    sput-object v0, Lcom/bytedance/applog/r0;->f:Ljava/lang/String;

    const-string v0, "qr_param"

    .line 2
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->d:Ljava/lang/String;

    const-string p1, "resolution"

    invoke-static {p1, v2}, Lcom/bytedance/applog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->c:I

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->b:I

    :cond_3
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->a:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->e:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "1.0.0"

    iput-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->e:Ljava/lang/String;

    :goto_1
    new-instance p1, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;

    invoke-direct {p1, p0, v2}, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;-><init>(Lcom/bytedance/applog/util/SimulateLaunchActivity;Lcom/bytedance/applog/util/SimulateLaunchActivity$a;)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity;->h:Landroid/widget/TextView;

    const-string v0, "\u542f\u52a8\u5931\u8d25,\u8bf7\u6309\u7535\u8111\u63d0\u793a\u68c0\u67e5\u539f\u56e0\u7136\u540e\u91cd\u65b0\u626b\u7801(aid\u9519\u8bef)"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method
