.class Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;


# direct methods
.method private constructor <init>(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    .line 903
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$1;)V
    .locals 0

    .line 901
    invoke-direct {p0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    :catch_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;->access$2502(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;Z)Z

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 937
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 939
    :catch_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;->access$2502(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;Z)Z

    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 911
    :catch_0
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;->access$2502(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;Z)Z

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 918
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 919
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 921
    :catch_0
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;->access$2502(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;Z)Z

    :goto_0
    return-void
.end method
