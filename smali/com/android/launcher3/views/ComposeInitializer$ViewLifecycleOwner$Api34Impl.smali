.class final Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mWindowVisibilityListener:Lcom/android/launcher3/views/m;

.field final synthetic this$0:Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;->this$0:Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/launcher3/views/m;

    invoke-direct {p1, p0}, Lcom/android/launcher3/views/m;-><init>(Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;)V

    iput-object p1, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;->mWindowVisibilityListener:Lcom/android/launcher3/views/m;

    return-void
.end method


# virtual methods
.method public final addOnWindowVisibilityChangeListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;->this$0:Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;

    invoke-static {v0}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->b(Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;->mWindowVisibilityListener:Lcom/android/launcher3/views/m;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnWindowVisibilityChangeListener(Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;)V

    return-void
.end method

.method public final removeOnWindowVisibilityChangeListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;->this$0:Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;

    invoke-static {v0}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->b(Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner$Api34Impl;->mWindowVisibilityListener:Lcom/android/launcher3/views/m;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowVisibilityChangeListener(Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;)V

    return-void
.end method
