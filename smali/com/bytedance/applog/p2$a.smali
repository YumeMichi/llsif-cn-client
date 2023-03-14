.class public Lcom/bytedance/applog/p2$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/p2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/p2;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/p2;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/p2$a;->a:Lcom/bytedance/applog/p2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/p2$a;->a:Lcom/bytedance/applog/p2;

    invoke-static {v0}, Lcom/bytedance/applog/p2;->a(Lcom/bytedance/applog/p2;)V

    return-void
.end method
