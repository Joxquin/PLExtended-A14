.class public final Lcom/android/launcher3/settings/PreferenceHighlighter;
.super Landroidx/recyclerview/widget/i0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final END_COLOR:I

.field private static final HIGHLIGHT_COLOR:Landroid/util/Property;


# instance fields
.field private final mDrawRect:Landroid/graphics/RectF;

.field private mHighLightStarted:Z

.field private mHighlightColor:I

.field private final mIndex:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPreference:Landroidx/preference/Preference;

.field private final mRv:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/settings/PreferenceHighlighter$1;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/launcher3/settings/PreferenceHighlighter$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/launcher3/settings/PreferenceHighlighter;->HIGHLIGHT_COLOR:Landroid/util/Property;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    sput v0, Lcom/android/launcher3/settings/PreferenceHighlighter;->END_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/preference/Preference;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/i0;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mDrawRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighLightStarted:Z

    sget v0, Lcom/android/launcher3/settings/PreferenceHighlighter;->END_COLOR:I

    iput v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    iput-object p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mIndex:I

    iput-object p3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/settings/PreferenceHighlighter;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/settings/PreferenceHighlighter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/settings/PreferenceHighlighter;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    return-void
.end method

.method public static d(Lcom/android/launcher3/settings/PreferenceHighlighter;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/settings/PreferenceHighlighter;->HIGHLIGHT_COLOR:Landroid/util/Property;

    iget v1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    sget v2, Lcom/android/launcher3/settings/PreferenceHighlighter;->END_COLOR:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v1, Lcom/android/launcher3/settings/PreferenceHighlighter$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/settings/PreferenceHighlighter$2;-><init>(Lcom/android/launcher3/settings/PreferenceHighlighter;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/A0;)V
    .locals 4

    iget v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mIndex:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/E0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighLightStarted:Z

    if-nez v1, :cond_1

    iget p3, p3, Landroidx/recyclerview/widget/A0;->o:I

    if-eqz p3, :cond_1

    return-void

    :cond_1
    if-nez v1, :cond_2

    iget-object p3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x1010435

    invoke-static {v1, p3}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p3

    const/16 v1, 0x42

    invoke-static {p3, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p3

    sget-object v1, Lcom/android/launcher3/settings/PreferenceHighlighter;->HIGHLIGHT_COLOR:Landroid/util/Property;

    sget v2, Lcom/android/launcher3/settings/PreferenceHighlighter;->END_COLOR:I

    filled-new-array {v2, p3}, [I

    move-result-object p3

    invoke-static {p0, v1, p3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const-wide/16 v1, 0xc8

    invoke-virtual {p3, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    new-instance v1, Lcom/android/launcher3/settings/PreferenceHighlighter$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/settings/PreferenceHighlighter$2;-><init>(Lcom/android/launcher3/settings/PreferenceHighlighter;I)V

    invoke-virtual {p3, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->start()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighLightStarted:Z

    :cond_2
    iget-object p3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mDrawRect:Landroid/graphics/RectF;

    iget-object v0, v0, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v1, p2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPreference:Landroidx/preference/Preference;

    instance-of p3, p2, Lcom/android/launcher3/settings/PreferenceHighlighter$HighlightDelegate;

    if-eqz p3, :cond_3

    check-cast p2, Lcom/android/launcher3/settings/PreferenceHighlighter$HighlightDelegate;

    iget-object p3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mDrawRect:Landroid/graphics/RectF;

    invoke-interface {p2, v0, p3}, Lcom/android/launcher3/settings/PreferenceHighlighter$HighlightDelegate;->offsetHighlight(Landroid/view/View;Landroid/graphics/RectF;)V

    :cond_3
    iget-object p2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mDrawRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/i0;)V

    iget-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mIndex:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
