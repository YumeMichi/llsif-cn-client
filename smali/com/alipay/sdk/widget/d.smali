.class public Lcom/alipay/sdk/widget/d;
.super Lcom/alipay/sdk/widget/c;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/sdk/widget/e$f;
.implements Lcom/alipay/sdk/widget/e$g;
.implements Lcom/alipay/sdk/widget/e$h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/widget/d$g;,
        Lcom/alipay/sdk/widget/d$f;,
        Lcom/alipay/sdk/widget/d$e;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "action"

.field public static final B:Ljava/lang/String; = "pushWindow"

.field public static final C:Ljava/lang/String; = "h5JsFuncCallback"

.field public static final D:Ljava/lang/String; = "sdkInfo"

.field public static final E:Ljava/lang/String; = "canUseTaoLogin"

.field public static final F:Ljava/lang/String; = "taoLogin"

.field public static final l:Ljava/lang/String; = "sdk_result_code:"

.field public static final m:Ljava/lang/String; = "alipayjsbridge://"

.field public static final n:Ljava/lang/String; = "onBack"

.field public static final o:Ljava/lang/String; = "setTitle"

.field public static final p:Ljava/lang/String; = "onRefresh"

.field public static final q:Ljava/lang/String; = "showBackButton"

.field public static final r:Ljava/lang/String; = "onExit"

.field public static final s:Ljava/lang/String; = "onLoadJs"

.field public static final t:Ljava/lang/String; = "callNativeFunc"

.field public static final u:Ljava/lang/String; = "back"

.field public static final v:Ljava/lang/String; = "title"

.field public static final w:Ljava/lang/String; = "refresh"

.field public static final x:Ljava/lang/String; = "backButton"

.field public static final y:Ljava/lang/String; = "refreshButton"

.field public static final z:Ljava/lang/String; = "exit"


# instance fields
.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public final h:Lcom/alipay/sdk/sys/a;

.field public i:Z

.field public j:Lcom/alipay/sdk/widget/e;

.field public k:Lcom/alipay/sdk/widget/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/alipay/sdk/widget/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/alipay/sdk/widget/d;->e:Z

    const-string p1, "GET"

    .line 3
    iput-object p1, p0, Lcom/alipay/sdk/widget/d;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/alipay/sdk/widget/d;->g:Z

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    .line 15
    new-instance p1, Lcom/alipay/sdk/widget/f;

    invoke-direct {p1}, Lcom/alipay/sdk/widget/f;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/widget/d;->k:Lcom/alipay/sdk/widget/f;

    .line 19
    iput-object p2, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    .line 20
    invoke-direct {p0}, Lcom/alipay/sdk/widget/d;->g()Z

    return-void
.end method

