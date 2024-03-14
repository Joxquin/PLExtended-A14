.class public abstract Lcom/android/quickstep/interaction/GestureSandboxFragment;
.super Landroidx/fragment/app/K;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/K;-><init>()V

    return-void
.end method


# virtual methods
.method close()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public recreateFragment()Lcom/android/quickstep/interaction/GestureSandboxFragment;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public shouldDisableSystemGestures()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
