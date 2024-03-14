.class public Landroidx/fragment/app/P;
.super Landroidx/activity/l;
.source "SourceFile"

# interfaces
.implements LB/a;


# static fields
.field static final LIFECYCLE_TAG:Ljava/lang/String; = "android:support:lifecycle"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Landroidx/lifecycle/s;

.field final mFragments:Landroidx/fragment/app/V;

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/activity/l;-><init>()V

    .line 2
    new-instance v0, Landroidx/fragment/app/O;

    invoke-direct {v0, p0}, Landroidx/fragment/app/O;-><init>(Landroidx/fragment/app/P;)V

    .line 3
    new-instance v1, Landroidx/fragment/app/V;

    invoke-direct {v1, v0}, Landroidx/fragment/app/V;-><init>(Landroidx/fragment/app/O;)V

    .line 4
    iput-object v1, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    .line 5
    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/fragment/app/P;->mFragmentLifecycleRegistry:Landroidx/lifecycle/s;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/P;->mStopped:Z

    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/P;->init()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Landroidx/activity/l;-><init>(I)V

    .line 9
    new-instance p1, Landroidx/fragment/app/O;

    invoke-direct {p1, p0}, Landroidx/fragment/app/O;-><init>(Landroidx/fragment/app/P;)V

    .line 10
    new-instance v0, Landroidx/fragment/app/V;

    invoke-direct {v0, p1}, Landroidx/fragment/app/V;-><init>(Landroidx/fragment/app/O;)V

    .line 11
    iput-object v0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    .line 12
    new-instance p1, Landroidx/lifecycle/s;

    invoke-direct {p1, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object p1, p0, Landroidx/fragment/app/P;->mFragmentLifecycleRegistry:Landroidx/lifecycle/s;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroidx/fragment/app/P;->mStopped:Z

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/P;->init()V

    return-void
.end method

.method public static synthetic g(Landroidx/fragment/app/P;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/P;->lambda$init$2(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic h(Landroidx/fragment/app/P;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/P;->lambda$init$1(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic i(Landroidx/fragment/app/P;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/P;->lambda$init$3(Landroid/content/Context;)V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Landroidx/activity/l;->getSavedStateRegistry()La0/e;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/L;

    invoke-direct {v1, p0}, Landroidx/fragment/app/L;-><init>(Landroidx/fragment/app/P;)V

    const-string v2, "android:support:lifecycle"

    invoke-virtual {v0, v2, v1}, La0/e;->c(Ljava/lang/String;La0/d;)V

    new-instance v0, Landroidx/fragment/app/M;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/M;-><init>(Landroidx/fragment/app/P;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/l;->addOnConfigurationChangedListener(LL/a;)V

    new-instance v0, Landroidx/fragment/app/M;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/M;-><init>(Landroidx/fragment/app/P;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/l;->addOnNewIntentListener(LL/a;)V

    new-instance v0, Landroidx/fragment/app/N;

    invoke-direct {v0, p0}, Landroidx/fragment/app/N;-><init>(Landroidx/fragment/app/P;)V

    invoke-virtual {p0, v0}, Landroidx/activity/l;->addOnContextAvailableListener(Lb/b;)V

    return-void
.end method

.method public static synthetic j(Landroidx/fragment/app/P;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/P;->lambda$init$0()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$init$0()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/P;->markFragmentsCreated()V

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragmentLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method private synthetic lambda$init$1(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    invoke-virtual {p0}, Landroidx/fragment/app/V;->a()V

    return-void
.end method

.method private synthetic lambda$init$2(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    invoke-virtual {p0}, Landroidx/fragment/app/V;->a()V

    return-void
.end method

.method private lambda$init$3(Landroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object p0, p0, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object p1, p0, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p0, v0}, Landroidx/fragment/app/p0;->b(Landroidx/fragment/app/W;Landroidx/fragment/app/U;Landroidx/fragment/app/K;)V

    return-void
.end method

.method private static markState(Landroidx/fragment/app/p0;Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 5

    iget-object p0, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Landroidx/fragment/app/A0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/K;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/K;->getHost()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/K;->getChildFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/fragment/app/P;->markState(Landroidx/fragment/app/p0;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    const/4 v3, 0x1

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->g:Landroidx/lifecycle/Lifecycle$State;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/fragment/app/K0;->b()V

    iget-object v2, v2, Landroidx/fragment/app/K0;->g:Landroidx/lifecycle/s;

    iget-object v2, v2, Landroidx/lifecycle/s;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v1, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    iget-object v0, v0, Landroidx/fragment/app/K0;->g:Landroidx/lifecycle/s;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/s;->h(Landroidx/lifecycle/Lifecycle$State;)V

    move v0, v3

    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/K;->mLifecycleRegistry:Landroidx/lifecycle/s;

    iget-object v2, v2, Landroidx/lifecycle/s;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/K;->mLifecycleRegistry:Landroidx/lifecycle/s;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/s;->h(Landroidx/lifecycle/Lifecycle$State;)V

    move v0, v3

    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object p0, p0, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object p0, p0, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    iget-object p0, p0, Landroidx/fragment/app/p0;->f:Landroidx/fragment/app/Y;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/Y;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LB/e;->shouldDumpInternalState([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/P;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/P;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/P;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, LW/a;->a(Landroidx/lifecycle/q;)LW/e;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, LW/e;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object p0, p0, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object p0, p0, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/p0;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/p0;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object p0, p0, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object p0, p0, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    return-object p0
.end method

.method public getSupportLoaderManager()LW/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LW/a;->a(Landroidx/lifecycle/q;)LW/e;

    move-result-object p0

    return-object p0
.end method

.method public markFragmentsCreated()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/P;->getSupportFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->f:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Landroidx/fragment/app/P;->markState(Landroidx/fragment/app/p0;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    invoke-virtual {v0}, Landroidx/fragment/app/V;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/l;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/K;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/l;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/P;->mFragmentLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object p0, p0, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object p0, p0, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/p0;->F:Z

    iput-boolean p1, p0, Landroidx/fragment/app/p0;->G:Z

    iget-object v0, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean p1, v0, Landroidx/fragment/app/u0;->i:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->t(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/P;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/P;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object v0, v0, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object v0, v0, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    invoke-virtual {v0}, Landroidx/fragment/app/p0;->k()V

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragmentLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/activity/l;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object p0, p0, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object p0, p0, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/p0;->i(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/P;->mResumed:Z

    iget-object v0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object v0, v0, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object v0, v0, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/p0;->t(I)V

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragmentLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/P;->onResumeFragments()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    invoke-virtual {v0}, Landroidx/fragment/app/V;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/l;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    invoke-virtual {v0}, Landroidx/fragment/app/V;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/P;->mResumed:Z

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object p0, p0, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object p0, p0, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->x(Z)Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/P;->mFragmentLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object p0, p0, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object p0, p0, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->F:Z

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->G:Z

    iget-object v1, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v0, v1, Landroidx/fragment/app/u0;->i:Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->t(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    invoke-virtual {v0}, Landroidx/fragment/app/V;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/P;->mStopped:Z

    iget-boolean v1, p0, Landroidx/fragment/app/P;->mCreated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Landroidx/fragment/app/P;->mCreated:Z

    iget-object v1, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object v1, v1, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object v1, v1, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    iput-boolean v0, v1, Landroidx/fragment/app/p0;->F:Z

    iput-boolean v0, v1, Landroidx/fragment/app/p0;->G:Z

    iget-object v3, v1, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v0, v3, Landroidx/fragment/app/u0;->i:Z

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroidx/fragment/app/p0;->t(I)V

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object v1, v1, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object v1, v1, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/p0;->x(Z)Z

    iget-object v1, p0, Landroidx/fragment/app/P;->mFragmentLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object p0, p0, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object p0, p0, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->F:Z

    iput-boolean v0, p0, Landroidx/fragment/app/p0;->G:Z

    iget-object v1, p0, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v0, v1, Landroidx/fragment/app/u0;->i:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/p0;->t(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    invoke-virtual {p0}, Landroidx/fragment/app/V;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/P;->mStopped:Z

    invoke-virtual {p0}, Landroidx/fragment/app/P;->markFragmentsCreated()V

    iget-object v1, p0, Landroidx/fragment/app/P;->mFragments:Landroidx/fragment/app/V;

    iget-object v1, v1, Landroidx/fragment/app/V;->a:Landroidx/fragment/app/W;

    iget-object v1, v1, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    iput-boolean v0, v1, Landroidx/fragment/app/p0;->G:Z

    iget-object v2, v1, Landroidx/fragment/app/p0;->M:Landroidx/fragment/app/u0;

    iput-boolean v0, v2, Landroidx/fragment/app/u0;->i:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/fragment/app/p0;->t(I)V

    iget-object p0, p0, Landroidx/fragment/app/P;->mFragmentLifecycleRegistry:Landroidx/lifecycle/s;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public setEnterSharedElementCallback(LB/l;)V
    .locals 1

    sget-object v0, LB/c;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    new-instance v0, LB/b;

    invoke-direct {v0, p1}, LB/b;-><init>(LB/l;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(LB/l;)V
    .locals 1

    sget-object v0, LB/c;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    new-instance v0, LB/b;

    invoke-direct {v0, p1}, LB/b;-><init>(LB/l;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/K;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/P;->startActivityFromFragment(Landroidx/fragment/app/K;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/K;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 2
    sget-object p1, LB/c;->a:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p2, v0, p4}, Landroidx/activity/l;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/K;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/K;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_0

    sget-object v0, LB/c;->a:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroidx/activity/l;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/K;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 1

    sget-object v0, LB/c;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/activity/l;->invalidateMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 1

    sget-object v0, LB/c;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 1

    sget-object v0, LB/c;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
