.class Lcom/tencent/open/b/h$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/h;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Z

.field final synthetic c:Lcom/tencent/open/b/h;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/h;Landroid/os/Bundle;Z)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    iput-object p2, p0, Lcom/tencent/open/b/h$2;->a:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/tencent/open/b/h$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 176
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uin"

    const-string v2, "1000"

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "platform"

    const-string v2, "1"

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os_ver"

    .line 190
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "position"

    const-string v2, ""

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "network"

    .line 192
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "language"

    .line 193
    invoke-static {}, Lcom/tencent/open/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resolution"

    .line 194
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apn"

    .line 195
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "model_name"

    .line 196
    invoke-static {}, Lcom/tencent/open/utils/f;->a()Lcom/tencent/open/utils/f;

    move-result-object v2

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/open/utils/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timezone"

    .line 197
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk_ver"

    const-string v2, "3.5.11.lite"

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "qz_ver"

    .line 199
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.qzone"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/m;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "qq_ver"

    .line 200
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.tencent.mobileqq"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/m;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "qua"

    .line 201
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/tencent/open/utils/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/utils/m;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "packagename"

    .line 202
    invoke-static {}, Lcom/tencent/open/utils/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_ver"

    .line 203
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/tencent/open/utils/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/utils/m;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/tencent/open/b/h$2;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/tencent/open/b/h$2;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 210
    :cond_0
    new-instance v1, Lcom/tencent/open/b/c;

    invoke-direct {v1, v0}, Lcom/tencent/open/b/c;-><init>(Landroid/os/Bundle;)V

    .line 213
    iget-object v0, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    iget-object v0, v0, Lcom/tencent/open/b/h;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    iget-object v0, v0, Lcom/tencent/open/b/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 219
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/i;

    move-result-object v1

    const-string v2, "Agent_ReportTimeInterval"

    .line 220
    invoke-virtual {v1, v2}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2710

    :cond_1
    const/16 v2, 0x3e9

    .line 226
    iget-object v3, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    const-string v4, "report_via"

    invoke-virtual {v3, v4, v0}, Lcom/tencent/open/b/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/open/b/h$2;->b:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    iget-object v0, v0, Lcom/tencent/open/b/h;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 232
    iput v2, v0, Landroid/os/Message;->what:I

    .line 233
    iget-object v2, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    iget-object v2, v2, Lcom/tencent/open/b/h;->f:Landroid/os/Handler;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 227
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    invoke-virtual {v0}, Lcom/tencent/open/b/h;->d()V

    .line 228
    iget-object v0, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    iget-object v0, v0, Lcom/tencent/open/b/h;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "openSDK_LOG.ReportManager"

    const-string v2, "--> reporVia, exception in sub thread."

    .line 237
    invoke-static {v1, v2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method