.method public static synthetic a(Lcom/alipay/sdk/widget/d;)Lcom/alipay/sdk/widget/e;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    invoke-static {p3}, Lcom/alipay/sdk/util/l;->f(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 72
    new-instance v1, Lcom/alipay/sdk/widget/d$f;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/alipay/sdk/widget/d$f;-><init>(Lcom/alipay/sdk/widget/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 73
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :try_start_2
    iget-object v2, v1, Lcom/alipay/sdk/widget/d$f;->b:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "refreshButton"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v4, "sdkInfo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_2
    const-string v4, "backButton"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string v4, "pushWindow"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_4
    const-string v4, "refresh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_5
    const-string v4, "title"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_6
    const-string v4, "exit"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_7
    const-string v4, "back"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_8
    const-string v4, "taoLogin"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v3, 0x9

    goto :goto_0

    :sswitch_9
    const-string v4, "canUseTaoLogin"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v3, 0x8

    :cond_1
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 144
    :pswitch_0
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/e;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    invoke-static {v2, v0}, Lcom/alipay/sdk/util/l;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    iget-object p2, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    const-string p3, "biz"

    const-string v1, "jsUrlErr"

    invoke-static {p2, p3, v1, v0}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "random"

    .line 149
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "options"

    .line 150
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v2, "random"

    .line 151
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    if-nez p3, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v2, "url"

    .line 154
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "action"

    .line 155
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto/16 :goto_1

    .line 161
    :cond_4
    instance-of p3, p2, Landroid/app/Activity;

    if-eqz p3, :cond_8

    .line 162
    iget-object v3, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    move-object v4, p2

    check-cast v4, Landroid/app/Activity;

    const/16 v5, 0x3f2

    new-instance v8, Lcom/alipay/sdk/widget/d$g;

    invoke-direct {v8, v1, v0}, Lcom/alipay/sdk/widget/d$g;-><init>(Lcom/alipay/sdk/widget/d$f;Ljava/lang/String;)V

    invoke-static/range {v3 .. v8}, Lcom/alipay/sdk/app/d;->a(Lcom/alipay/sdk/sys/a;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/app/d$a;)Z

    goto/16 :goto_1

    .line 163
    :pswitch_1
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/e;->getUrl()Ljava/lang/String;

    move-result-object p3

    .line 164
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    invoke-static {v0, p3}, Lcom/alipay/sdk/util/l;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 165
    iget-object p2, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    const-string v0, "biz"

    const-string v1, "jsUrlErr"

    invoke-static {p2, v0, v1, p3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 168
    :cond_5
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 169
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    invoke-static {v0, p2}, Lcom/alipay/sdk/app/d;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)Z

    move-result p2

    const-string v0, "enabled"

    .line 170
    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 171
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v2, "biz"

    const-string v3, "TbChk"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v2, v3, p2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1, p3}, Lcom/alipay/sdk/widget/d$f;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 173
    :pswitch_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "sdk_version"

    const-string v0, "15.8.02"

    .line 174
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string p3, "app_name"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 175
    :try_start_6
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    const-string p3, "app_version"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 176
    :try_start_8
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-virtual {v1, p2}, Lcom/alipay/sdk/widget/d$f;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :pswitch_3
    const-string p2, "url"

    .line 178
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "title"

    const-string v1, ""

    .line 179
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 180
    invoke-direct {p0, p2, p3}, Lcom/alipay/sdk/widget/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :pswitch_4
    const-string p2, "show"

    .line 181
    invoke-virtual {p3, p2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 182
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/e;->getRefreshButton()Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p2, :cond_6

    const/4 v5, 0x0

    :cond_6
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_5
    const-string p2, "show"

    .line 183
    invoke-virtual {p3, p2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 184
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/e;->getBackButton()Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p2, :cond_7

    const/4 v5, 0x0

    :cond_7
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_6
    const-string p2, "result"

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/sdk/app/b;->a(Ljava/lang/String;)V

    const-string p2, "success"

    .line 186
    invoke-virtual {p3, p2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/alipay/sdk/widget/d;->a(Z)V

    goto :goto_1

    .line 187
    :pswitch_7
    invoke-direct {p0}, Lcom/alipay/sdk/widget/d;->i()V

    goto :goto_1

    .line 188
    :pswitch_8
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/e;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    :pswitch_9
    const-string p2, "title"

    .line 189
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 191
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/e;->getTitle()Landroid/widget/TextView;

    move-result-object p2

    const-string v0, "title"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 284
    :try_start_9
    iget-object p3, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    const-string v0, "biz"

    const-string v1, "jInfoErr"

    invoke-static {p3, v0, v1, p2, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_8
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x6a677262 -> :sswitch_9
        -0x20ee4b19 -> :sswitch_8
        0x2e04e7 -> :sswitch_7
        0x2fb91e -> :sswitch_6
        0x6942258 -> :sswitch_5
        0x40b292db -> :sswitch_4
        0x65883baa -> :sswitch_3
        0x71a18ef9 -> :sswitch_2
        0x7417e808 -> :sswitch_1
        0x7938d5ed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/alipay/sdk/app/b;->a(Z)V

    .line 7
    iget-object p1, p0, Lcom/alipay/sdk/widget/c;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic a(Lcom/alipay/sdk/widget/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alipay/sdk/widget/d;->g:Z

    return p1
.end method

.method public static synthetic b(Lcom/alipay/sdk/widget/d;)Lcom/alipay/sdk/sys/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    return-object p0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    invoke-static {v0, p1}, Lcom/alipay/sdk/util/l;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "callNativeFunc"

    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "func"

    .line 86
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "cbId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "data"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/alipay/sdk/widget/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "onBack"

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/alipay/sdk/widget/d;->i()V

    goto/16 :goto_1

    :cond_1
    const-string v1, "setTitle"

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "title"

    .line 90
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {p1}, Lcom/alipay/sdk/widget/e;->getTitle()Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "onRefresh"

    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    iget-object p1, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {p1}, Lcom/alipay/sdk/widget/e;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    :cond_3
    const-string v1, "showBackButton"

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "bshow"

    .line 95
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "bshow"

    .line 96
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "true"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 97
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/e;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const-string v1, "onExit"

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "result"

    .line 99
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/sdk/app/b;->a(Ljava/lang/String;)V

    const-string p1, "bsucc"

    .line 100
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "true"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/d;->a(Z)V

    goto :goto_1

    :cond_6
    const-string v0, "onLoadJs"

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 102
    iget-object p1, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    const-string v0, "javascript:(function() {\n    if (window.AlipayJSBridge) {\n        return\n    }\n\n    function alipayjsbridgeFunc(url) {\n        var iframe = document.createElement(\"iframe\");\n        iframe.style.width = \"1px\";\n        iframe.style.height = \"1px\";\n        iframe.style.display = \"none\";\n        iframe.src = url;\n        document.body.appendChild(iframe);\n        setTimeout(function() {\n            document.body.removeChild(iframe)\n        }, 100)\n    }\n    window.alipayjsbridgeSetTitle = function(title) {\n        document.title = title;\n        alipayjsbridgeFunc(\"alipayjsbridge://setTitle?title=\" + encodeURIComponent(title))\n    };\n    window.alipayjsbridgeRefresh = function() {\n        alipayjsbridgeFunc(\"alipayjsbridge://onRefresh?\")\n    };\n    window.alipayjsbridgeBack = function() {\n        alipayjsbridgeFunc(\"alipayjsbridge://onBack?\")\n    };\n    window.alipayjsbridgeExit = function(bsucc) {\n        alipayjsbridgeFunc(\"alipayjsbridge://onExit?bsucc=\" + bsucc)\n    };\n    window.alipayjsbridgeShowBackButton = function(bshow) {\n        alipayjsbridgeFunc(\"alipayjsbridge://showBackButton?bshow=\" + bshow)\n    };\n    window.AlipayJSBridge = {\n        version: \"2.0\",\n        addListener: addListener,\n        hasListener: hasListener,\n        callListener: callListener,\n        callNativeFunc: callNativeFunc,\n        callBackFromNativeFunc: callBackFromNativeFunc\n    };\n    var uniqueId = 1;\n    var h5JsCallbackMap = {};\n\n    function iframeCall(paramStr) {\n        setTimeout(function() {\n        \tvar iframe = document.createElement(\"iframe\");\n        \tiframe.style.width = \"1px\";\n        \tiframe.style.height = \"1px\";\n        \tiframe.style.display = \"none\";\n        \tiframe.src = \"alipayjsbridge://callNativeFunc?\" + paramStr;\n        \tvar parent = document.body || document.documentElement;\n        \tparent.appendChild(iframe);\n        \tsetTimeout(function() {\n            \tparent.removeChild(iframe)\n        \t}, 0)\n        }, 0)\n    }\n\n    function callNativeFunc(nativeFuncName, data, h5JsCallback) {\n        var h5JsCallbackId = \"\";\n        if (h5JsCallback) {\n            h5JsCallbackId = \"cb_\" + (uniqueId++) + \"_\" + new Date().getTime();\n            h5JsCallbackMap[h5JsCallbackId] = h5JsCallback\n        }\n        var dataStr = \"\";\n        if (data) {\n            dataStr = encodeURIComponent(JSON.stringify(data))\n        }\n        var paramStr = \"func=\" + nativeFuncName + \"&cbId=\" + h5JsCallbackId + \"&data=\" + dataStr;\n        iframeCall(paramStr)\n    }\n\n    function callBackFromNativeFunc(h5JsCallbackId, data) {\n        var h5JsCallback = h5JsCallbackMap[h5JsCallbackId];\n        if (h5JsCallback) {\n            h5JsCallback(data);\n            delete h5JsCallbackMap[h5JsCallbackId]\n        }\n    }\n    var h5ListenerMap = {};\n\n    function addListener(jsFuncName, jsFunc) {\n        h5ListenerMap[jsFuncName] = jsFunc\n    }\n\n    function hasListener(jsFuncName) {\n        var jsFunc = h5ListenerMap[jsFuncName];\n        if (!jsFunc) {\n            return false\n        }\n        return true\n    }\n\n    function callListener(h5JsFuncName, data, nativeCallbackId) {\n        var responseCallback;\n        if (nativeCallbackId) {\n            responseCallback = function(responseData) {\n                var dataStr = \"\";\n                if (responseData) {\n                    dataStr = encodeURIComponent(JSON.stringify(responseData))\n                }\n                var paramStr = \"func=h5JsFuncCallback\" + \"&cbId=\" + nativeCallbackId + \"&data=\" + dataStr;\n                iframeCall(paramStr)\n            }\n        }\n        var h5JsFunc = h5ListenerMap[h5JsFuncName];\n        if (h5JsFunc) {\n            h5JsFunc(data, responseCallback)\n        } else if (h5JsFuncName == \"h5BackAction\") {\n            if (!window.alipayjsbridgeH5BackAction || !alipayjsbridgeH5BackAction()) {\n                var paramStr = \"func=back\";\n                iframeCall(paramStr)\n            }\n        } else {\n            console.log(\"AlipayJSBridge: no h5JsFunc \" + h5JsFuncName + data)\n        }\n    }\n    var event;\n    if (window.CustomEvent) {\n        event = new CustomEvent(\"alipayjsbridgeready\")\n    } else {\n        event = document.createEvent(\"Event\");\n        event.initEvent(\"alipayjsbridgeready\", true, true)\n    }\n    document.dispatchEvent(event);\n    setTimeout(excuteH5InitFuncs, 0);\n\n    function excuteH5InitFuncs() {\n        if (window.AlipayJSBridgeInitArray) {\n            var h5InitFuncs = window.AlipayJSBridgeInitArray;\n            delete window.AlipayJSBridgeInitArray;\n            for (var i = 0; i < h5InitFuncs.length; i++) {\n                try {\n                    h5InitFuncs[i](AlipayJSBridge)\n                } catch (e) {\n                    setTimeout(function() {\n                        throw e\n                    })\n                }\n            }\n        }\n    }\n})();\n"

    invoke-virtual {p1, v0}, Lcom/alipay/sdk/widget/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15

    move-object v1, p0

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, v1, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 48
    :try_start_1
    new-instance v3, Lcom/alipay/sdk/widget/e$e;

    invoke-virtual {p0}, Lcom/alipay/sdk/widget/c;->a()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/alipay/sdk/widget/c;->a()Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-direct {v3, v4, v6}, Lcom/alipay/sdk/widget/e$e;-><init>(ZZ)V

    .line 49
    new-instance v4, Lcom/alipay/sdk/widget/e;

    iget-object v6, v1, Lcom/alipay/sdk/widget/c;->a:Landroid/app/Activity;

    iget-object v7, v1, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    invoke-direct {v4, v6, v7, v3}, Lcom/alipay/sdk/widget/e;-><init>(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/widget/e$e;)V

    iput-object v4, v1, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    .line 50
    invoke-virtual {v4, p0}, Lcom/alipay/sdk/widget/e;->setChromeProxy(Lcom/alipay/sdk/widget/e$f;)V

    .line 51
    iget-object v3, v1, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {v3, p0}, Lcom/alipay/sdk/widget/e;->setWebClientProxy(Lcom/alipay/sdk/widget/e$g;)V

    .line 52
    iget-object v3, v1, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {v3, p0}, Lcom/alipay/sdk/widget/e;->setWebEventProxy(Lcom/alipay/sdk/widget/e$h;)V

    .line 53
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    iget-object v3, v1, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {v3}, Lcom/alipay/sdk/widget/e;->getTitle()Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :cond_0
    :try_start_2
    iput-boolean v5, v1, Lcom/alipay/sdk/widget/d;->g:Z

    .line 62
    iget-object v3, v1, Lcom/alipay/sdk/widget/d;->k:Lcom/alipay/sdk/widget/f;

    invoke-virtual {v3, v0}, Lcom/alipay/sdk/widget/f;->a(Lcom/alipay/sdk/widget/e;)V

    .line 64
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v6, 0x190

    .line 67
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 68
    invoke-virtual {v3, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 69
    new-instance v2, Lcom/alipay/sdk/widget/d$c;

    move-object/from16 v4, p1

    invoke-direct {v2, p0, v0, v4}, Lcom/alipay/sdk/widget/d$c;-><init>(Lcom/alipay/sdk/widget/d;Lcom/alipay/sdk/widget/e;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 78
    iget-object v0, v1, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 79
    iget-object v0, v1, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v5

    :catchall_0
    monitor-exit p0

    return v2

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Z
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->k:Lcom/alipay/sdk/widget/f;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/f;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/sdk/widget/d;->g:Z

    .line 5
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    .line 6
    iget-object v2, p0, Lcom/alipay/sdk/widget/d;->k:Lcom/alipay/sdk/widget/f;

    invoke-virtual {v2}, Lcom/alipay/sdk/widget/f;->c()Lcom/alipay/sdk/widget/e;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    .line 7
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v3, 0x190

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 12
    new-instance v3, Lcom/alipay/sdk/widget/d$b;

    invoke-direct {v3, p0, v0}, Lcom/alipay/sdk/widget/d$b;-><init>(Lcom/alipay/sdk/widget/d;Lcom/alipay/sdk/widget/e;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 21
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Landroid/app/Activity;

    .line 2
    iget-object v1, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v2, p0, Lcom/alipay/sdk/widget/d;->e:Z

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "javascript:window.AlipayJSBridge.callListener(\'h5BackAction\');"

    .line 9
    invoke-virtual {v1, v0}, Lcom/alipay/sdk/widget/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/widget/e$e;

    invoke-virtual {p0}, Lcom/alipay/sdk/widget/c;->a()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alipay/sdk/widget/c;->a()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-direct {v0, v1, v3}, Lcom/alipay/sdk/widget/e$e;-><init>(ZZ)V

    .line 2
    new-instance v1, Lcom/alipay/sdk/widget/e;

    iget-object v3, p0, Lcom/alipay/sdk/widget/c;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, v3, v4, v0}, Lcom/alipay/sdk/widget/e;-><init>(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/widget/e$e;)V

    iput-object v1, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    .line 3
    invoke-virtual {v1, p0}, Lcom/alipay/sdk/widget/e;->setChromeProxy(Lcom/alipay/sdk/widget/e$f;)V

    .line 4
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/e;->setWebClientProxy(Lcom/alipay/sdk/widget/e$g;)V

    .line 5
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/e;->setWebEventProxy(Lcom/alipay/sdk/widget/e$h;)V

    .line 6
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/e;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:(function() {\n    if (window.AlipayJSBridge) {\n        return\n    }\n\n    function alipayjsbridgeFunc(url) {\n        var iframe = document.createElement(\"iframe\");\n        iframe.style.width = \"1px\";\n        iframe.style.height = \"1px\";\n        iframe.style.display = \"none\";\n        iframe.src = url;\n        document.body.appendChild(iframe);\n        setTimeout(function() {\n            document.body.removeChild(iframe)\n        }, 100)\n    }\n    window.alipayjsbridgeSetTitle = function(title) {\n        document.title = title;\n        alipayjsbridgeFunc(\"alipayjsbridge://setTitle?title=\" + encodeURIComponent(title))\n    };\n    window.alipayjsbridgeRefresh = function() {\n        alipayjsbridgeFunc(\"alipayjsbridge://onRefresh?\")\n    };\n    window.alipayjsbridgeBack = function() {\n        alipayjsbridgeFunc(\"alipayjsbridge://onBack?\")\n    };\n    window.alipayjsbridgeExit = function(bsucc) {\n        alipayjsbridgeFunc(\"alipayjsbridge://onExit?bsucc=\" + bsucc)\n    };\n    window.alipayjsbridgeShowBackButton = function(bshow) {\n        alipayjsbridgeFunc(\"alipayjsbridge://showBackButton?bshow=\" + bshow)\n    };\n    window.AlipayJSBridge = {\n        version: \"2.0\",\n        addListener: addListener,\n        hasListener: hasListener,\n        callListener: callListener,\n        callNativeFunc: callNativeFunc,\n        callBackFromNativeFunc: callBackFromNativeFunc\n    };\n    var uniqueId = 1;\n    var h5JsCallbackMap = {};\n\n    function iframeCall(paramStr) {\n        setTimeout(function() {\n        \tvar iframe = document.createElement(\"iframe\");\n        \tiframe.style.width = \"1px\";\n        \tiframe.style.height = \"1px\";\n        \tiframe.style.display = \"none\";\n        \tiframe.src = \"alipayjsbridge://callNativeFunc?\" + paramStr;\n        \tvar parent = document.body || document.documentElement;\n        \tparent.appendChild(iframe);\n        \tsetTimeout(function() {\n            \tparent.removeChild(iframe)\n        \t}, 0)\n        }, 0)\n    }\n\n    function callNativeFunc(nativeFuncName, data, h5JsCallback) {\n        var h5JsCallbackId = \"\";\n        if (h5JsCallback) {\n            h5JsCallbackId = \"cb_\" + (uniqueId++) + \"_\" + new Date().getTime();\n            h5JsCallbackMap[h5JsCallbackId] = h5JsCallback\n        }\n        var dataStr = \"\";\n        if (data) {\n            dataStr = encodeURIComponent(JSON.stringify(data))\n        }\n        var paramStr = \"func=\" + nativeFuncName + \"&cbId=\" + h5JsCallbackId + \"&data=\" + dataStr;\n        iframeCall(paramStr)\n    }\n\n    function callBackFromNativeFunc(h5JsCallbackId, data) {\n        var h5JsCallback = h5JsCallbackMap[h5JsCallbackId];\n        if (h5JsCallback) {\n            h5JsCallback(data);\n            delete h5JsCallbackMap[h5JsCallbackId]\n        }\n    }\n    var h5ListenerMap = {};\n\n    function addListener(jsFuncName, jsFunc) {\n        h5ListenerMap[jsFuncName] = jsFunc\n    }\n\n    function hasListener(jsFuncName) {\n        var jsFunc = h5ListenerMap[jsFuncName];\n        if (!jsFunc) {\n            return false\n        }\n        return true\n    }\n\n    function callListener(h5JsFuncName, data, nativeCallbackId) {\n        var responseCallback;\n        if (nativeCallbackId) {\n            responseCallback = function(responseData) {\n                var dataStr = \"\";\n                if (responseData) {\n                    dataStr = encodeURIComponent(JSON.stringify(responseData))\n                }\n                var paramStr = \"func=h5JsFuncCallback\" + \"&cbId=\" + nativeCallbackId + \"&data=\" + dataStr;\n                iframeCall(paramStr)\n            }\n        }\n        var h5JsFunc = h5ListenerMap[h5JsFuncName];\n        if (h5JsFunc) {\n            h5JsFunc(data, responseCallback)\n        } else if (h5JsFuncName == \"h5BackAction\") {\n            if (!window.alipayjsbridgeH5BackAction || !alipayjsbridgeH5BackAction()) {\n                var paramStr = \"func=back\";\n                iframeCall(paramStr)\n            }\n        } else {\n            console.log(\"AlipayJSBridge: no h5JsFunc \" + h5JsFuncName + data)\n        }\n    }\n    var event;\n    if (window.CustomEvent) {\n        event = new CustomEvent(\"alipayjsbridgeready\")\n    } else {\n        event = document.createEvent(\"Event\");\n        event.initEvent(\"alipayjsbridgeready\", true, true)\n    }\n    document.dispatchEvent(event);\n    setTimeout(excuteH5InitFuncs, 0);\n\n    function excuteH5InitFuncs() {\n        if (window.AlipayJSBridgeInitArray) {\n            var h5InitFuncs = window.AlipayJSBridgeInitArray;\n            delete window.AlipayJSBridgeInitArray;\n            for (var i = 0; i < h5InitFuncs.length; i++) {\n                try {\n                    h5InitFuncs[i](AlipayJSBridge)\n                } catch (e) {\n                    setTimeout(function() {\n                        throw e\n                    })\n                }\n            }\n        }\n    }\n})();\n;window.AlipayJSBridge.callListener(\'h5PageFinished\');"

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized i()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/e;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->k:Lcom/alipay/sdk/widget/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/alipay/sdk/widget/d;->e()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/d;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/alipay/sdk/widget/e;)V
    .locals 1

    monitor-enter p0

    .line 285
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/sdk/widget/e;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 286
    invoke-virtual {p1}, Lcom/alipay/sdk/widget/e;->getRefreshButton()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->f:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/sdk/widget/e;->a(Ljava/lang/String;[B)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/widget/e;->a(Ljava/lang/String;)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {p1}, Lcom/alipay/sdk/widget/e;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/sdk/widget/c;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    monitor-enter p0

    .line 3
    :try_start_0
    iput-object p2, p0, Lcom/alipay/sdk/widget/d;->f:Ljava/lang/String;

    .line 4
    iget-object p2, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {p2}, Lcom/alipay/sdk/widget/e;->getTitle()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iput-boolean p3, p0, Lcom/alipay/sdk/widget/d;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/alipay/sdk/widget/e;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    const/4 p2, 0x1

    .line 56
    :try_start_0
    iput-boolean p2, p0, Lcom/alipay/sdk/widget/d;->i:Z

    .line 57
    iget-object p2, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "net"

    const-string v0, "SSLError"

    invoke-static {p2, p4, v0, p3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/alipay/sdk/widget/e;->getRefreshButton()Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/alipay/sdk/widget/e;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z
    .locals 4

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object p1, p0, Lcom/alipay/sdk/widget/c;->a:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    .line 64
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "net"

    const-string v3, "SSLError"

    invoke-static {v1, v2, v3, p3}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance p3, Lcom/alipay/sdk/widget/d$d;

    invoke-direct {p3, p0, p1, p2}, Lcom/alipay/sdk/widget/d$d;-><init>(Lcom/alipay/sdk/widget/d;Landroid/app/Activity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/alipay/sdk/widget/e;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    monitor-exit p0

    return v0

    .line 30
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/alipay/sdk/widget/c;->a:Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    monitor-exit p0

    return v1

    .line 36
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    invoke-static {v2, p2, p1}, Lcom/alipay/sdk/util/l;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    const-string v2, "alipayjsbridge://"

    .line 40
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 p1, 0x11

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/d;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "sdklite://h5quit"

    .line 43
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 44
    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/d;->a(Z)V

    goto :goto_1

    :cond_4
    const-string v0, "http://"

    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    goto :goto_0

    .line 49
    :cond_5
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 54
    :try_start_5
    iget-object p2, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    const-string v0, "biz"

    invoke-static {p2, v0, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 55
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {p1, p2}, Lcom/alipay/sdk/widget/e;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/alipay/sdk/widget/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "<head>"

    .line 14
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "sdk_result_code:"

    .line 15
    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    new-instance p1, Lcom/alipay/sdk/widget/d$a;

    invoke-direct {p1, p0}, Lcom/alipay/sdk/widget/d$a;-><init>(Lcom/alipay/sdk/widget/d;)V

    .line 22
    iget-object p2, p0, Lcom/alipay/sdk/widget/c;->a:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 25
    :cond_0
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/alipay/sdk/widget/e;)V
    .locals 0

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/sdk/widget/d;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .locals 5

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/c;->a:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/sdk/widget/c;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9
    iget-object v2, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2}, Lcom/alipay/sdk/widget/e;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/sdk/widget/e;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/alipay/sdk/widget/d;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    sget-object v2, Lcom/alipay/sdk/app/c;->f:Lcom/alipay/sdk/app/c;

    invoke-virtual {v2}, Lcom/alipay/sdk/app/c;->b()I

    move-result v2

    invoke-static {v2}, Lcom/alipay/sdk/app/c;->b(I)Lcom/alipay/sdk/app/c;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/alipay/sdk/app/c;->b()I

    move-result v3

    invoke-virtual {v2}, Lcom/alipay/sdk/app/c;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v3, v2, v4}, Lcom/alipay/sdk/app/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/sdk/app/b;->a(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {}, Lcom/alipay/sdk/app/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/sdk/app/b;->a(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    .line 25
    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 44
    :cond_5
    :try_start_3
    iget-boolean v0, p0, Lcom/alipay/sdk/widget/d;->g:Z

    if-nez v0, :cond_6

    .line 45
    invoke-direct {p0}, Lcom/alipay/sdk/widget/d;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/alipay/sdk/widget/e;Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alipay/sdk/util/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "biz"

    const-string v2, "h5ldd"

    invoke-static {v0, v1, v2, p2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/alipay/sdk/widget/d;->h()V

    .line 82
    invoke-virtual {p1}, Lcom/alipay/sdk/widget/e;->getRefreshButton()Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/e;->a()V

    .line 2
    iget-object v0, p0, Lcom/alipay/sdk/widget/d;->k:Lcom/alipay/sdk/widget/f;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/alipay/sdk/widget/e;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "http"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/alipay/sdk/widget/e;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/alipay/sdk/widget/d;->j:Lcom/alipay/sdk/widget/e;

    invoke-virtual {p1}, Lcom/alipay/sdk/widget/e;->getTitle()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/alipay/sdk/widget/d;->i:Z

    return v0
.end method

.method public declared-synchronized d(Lcom/alipay/sdk/widget/e;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/alipay/sdk/widget/d;->h:Lcom/alipay/sdk/sys/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alipay/sdk/util/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "biz"

    const-string v2, "h5ld"

    invoke-static {p1, v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ".apk"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/alipay/sdk/widget/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/sdk/widget/d;->g:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
