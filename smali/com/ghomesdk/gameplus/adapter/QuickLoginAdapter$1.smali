.class Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$1;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "QuickLoginAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;I)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$1;->this$0:Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    iput p2, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$1;->val$position:I

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$1;->this$0:Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;->access$000(Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;)Lcom/ghomesdk/gameplus/callback/DeleteQuickLoginCallback;

    move-result-object p1

    iget v0, p0, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/ghomesdk/gameplus/callback/DeleteQuickLoginCallback;->onClick(I)V

    return-void
.end method
