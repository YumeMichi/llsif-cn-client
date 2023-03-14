.class public final Lcom/bytedance/applog/n0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/profile/UserProfileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/n0;->a(Lcom/bytedance/applog/h;ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Lcom/bytedance/applog/profile/UserProfileCallback;


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V
    .locals 0

    iput p1, p0, Lcom/bytedance/applog/n0$a;->a:I

    iput-object p2, p0, Lcom/bytedance/applog/n0$a;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/applog/n0$a;->c:Lcom/bytedance/applog/profile/UserProfileCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/n0$a;->c:Lcom/bytedance/applog/profile/UserProfileCallback;

    invoke-interface {v0, p1}, Lcom/bytedance/applog/profile/UserProfileCallback;->onFail(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 1
    sget-object v0, Lcom/bytedance/applog/n0;->c:[I

    .line 2
    iget v1, p0, Lcom/bytedance/applog/n0$a;->a:I

    iget-object v2, p0, Lcom/bytedance/applog/n0$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    aput v2, v0, v1

    .line 3
    sget-object v0, Lcom/bytedance/applog/n0;->d:[J

    .line 4
    iget v1, p0, Lcom/bytedance/applog/n0$a;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/bytedance/applog/n0$a;->c:Lcom/bytedance/applog/profile/UserProfileCallback;

    invoke-interface {v0}, Lcom/bytedance/applog/profile/UserProfileCallback;->onSuccess()V

    return-void
.end method
