.class public final Le/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final d:Landroid/view/Window$Callback;

.field public e:Z

.field public f:Z

.field public g:Z

.field public final synthetic h:Le/D;


# direct methods
.method public constructor <init>(Le/D;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Le/x;->h:Le/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Le/x;->d:Landroid/view/Window$Callback;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Window callback may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Le/x;->e:Z

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Le/x;->e:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Le/x;->e:Z

    throw p1
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final c(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final d(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Le/x;->b(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Le/x;->f:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Le/x;->h:Le/D;

    invoke-virtual {v0, p1}, Le/D;->E(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Le/x;->c(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p0, p1}, Le/x;->d(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    iget-object p0, p0, Le/x;->h:Le/D;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Le/D;->L()V

    iget-object v2, p0, Le/D;->p:Le/T;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v2, Le/T;->i:Le/S;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v2, Le/S;->g:Lj/o;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v4

    if-eq v4, v1, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lj/o;->setQwertyMode(Z)V

    invoke-virtual {v2, v0, p1, v3}, Lj/o;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v3

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Le/D;->O:Le/C;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v0, v2, p1}, Le/D;->P(Le/C;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Le/D;->O:Le/C;

    if-eqz p0, :cond_5

    iput-boolean v1, p0, Le/C;->l:Z

    goto :goto_3

    :cond_4
    iget-object v0, p0, Le/D;->O:Le/C;

    if-nez v0, :cond_6

    invoke-virtual {p0, v3}, Le/D;->J(I)Le/C;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/D;->Q(Le/C;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v0, v2, p1}, Le/D;->P(Le/C;ILandroid/view/KeyEvent;)Z

    move-result p0

    iput-boolean v3, v0, Le/C;->k:Z

    if-eqz p0, :cond_6

    :cond_5
    :goto_3
    move p0, v1

    goto :goto_4

    :cond_6
    move p0, v3

    :goto_4
    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    move v1, v3

    :cond_8
    :goto_5
    return v1
.end method

.method public final bridge synthetic dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Le/x;->e(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Le/x;->f(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Le/x;->g(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final e(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public final f(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final g(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final h(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final i(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final j()V
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public final k(ILandroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final l(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final m()V
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public final n(ILandroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final o(ILandroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/x;->h(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final bridge synthetic onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/x;->i(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final bridge synthetic onAttachedToWindow()V
    .locals 0

    invoke-virtual {p0}, Le/x;->j()V

    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    iget-boolean v0, p0, Le/x;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Lj/o;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Le/x;->k(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Le/x;->l(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Le/x;->m()V

    return-void
.end method

.method public final bridge synthetic onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Le/x;->n(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Le/x;->o(ILandroid/view/Menu;)Z

    iget-object p0, p0, Le/x;->h:Le/D;

    const/16 p2, 0x6c

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Le/D;->L()V

    iget-object p0, p0, Le/D;->p:Le/T;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Le/T;->b(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Le/x;->g:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Le/x;->p(ILandroid/view/Menu;)V

    iget-object p0, p0, Le/x;->h:Le/D;

    const/16 p2, 0x6c

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Le/D;->L()V

    iget-object p0, p0, Le/D;->p:Le/T;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Le/T;->b(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0, p1}, Le/D;->J(I)Le/C;

    move-result-object p1

    iget-boolean p2, p1, Le/C;->m:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1, v0}, Le/D;->C(Le/C;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_0
    return-void
.end method

.method public final bridge synthetic onPointerCaptureChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Le/x;->q(Z)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    instance-of v0, p3, Lj/o;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lj/o;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v0, Lj/o;->y:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Le/x;->r(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    if-eqz v0, :cond_3

    iput-boolean v1, v0, Lj/o;->y:Z

    :cond_3
    return p0
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    iget-object v0, p0, Le/x;->h:Le/D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/D;->J(I)Le/C;

    move-result-object v0

    iget-object v0, v0, Le/C;->h:Lj/o;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Le/x;->s(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Le/x;->s(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public final bridge synthetic onSearchRequested()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/x;->t()Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Le/x;->u(Landroid/view/SearchEvent;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/x;->v(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final bridge synthetic onWindowFocusChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Le/x;->w(Z)V

    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 7

    .line 2
    iget-object v0, p0, Le/x;->h:Le/D;

    .line 3
    iget-boolean v1, v0, Le/D;->A:Z

    if-eqz v1, :cond_17

    if-eqz p2, :cond_0

    goto/16 :goto_8

    .line 4
    :cond_0
    new-instance p2, Li/f;

    iget-object v0, v0, Le/D;->l:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Li/f;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 5
    iget-object p0, p0, Le/x;->h:Le/D;

    .line 6
    iget-object p1, p0, Le/D;->v:Li/b;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Li/b;->c()V

    .line 8
    :cond_1
    new-instance p1, Le/v;

    invoke-direct {p1, p0, p2}, Le/v;-><init>(Le/D;Li/f;)V

    .line 9
    invoke-virtual {p0}, Le/D;->L()V

    .line 10
    iget-object v0, p0, Le/D;->p:Le/T;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 11
    iget-object v4, v0, Le/T;->i:Le/S;

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v4}, Le/S;->c()V

    .line 13
    :cond_2
    iget-object v4, v0, Le/T;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 14
    iget-boolean v5, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    if-eqz v5, :cond_3

    .line 15
    iput-boolean v3, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    .line 16
    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s()V

    .line 17
    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s()V

    .line 18
    iget-object v5, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    .line 19
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 20
    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ActionBarContainer;

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 21
    :cond_3
    iget-object v4, v0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContextView;->i()V

    .line 22
    new-instance v4, Le/S;

    iget-object v5, v0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v0, v5, p1}, Le/S;-><init>(Le/T;Landroid/content/Context;Le/v;)V

    .line 23
    iget-object v5, v4, Le/S;->g:Lj/o;

    invoke-virtual {v5}, Lj/o;->w()V

    .line 24
    :try_start_0
    iget-object v6, v4, Le/S;->h:Li/a;

    invoke-interface {v6, v4, v5}, Li/a;->d(Li/b;Lj/o;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {v5}, Lj/o;->v()V

    if-eqz v6, :cond_4

    .line 26
    iput-object v4, v0, Le/T;->i:Le/S;

    .line 27
    invoke-virtual {v4}, Le/S;->i()V

    .line 28
    iget-object v5, v0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;->g(Li/b;)V

    .line 29
    invoke-virtual {v0, v1}, Le/T;->a(Z)V

    goto :goto_0

    :cond_4
    move-object v4, v2

    .line 30
    :goto_0
    iput-object v4, p0, Le/D;->v:Li/b;

    if-eqz v4, :cond_5

    .line 31
    iget-object v0, p0, Le/D;->o:Le/p;

    if-eqz v0, :cond_5

    .line 32
    invoke-interface {v0}, Le/p;->b()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 33
    invoke-virtual {v5}, Lj/o;->v()V

    .line 34
    throw p0

    .line 35
    :cond_5
    :goto_1
    iget-object v0, p0, Le/D;->v:Li/b;

    if-nez v0, :cond_15

    .line 36
    iget-object v0, p0, Le/D;->z:Landroidx/core/view/O;

    if-eqz v0, :cond_6

    .line 37
    invoke-virtual {v0}, Landroidx/core/view/O;->b()V

    .line 38
    :cond_6
    iget-object v0, p0, Le/D;->v:Li/b;

    if-eqz v0, :cond_7

    .line 39
    invoke-virtual {v0}, Li/b;->c()V

    .line 40
    :cond_7
    iget-object v0, p0, Le/D;->o:Le/p;

    if-eqz v0, :cond_8

    iget-boolean v4, p0, Le/D;->S:Z

    if-nez v4, :cond_8

    .line 41
    :try_start_1
    invoke-interface {v0}, Le/p;->c()V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    :catch_0
    :cond_8
    iget-object v0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    if-nez v0, :cond_d

    .line 43
    iget-boolean v0, p0, Le/D;->K:Z

    if-eqz v0, :cond_a

    .line 44
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 45
    iget-object v4, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f04000c

    .line 46
    invoke-virtual {v4, v5, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 47
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_9

    .line 48
    iget-object v5, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 49
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 50
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 51
    new-instance v4, Li/d;

    iget-object v6, p0, Le/D;->l:Landroid/content/Context;

    invoke-direct {v4, v3, v6}, Li/d;-><init>(ILandroid/content/Context;)V

    .line 52
    invoke-virtual {v4}, Li/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_2

    .line 53
    :cond_9
    iget-object v4, p0, Le/D;->l:Landroid/content/Context;

    .line 54
    :goto_2
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 55
    new-instance v5, Landroid/widget/PopupWindow;

    const v6, 0x7f04001c

    invoke-direct {v5, v4, v2, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Le/D;->x:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    .line 56
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 57
    iget-object v5, p0, Le/D;->x:Landroid/widget/PopupWindow;

    iget-object v6, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 58
    iget-object v5, p0, Le/D;->x:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 59
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f040006

    invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 60
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 61
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 62
    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 63
    iget-object v4, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 64
    iput v0, v4, Lk/b;->h:I

    .line 65
    iget-object v0, p0, Le/D;->x:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 66
    new-instance v0, Le/s;

    invoke-direct {v0, p0, v1}, Le/s;-><init>(Le/D;I)V

    iput-object v0, p0, Le/D;->y:Le/s;

    goto :goto_4

    .line 67
    :cond_a
    iget-object v0, p0, Le/D;->C:Landroid/view/ViewGroup;

    const v4, 0x7f0a0053

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v0, :cond_d

    .line 68
    invoke-virtual {p0}, Le/D;->L()V

    .line 69
    iget-object v4, p0, Le/D;->p:Le/T;

    if-eqz v4, :cond_b

    .line 70
    invoke-virtual {v4}, Le/T;->c()Landroid/content/Context;

    move-result-object v4

    goto :goto_3

    :cond_b
    move-object v4, v2

    :goto_3
    if-nez v4, :cond_c

    .line 71
    iget-object v4, p0, Le/D;->l:Landroid/content/Context;

    .line 72
    :cond_c
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 73
    iput-object v4, v0, Landroidx/appcompat/widget/ViewStubCompat;->g:Landroid/view/LayoutInflater;

    .line 74
    invoke-virtual {v0}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 75
    :cond_d
    :goto_4
    iget-object v0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_13

    .line 76
    iget-object v0, p0, Le/D;->z:Landroidx/core/view/O;

    if-eqz v0, :cond_e

    .line 77
    invoke-virtual {v0}, Landroidx/core/view/O;->b()V

    .line 78
    :cond_e
    iget-object v0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->i()V

    .line 79
    new-instance v0, Li/e;

    iget-object v4, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v0, v4, v5, p1}, Li/e;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Li/a;)V

    .line 80
    iget-object v4, v0, Li/e;->k:Lj/o;

    .line 81
    invoke-virtual {p1, v0, v4}, Le/v;->d(Li/b;Lj/o;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 82
    invoke-virtual {v0}, Li/e;->i()V

    .line 83
    iget-object p1, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->g(Li/b;)V

    .line 84
    iput-object v0, p0, Le/D;->v:Li/b;

    .line 85
    iget-boolean p1, p0, Le/D;->B:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Le/D;->C:Landroid/view/ViewGroup;

    if-eqz p1, :cond_f

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    .line 86
    invoke-static {p1}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_f

    move p1, v1

    goto :goto_5

    :cond_f
    move p1, v3

    :goto_5
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_10

    .line 87
    iget-object p1, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 88
    iget-object p1, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Landroidx/core/view/J;->a(Landroid/view/View;)Landroidx/core/view/O;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/view/O;->a(F)V

    iput-object p1, p0, Le/D;->z:Landroidx/core/view/O;

    .line 89
    new-instance v0, Le/u;

    invoke-direct {v0, v1, p0}, Le/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/O;->d(Landroidx/core/view/P;)V

    goto :goto_6

    .line 90
    :cond_10
    iget-object p1, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 91
    iget-object p1, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Lk/b;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_11

    .line 93
    iget-object p1, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    .line 94
    invoke-static {p1}, Landroidx/core/view/B;->c(Landroid/view/View;)V

    .line 95
    :cond_11
    :goto_6
    iget-object p1, p0, Le/D;->x:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_13

    .line 96
    iget-object p1, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Le/D;->y:Le/s;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 97
    :cond_12
    iput-object v2, p0, Le/D;->v:Li/b;

    .line 98
    :cond_13
    :goto_7
    iget-object p1, p0, Le/D;->v:Li/b;

    if-eqz p1, :cond_14

    iget-object p1, p0, Le/D;->o:Le/p;

    if-eqz p1, :cond_14

    .line 99
    invoke-interface {p1}, Le/p;->b()V

    .line 100
    :cond_14
    invoke-virtual {p0}, Le/D;->S()V

    .line 101
    iget-object p1, p0, Le/D;->v:Li/b;

    .line 102
    iput-object p1, p0, Le/D;->v:Li/b;

    .line 103
    :cond_15
    invoke-virtual {p0}, Le/D;->S()V

    .line 104
    iget-object p0, p0, Le/D;->v:Li/b;

    if-eqz p0, :cond_16

    .line 105
    invoke-virtual {p2, p0}, Li/f;->e(Li/b;)Li/g;

    move-result-object v2

    :cond_16
    return-object v2

    .line 106
    :cond_17
    :goto_8
    invoke-virtual {p0, p1, p2}, Le/x;->x(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public final p(ILandroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final q(Z)V
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    return-void
.end method

.method public final r(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final s(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final t()Z
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result p0

    return p0
.end method

.method public final u(Landroid/view/SearchEvent;)Z
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p0

    return p0
.end method

.method public final v(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final w(Z)V
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final x(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Le/x;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
