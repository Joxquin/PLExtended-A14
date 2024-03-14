.class public Le/F;
.super Landroidx/activity/n;
.source "SourceFile"

# interfaces
.implements Le/p;


# instance fields
.field public g:Le/D;

.field public final h:Le/E;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    const v1, 0x7f0401a2

    if-nez p1, :cond_0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    invoke-direct {p0, v2, p2}, Landroidx/activity/n;-><init>(ILandroid/content/Context;)V

    new-instance v2, Le/E;

    invoke-direct {v2, p0}, Le/E;-><init>(Le/F;)V

    iput-object v2, p0, Le/F;->h:Le/E;

    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object p0

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_1
    move-object p2, p0

    check-cast p2, Le/D;

    iput p1, p2, Le/D;->V:I

    invoke-virtual {p0}, Le/r;->m()V

    return-void
.end method

.method private e()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/W;->b(Landroid/view/View;Landroidx/lifecycle/q;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, La0/h;->a(Landroid/view/View;La0/g;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/activity/u;->a(Landroid/view/View;Landroidx/activity/t;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Le/r;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object p0

    invoke-virtual {p0}, Le/r;->n()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object p0, p0, Le/F;->h:Le/E;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Le/E;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final f()Le/r;
    .locals 3

    iget-object v0, p0, Le/F;->g:Le/D;

    if-nez v0, :cond_0

    sget-object v0, Le/r;->d:Le/K;

    new-instance v0, Le/D;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p0}, Le/D;-><init>(Landroid/content/Context;Landroid/view/Window;Le/p;Ljava/lang/Object;)V

    iput-object v0, p0, Le/F;->g:Le/D;

    :cond_0
    iget-object p0, p0, Le/F;->g:Le/D;

    return-object p0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/r;->e(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method final g(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final invalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object p0

    invoke-virtual {p0}, Le/r;->j()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object v0

    invoke-virtual {v0}, Le/r;->i()V

    invoke-super {p0, p1}, Landroidx/activity/n;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object p0

    invoke-virtual {p0}, Le/r;->m()V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/n;->onStop()V

    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object p0

    invoke-virtual {p0}, Le/r;->q()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/F;->e()V

    .line 2
    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/r;->t(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Le/F;->e()V

    .line 4
    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/r;->u(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Le/F;->e()V

    .line 6
    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Le/r;->v(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 4
    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/r;->x(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Le/F;->f()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/r;->x(Ljava/lang/CharSequence;)V

    return-void
.end method
