.class Lcom/ghomesdk/gameplus/customized/AlphabetListView$2;
.super Ljava/lang/Object;
.source "AlphabetListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/customized/AlphabetListView;->setOnItemLongClickListener(Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/customized/AlphabetListView;

.field final synthetic val$listener:Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemLongClickListener;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/customized/AlphabetListView;Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemLongClickListener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView$2;->this$0:Lcom/ghomesdk/gameplus/customized/AlphabetListView;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView$2;->val$listener:Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView$2;->val$listener:Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 155
    invoke-interface/range {v0 .. v5}, Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
