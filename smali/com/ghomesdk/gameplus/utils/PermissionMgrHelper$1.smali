.class final Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper$1;
.super Ljava/lang/Object;
.source "PermissionMgrHelper.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    .line 491
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
