.class Lextension/ShengQu/GHomeExtension$13;
.super Ljava/lang/Object;
.source "GHomeExtension.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextension/ShengQu/GHomeExtension;->SDGUpdate()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$myCallback:Lextension/ShengQu/GHomeExtension$MyCallback;

.field final synthetic val$myUpgrade:Lcom/gbase/gameplus/upgrade/UpgradeUtility;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility;Lextension/ShengQu/GHomeExtension$MyCallback;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lextension/ShengQu/GHomeExtension$13;->val$myUpgrade:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    iput-object p2, p0, Lextension/ShengQu/GHomeExtension$13;->val$myCallback:Lextension/ShengQu/GHomeExtension$MyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "Cpp"

    const-string p2, "in ok"

    .line 576
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object p1, p0, Lextension/ShengQu/GHomeExtension$13;->val$myUpgrade:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    iget-object p1, p0, Lextension/ShengQu/GHomeExtension$13;->val$myCallback:Lextension/ShengQu/GHomeExtension$MyCallback;

    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startUpdate(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V

    return-void
.end method
