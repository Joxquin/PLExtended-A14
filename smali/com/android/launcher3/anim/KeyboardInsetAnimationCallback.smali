.class public final Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "SourceFile"


# instance fields
.field private mInitialTranslation:F

.field private mKeyboardTranslationState:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

.field private mTerminalTranslation:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    sget-object v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->SYSTEM:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    iput-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mKeyboardTranslationState:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    iput-object p1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getKeyboardTranslationState()Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mKeyboardTranslationState:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    return-object p0
.end method

.method public final onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    instance-of v0, p1, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    invoke-interface {p1}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;->onTranslationEnd()V

    :cond_0
    sget-object p1, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->SYSTEM:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    iput-object p1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mKeyboardTranslationState:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    return-void
.end method

.method public final onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    sget-object p1, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->MANUAL_PREPARED:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    iput-object p1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mKeyboardTranslationState:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    iget-object p1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mInitialTranslation:F

    return-void
.end method

.method public final onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    iget p0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mInitialTranslation:F

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p2}, Landroid/view/WindowInsetsAnimation;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mInitialTranslation:F

    iget v3, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mTerminalTranslation:F

    sget-object v4, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    instance-of v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    invoke-virtual {p2}, Landroid/view/WindowInsetsAnimation;->getAlpha()F

    move-result p2

    invoke-interface {p0, p2}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;->onKeyboardAlphaChanged(F)V

    :cond_3
    return-object p1
.end method

.method public final onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mTerminalTranslation:F

    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mInitialTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    sget-object v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->MANUAL_ONGOING:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    iput-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mKeyboardTranslationState:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    invoke-interface {v0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;->onTranslationStart()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Callback;->onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p0

    return-object p0
.end method
