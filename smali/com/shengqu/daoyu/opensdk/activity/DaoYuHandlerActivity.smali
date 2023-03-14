.class public Lcom/shengqu/daoyu/opensdk/activity/DaoYuHandlerActivity;
.super Landroid/app/Activity;
.source "DaoYuHandlerActivity.java"

# interfaces
.implements Lcom/shengqu/daoyu/opensdk/openapi/DYAPIEventHandler;


# instance fields
.field public a:Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shengqu/daoyu/opensdk/activity/DaoYuHandlerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lcom/shengqu/daoyu/opensdk/openapi/DYAPIFactory;->crateDYAPI(Landroid/content/Context;)Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/shengqu/daoyu/opensdk/activity/DaoYuHandlerActivity;->a:Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;

    .line 3
    iget-object p1, p0, Lcom/shengqu/daoyu/opensdk/activity/DaoYuHandlerActivity;->a:Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;->handleIntent(Landroid/content/Intent;Lcom/shengqu/daoyu/opensdk/openapi/DYAPIEventHandler;)Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/shengqu/daoyu/opensdk/activity/DaoYuHandlerActivity;->a:Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;->handleIntent(Landroid/content/Intent;Lcom/shengqu/daoyu/opensdk/openapi/DYAPIEventHandler;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResp(Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;)V
    .locals 0

    return-void
.end method
