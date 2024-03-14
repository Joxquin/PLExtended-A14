.class public Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Ln1/e;


# static fields
.field public static final synthetic k:I


# instance fields
.field public d:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public final e:LK2/F;

.field public final f:I

.field public final g:Z

.field public final h:I

.field public i:Z

.field public final j:LK2/Q;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "WeatherSmartspaceView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, LK2/Q;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p3, p0, v0}, LK2/Q;-><init>(Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->j:LK2/Q;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x7f1401ec

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v0, Lk1/a;->a:[I

    invoke-virtual {p3, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070168

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070166

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 11
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v2, 0x2

    .line 12
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->g:Z

    const/4 v2, 0x3

    .line 13
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    iput p3, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->f:I

    .line 16
    new-instance p2, LK2/F;

    invoke-direct {p2, p1, p3, v0}, LK2/F;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->e:LK2/F;

    return-void

    :catchall_0
    move-exception p0

    .line 17
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    throw p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 10

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "dream"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->d:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const/16 p1, 0x8

    invoke-static {p0, p1}, LK2/t;->f(Landroid/view/View;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->d:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, LK2/t;->f(Landroid/view/View;I)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result p1

    if-eq p1, v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->d:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->d:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v4, "WeatherSmartspaceView"

    invoke-static {v4, v0, p1, v1}, LN2/a;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->f:I

    invoke-static {p1, v0, v1}, LK2/e;->c(Landroid/graphics/drawable/Icon;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->e:LK2/F;

    invoke-virtual {v0, p1}, LK2/F;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->d:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->e:LK2/F;

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->g:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->d:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->h:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v1, v7

    sub-int/2addr v0, v1

    invoke-virtual {p1, v3, v3, v3, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_5
    new-instance p1, LL2/c;

    invoke-direct {p1}, LL2/c;-><init>()V

    invoke-static {v5}, LK2/K;->a(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v0

    iput v0, p1, LL2/c;->a:I

    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v0

    iput v0, p1, LL2/c;->e:I

    const/4 v0, 0x0

    invoke-static {v2, v0}, LK2/e;->d(Ljava/lang/String;F)I

    move-result v0

    iput v0, p1, LL2/c;->b:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const/4 v0, -0x1

    iput v0, p1, LL2/c;->g:I

    new-instance v9, LL2/d;

    invoke-direct {v9, p1}, LL2/d;-><init>(LL2/c;)V

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->d:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const/4 v7, 0x0

    const-string v8, "WeatherSmartspaceView"

    invoke-static/range {v4 .. v9}, LK2/e;->g(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ln1/d;Ljava/lang/String;LL2/d;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 6

    const-string v0, "doze_always_on"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v1, 0x0

    const-string v2, "lockscreen"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->j:LK2/Q;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "WeatherSmartspaceView"

    const-string v4, "Unable to register DOZE_ALWAYS_ON content observer: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {v3, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->i:Z

    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->j:LK2/Q;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03d5

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->d:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    return-void
.end method
