.class Landroid/support/v4/print/PrintHelper$PrintHelperImpl;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintHelperImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RealHelper:",
        "Landroid/support/v4/print/PrintHelperKitkat;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;"
    }
.end annotation


# instance fields
.field private final mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRealHelper;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRealHelper;)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    return-void
.end method


# virtual methods
.method public getColorMode()I
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getColorMode()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 192
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getScaleMode()I
    .locals 1

    .line 172
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getScaleMode()I

    move-result v0

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 200
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;

    invoke-direct {v0, p0, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 207
    :goto_0
    iget-object p3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {p3, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 215
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;

    invoke-direct {v0, p0, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 222
    :goto_0
    iget-object p3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {p3, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    return-void
.end method

.method public setColorMode(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setColorMode(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setOrientation(I)V

    return-void
.end method

.method public setScaleMode(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setScaleMode(I)V

    return-void
.end method
