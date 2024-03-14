.class public final Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/d;


# instance fields
.field private final childrenTextViews:Ljava/util/List;

.field private isTransitionInProgress:Z

.field private final rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->rootView:Landroid/view/ViewGroup;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    return-void
.end method

.method private final getAllChildTextView(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(index)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->getAllChildTextView(Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-gtz v3, :cond_1

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onTransitionFinished()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->isTransitionInProgress:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->isTransitionInProgress:Z

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "subpixelFlagEnableForTextView"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v4

    and-int/lit16 v4, v4, -0x81

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Le3/f;->a:Le3/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    and-int/lit16 v2, v2, -0x81

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_2
    return-void
.end method

.method public bridge synthetic onTransitionFinishing()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onTransitionProgress(F)V
    .locals 0

    return-void
.end method

.method public onTransitionStarted()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->isTransitionInProgress:Z

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const-string v3, "subpixelFlagDisableForTextView"

    const-string v4, "subpixelFlagTraverseHierarchy"

    if-eqz v2, :cond_6

    const-string v2, "subpixelFlagSetForTextView"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->rootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->getAllChildTextView(Landroid/view/ViewGroup;Ljava/util/List;)V

    sget-object v2, Le3/f;->a:Le3/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->rootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->getAllChildTextView(Landroid/view/ViewGroup;Ljava/util/List;)V

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_1

    :cond_2
    sget-object p0, Le3/f;->a:Le3/f;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_2

    :cond_5
    :goto_3
    sget-object p0, Le3/f;->a:Le3/f;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_7

    :catchall_2
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_6
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_5
    iget-object v2, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->rootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->getAllChildTextView(Landroid/view/ViewGroup;Ljava/util/List;)V

    sget-object v2, Le3/f;->a:Le3/f;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_4

    :catchall_3
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->rootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->getAllChildTextView(Landroid/view/ViewGroup;Ljava/util/List;)V

    :goto_4
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_6
    iget-object p0, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_5

    :cond_9
    sget-object p0, Le3/f;->a:Le3/f;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_7

    :catchall_4
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;->childrenTextViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_6

    :cond_c
    :goto_7
    return-void
.end method
