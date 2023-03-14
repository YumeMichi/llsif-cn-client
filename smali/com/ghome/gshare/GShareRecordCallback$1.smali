.class Lcom/ghome/gshare/GShareRecordCallback$1;
.super Ljava/lang/Object;
.source "GShareRecordCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/GShareRecordCallback;->onEndRecordSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/gshare/GShareRecordCallback;

.field final synthetic val$platformType:[Lcom/ghome/gshare/GSharePlatformType;


# direct methods
.method constructor <init>(Lcom/ghome/gshare/GShareRecordCallback;[Lcom/ghome/gshare/GSharePlatformType;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ghome/gshare/GShareRecordCallback$1;->this$0:Lcom/ghome/gshare/GShareRecordCallback;

    iput-object p2, p0, Lcom/ghome/gshare/GShareRecordCallback$1;->val$platformType:[Lcom/ghome/gshare/GSharePlatformType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 37
    iget-object p2, p0, Lcom/ghome/gshare/GShareRecordCallback$1;->val$platformType:[Lcom/ghome/gshare/GSharePlatformType;

    sget-object v0, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v0, p2, p1

    goto :goto_0

    .line 41
    :cond_0
    iget-object p2, p0, Lcom/ghome/gshare/GShareRecordCallback$1;->val$platformType:[Lcom/ghome/gshare/GSharePlatformType;

    sget-object v0, Lcom/ghome/gshare/GSharePlatformType;->QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v0, p2, p1

    :goto_0
    return-void
.end method
