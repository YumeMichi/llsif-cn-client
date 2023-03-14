.class Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/utils/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private imageView:Landroid/widget/ImageView;

.field private isLogo:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->isLogo:Z

    .line 142
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->context:Landroid/content/Context;

    .line 143
    iput-object p3, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->url:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 1

    .line 147
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->isLogo:Z

    .line 148
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->context:Landroid/content/Context;

    .line 149
    iput-object p3, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->url:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->imageView:Landroid/widget/ImageView;

    .line 151
    iput-boolean p4, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->isLogo:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 0

    .line 161
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->isLogo:Z

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/ImageLoader;->access$000(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    .line 163
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    return-object p1

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/ImageLoader;->access$100(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    .line 166
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "ImageLoader"

    const-string v1, "GetBitmapTask bitmap"

    .line 171
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const-string p1, "GetBitmapTask bitmap error"

    .line 175
    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->isLogo:Z

    if-eqz p1, :cond_1

    .line 177
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ghomesdk/gameplus/utils/EnvUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->BRAND_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 178
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->context:Landroid/content/Context;

    const-string v1, "gl_yanzhengma"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/DrawableHelper;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/utils/ImageLoader$GetBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
