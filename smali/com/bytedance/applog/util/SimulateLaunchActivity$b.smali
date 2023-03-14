.class public Lcom/bytedance/applog/util/SimulateLaunchActivity$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/util/SimulateLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/util/SimulateLaunchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/applog/util/SimulateLaunchActivity;Lcom/bytedance/applog/util/SimulateLaunchActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;->a:Lcom/bytedance/applog/util/SimulateLaunchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, [Ljava/lang/Void;

    .line 1
    iget-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;->a:Lcom/bytedance/applog/util/SimulateLaunchActivity;

    .line 2
    iget-object v0, p1, Lcom/bytedance/applog/util/SimulateLaunchActivity;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lcom/bytedance/applog/util/SimulateLaunchActivity;->e:Ljava/lang/String;

    .line 4
    iget v2, p1, Lcom/bytedance/applog/util/SimulateLaunchActivity;->b:I

    .line 5
    iget v3, p1, Lcom/bytedance/applog/util/SimulateLaunchActivity;->c:I

    .line 6
    iget-object v4, p1, Lcom/bytedance/applog/util/SimulateLaunchActivity;->f:Ljava/lang/String;

    .line 7
    iget-object v5, p1, Lcom/bytedance/applog/util/SimulateLaunchActivity;->d:Ljava/lang/String;

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/bytedance/applog/r0;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_5

    const-string v0, "message"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_0

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;->a:Lcom/bytedance/applog/util/SimulateLaunchActivity;

    invoke-static {v3}, Lcom/bytedance/applog/util/SimulateLaunchActivity;->a(Lcom/bytedance/applog/util/SimulateLaunchActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "debug_log"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x1

    invoke-static {p1, v1}, Lcom/bytedance/applog/AppLog;->setRangersEventVerifyEnable(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;->a:Lcom/bytedance/applog/util/SimulateLaunchActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    goto/16 :goto_0

    :cond_1
    const-string v2, "OK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;->a:Lcom/bytedance/applog/util/SimulateLaunchActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;->a:Lcom/bytedance/applog/util/SimulateLaunchActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;->a:Lcom/bytedance/applog/util/SimulateLaunchActivity;

    invoke-static {v0}, Lcom/bytedance/applog/util/SimulateLaunchActivity;->a(Lcom/bytedance/applog/util/SimulateLaunchActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bind_query"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    sput-boolean v0, Lcom/bytedance/applog/c;->g:Z

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;->a:Lcom/bytedance/applog/util/SimulateLaunchActivity;

    invoke-virtual {v2, p1}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getPicker()Lcom/bytedance/applog/IPicker;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getPicker()Lcom/bytedance/applog/IPicker;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lcom/bytedance/applog/IPicker;->setMarqueeCookie(Ljava/lang/String;)V

    :cond_3
    invoke-static {v1}, Lcom/bytedance/applog/AppLog;->startSimulator(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;->a:Lcom/bytedance/applog/util/SimulateLaunchActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;->a:Lcom/bytedance/applog/util/SimulateLaunchActivity;

    invoke-static {v0}, Lcom/bytedance/applog/util/SimulateLaunchActivity;->b(Lcom/bytedance/applog/util/SimulateLaunchActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u542f\u52a8\u5931\u8d25,\u8bf7\u6309\u7535\u8111\u63d0\u793a\u68c0\u67e5\u539f\u56e0\u7136\u540e\u91cd\u65b0\u626b\u7801("

    invoke-static {v1}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/bytedance/applog/util/SimulateLaunchActivity$b;->a:Lcom/bytedance/applog/util/SimulateLaunchActivity;

    invoke-static {p1}, Lcom/bytedance/applog/util/SimulateLaunchActivity;->b(Lcom/bytedance/applog/util/SimulateLaunchActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u542f\u52a8\u5931\u8d25,\u8bf7\u6309\u7535\u8111\u63d0\u793a\u68c0\u67e5\u539f\u56e0\u7136\u540e\u91cd\u65b0\u626b\u7801(response is null)"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    return-void
.end method
