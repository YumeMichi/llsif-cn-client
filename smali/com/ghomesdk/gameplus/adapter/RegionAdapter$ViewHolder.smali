.class Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RegionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/adapter/RegionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field codeTextView:Landroid/widget/TextView;

.field contentLineIv:Landroid/widget/ImageView;

.field fistAlphaTextView:Landroid/widget/TextView;

.field headLineIv:Landroid/widget/ImageView;

.field nameTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/ghomesdk/gameplus/adapter/RegionAdapter;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/adapter/RegionAdapter;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/ghomesdk/gameplus/adapter/RegionAdapter$ViewHolder;->this$0:Lcom/ghomesdk/gameplus/adapter/RegionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
