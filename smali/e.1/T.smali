.class public final Le/T;
.super Le/c;
.source "SourceFile"

# interfaces
.implements Lk/g;


# static fields
.field public static final A:Landroid/view/animation/Interpolator;

.field public static final z:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Lk/n0;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public final g:Landroid/view/View;

.field public h:Z

.field public i:Le/S;

.field public j:Le/S;

.field public k:Li/a;

.field public l:Z

.field public final m:Ljava/util/ArrayList;

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Li/l;

.field public u:Z

.field public v:Z

.field public final w:Le/P;

.field public final x:Le/P;

.field public final y:Le/Q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Le/T;->z:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Le/T;->A:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/T;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le/T;->o:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Le/T;->p:Z

    .line 6
    iput-boolean v1, p0, Le/T;->s:Z

    .line 7
    new-instance v2, Le/P;

    invoke-direct {v2, p0, v0}, Le/P;-><init>(Le/T;I)V

    iput-object v2, p0, Le/T;->w:Le/P;

    .line 8
    new-instance v0, Le/P;

    invoke-direct {v0, p0, v1}, Le/P;-><init>(Le/T;I)V

    iput-object v0, p0, Le/T;->x:Le/P;

    .line 9
    new-instance v0, Le/Q;

    invoke-direct {v0, p0}, Le/Q;-><init>(Le/T;)V

    iput-object v0, p0, Le/T;->y:Le/Q;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Le/T;->d(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/T;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Le/c;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/T;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Le/T;->o:I

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Le/T;->p:Z

    .line 19
    iput-boolean v1, p0, Le/T;->s:Z

    .line 20
    new-instance v2, Le/P;

    invoke-direct {v2, p0, v0}, Le/P;-><init>(Le/T;I)V

    iput-object v2, p0, Le/T;->w:Le/P;

    .line 21
    new-instance v0, Le/P;

    invoke-direct {v0, p0, v1}, Le/P;-><init>(Le/T;I)V

    iput-object v0, p0, Le/T;->x:Le/P;

    .line 22
    new-instance v0, Le/Q;

    invoke-direct {v0, p0}, Le/Q;-><init>(Le/T;)V

    iput-object v0, p0, Le/T;->y:Le/Q;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/T;->d(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Le/T;->r:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/T;->r:Z

    invoke-virtual {p0, v0}, Le/T;->g(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Le/T;->r:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Le/T;->r:Z

    invoke-virtual {p0, v0}, Le/T;->g(Z)V

    :cond_1
    :goto_0
    iget-object v1, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_5

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/T;->e:Lk/n0;

    invoke-interface {p1, v2, v4, v5}, Lk/n0;->r(IJ)Landroidx/core/view/O;

    move-result-object p1

    iget-object p0, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0, v6, v7}, Lk/b;->f(IJ)Landroidx/core/view/O;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Le/T;->e:Lk/n0;

    invoke-interface {p1, v0, v6, v7}, Lk/n0;->r(IJ)Landroidx/core/view/O;

    move-result-object p1

    iget-object p0, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3, v4, v5}, Lk/b;->f(IJ)Landroidx/core/view/O;

    move-result-object p0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_1
    new-instance v0, Li/l;

    invoke-direct {v0}, Li/l;-><init>()V

    iget-object v1, v0, Li/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/core/view/O;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    :goto_2
    iget-object p1, p0, Landroidx/core/view/O;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_4
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Li/l;->b()V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Le/T;->e:Lk/n0;

    invoke-interface {p1, v2}, Lk/n0;->k(I)V

    iget-object p0, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0}, Lk/b;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Le/T;->e:Lk/n0;

    invoke-interface {p1, v0}, Lk/n0;->k(I)V

    iget-object p0, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3}, Lk/b;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-boolean v0, p0, Le/T;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Le/T;->l:Z

    iget-object p0, p0, Le/T;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b;

    invoke-interface {v1}, Le/b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Le/T;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Le/T;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04000d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Le/T;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Le/T;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/T;->a:Landroid/content/Context;

    iput-object v0, p0, Le/T;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object p0, p0, Le/T;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final d(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0a0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Le/T;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iput-object p0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Lk/g;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Lk/g;

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:I

    check-cast v1, Le/T;

    iput v2, v1, Le/T;->o:I

    iget v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/B;->c(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0a0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lk/n0;

    if-eqz v1, :cond_1

    check-cast v0, Lk/n0;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_a

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/b;

    if-nez v1, :cond_2

    new-instance v1, Landroidx/appcompat/widget/b;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/b;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/b;

    :cond_2
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/b;

    :goto_0
    iput-object v0, p0, Le/T;->e:Lk/n0;

    const v0, 0x7f0a0047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    const v0, 0x7f0a003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Le/T;->e:Lk/n0;

    if-eqz v0, :cond_9

    iget-object v1, p0, Le/T;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_9

    if-eqz p1, :cond_9

    invoke-interface {v0}, Lk/n0;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/T;->a:Landroid/content/Context;

    iget-object p1, p0, Le/T;->e:Lk/n0;

    invoke-interface {p1}, Lk/n0;->p()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    iput-boolean v0, p0, Le/T;->h:Z

    :cond_4
    iget-object v2, p0, Le/T;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    iget-object p1, p0, Le/T;->e:Lk/n0;

    invoke-interface {p1}, Lk/n0;->l()V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v2, 0x7f050000

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Le/T;->f(Z)V

    iget-object p1, p0, Le/T;->a:Landroid/content/Context;

    sget-object v2, Ld/a;->a:[I

    const v3, 0x7f040008

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Le/T;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    if-eqz v3, :cond_6

    iput-boolean v0, p0, Le/T;->v:Z

    iget-boolean v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    if-eq v0, v3, :cond_7

    iput-boolean v0, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_8

    int-to-float v0, v0

    iget-object p0, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, Landroidx/core/view/D;->k(Landroid/view/View;F)V

    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-class p1, Le/T;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " can only be used with a compatible window decor layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_b
    const-string p1, "null"

    :goto_4
    const-string v0, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Z)V
    .locals 3

    iget-boolean v0, p0, Le/T;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Le/T;->e:Lk/n0;

    invoke-interface {v1}, Lk/n0;->p()I

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Le/T;->h:Z

    iget-object p0, p0, Le/T;->e:Lk/n0;

    and-int/2addr p1, v0

    and-int/lit8 v0, v1, -0x5

    or-int/2addr p1, v0

    invoke-interface {p0, p1}, Lk/n0;->n(I)V

    :cond_1
    return-void
.end method

.method public final f(Z)V
    .locals 1

    iput-boolean p1, p0, Le/T;->n:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Le/T;->e:Lk/n0;

    invoke-interface {p1}, Lk/n0;->o()V

    iget-object p1, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Le/T;->e:Lk/n0;

    invoke-interface {p1}, Lk/n0;->o()V

    :goto_0
    iget-object p1, p0, Le/T;->e:Lk/n0;

    invoke-interface {p1}, Lk/n0;->q()V

    iget-object p1, p0, Le/T;->e:Lk/n0;

    iget-boolean v0, p0, Le/T;->n:Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lk/n0;->u(Z)V

    iget-object p1, p0, Le/T;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean p0, p0, Le/T;->n:Z

    iput-boolean v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    return-void
.end method

.method public final g(Z)V
    .locals 11

    iget-boolean v0, p0, Le/T;->q:Z

    iget-boolean v1, p0, Le/T;->r:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    const-wide/16 v4, 0xfa

    const/4 v1, 0x0

    iget-object v6, p0, Le/T;->g:Landroid/view/View;

    iget-object v7, p0, Le/T;->y:Le/Q;

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Le/T;->s:Z

    if-nez v0, :cond_1a

    iput-boolean v2, p0, Le/T;->s:Z

    iget-object v0, p0, Le/T;->t:Li/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Li/l;->a()V

    :cond_2
    iget-object v0, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Le/T;->o:I

    iget-object v9, p0, Le/T;->x:Le/P;

    const/4 v10, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Le/T;->u:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_c

    :cond_3
    iget-object v0, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_4

    filled-new-array {v3, v3}, [I

    move-result-object p1

    iget-object v3, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_4
    iget-object p1, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    new-instance p1, Li/l;

    invoke-direct {p1}, Li/l;-><init>()V

    iget-object v2, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Landroidx/core/view/J;->a(Landroid/view/View;)Landroidx/core/view/O;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroidx/core/view/O;->e(F)V

    iget-object v3, v2, Landroidx/core/view/O;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_6

    if-eqz v7, :cond_5

    new-instance v1, Landroidx/core/view/M;

    invoke-direct {v1, v7, v3}, Landroidx/core/view/M;-><init>(Le/Q;Landroid/view/View;)V

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_6
    iget-boolean v1, p1, Li/l;->e:Z

    iget-object v3, p1, Li/l;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v1, p0, Le/T;->p:Z

    if-eqz v1, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v6}, Landroidx/core/view/J;->a(Landroid/view/View;)Landroidx/core/view/O;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/core/view/O;->e(F)V

    iget-boolean v1, p1, Li/l;->e:Z

    if-nez v1, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v0, Le/T;->A:Landroid/view/animation/Interpolator;

    iget-boolean v1, p1, Li/l;->e:Z

    if-nez v1, :cond_9

    iput-object v0, p1, Li/l;->c:Landroid/view/animation/Interpolator;

    :cond_9
    if-nez v1, :cond_a

    iput-wide v4, p1, Li/l;->b:J

    :cond_a
    if-nez v1, :cond_b

    iput-object v9, p1, Li/l;->d:Landroidx/core/view/P;

    :cond_b
    iput-object p1, p0, Le/T;->t:Li/l;

    invoke-virtual {p1}, Li/l;->b()V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v10}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-boolean p1, p0, Le/T;->p:Z

    if-eqz p1, :cond_d

    if-eqz v6, :cond_d

    invoke-virtual {v6, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_d
    invoke-virtual {v9}, Le/P;->a()V

    :goto_1
    iget-object p0, p0, Le/T;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_1a

    sget-object p1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/B;->c(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_e
    iget-boolean v0, p0, Le/T;->s:Z

    if-eqz v0, :cond_1a

    iput-boolean v3, p0, Le/T;->s:Z

    iget-object v0, p0, Le/T;->t:Li/l;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Li/l;->a()V

    :cond_f
    iget v0, p0, Le/T;->o:I

    iget-object v9, p0, Le/T;->w:Le/P;

    if-nez v0, :cond_19

    iget-boolean v0, p0, Le/T;->u:Z

    if-nez v0, :cond_10

    if-eqz p1, :cond_19

    :cond_10
    iget-object v0, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    const/high16 v8, 0x60000

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    new-instance v0, Li/l;

    invoke-direct {v0}, Li/l;-><init>()V

    iget-object v8, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    if-eqz p1, :cond_11

    filled-new-array {v3, v3}, [I

    move-result-object p1

    iget-object v3, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v8, p1

    :cond_11
    iget-object p1, p0, Le/T;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Landroidx/core/view/J;->a(Landroid/view/View;)Landroidx/core/view/O;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroidx/core/view/O;->e(F)V

    iget-object v2, p1, Landroidx/core/view/O;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_13

    if-eqz v7, :cond_12

    new-instance v1, Landroidx/core/view/M;

    invoke-direct {v1, v7, v2}, Landroidx/core/view/M;-><init>(Le/Q;Landroid/view/View;)V

    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_13
    iget-boolean v1, v0, Li/l;->e:Z

    iget-object v2, v0, Li/l;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_14

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-boolean p1, p0, Le/T;->p:Z

    if-eqz p1, :cond_15

    if-eqz v6, :cond_15

    invoke-static {v6}, Landroidx/core/view/J;->a(Landroid/view/View;)Landroidx/core/view/O;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroidx/core/view/O;->e(F)V

    iget-boolean v1, v0, Li/l;->e:Z

    if-nez v1, :cond_15

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    sget-object p1, Le/T;->z:Landroid/view/animation/Interpolator;

    iget-boolean v1, v0, Li/l;->e:Z

    if-nez v1, :cond_16

    iput-object p1, v0, Li/l;->c:Landroid/view/animation/Interpolator;

    :cond_16
    if-nez v1, :cond_17

    iput-wide v4, v0, Li/l;->b:J

    :cond_17
    if-nez v1, :cond_18

    iput-object v9, v0, Li/l;->d:Landroidx/core/view/P;

    :cond_18
    iput-object v0, p0, Le/T;->t:Li/l;

    invoke-virtual {v0}, Li/l;->b()V

    goto :goto_2

    :cond_19
    invoke-virtual {v9}, Le/P;->a()V

    :cond_1a
    :goto_2
    return-void
.end method
