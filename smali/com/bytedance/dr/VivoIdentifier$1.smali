.class public Lcom/bytedance/dr/VivoIdentifier$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bun/supplier/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/dr/VivoIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bytedance/dr/VivoIdentifier;


# direct methods
.method public constructor <init>(Lcom/bytedance/dr/VivoIdentifier;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/dr/VivoIdentifier$1;->this$0:Lcom/bytedance/dr/VivoIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/supplier/IdSupplier;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/bytedance/applog/p2;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OaidMiit#OnSupport isSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", supplier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/bytedance/applog/h2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/bytedance/dr/VivoIdentifier$1;->this$0:Lcom/bytedance/dr/VivoIdentifier;

    invoke-interface {p2}, Lcom/bun/supplier/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/dr/VivoIdentifier;->access$000(Lcom/bytedance/dr/VivoIdentifier;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/dr/VivoIdentifier$1;->this$0:Lcom/bytedance/dr/VivoIdentifier;

    invoke-static {p1}, Lcom/bytedance/dr/VivoIdentifier;->access$100(Lcom/bytedance/dr/VivoIdentifier;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lcom/bytedance/dr/VivoIdentifier$1;->this$0:Lcom/bytedance/dr/VivoIdentifier;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/bytedance/dr/VivoIdentifier;->access$202(Lcom/bytedance/dr/VivoIdentifier;Z)Z

    iget-object p2, p0, Lcom/bytedance/dr/VivoIdentifier$1;->this$0:Lcom/bytedance/dr/VivoIdentifier;

    invoke-static {p2}, Lcom/bytedance/dr/VivoIdentifier;->access$100(Lcom/bytedance/dr/VivoIdentifier;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
