.class public Lcom/bytedance/applog/g0;
.super Lcom/bytedance/applog/t;
.source ""


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/bytedance/applog/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/x;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/bytedance/applog/t;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/applog/g0;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 5

    const-string v0, "app_version"

    iget-object v1, p0, Lcom/bytedance/applog/g0;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 1
    iget-object v2, v2, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getZiJieCloudPkg()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "package"

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const-string v4, "has zijie pkg"

    invoke-static {v4, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 3
    iget-object v2, v2, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getZiJieCloudPkg()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "real_package_name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/bytedance/applog/g0;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v4, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 5
    iget-object v4, v4, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->getVersion()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 7
    iget-object v4, v4, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->getVersion()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 9
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getVersionMinor()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "app_version_minor"

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 11
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getVersionMinor()Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_2
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_2
    const-string v0, ""

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 13
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getVersionCode()I

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "version_code"

    if-eqz v0, :cond_3

    .line 14
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 15
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getVersionCode()I

    move-result v0

    .line 16
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    :cond_3
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_4
    iget-object v0, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 17
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getUpdateVersionCode()I

    move-result v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "update_version_code"

    if-eqz v0, :cond_4

    .line 18
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 19
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getUpdateVersionCode()I

    move-result v0

    .line 20
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5

    :cond_4
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_5
    iget-object v0, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 21
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getManifestVersionCode()I

    move-result v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "manifest_version_code"

    if-eqz v0, :cond_5

    .line 22
    :try_start_4
    iget-object v0, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 23
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getManifestVersionCode()I

    move-result v0

    .line 24
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_6

    :cond_5
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_6
    iget-object v0, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 25
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v0, :cond_6

    const-string v0, "app_name"

    :try_start_5
    iget-object v3, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 27
    iget-object v3, v3, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getAppName()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v0, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 29
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getTweakedChannel()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v0, :cond_7

    const-string v0, "tweaked_channel"

    :try_start_6
    iget-object v3, p0, Lcom/bytedance/applog/g0;->f:Lcom/bytedance/applog/x;

    .line 31
    iget-object v3, v3, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getTweakedChannel()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_8

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    if-lez v0, :cond_8

    const-string v1, "display_name"

    :try_start_7
    iget-object v3, p0, Lcom/bytedance/applog/g0;->e:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_8
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "U SHALL NOT PASS!"

    .line 33
    invoke-static {v0, p1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method
