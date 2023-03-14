.class public Lcom/bytedance/applog/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/bytedance/applog/q0;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/q0;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/o0;->b:Lcom/bytedance/applog/q0;

    iput p2, p0, Lcom/bytedance/applog/o0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/applog/o0;->b:Lcom/bytedance/applog/q0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/q0;->d:Lcom/bytedance/applog/profile/UserProfileCallback;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/bytedance/applog/o0;->a:I

    invoke-interface {v0, v1}, Lcom/bytedance/applog/profile/UserProfileCallback;->onFail(I)V

    :cond_0
    return-void
.end method
