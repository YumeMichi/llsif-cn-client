.class final Lcom/gbase/gameplus/upgrade/UpgradeUtility$1;
.super Ljava/lang/Object;
.source "UpgradeUtility.java"

# interfaces
.implements Lgbase_okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgrade/UpgradeUtility;->CheckVerCtrlUrlAsync(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$strUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$1;->val$strUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lgbase_okhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 318
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$1;->val$strUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lgbase_okhttp3/Call;Lgbase_okhttp3/Response;)V
    .locals 1

    .line 323
    invoke-virtual {p2}, Lgbase_okhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$1;->val$strUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$002(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    .line 326
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$102(Z)Z

    .line 327
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Available: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$1;->val$strUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    return-void

    .line 332
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$1;->val$strUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void
.end method
