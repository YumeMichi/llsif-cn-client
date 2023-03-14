.class Lextension/ShengQu/GHomeExtension$MyCallback;
.super Ljava/lang/Object;
.source "GHomeExtension.java"

# interfaces
.implements Lcom/gbase/gameplus/upgrade/UpgradeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextension/ShengQu/GHomeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MYCALLBACK"


# instance fields
.field private lastShow:I

.field myContext:Landroid/content/Context;

.field private ringProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 652
    iput v0, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->lastShow:I

    .line 659
    iput-object p1, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->myContext:Landroid/content/Context;

    .line 661
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->ringProgressDialog:Landroid/app/ProgressDialog;

    .line 662
    iget-object p1, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->ringProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public onDownloadCancel()V
    .locals 0

    return-void
.end method

.method public onDownloadChange(JJ)V
    .locals 0

    long-to-int p2, p1

    mul-int/lit8 p1, p2, 0xa

    long-to-int p4, p3

    .line 676
    div-int/2addr p1, p4

    iget p3, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->lastShow:I

    if-le p1, p3, :cond_0

    .line 679
    iput p1, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->lastShow:I

    .line 681
    :cond_0
    iget-object p1, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->ringProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 682
    iget-object p1, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->ringProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 683
    iget-object p1, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->ringProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public onDownloadFinish(ZLjava/lang/String;)V
    .locals 3

    .line 689
    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->myContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u7ed3\u679c["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "],\u4fe1\u606f["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 691
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onDownloadStart()V
    .locals 3

    .line 667
    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->myContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u4e0b\u8f7d\u5f00\u59cb"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 668
    iput v1, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->lastShow:I

    .line 669
    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->ringProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->ringProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 671
    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->ringProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 722
    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->myContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9519\u8bef\u4fe1\u606f["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 723
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onMD5CheckFinish(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMD5CheckStart()V
    .locals 2

    .line 703
    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->ringProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "MD5\u6587\u4ef6\u68c0\u67e5"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->ringProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u68c0\u67e5\u5df2\u4e0b\u8f7d\u6587\u4ef6MD5"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->ringProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 706
    iget-object v0, p0, Lextension/ShengQu/GHomeExtension$MyCallback;->ringProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public onResetDownload(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpgradeInfoResult(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
