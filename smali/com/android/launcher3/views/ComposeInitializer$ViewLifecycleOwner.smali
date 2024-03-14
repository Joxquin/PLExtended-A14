.class final Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/g;


# instance fields
.field private final mApi34Impl:Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;

.field private final mLifecycleRegistry:Landroidx/lifecycle/s;

.field private final mSavedStateRegistryController:La0/f;

.field private final mView:Landroid/view/View;

.field private final mWindowFocusListener:Lcom/android/launcher3/views/l;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/views/l;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/l;-><init>(Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;)V

    iput-object v0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mWindowFocusListener:Lcom/android/launcher3/views/l;

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/s;

    new-instance v0, La0/f;

    invoke-direct {v0, p0}, La0/f;-><init>(La0/g;)V

    iput-object v0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mSavedStateRegistryController:La0/f;

    iput-object p1, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mView:Landroid/view/View;

    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;

    invoke-direct {p1, p0}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;-><init>(Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;)V

    iput-object p1, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mApi34Impl:Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mApi34Impl:Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;

    :goto_0
    invoke-virtual {v0, v1}, La0/f;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->updateState()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->updateState()V

    return-void
.end method

.method private updateState()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->f:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->g:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->h:Landroidx/lifecycle/Lifecycle$State;

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/s;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s;->h(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/m;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/s;

    return-object p0
.end method

.method public final getSavedStateRegistry()La0/e;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mSavedStateRegistryController:La0/f;

    iget-object p0, p0, La0/f;->b:La0/e;

    return-object p0
.end method

.method public final onCreate()V
    .locals 2

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->f:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/s;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/s;->h(Landroidx/lifecycle/Lifecycle$State;)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mApi34Impl:Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;

    invoke-virtual {v0}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;->addOnWindowVisibilityChangeListener()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mWindowFocusListener:Lcom/android/launcher3/views/l;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->updateState()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mApi34Impl:Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;

    invoke-virtual {v0}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;->removeOnWindowVisibilityChangeListener()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mWindowFocusListener:Lcom/android/launcher3/views/l;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->d:Landroidx/lifecycle/Lifecycle$State;

    iget-object p0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/s;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s;->h(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method
