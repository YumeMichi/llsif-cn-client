.class Lcom/ghome/gshare/qq/GShareQQEngine$1;
.super Ljava/lang/Object;
.source "GShareQQEngine.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghome/gshare/qq/GShareQQEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/gshare/qq/GShareQQEngine;


# direct methods
.method constructor <init>(Lcom/ghome/gshare/qq/GShareQQEngine;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine$1;->this$0:Lcom/ghome/gshare/qq/GShareQQEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "tencent qq share canceled"

    .line 73
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine$1;->this$0:Lcom/ghome/gshare/qq/GShareQQEngine;

    invoke-static {v0}, Lcom/ghome/gshare/qq/GShareQQEngine;->access$000(Lcom/ghome/gshare/qq/GShareQQEngine;)Lcom/ghome/gshare/listener/GShareListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine$1;->this$0:Lcom/ghome/gshare/qq/GShareQQEngine;

    invoke-static {v0}, Lcom/ghome/gshare/qq/GShareQQEngine;->access$000(Lcom/ghome/gshare/qq/GShareQQEngine;)Lcom/ghome/gshare/listener/GShareListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ghome/gshare/qq/GShareQQEngine$1;->this$0:Lcom/ghome/gshare/qq/GShareQQEngine;

    invoke-static {v1}, Lcom/ghome/gshare/qq/GShareQQEngine;->access$100(Lcom/ghome/gshare/qq/GShareQQEngine;)Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ghome/gshare/listener/GShareListener;->onCancel(Lcom/ghome/gshare/GSharePlatformType;)V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    const-string p1, "tencent qq share complete."

    .line 50
    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine$1;->this$0:Lcom/ghome/gshare/qq/GShareQQEngine;

    invoke-static {p1}, Lcom/ghome/gshare/qq/GShareQQEngine;->access$000(Lcom/ghome/gshare/qq/GShareQQEngine;)Lcom/ghome/gshare/listener/GShareListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine$1;->this$0:Lcom/ghome/gshare/qq/GShareQQEngine;

    invoke-static {p1}, Lcom/ghome/gshare/qq/GShareQQEngine;->access$000(Lcom/ghome/gshare/qq/GShareQQEngine;)Lcom/ghome/gshare/listener/GShareListener;

    move-result-object p1

    iget-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine$1;->this$0:Lcom/ghome/gshare/qq/GShareQQEngine;

    invoke-static {v0}, Lcom/ghome/gshare/qq/GShareQQEngine;->access$100(Lcom/ghome/gshare/qq/GShareQQEngine;)Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ghome/gshare/listener/GShareListener;->onComplete(Lcom/ghome/gshare/GSharePlatformType;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Lcom/tencent/tauth/UiError;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tencent qq share error, error msg is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine$1;->this$0:Lcom/ghome/gshare/qq/GShareQQEngine;

    invoke-static {v0}, Lcom/ghome/gshare/qq/GShareQQEngine;->access$000(Lcom/ghome/gshare/qq/GShareQQEngine;)Lcom/ghome/gshare/listener/GShareListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine$1;->this$0:Lcom/ghome/gshare/qq/GShareQQEngine;

    invoke-static {v0}, Lcom/ghome/gshare/qq/GShareQQEngine;->access$000(Lcom/ghome/gshare/qq/GShareQQEngine;)Lcom/ghome/gshare/listener/GShareListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ghome/gshare/qq/GShareQQEngine$1;->this$0:Lcom/ghome/gshare/qq/GShareQQEngine;

    invoke-static {v1}, Lcom/ghome/gshare/qq/GShareQQEngine;->access$100(Lcom/ghome/gshare/qq/GShareQQEngine;)Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWarning(I)V
    .locals 1

    const/16 v0, -0x13

    if-ne p1, v0, :cond_0

    .line 84
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u8bf7\u6388\u6743\u624bQ\u8bbf\u95ee\u5206\u4eab\u7684\u6587\u4ef6\u7684\u8bfb\u53d6\u6743\u9650"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
