.class Lcom/tencent/open/utils/c$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/utils/c;


# direct methods
.method constructor <init>(Lcom/tencent/open/utils/c;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/tencent/open/utils/c$2;->a:Lcom/tencent/open/utils/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "AsynLoadImg"

    const-string v1, "saveFileRunnable:"

    .line 165
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/tencent/open/utils/c$2;->a:Lcom/tencent/open/utils/c;

    invoke-static {v1}, Lcom/tencent/open/utils/c;->b(Lcom/tencent/open/utils/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/utils/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "share_qq_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/utils/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, Lcom/tencent/open/utils/c$2;->a:Lcom/tencent/open/utils/c;

    invoke-static {v4}, Lcom/tencent/open/utils/c;->c(Lcom/tencent/open/utils/c;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 173
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 174
    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 175
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file exists: time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/tencent/open/utils/c$2;->a:Lcom/tencent/open/utils/c;

    invoke-static {v5}, Lcom/tencent/open/utils/c;->d(Lcom/tencent/open/utils/c;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/tencent/open/utils/c$2;->a:Lcom/tencent/open/utils/c;

    invoke-static {v3}, Lcom/tencent/open/utils/c;->b(Lcom/tencent/open/utils/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 181
    iget-object v6, p0, Lcom/tencent/open/utils/c$2;->a:Lcom/tencent/open/utils/c;

    invoke-virtual {v6, v3, v1}, Lcom/tencent/open/utils/c;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const-string v1, "saveFileRunnable:get bmp fail---"

    .line 183
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 186
    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 187
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 189
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 191
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file not exists: download time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/tencent/open/utils/c$2;->a:Lcom/tencent/open/utils/c;

    invoke-static {v5}, Lcom/tencent/open/utils/c;->d(Lcom/tencent/open/utils/c;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_2
    iget-object v0, p0, Lcom/tencent/open/utils/c$2;->a:Lcom/tencent/open/utils/c;

    invoke-static {v0}, Lcom/tencent/open/utils/c;->c(Lcom/tencent/open/utils/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
