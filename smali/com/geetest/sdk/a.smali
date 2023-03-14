.class public Lcom/geetest/sdk/a;
.super Ljava/lang/Object;
.source "GeetestUtilsHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/a$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/geetest/sdk/GT3ConfigBean;

.field private c:Lcom/geetest/sdk/b;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Lcom/geetest/sdk/b;

    invoke-direct {v0, p1}, Lcom/geetest/sdk/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    .line 5
    invoke-direct {p0, p1}, Lcom/geetest/sdk/a;->a(Landroid/content/Context;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/utils/n;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/geetest/sdk/utils/m;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :cond_0
    :goto_0
    new-instance v0, Lcom/geetest/sdk/ad$b;

    invoke-direct {v0}, Lcom/geetest/sdk/ad$b;-><init>()V

    .line 19
    invoke-virtual {v0, v1}, Lcom/geetest/sdk/ad$b;->a(Ljava/lang/String;)Lcom/geetest/sdk/ad$b;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Lcom/geetest/sdk/ad$b;->b(Ljava/lang/String;)Lcom/geetest/sdk/ad$b;

    move-result-object v0

    const-string v1, "0123456789012345"

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/ad$b;->b([B)Lcom/geetest/sdk/ad$b;

    move-result-object v0

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/ad$b;->a([B)Lcom/geetest/sdk/ad$b;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/geetest/sdk/ad$b;->a()Lcom/geetest/sdk/ad;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/geetest/sdk/ac;->a(Lcom/geetest/sdk/ad;)V

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Lcom/geetest/sdk/ac;->a(Z)V

    .line 26
    new-instance v0, Lcom/geetest/sdk/a$a;

    invoke-direct {v0, p0}, Lcom/geetest/sdk/a$a;-><init>(Lcom/geetest/sdk/a;)V

    invoke-static {v0}, Lcom/geetest/sdk/ac;->a(Lcom/geetest/sdk/aj;)V

    .line 34
    :try_start_1
    invoke-static {}, Lcom/geetest/sdk/ac;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :catch_1
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/geetest/sdk/j;->a()Lcom/geetest/sdk/j;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/geetest/sdk/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "fp"

    .line 41
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 43
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, ""

    :goto_1
    move-object v5, v0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/geetest/sdk/a$b;

    invoke-direct {v6, p0}, Lcom/geetest/sdk/a$b;-><init>(Lcom/geetest/sdk/a;)V

    const-string v2, "https://log.geetest.com/logger/mobile/log"

    const-string v4, "1"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/geetest/sdk/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/geetest/sdk/am;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mydata"

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "unknown"

    const-string v1, "uuid"

    .line 19
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/a;->b:Lcom/geetest/sdk/GT3ConfigBean;

    const-string v1, "GeetestUtilsHolder"

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/geetest/sdk/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 13
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Context must be activity type !"

    .line 14
    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "Context cannot be null !"

    .line 16
    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "Listener cannot be null !"

    .line 18
    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "GT3ConfigBean cannot be null !"

    .line 20
    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private j()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/a;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getPattern()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/a;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getPattern()I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->a()V

    return-void
.end method

.method public a(Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 7

    const-string v0, "GeetestUtilsHolder"

    const-string v1, "GT3Version-->4.3.2"

    .line 1
    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/a;->b:Lcom/geetest/sdk/GT3ConfigBean;

    .line 3
    invoke-direct {p0}, Lcom/geetest/sdk/a;->i()V

    .line 4
    iget-object v1, p0, Lcom/geetest/sdk/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lang-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "null"

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Default Lang-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "in"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    const-string v5, "-"

    if-eqz v2, :cond_2

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setLang(Ljava/lang/String;)V

    goto :goto_4

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "zh"

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {p1, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setLang(Ljava/lang/String;)V

    .line 13
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/geetest/sdk/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/geetest/sdk/model/beans/i;->a(Landroid/content/Context;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsed Lang-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-virtual {v0, p1}, Lcom/geetest/sdk/b;->a(Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 16
    iget-object p1, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-direct {p0}, Lcom/geetest/sdk/a;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/geetest/sdk/b;->a(I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->c()V

    return-void
.end method

.method public d()Lcom/geetest/sdk/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    return-object v0
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/a;->b:Lcom/geetest/sdk/GT3ConfigBean;

    const-string v1, "api.geetest.com"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getGt3ServiceNode()Lcom/geetest/sdk/utils/GT3ServiceNode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/geetest/sdk/a$c;->a:[I

    iget-object v2, p0, Lcom/geetest/sdk/a;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getGt3ServiceNode()Lcom/geetest/sdk/utils/GT3ServiceNode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 14
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    const-string v1, "apiv6.geetest.com"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    const-string v1, "api-ng.geetest.com"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    const-string v1, "api-na.geetest.com"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/b;->a(Ljava/lang/String;)V

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->m()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->i()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->k()V

    return-void
.end method

.method public h()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/geetest/sdk/a;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geetest/sdk/a;->d:J

    .line 7
    iget-object v0, p0, Lcom/geetest/sdk/a;->b:Lcom/geetest/sdk/GT3ConfigBean;

    const-string v1, "api.geetest.com"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getGt3ServiceNode()Lcom/geetest/sdk/utils/GT3ServiceNode;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    sget-object v0, Lcom/geetest/sdk/a$c;->a:[I

    iget-object v2, p0, Lcom/geetest/sdk/a;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getGt3ServiceNode()Lcom/geetest/sdk/utils/GT3ServiceNode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 20
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    const-string v1, "apiv6.geetest.com"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    const-string v1, "api-ng.geetest.com"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    const-string v1, "api-na.geetest.com"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_4
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/b;->a(Ljava/lang/String;)V

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/geetest/sdk/a;->c:Lcom/geetest/sdk/b;

    invoke-virtual {v0}, Lcom/geetest/sdk/b;->l()V

    return-void
.end method
