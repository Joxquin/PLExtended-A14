.class public abstract Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;
.super Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
.source "SourceFile"


# instance fields
.field private final mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

.field private final mEnforcedCornerRadius:F

.field private final mEnforcedRectangle:Landroid/graphics/Rect;

.field protected final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;-><init>(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setExecutor(Ljava/util/concurrent/Executor;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    return-object p0
.end method


# virtual methods
.method public final getEnforcedCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return p0
.end method

.method public final getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/appwidget/AppWidgetHostView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lf1/a;

    invoke-direct {p1, p0}, Lf1/a;-><init>(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget p1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    const/4 p2, 0x0

    if-lez p1, :cond_6

    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ENFORCED_ROUNDED_CORNERS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, p3

    goto :goto_1

    :cond_0
    move p1, p2

    :goto_1
    if-nez p1, :cond_1

    goto :goto_5

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->findBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p4

    const/high16 p5, 0x1020000

    if-ne p4, p5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getClipToOutline()Z

    move-result p4

    if-eqz p4, :cond_2

    move p4, p3

    goto :goto_2

    :cond_2
    move p4, p2

    :goto_2
    if-eqz p4, :cond_3

    goto :goto_4

    :cond_3
    iget-object p4, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    iput p2, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    iput p5, p4, Landroid/graphics/Rect;->right:I

    iput p2, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p4, Landroid/graphics/Rect;->bottom:I

    :goto_3
    if-eq p1, p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p4, p2, p5}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, p3}, Landroid/appwidget/AppWidgetHostView;->setClipToOutline(Z)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidateOutline()V

    goto :goto_6

    :cond_5
    :goto_4
    sget-object p1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetHostView;->setClipToOutline(Z)V

    goto :goto_6

    :cond_6
    :goto_5
    sget-object p1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetHostView;->setClipToOutline(Z)V

    :goto_6
    return-void
.end method
