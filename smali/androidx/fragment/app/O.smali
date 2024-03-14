.class public final Landroidx/fragment/app/O;
.super Landroidx/fragment/app/W;
.source "SourceFile"

# interfaces
.implements LC/c;
.implements LC/d;
.implements LB/i;
.implements LB/j;
.implements Landroidx/lifecycle/V;
.implements Landroidx/activity/t;
.implements Landroidx/activity/result/i;
.implements La0/g;
.implements Landroidx/fragment/app/v0;
.implements Landroidx/core/view/f;


# instance fields
.field public final synthetic h:Landroidx/fragment/app/P;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/P;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-direct {p0, p1}, Landroidx/fragment/app/W;-><init>(Landroidx/fragment/app/P;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/K;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/P;->onAttachFragment(Landroidx/fragment/app/K;)V

    return-void
.end method

.method public final addMenuProvider(Landroidx/core/view/k;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroidx/activity/l;->addMenuProvider(Landroidx/core/view/k;)V

    return-void
.end method

.method public final addOnConfigurationChangedListener(LL/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroidx/activity/l;->addOnConfigurationChangedListener(LL/a;)V

    return-void
.end method

.method public final addOnMultiWindowModeChangedListener(LL/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroidx/activity/l;->addOnMultiWindowModeChangedListener(LL/a;)V

    return-void
.end method

.method public final addOnPictureInPictureModeChangedListener(LL/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroidx/activity/l;->addOnPictureInPictureModeChangedListener(LL/a;)V

    return-void
.end method

.method public final addOnTrimMemoryListener(LL/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroidx/activity/l;->addOnTrimMemoryListener(LL/a;)V

    return-void
.end method

.method public final b(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    const-string v1, "  "

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/fragment/app/P;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final e()Landroidx/fragment/app/P;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    return-object p0
.end method

.method public final f()Landroid/view/LayoutInflater;
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, LB/c;->a:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/h;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0}, Landroidx/activity/l;->getActivityResultRegistry()Landroidx/activity/result/h;

    move-result-object p0

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/m;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragmentLifecycleRegistry:Landroidx/lifecycle/s;

    return-object p0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/s;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0}, Landroidx/activity/l;->getOnBackPressedDispatcher()Landroidx/activity/s;

    move-result-object p0

    return-object p0
.end method

.method public final getSavedStateRegistry()La0/e;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0}, Landroidx/activity/l;->getSavedStateRegistry()La0/e;

    move-result-object p0

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/U;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0}, Landroidx/activity/l;->getViewModelStore()Landroidx/lifecycle/U;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0}, Landroidx/activity/l;->invalidateMenu()V

    return-void
.end method

.method public final removeMenuProvider(Landroidx/core/view/k;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroidx/activity/l;->removeMenuProvider(Landroidx/core/view/k;)V

    return-void
.end method

.method public final removeOnConfigurationChangedListener(LL/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroidx/activity/l;->removeOnConfigurationChangedListener(LL/a;)V

    return-void
.end method

.method public final removeOnMultiWindowModeChangedListener(LL/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroidx/activity/l;->removeOnMultiWindowModeChangedListener(LL/a;)V

    return-void
.end method

.method public final removeOnPictureInPictureModeChangedListener(LL/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroidx/activity/l;->removeOnPictureInPictureModeChangedListener(LL/a;)V

    return-void
.end method

.method public final removeOnTrimMemoryListener(LL/a;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/O;->h:Landroidx/fragment/app/P;

    invoke-virtual {p0, p1}, Landroidx/activity/l;->removeOnTrimMemoryListener(LL/a;)V

    return-void
.end method
