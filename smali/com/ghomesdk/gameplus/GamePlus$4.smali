.class final Lcom/ghomesdk/gameplus/GamePlus$4;
.super Ljava/lang/Object;
.source "GamePlus.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/GamePlus;->my_logout(Ljava/lang/Object;Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_activity:Landroid/app/Activity;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$4;->val$_activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/GamePlus$4;->val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 347
    sget-object p3, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "my_logout callback,code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$4;->val$_activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/GamePlus$4;->val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/GamePlus;->access$000(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method
