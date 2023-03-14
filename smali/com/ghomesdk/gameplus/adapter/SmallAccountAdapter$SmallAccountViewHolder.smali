.class Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;
.super Ljava/lang/Object;
.source "SmallAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmallAccountViewHolder"
.end annotation


# instance fields
.field arrow:Landroid/widget/ImageView;

.field content:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;


# direct methods
.method public constructor <init>(Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;Landroid/view/View;)V
    .locals 1

    .line 98
    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;->this$0:Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "iv_select_arrow"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;->arrow:Landroid/widget/ImageView;

    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tv_small_account"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter$SmallAccountViewHolder;->content:Landroid/widget/TextView;

    return-void
.end method
