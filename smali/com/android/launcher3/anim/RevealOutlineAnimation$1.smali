.class final Lcom/android/launcher3/anim/RevealOutlineAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private mIsClippedToOutline:Z

.field private mOldOutlineProvider:Landroid/view/ViewOutlineProvider;

.field final synthetic this$0:Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

.field final synthetic val$elevation:F

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;Landroid/view/View;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    iput-object p2, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$elevation:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->mOldOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->mIsClippedToOutline:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->shouldRemoveElevationDuringAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipToOutline()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->mIsClippedToOutline:Z

    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->mOldOutlineProvider:Landroid/view/ViewOutlineProvider;

    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->shouldRemoveElevationDuringAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget p0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$elevation:F

    neg-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    return-void
.end method
