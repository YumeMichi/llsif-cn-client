.class public final Lcom/google/zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0xaL

.field private static final CORNER_RECT_HEIGHT:I = 0x32

.field private static final CORNER_RECT_WIDTH:I = 0xa

.field private static final OPAQUE:I = 0xff

.field private static final SCANNER_ALPHA:[I

.field private static final SCANNER_LINE_HEIGHT:I = 0xa

.field private static final SCANNER_LINE_MOVE_DISTANCE:I = 0x5

.field public static scannerEnd:I

.field public static scannerStart:I


# instance fields
.field private final cornerColor:I

.field private final frameColor:I

.field private final labelText:Ljava/lang/String;

.field private final labelTextColor:I

.field private final labelTextMarginTop:F

.field private final labelTextSize:F

.field private final laserColor:I

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 51
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/view/ViewfinderView;->SCANNER_ALPHA:[I

    const/4 v0, 0x0

    .line 80
    sput v0, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    .line 81
    sput v0, Lcom/google/zxing/view/ViewfinderView;->scannerEnd:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "ZXViewfinderView"

    .line 91
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    .line 92
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v0, "ZXViewfinderView_laser_color"

    .line 93
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, 0xff00

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->laserColor:I

    const-string v0, "ZXViewfinderView_corner_color"

    .line 94
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->cornerColor:I

    const-string v0, "ZXViewfinderView_frame_color"

    .line 95
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, 0xffffff

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->frameColor:I

    const-string v0, "ZXViewfinderView_result_point_color"

    .line 96
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, -0x3f000100    # -7.999878f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->resultPointColor:I

    const-string v0, "ZXViewfinderView_mask_color"

    .line 97
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x60000000

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->maskColor:I

    const-string v0, "ZXViewfinderView_result_color"

    .line 98
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x50000000

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->resultColor:I

    const-string v0, "ZXViewfinderView_label_text_color"

    .line 99
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, -0x6f000001

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->labelTextColor:I

    const-string v0, "ZXViewfinderView_label_text"

    .line 100
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->labelText:Ljava/lang/String;

    const-string v0, "ZXViewfinderView_label_text_size"

    .line 101
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->labelTextSize:F

    const-string v0, "ZXViewfinderView_label_text_margin_top"

    .line 102
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/google/zxing/view/ViewfinderView;->labelTextMarginTop:F

    .line 105
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 106
    iget-object p1, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/google/zxing/view/ViewfinderView;->scannerAlpha:I

    .line 108
    new-instance p1, Ljava/util/HashSet;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lcom/google/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 110
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    .line 183
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/zxing/view/ViewfinderView;->cornerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x32

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 186
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x32

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 188
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x32

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 189
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 191
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x32

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 192
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 194
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 195
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p2

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 262
    iget-object v2, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/google/zxing/view/ViewfinderView;->resultColor:I

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/google/zxing/view/ViewfinderView;->maskColor:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v2, p3

    int-to-float v2, v2

    .line 263
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v3

    iget-object v9, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    .line 264
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v14, v3

    iget-object v15, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 265
    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v8, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v11, v3

    iget-object v12, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    .line 266
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v9, v1

    move/from16 v1, p4

    int-to-float v11, v1

    iget-object v12, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    .line 253
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/zxing/view/ViewfinderView;->frameColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 255
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 256
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 257
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, 0x1

    int-to-float v5, p2

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 200
    iget-object v2, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/google/zxing/view/ViewfinderView;->laserColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v3

    sget v3, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    int-to-float v6, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v3

    sget v3, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    add-int/lit8 v3, v3, 0xa

    int-to-float v8, v3

    iget v3, v0, Lcom/google/zxing/view/ViewfinderView;->laserColor:I

    .line 210
    invoke-virtual {v0, v3}, Lcom/google/zxing/view/ViewfinderView;->shadeColor(I)I

    move-result v9

    iget v10, v0, Lcom/google/zxing/view/ViewfinderView;->laserColor:I

    sget-object v11, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 214
    new-instance v3, Landroid/graphics/RadialGradient;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v13, v4

    sget v4, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    add-int/lit8 v4, v4, 0x5

    int-to-float v14, v4

    iget v4, v0, Lcom/google/zxing/view/ViewfinderView;->laserColor:I

    .line 219
    invoke-virtual {v0, v4}, Lcom/google/zxing/view/ViewfinderView;->shadeColor(I)I

    move-result v17

    sget-object v18, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/high16 v15, 0x43b40000    # 360.0f

    move-object v12, v3

    move/from16 v16, v4

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 222
    new-instance v4, Landroid/graphics/SweepGradient;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    add-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    iget v7, v0, Lcom/google/zxing/view/ViewfinderView;->laserColor:I

    .line 225
    invoke-virtual {v0, v7}, Lcom/google/zxing/view/ViewfinderView;->shadeColor(I)I

    move-result v7

    iget v8, v0, Lcom/google/zxing/view/ViewfinderView;->laserColor:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 228
    new-instance v4, Landroid/graphics/ComposeShader;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v3, v2, v5}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 230
    iget-object v2, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 231
    sget v2, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    sget v3, Lcom/google/zxing/view/ViewfinderView;->scannerEnd:I

    if-gt v2, v3, :cond_0

    .line 235
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    sget v4, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    sget v5, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    add-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 236
    iget-object v1, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 237
    sget v1, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    add-int/lit8 v1, v1, 0x5

    sput v1, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    goto :goto_0

    .line 239
    :cond_0
    iget v1, v1, Landroid/graphics/Rect;->top:I

    sput v1, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    .line 241
    :goto_0
    iget-object v1, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/zxing/view/ViewfinderView;->labelTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/zxing/view/ViewfinderView;->labelTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 176
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 177
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->labelText:Ljava/lang/String;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget v2, p0, Lcom/google/zxing/view/ViewfinderView;->labelTextMarginTop:F

    const/high16 v3, 0x42960000    # 75.0f

    add-float/2addr v2, v3

    sub-float/2addr p2, v2

    iget-object v2, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 281
    invoke-virtual {p0}, Lcom/google/zxing/view/ViewfinderView;->invalidate()V

    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 271
    invoke-virtual {p0}, Lcom/google/zxing/view/ViewfinderView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 115
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    sget v1, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    if-eqz v1, :cond_1

    sget v1, Lcom/google/zxing/view/ViewfinderView;->scannerEnd:I

    if-nez v1, :cond_2

    .line 120
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sput v1, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    .line 121
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sput v1, Lcom/google/zxing/view/ViewfinderView;->scannerEnd:I

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/view/ViewfinderView;->getWidth()I

    move-result v1

    .line 125
    invoke-virtual {p0}, Lcom/google/zxing/view/ViewfinderView;->getHeight()I

    move-result v2

    .line 127
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/zxing/view/ViewfinderView;->drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 130
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    const-wide/16 v5, 0xa

    .line 168
    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/google/zxing/view/ViewfinderView;->postInvalidateDelayed(JIIII)V

    :goto_0
    return-void
.end method

.method public shadeColor(I)I
    .locals 2

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    .line 248
    invoke-static {p1, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
