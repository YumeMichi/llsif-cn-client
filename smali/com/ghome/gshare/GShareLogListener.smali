.class Lcom/ghome/gshare/GShareLogListener;
.super Ljava/lang/Object;
.source "GShareLogListener.java"

# interfaces
.implements Lcom/ghome/gshare/listener/GShareListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GShareLogListener"


# instance fields
.field private context:Landroid/content/Context;

.field private gShareListener:Lcom/ghome/gshare/listener/GShareListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ghome/gshare/GShareLogListener;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/ghome/gshare/GShareLogListener;->gShareListener:Lcom/ghome/gshare/listener/GShareListener;

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/ghome/gshare/GSharePlatformType;)V
    .locals 3

    .line 44
    sget-object v0, Lcom/ghome/gshare/GShareLogListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/ghome/gshare/GShareLogListener;->context:Landroid/content/Context;

    sget-object v1, Lcom/ghome/gshare/util/glog/GShareResult;->CANCEL:Lcom/ghome/gshare/util/glog/GShareResult;

    const-string v2, "\u53d6\u6d88\u5206\u4eab"

    invoke-static {v0, v1, v2}, Lcom/ghome/gshare/util/glog/GLogUtils;->shareResult(Landroid/content/Context;Lcom/ghome/gshare/util/glog/GShareResult;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/ghome/gshare/GShareLogListener;->gShareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ghome/gshare/listener/GShareListener;->onCancel(Lcom/ghome/gshare/GSharePlatformType;)V

    :cond_0
    return-void
.end method

.method public onComplete(Lcom/ghome/gshare/GSharePlatformType;)V
    .locals 3

    .line 30
    sget-object v0, Lcom/ghome/gshare/GShareLogListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/ghome/gshare/GShareLogListener;->context:Landroid/content/Context;

    sget-object v1, Lcom/ghome/gshare/util/glog/GShareResult;->SUCCESS:Lcom/ghome/gshare/util/glog/GShareResult;

    const-string v2, "\u5206\u4eab\u6210\u529f"

    invoke-static {v0, v1, v2}, Lcom/ghome/gshare/util/glog/GLogUtils;->shareResult(Landroid/content/Context;Lcom/ghome/gshare/util/glog/GShareResult;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/ghome/gshare/GShareLogListener;->gShareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ghome/gshare/listener/GShareListener;->onComplete(Lcom/ghome/gshare/GSharePlatformType;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V
    .locals 3

    .line 37
    sget-object v0, Lcom/ghome/gshare/GShareLogListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/ghome/gshare/GShareLogListener;->context:Landroid/content/Context;

    sget-object v1, Lcom/ghome/gshare/util/glog/GShareResult;->FAILED:Lcom/ghome/gshare/util/glog/GShareResult;

    invoke-static {v0, v1, p2}, Lcom/ghome/gshare/util/glog/GLogUtils;->shareResult(Landroid/content/Context;Lcom/ghome/gshare/util/glog/GShareResult;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/ghome/gshare/GShareLogListener;->gShareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOpen(Lcom/ghome/gshare/GSharePlatformType;)V
    .locals 3

    .line 51
    sget-object v0, Lcom/ghome/gshare/GShareLogListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onOpen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/ghome/gshare/GShareLogListener;->gShareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ghome/gshare/listener/GShareListener;->onOpen(Lcom/ghome/gshare/GSharePlatformType;)V

    :cond_0
    return-void
.end method
