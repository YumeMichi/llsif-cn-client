.class final Lcom/sina/weibo/sdk/web/b/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sina/weibo/sdk/net/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/web/b/d;->a(Lcom/sina/weibo/sdk/web/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sina/weibo/sdk/net/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aH:Lcom/sina/weibo/sdk/web/b/b$a;

.field final synthetic aI:Lcom/sina/weibo/sdk/web/b/d;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/web/b/d;Lcom/sina/weibo/sdk/web/b/b$a;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/b/d$1;->aI:Lcom/sina/weibo/sdk/web/b/d;

    iput-object p2, p0, Lcom/sina/weibo/sdk/web/b/d$1;->aH:Lcom/sina/weibo/sdk/web/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 114
    check-cast p1, Ljava/lang/String;

    .line 1118
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handle image result :"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WbShareTag"

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1121
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 1122
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "data"

    .line 1123
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1125
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/b/d$1;->aI:Lcom/sina/weibo/sdk/web/b/d;

    .line 2026
    iput-object v0, p1, Lcom/sina/weibo/sdk/web/b/d;->aG:Ljava/lang/String;

    .line 1126
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/b/d$1;->aH:Lcom/sina/weibo/sdk/web/b/b$a;

    if-eqz p1, :cond_1

    .line 1127
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/b/d$1;->aH:Lcom/sina/weibo/sdk/web/b/b$a;

    invoke-interface {p1}, Lcom/sina/weibo/sdk/web/b/b$a;->onComplete()V

    return-void

    .line 1130
    :cond_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/b/d$1;->aH:Lcom/sina/weibo/sdk/web/b/b$a;

    if-eqz p1, :cond_1

    .line 1131
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/b/d$1;->aH:Lcom/sina/weibo/sdk/web/b/b$a;

    const-string v0, "\u56fe\u7247\u5185\u5bb9\u4e0d\u5408\u9002\uff0c\u7981\u6b62\u4e0a\u4f20\uff01"

    invoke-interface {p1, v0}, Lcom/sina/weibo/sdk/web/b/b$a;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 1135
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1136
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/b/d$1;->aH:Lcom/sina/weibo/sdk/web/b/b$a;

    if-eqz p1, :cond_2

    const-string v0, "\u89e3\u6790\u670d\u52a1\u7aef\u8fd4\u56de\u7684\u5b57\u7b26\u4e32\u65f6\u53d1\u751f\u5f02\u5e38\uff01"

    .line 1137
    invoke-interface {p1, v0}, Lcom/sina/weibo/sdk/web/b/b$a;->onError(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1141
    :cond_3
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/b/d$1;->aH:Lcom/sina/weibo/sdk/web/b/b$a;

    if-eqz p1, :cond_4

    const-string v0, "\u5904\u7406\u56fe\u7247\uff0c\u670d\u52a1\u7aef\u8fd4\u56denull!"

    .line 1142
    invoke-interface {p1, v0}, Lcom/sina/weibo/sdk/web/b/b$a;->onError(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/d$1;->aH:Lcom/sina/weibo/sdk/web/b/b$a;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/web/b/b$a;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
