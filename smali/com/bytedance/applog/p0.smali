.class public Lcom/bytedance/applog/p0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/q0;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/q0;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/p0;->a:Lcom/bytedance/applog/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/p0;->a:Lcom/bytedance/applog/q0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/q0;->d:Lcom/bytedance/applog/profile/UserProfileCallback;

    .line 2
    invoke-interface {v0}, Lcom/bytedance/applog/profile/UserProfileCallback;->onSuccess()V

    return-void
.end method
