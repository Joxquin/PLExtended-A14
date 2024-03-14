.class public Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final synthetic k:I


# instance fields
.field public d:Z

.field public e:Landroid/graphics/RectF;

.field public f:Ljava/lang/String;

.field public g:LV1/e;

.field public h:Lcom/android/launcher3/DeviceProfile;

.field public final i:LV1/m;

.field public final j:LV1/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, LV1/m;

    invoke-direct {p1, p0}, LV1/m;-><init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->i:LV1/m;

    .line 5
    new-instance p1, LV1/n;

    invoke-direct {p1, p0}, LV1/n;-><init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->j:LV1/n;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x14d

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v4, 0x10c000d

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v3, 0x85

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    filled-new-array {v1, v2}, [Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, LV1/s;

    invoke-direct {v1, p0}, LV1/s;-><init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final b(Ljava/util/List;LV1/e;ZLandroid/graphics/RectF;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->h:Lcom/android/launcher3/DeviceProfile;

    if-nez v0, :cond_0

    const-string p0, "ShareTargetsView"

    const-string p1, "Share target init before DeviceProfile set, not showing"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean p3, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->d:Z

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->e:Landroid/graphics/RectF;

    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->g:LV1/e;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    const/4 p4, 0x3

    if-ge p3, p4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/prediction/AppTarget;

    invoke-virtual {p4}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p5

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->c(Ljava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object v6

    new-instance v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, p5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    sget-object v7, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v8, LV1/o;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, LV1/o;-><init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Landroid/widget/Button;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, LV1/r;

    invoke-direct {v0, p0, p5, p4, v6}, LV1/r;-><init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    new-instance v0, LV1/q;

    invoke-direct {v0, p0, p5, p4}, LV1/q;-><init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    if-lez p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f13012d

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->c(Ljava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const p5, 0x7f0802ee

    invoke-virtual {p4, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iget-object p5, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->h:Lcom/android/launcher3/DeviceProfile;

    iget p5, p5, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    invoke-virtual {p4, p2, p2, p5, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p3, p4, p3, p3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->j:LV1/n;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->i:LV1/m;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f13003f

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->c(Ljava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const p5, 0x7f08031c

    invoke-virtual {p4, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iget-object p5, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->h:Lcom/android/launcher3/DeviceProfile;

    iget p5, p5, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    invoke-virtual {p4, p2, p2, p5, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p3, p4, p3, p3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->j:LV1/n;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->i:LV1/m;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 p5, 0x2

    new-array v0, p5, [F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    aput v1, v0, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {p0, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v0, 0x1a1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p4, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p4, v0, p1, p1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p4, p5, [F

    fill-array-data p4, :array_0

    invoke-static {p0, p1, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p4, 0x42

    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 p4, 0x75

    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    filled-new-array {p2, p0}, [Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final c(Ljava/lang/CharSequence;)Landroid/widget/Button;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->h:Lcom/android/launcher3/DeviceProfile;

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->h:Lcom/android/launcher3/DeviceProfile;

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x4

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setGravity(I)V

    return-object v0
.end method
