.class public abstract Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.super Ljava/lang/Object;
.source "NoFastClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private checker:Lcom/ghomesdk/gameplus/utils/FastClickChecker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/ghomesdk/gameplus/utils/FastClickChecker;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/utils/FastClickChecker;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;->checker:Lcom/ghomesdk/gameplus/utils/FastClickChecker;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;->checker:Lcom/ghomesdk/gameplus/utils/FastClickChecker;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/utils/FastClickChecker;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;->onNoFastClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public abstract onNoFastClick(Landroid/view/View;)V
.end method
