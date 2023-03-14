.class Lcom/ghomesdk/gameplus/customized/AlphabetListView$1;
.super Ljava/lang/Object;
.source "AlphabetListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/customized/AlphabetListView;->setOnItemClickListener(Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/customized/AlphabetListView;

.field final synthetic val$listener:Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/customized/AlphabetListView;Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemClickListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView$1;->this$0:Lcom/ghomesdk/gameplus/customized/AlphabetListView;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView$1;->val$listener:Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetListView$1;->val$listener:Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemClickListener;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 142
    invoke-interface/range {v0 .. v5}, Lcom/ghomesdk/gameplus/customized/AlphabetListView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
