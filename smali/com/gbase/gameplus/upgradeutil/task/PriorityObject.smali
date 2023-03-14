.class public Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;
.super Ljava/lang/Object;
.source "PriorityObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final priority:Lcom/gbase/gameplus/upgradeutil/task/Priority;


# direct methods
.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/task/Priority;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/task/Priority;",
            "TE;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 9
    sget-object p1, Lcom/gbase/gameplus/upgradeutil/task/Priority;->DEFAULT:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    :cond_0
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;->priority:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    .line 10
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;->obj:Ljava/lang/Object;

    return-void
.end method
