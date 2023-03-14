.class public Lcom/geetest/sdk/model/beans/i;
.super Ljava/lang/Object;
.source "Gt3GeetestText.java"


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/String; = ""

.field private static c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""

.field private static f:Ljava/lang/String; = ""

.field private static g:Ljava/lang/String; = ""

.field private static h:Ljava/lang/String; = ""

.field private static i:Ljava/lang/String; = ""

.field private static j:Ljava/lang/String; = ""

.field private static k:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "gt3_geetest_click"

    .line 2
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/i;->a:Ljava/lang/String;

    const-string v0, "gt3_geetest_http_error"

    .line 3
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/i;->b:Ljava/lang/String;

    const-string v0, "gt3_geetest_please_verify"

    .line 4
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/i;->c:Ljava/lang/String;

    const-string v0, "gt3_geetest_success"

    .line 5
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/i;->d:Ljava/lang/String;

    const-string v0, "gt3_geetest_analyzing"

    .line 6
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/i;->e:Ljava/lang/String;

    const-string v0, "gt3_geetest_checking"

    .line 7
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/i;->f:Ljava/lang/String;

    const-string v0, "gt3_geetest_support"

    .line 8
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/i;->g:Ljava/lang/String;

    const-string v0, "gt3_geetest_pass"

    .line 9
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/i;->h:Ljava/lang/String;

    const-string v0, "gt3_geetest_http_timeout"

    .line 10
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/i;->i:Ljava/lang/String;

    const-string v0, "gt3_geetest_try_again"

    .line 11
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/model/beans/i;->j:Ljava/lang/String;

    const-string v0, "gt3_geetest_closed"

    .line 12
    invoke-static {p0, v0}, Lcom/geetest/sdk/utils/o;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/geetest/sdk/model/beans/i;->k:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/i;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/model/beans/i;->c:Ljava/lang/String;

    return-object v0
.end method
