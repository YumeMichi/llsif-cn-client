.class public Landroid/support/v4/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewCompat$Api24ViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$ViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$ScrollIndicators;,
        Landroid/support/v4/view/ViewCompat$FocusRelativeDirection;,
        Landroid/support/v4/view/ViewCompat$FocusRealDirection;,
        Landroid/support/v4/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field private static final FAKE_FRAME_TIME:J = 0xaL

.field static final IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field public static final OVER_SCROLL_ALWAYS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewCompat"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1795
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1796
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1797
    new-instance v0, Landroid/support/v4/view/ViewCompat$Api24ViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$Api24ViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1799
    new-instance v0, Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 1801
    new-instance v0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    :cond_2
    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 1803
    new-instance v0, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    :cond_3
    const/16 v1, 0x12

    if-lt v0, v1, :cond_4

    .line 1805
    new-instance v0, Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    :cond_4
    const/16 v1, 0x11

    if-lt v0, v1, :cond_5

    .line 1807
    new-instance v0, Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-lt v0, v1, :cond_6

    .line 1809
    new-instance v0, Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    :cond_6
    const/16 v1, 0xf

    if-lt v0, v1, :cond_7

    .line 1811
    new-instance v0, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    :cond_7
    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    .line 1813
    new-instance v0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    :cond_8
    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    .line 1815
    new-instance v0, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 1817
    :cond_9
    new-instance v0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    :goto_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 3535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 1

    .line 2656
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    return-object p0
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1

    .line 1829
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .locals 1

    .line 1840
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->canScrollVertically(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static combineMeasuredStates(II)I
    .locals 1

    .line 2475
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->combineMeasuredStates(II)I

    move-result p0

    return p0
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1

    .line 3029
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 1

    .line 2576
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    return-void
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    .line 3301
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    .line 3335
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 6

    .line 3278
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 7

    .line 3253
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result p0

    return p0
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 1

    .line 2569
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    return-void
.end method

.method public static getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 1

    .line 2489
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1

    .line 2221
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    return-object p0
.end method

.method public static getAlpha(Landroid/view/View;)F
    .locals 1

    .line 2232
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getAlpha(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 3091
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 3113
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .line 3445
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getElevation(Landroid/view/View;)F
    .locals 1

    .line 2889
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getElevation(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1

    .line 2966
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .locals 1

    .line 2112
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getLabelFor(Landroid/view/View;)I
    .locals 1

    .line 2301
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getLabelFor(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getLayerType(Landroid/view/View;)I
    .locals 1

    .line 2290
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getLayerType(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .locals 1

    .line 2362
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2622
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 1

    .line 2452
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .locals 1

    .line 2463
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getMeasuredState(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 1

    .line 2438
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .locals 1

    .line 2644
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getMinimumHeight(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .locals 1

    .line 2633
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getMinimumWidth(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1858
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p0

    return p0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .locals 1

    .line 2545
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getPaddingEnd(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .locals 1

    .line 2533
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getPaddingStart(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .line 2394
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .locals 1

    .line 2803
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getPivotX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .locals 1

    .line 2830
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getPivotY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getRotation(Landroid/view/View;)F
    .locals 1

    .line 2849
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getRotation(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .locals 1

    .line 2853
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getRotationX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .locals 1

    .line 2857
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getRotationY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .locals 1

    .line 2861
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getScaleX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .locals 1

    .line 2865
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getScaleY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3524
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getScrollIndicators(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 2930
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .locals 1

    .line 2589
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getTranslationX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .locals 1

    .line 2602
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getTranslationY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .locals 1

    .line 2905
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getTranslationZ(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 1

    .line 2937
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getX(Landroid/view/View;)F
    .locals 1

    .line 2869
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getY(Landroid/view/View;)F
    .locals 1

    .line 2873
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getZ(Landroid/view/View;)F
    .locals 1

    .line 3384
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getZ(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 1

    .line 2008
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 1

    .line 3225
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .locals 1

    .line 3461
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->hasOnClickListeners(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1

    .line 3071
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .locals 1

    .line 2020
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->hasTransientState(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .locals 1

    .line 3452
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1

    .line 2176
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isInLayout(Landroid/view/View;)Z
    .locals 1

    .line 3351
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isInLayout(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .locals 1

    .line 3359
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isLaidOut(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isLayoutDirectionResolved(Landroid/view/View;)Z
    .locals 1

    .line 3373
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isLayoutDirectionResolved(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 1

    .line 3160
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2407
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result p0

    return p0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .locals 1

    .line 3081
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isPaddingRelative(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 1

    .line 2987
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    return-void
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 1

    .line 3418
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 1

    .line 3409
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->offsetTopAndBottom(Landroid/view/View;I)V

    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1

    .line 3012
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1941
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 1971
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1913
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 2194
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1

    .line 2044
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 6

    .line 2062
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .line 2076
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .line 2093
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .locals 1

    .line 2945
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public static resolveSizeAndState(III)I
    .locals 1

    .line 2424
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->resolveSizeAndState(III)I

    move-result p0

    return p0
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 1

    .line 1998
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 1

    .line 2521
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    return-void
.end method

.method public static setActivated(Landroid/view/View;Z)V
    .locals 1

    .line 3053
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setActivated(Landroid/view/View;Z)V

    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 2702
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 3102
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 3126
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 1

    .line 2958
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 3433
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .locals 1

    .line 2880
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 1

    .line 2976
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setFitsSystemWindows(Landroid/view/View;Z)V

    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .locals 1

    .line 2031
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setHasTransientState(Landroid/view/View;Z)V

    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .locals 1

    .line 2136
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 2312
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setLabelFor(Landroid/view/View;I)V

    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .line 2346
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    .line 2268
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .locals 1

    .line 2382
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setLayoutDirection(Landroid/view/View;I)V

    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 1

    .line 3144
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 1

    .line 2996
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1877
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .locals 6

    .line 2562
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .locals 1

    .line 2818
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setPivotX(Landroid/view/View;F)V

    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .locals 1

    .line 2845
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setPivotY(Landroid/view/View;F)V

    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3532
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .locals 1

    .line 2742
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setRotation(Landroid/view/View;F)V

    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .locals 1

    .line 2755
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setRotationX(Landroid/view/View;F)V

    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .locals 1

    .line 2768
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setRotationY(Landroid/view/View;F)V

    return-void
.end method

.method public static setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 1

    .line 3040
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .locals 1

    .line 2780
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setScaleX(Landroid/view/View;F)V

    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .locals 1

    .line 2792
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3476
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setScrollIndicators(Landroid/view/View;I)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3508
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setScrollIndicators(Landroid/view/View;II)V

    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 2916
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .locals 1

    .line 2670
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setTranslationX(Landroid/view/View;F)V

    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .locals 1

    .line 2686
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .locals 1

    .line 2896
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setTranslationZ(Landroid/view/View;F)V

    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .locals 1

    .line 2716
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setX(Landroid/view/View;F)V

    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .locals 1

    .line 2730
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setY(Landroid/view/View;F)V

    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .locals 1

    .line 3400
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setZ(Landroid/view/View;F)V

    return-void
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .locals 1

    .line 3202
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->startNestedScroll(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 3213
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method
