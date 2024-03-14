.class public final Le/D;
.super Le/r;
.source "SourceFile"

# interfaces
.implements Lj/m;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final j0:Lq/m;

.field public static final k0:[I

.field public static final l0:Z

.field public static final m0:Z


# instance fields
.field public final A:Z

.field public B:Z

.field public C:Landroid/view/ViewGroup;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/view/View;

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:[Le/C;

.field public O:Le/C;

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Landroid/content/res/Configuration;

.field public final U:I

.field public V:I

.field public W:I

.field public X:Z

.field public Y:Le/y;

.field public Z:Le/y;

.field public a0:Z

.field public b0:I

.field public final c0:Le/s;

.field public d0:Z

.field public e0:Landroid/graphics/Rect;

.field public f0:Landroid/graphics/Rect;

.field public g0:Le/H;

.field public h0:Landroid/window/OnBackInvokedDispatcher;

.field public i0:Le/w;

.field public final k:Ljava/lang/Object;

.field public final l:Landroid/content/Context;

.field public m:Landroid/view/Window;

.field public n:Le/x;

.field public final o:Le/p;

.field public p:Le/T;

.field public q:Li/j;

.field public r:Ljava/lang/CharSequence;

.field public s:Lk/m0;

.field public t:Le/t;

.field public u:Le/t;

.field public v:Li/b;

.field public w:Landroidx/appcompat/widget/ActionBarContextView;

.field public x:Landroid/widget/PopupWindow;

.field public y:Le/s;

.field public z:Landroidx/core/view/O;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq/m;

    invoke-direct {v0}, Lq/m;-><init>()V

    sput-object v0, Le/D;->j0:Lq/m;

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Le/D;->k0:[I

    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Le/D;->l0:Z

    sput-boolean v1, Le/D;->m0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Le/p;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Le/r;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/D;->z:Landroidx/core/view/O;

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/D;->A:Z

    const/16 v1, -0x64

    iput v1, p0, Le/D;->U:I

    new-instance v2, Le/s;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Le/s;-><init>(Le/D;I)V

    iput-object v2, p0, Le/D;->c0:Le/s;

    iput-object p1, p0, Le/D;->l:Landroid/content/Context;

    iput-object p3, p0, Le/D;->o:Le/p;

    iput-object p4, p0, Le/D;->k:Ljava/lang/Object;

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p3, p1, Landroidx/appcompat/app/a;

    if-eqz p3, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/a;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->k()Le/r;

    move-result-object p1

    invoke-virtual {p1}, Le/r;->g()I

    move-result p1

    iput p1, p0, Le/D;->U:I

    :cond_2
    iget p1, p0, Le/D;->U:I

    if-ne p1, v1, :cond_3

    sget-object p1, Le/D;->j0:Lq/m;

    iget-object p3, p0, Le/D;->k:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Le/D;->U:I

    iget-object p3, p0, Le/D;->k:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lq/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Le/D;->z(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Lk/A;->d()V

    return-void
.end method

.method public static D(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_1
    const/16 p0, 0x20

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 p3, 0x0

    iput p3, p1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_3
    iget p2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, -0x31

    or-int/2addr p0, p2

    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    return-object p1
.end method


# virtual methods
.method public final A(ILe/C;Lj/o;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Le/D;->N:[Le/C;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Le/C;->h:Lj/o;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Le/C;->m:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Le/D;->S:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Le/D;->n:Le/x;

    iget-object p0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p2, Le/x;->g:Z

    invoke-interface {p0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p2, Le/x;->g:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    iput-boolean v1, p2, Le/x;->g:Z

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final B(Lj/o;)V
    .locals 2

    iget-boolean v0, p0, Le/D;->M:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/D;->M:Z

    iget-object v0, p0, Le/D;->s:Lk/m0;

    invoke-interface {v0}, Lk/m0;->n()V

    invoke-virtual {p0}, Le/D;->K()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Le/D;->S:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Le/D;->M:Z

    return-void
.end method

.method public final C(Le/C;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Le/C;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Le/D;->s:Lk/m0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk/m0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Le/C;->h:Lj/o;

    invoke-virtual {p0, p1}, Le/D;->B(Lj/o;)V

    return-void

    :cond_0
    iget-object v0, p0, Le/D;->l:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Le/C;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Le/C;->e:Le/B;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Le/C;->a:I

    invoke-virtual {p0, p2, p1, v1}, Le/D;->A(ILe/C;Lj/o;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Le/C;->k:Z

    iput-boolean p2, p1, Le/C;->l:Z

    iput-boolean p2, p1, Le/C;->m:Z

    iput-object v1, p1, Le/C;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Le/C;->n:Z

    iget-object p2, p0, Le/D;->O:Le/C;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Le/D;->O:Le/C;

    :cond_2
    iget p1, p1, Le/C;->a:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Le/D;->S()V

    :cond_3
    return-void
.end method

.method public final E(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Le/D;->k:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/core/view/e;

    if-nez v1, :cond_0

    instance-of v0, v0, Le/F;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Le/D;->n:Le/x;

    iget-object v4, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iput-boolean v3, v0, Le/x;->f:Z

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v0, Le/x;->f:Z

    if-eqz v4, :cond_2

    return v3

    :catchall_0
    move-exception p0

    iput-boolean v2, v0, Le/x;->f:Z

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    const/4 v5, 0x4

    if-eqz v4, :cond_7

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, v2}, Le/D;->J(I)Le/C;

    move-result-object v0

    iget-boolean v1, v0, Le/C;->m:Z

    if-nez v1, :cond_12

    invoke-virtual {p0, v0, p1}, Le/D;->Q(Le/C;Landroid/view/KeyEvent;)Z

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Le/D;->P:Z

    goto/16 :goto_6

    :cond_7
    if-eq v0, v5, :cond_11

    if-eq v0, v1, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Le/D;->v:Li/b;

    if-eqz v0, :cond_9

    goto/16 :goto_5

    :cond_9
    invoke-virtual {p0, v2}, Le/D;->J(I)Le/C;

    move-result-object v0

    iget-object v1, p0, Le/D;->s:Lk/m0;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lk/m0;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Le/D;->l:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Le/D;->s:Lk/m0;

    invoke-interface {v1}, Lk/m0;->b()Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, p0, Le/D;->S:Z

    if-nez v1, :cond_e

    invoke-virtual {p0, v0, p1}, Le/D;->Q(Le/C;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Le/D;->s:Lk/m0;

    invoke-interface {p1}, Lk/m0;->h()Z

    move-result p1

    goto :goto_4

    :cond_a
    iget-object p1, p0, Le/D;->s:Lk/m0;

    invoke-interface {p1}, Lk/m0;->f()Z

    move-result p1

    goto :goto_4

    :cond_b
    iget-boolean v1, v0, Le/C;->m:Z

    if-nez v1, :cond_f

    iget-boolean v4, v0, Le/C;->l:Z

    if-eqz v4, :cond_c

    goto :goto_3

    :cond_c
    iget-boolean v1, v0, Le/C;->k:Z

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Le/C;->o:Z

    if-eqz v1, :cond_d

    iput-boolean v2, v0, Le/C;->k:Z

    invoke-virtual {p0, v0, p1}, Le/D;->Q(Le/C;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2

    :cond_d
    move v1, v3

    :goto_2
    if-eqz v1, :cond_e

    invoke-virtual {p0, v0, p1}, Le/D;->O(Le/C;Landroid/view/KeyEvent;)V

    move p1, v3

    goto :goto_4

    :cond_e
    move p1, v2

    goto :goto_4

    :cond_f
    :goto_3
    invoke-virtual {p0, v0, v3}, Le/D;->C(Le/C;Z)V

    move p1, v1

    :goto_4
    if-eqz p1, :cond_12

    iget-object p0, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_5

    :cond_10
    const-string p0, "AppCompatDelegate"

    const-string p1, "Couldn\'t get audio manager"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Le/D;->N()Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_12
    :goto_5
    move v2, v3

    :cond_13
    :goto_6
    return v2
.end method

.method public final F(I)V
    .locals 3

    invoke-virtual {p0, p1}, Le/D;->J(I)Le/C;

    move-result-object v0

    iget-object v1, v0, Le/C;->h:Lj/o;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Le/C;->h:Lj/o;

    invoke-virtual {v2, v1}, Lj/o;->t(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Le/C;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Le/C;->h:Lj/o;

    invoke-virtual {v1}, Lj/o;->w()V

    iget-object v1, v0, Le/C;->h:Lj/o;

    invoke-virtual {v1}, Lj/o;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Le/C;->o:Z

    iput-boolean v1, v0, Le/C;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Le/D;->s:Lk/m0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Le/D;->J(I)Le/C;

    move-result-object v0

    iput-boolean p1, v0, Le/C;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Le/D;->Q(Le/C;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final G()V
    .locals 11

    iget-boolean v0, p0, Le/D;->B:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Le/D;->l:Landroid/content/Context;

    sget-object v1, Ld/a;->j:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x75

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p0, v5}, Le/D;->s(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x6c

    invoke-virtual {p0, v2}, Le/D;->s(I)Z

    :cond_1
    :goto_0
    const/16 v2, 0x76

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v3, 0x6d

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Le/D;->s(I)Z

    :cond_2
    const/16 v2, 0x77

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Le/D;->s(I)Z

    :cond_3
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Le/D;->K:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Le/D;->H()V

    iget-object v0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Le/D;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v2, p0, Le/D;->L:Z

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v2, :cond_9

    iget-boolean v2, p0, Le/D;->K:Z

    if-eqz v2, :cond_4

    const v2, 0x7f0d000c

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v4, p0, Le/D;->I:Z

    iput-boolean v4, p0, Le/D;->H:Z

    goto/16 :goto_2

    :cond_4
    iget-boolean v0, p0, Le/D;->H:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v8, 0x7f04000c

    invoke-virtual {v2, v8, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_5

    new-instance v2, Li/d;

    iget-object v8, p0, Le/D;->l:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v2, v0, v8}, Li/d;-><init>(ILandroid/content/Context;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Le/D;->l:Landroid/content/Context;

    :goto_1
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0017

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f0a0118

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lk/m0;

    iput-object v2, p0, Le/D;->s:Lk/m0;

    invoke-virtual {p0}, Le/D;->K()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v2, v8}, Lk/m0;->c(Landroid/view/Window$Callback;)V

    iget-boolean v2, p0, Le/D;->I:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Le/D;->s:Lk/m0;

    invoke-interface {v2, v3}, Lk/m0;->m(I)V

    :cond_6
    iget-boolean v2, p0, Le/D;->F:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Le/D;->s:Lk/m0;

    invoke-interface {v2, v6}, Lk/m0;->m(I)V

    :cond_7
    iget-boolean v2, p0, Le/D;->G:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Le/D;->s:Lk/m0;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lk/m0;->m(I)V

    goto :goto_2

    :cond_8
    move-object v0, v7

    goto :goto_2

    :cond_9
    iget-boolean v2, p0, Le/D;->J:Z

    if-eqz v2, :cond_a

    const v2, 0x7f0d0016

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    const v2, 0x7f0d0015

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v0, :cond_1f

    new-instance v2, Le/t;

    invoke-direct {v2, p0, v4}, Le/t;-><init>(Le/D;I)V

    sget-object v3, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v2}, Landroidx/core/view/D;->l(Landroid/view/View;Landroidx/core/view/r;)V

    iget-object v2, p0, Le/D;->s:Lk/m0;

    if-nez v2, :cond_c

    const v2, 0x7f0a039b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Le/D;->D:Landroid/widget/TextView;

    :cond_c
    sget-object v2, Lk/c1;->a:Ljava/lang/reflect/Method;

    const-string v2, "Could not invoke makeOptionalFitsSystemWindows"

    const-string v3, "ViewUtils"

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "makeOptionalFitsSystemWindows"

    new-array v10, v4, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_d
    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v8

    invoke-static {v3, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v8

    invoke-static {v3, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    const-string v2, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const v2, 0x7f0a003a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v3, p0, Le/D;->m:Landroid/view/Window;

    const v8, 0x1020002

    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_f

    :goto_4
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_e

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_e
    const/4 v9, -0x1

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setId(I)V

    instance-of v9, v3, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_f

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v3, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {v3, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v3, Le/t;

    invoke-direct {v3, p0, v6}, Le/t;-><init>(Le/D;I)V

    iput-object v3, v2, Landroidx/appcompat/widget/ContentFrameLayout;->k:Le/t;

    iput-object v0, p0, Le/D;->C:Landroid/view/ViewGroup;

    iget-object v0, p0, Le/D;->k:Ljava/lang/Object;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_10

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    :cond_10
    iget-object v0, p0, Le/D;->r:Ljava/lang/CharSequence;

    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Le/D;->s:Lk/m0;

    if-eqz v2, :cond_11

    invoke-interface {v2, v0}, Lk/m0;->a(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_11
    iget-object v2, p0, Le/D;->p:Le/T;

    if-eqz v2, :cond_12

    iget-object v2, v2, Le/T;->e:Lk/n0;

    invoke-interface {v2, v0}, Lk/n0;->a(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_12
    iget-object v2, p0, Le/D;->D:Landroid/widget/TextView;

    if-eqz v2, :cond_13

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_6
    iget-object v0, p0, Le/D;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v2, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iget-object v8, v0, Landroidx/appcompat/widget/ContentFrameLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {v8, v3, v6, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_14
    iget-object v2, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v2, v0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    if-nez v2, :cond_15

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    :cond_15
    iget-object v2, v0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    const/16 v3, 0x7c

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget-object v2, v0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    if-nez v2, :cond_16

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    :cond_16
    iget-object v2, v0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    const/16 v3, 0x7d

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x7a

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    if-nez v3, :cond_17

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, v0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    :cond_17
    iget-object v3, v0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    if-nez v3, :cond_19

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, v0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    :cond_19
    iget-object v3, v0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1a
    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/util/TypedValue;

    if-nez v3, :cond_1b

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, v0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/util/TypedValue;

    :cond_1b
    iget-object v3, v0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1c
    const/16 v2, 0x79

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v0, Landroidx/appcompat/widget/ContentFrameLayout;->i:Landroid/util/TypedValue;

    if-nez v3, :cond_1d

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, v0, Landroidx/appcompat/widget/ContentFrameLayout;->i:Landroid/util/TypedValue;

    :cond_1d
    iget-object v3, v0, Landroidx/appcompat/widget/ContentFrameLayout;->i:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    iput-boolean v5, p0, Le/D;->B:Z

    invoke-virtual {p0, v4}, Le/D;->J(I)Le/C;

    move-result-object v0

    iget-boolean v1, p0, Le/D;->S:Z

    if-nez v1, :cond_21

    iget-object v0, v0, Le/C;->h:Lj/o;

    if-nez v0, :cond_21

    iget v0, p0, Le/D;->b0:I

    const/16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Le/D;->b0:I

    iget-boolean v0, p0, Le/D;->a0:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Le/D;->c0:Le/s;

    invoke-static {v0, v1}, Landroidx/core/view/x;->j(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v5, p0, Le/D;->a0:Z

    goto :goto_7

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Le/D;->H:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le/D;->I:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le/D;->K:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le/D;->J:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Le/D;->L:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_7
    return-void
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Le/D;->m:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/D;->k:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/D;->z(Landroid/view/Window;)V

    :cond_0
    iget-object p0, p0, Le/D;->m:Landroid/view/Window;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We have not been given a Window"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final I(Landroid/content/Context;)Le/A;
    .locals 3

    iget-object v0, p0, Le/D;->Y:Le/y;

    if-nez v0, :cond_1

    new-instance v0, Le/y;

    sget-object v1, Le/O;->d:Le/O;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Le/O;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Le/O;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Le/O;->d:Le/O;

    :cond_0
    sget-object p1, Le/O;->d:Le/O;

    invoke-direct {v0, p0, p1}, Le/y;-><init>(Le/D;Le/O;)V

    iput-object v0, p0, Le/D;->Y:Le/y;

    :cond_1
    iget-object p0, p0, Le/D;->Y:Le/y;

    return-object p0
.end method

.method public final J(I)Le/C;
    .locals 4

    iget-object v0, p0, Le/D;->N:[Le/C;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Le/C;

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Le/D;->N:[Le/C;

    move-object v0, v1

    :cond_2
    aget-object p0, v0, p1

    if-nez p0, :cond_3

    new-instance p0, Le/C;

    invoke-direct {p0, p1}, Le/C;-><init>(I)V

    aput-object p0, v0, p1

    :cond_3
    return-object p0
.end method

.method public final K()Landroid/view/Window$Callback;
    .locals 0

    iget-object p0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    return-object p0
.end method

.method public final L()V
    .locals 3

    invoke-virtual {p0}, Le/D;->G()V

    iget-boolean v0, p0, Le/D;->H:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/D;->p:Le/T;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Le/D;->k:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v0, Le/T;

    iget-object v1, p0, Le/D;->k:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Le/D;->I:Z

    invoke-direct {v0, v1, v2}, Le/T;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Le/D;->p:Le/T;

    goto :goto_0

    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v0, Le/T;

    iget-object v1, p0, Le/D;->k:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Le/T;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Le/D;->p:Le/T;

    :cond_2
    :goto_0
    iget-object v0, p0, Le/D;->p:Le/T;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Le/D;->d0:Z

    invoke-virtual {v0, p0}, Le/T;->e(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final M(ILandroid/content/Context;)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p1, v0, :cond_5

    if-eq p1, v1, :cond_4

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Le/D;->Z:Le/y;

    if-nez p1, :cond_0

    new-instance p1, Le/y;

    invoke-direct {p1, p0, p2}, Le/y;-><init>(Le/D;Landroid/content/Context;)V

    iput-object p1, p0, Le/D;->Z:Le/y;

    :cond_0
    iget-object p0, p0, Le/D;->Z:Le/y;

    invoke-virtual {p0}, Le/y;->b()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p2}, Le/D;->I(Landroid/content/Context;)Le/A;

    move-result-object p0

    invoke-virtual {p0}, Le/A;->b()I

    move-result p0

    return p0

    :cond_4
    return p1

    :cond_5
    return v1
.end method

.method public final N()Z
    .locals 5

    iget-boolean v0, p0, Le/D;->P:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Le/D;->P:Z

    invoke-virtual {p0, v1}, Le/D;->J(I)Le/C;

    move-result-object v2

    iget-boolean v3, v2, Le/C;->m:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v4}, Le/D;->C(Le/C;Z)V

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Le/D;->v:Li/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Li/b;->c()V

    return v4

    :cond_2
    invoke-virtual {p0}, Le/D;->L()V

    iget-object p0, p0, Le/D;->p:Le/T;

    if-eqz p0, :cond_4

    iget-object v0, p0, Le/T;->e:Lk/n0;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lk/n0;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Le/T;->e:Lk/n0;

    invoke-interface {p0}, Lk/n0;->collapseActionView()V

    move p0, v4

    goto :goto_0

    :cond_3
    move p0, v1

    :goto_0
    if-eqz p0, :cond_4

    return v4

    :cond_4
    return v1
.end method

.method public final O(Le/C;Landroid/view/KeyEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Le/C;->m:Z

    if-nez v2, :cond_1f

    iget-boolean v2, v0, Le/D;->S:Z

    if-eqz v2, :cond_0

    goto/16 :goto_d

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, v1, Le/C;->a:I

    if-nez v5, :cond_2

    iget-object v6, v0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    if-ne v6, v2, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    if-eqz v6, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Le/D;->K()Landroid/view/Window$Callback;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, v1, Le/C;->h:Lj/o;

    invoke-interface {v6, v5, v7}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0, v1, v4}, Le/D;->C(Le/C;Z)V

    return-void

    :cond_3
    iget-object v6, v0, Le/D;->l:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    if-nez v6, :cond_4

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p2}, Le/D;->Q(Le/C;Landroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_5

    return-void

    :cond_5
    iget-object v7, v1, Le/C;->e:Le/B;

    const/4 v8, -0x2

    if-eqz v7, :cond_7

    iget-boolean v9, v1, Le/C;->n:Z

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    iget-object v2, v1, Le/C;->g:Landroid/view/View;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_1c

    move v10, v7

    goto/16 :goto_b

    :cond_7
    :goto_1
    if-nez v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Le/D;->L()V

    iget-object v7, v0, Le/D;->p:Le/T;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Le/T;->c()Landroid/content/Context;

    move-result-object v7

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_9

    iget-object v7, v0, Le/D;->l:Landroid/content/Context;

    :cond_9
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v11, 0x7f040005

    invoke-virtual {v10, v11, v9, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v11, v9, Landroid/util/TypedValue;->resourceId:I

    if-eqz v11, :cond_a

    invoke-virtual {v10, v11, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    const v11, 0x7f04045a

    invoke-virtual {v10, v11, v9, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    invoke-virtual {v10, v9, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_b
    const v9, 0x7f140289

    invoke-virtual {v10, v9, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v9, Li/d;

    invoke-direct {v9, v3, v7}, Li/d;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v9}, Li/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v9, v1, Le/C;->j:Li/d;

    sget-object v7, Ld/a;->j:[I

    invoke-virtual {v9, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v9, 0x56

    invoke-virtual {v7, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v1, Le/C;->b:I

    invoke-virtual {v7, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v1, Le/C;->d:I

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v7, Le/B;

    iget-object v9, v1, Le/C;->j:Li/d;

    invoke-direct {v7, v0, v9}, Le/B;-><init>(Le/D;Li/d;)V

    iput-object v7, v1, Le/C;->e:Le/B;

    const/16 v7, 0x51

    iput v7, v1, Le/C;->c:I

    goto :goto_4

    :cond_c
    iget-boolean v9, v1, Le/C;->n:Z

    if-eqz v9, :cond_d

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_d

    iget-object v7, v1, Le/C;->e:Le/B;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_d
    :goto_4
    iget-object v7, v1, Le/C;->g:Landroid/view/View;

    if-eqz v7, :cond_e

    iput-object v7, v1, Le/C;->f:Landroid/view/View;

    goto :goto_5

    :cond_e
    iget-object v7, v1, Le/C;->h:Lj/o;

    if-nez v7, :cond_f

    goto :goto_6

    :cond_f
    iget-object v7, v0, Le/D;->u:Le/t;

    if-nez v7, :cond_10

    new-instance v7, Le/t;

    invoke-direct {v7, v0, v2}, Le/t;-><init>(Le/D;I)V

    iput-object v7, v0, Le/D;->u:Le/t;

    :cond_10
    iget-object v2, v0, Le/D;->u:Le/t;

    iget-object v7, v1, Le/C;->i:Lj/k;

    if-nez v7, :cond_11

    new-instance v7, Lj/k;

    iget-object v9, v1, Le/C;->j:Li/d;

    invoke-direct {v7, v9}, Lj/k;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Le/C;->i:Lj/k;

    iput-object v2, v7, Lj/k;->h:Lj/B;

    iget-object v2, v1, Le/C;->h:Lj/o;

    iget-object v9, v2, Lj/o;->a:Landroid/content/Context;

    invoke-virtual {v2, v7, v9}, Lj/o;->b(Lj/C;Landroid/content/Context;)V

    :cond_11
    iget-object v2, v1, Le/C;->i:Lj/k;

    iget-object v7, v1, Le/C;->e:Le/B;

    iget-object v9, v2, Lj/k;->g:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v9, :cond_13

    iget-object v9, v2, Lj/k;->e:Landroid/view/LayoutInflater;

    const v10, 0x7f0d000d

    invoke-virtual {v9, v10, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v7, v2, Lj/k;->g:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v7, v2, Lj/k;->i:Lj/j;

    if-nez v7, :cond_12

    new-instance v7, Lj/j;

    invoke-direct {v7, v2}, Lj/j;-><init>(Lj/k;)V

    iput-object v7, v2, Lj/k;->i:Lj/j;

    :cond_12
    iget-object v7, v2, Lj/k;->g:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v9, v2, Lj/k;->i:Lj/j;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v7, v2, Lj/k;->g:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_13
    iget-object v2, v2, Lj/k;->g:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v2, v1, Le/C;->f:Landroid/view/View;

    if-eqz v2, :cond_14

    :goto_5
    move v2, v4

    goto :goto_7

    :cond_14
    :goto_6
    move v2, v3

    :goto_7
    if-eqz v2, :cond_1e

    iget-object v2, v1, Le/C;->f:Landroid/view/View;

    if-nez v2, :cond_15

    goto :goto_9

    :cond_15
    iget-object v2, v1, Le/C;->g:Landroid/view/View;

    if-eqz v2, :cond_16

    goto :goto_8

    :cond_16
    iget-object v2, v1, Le/C;->i:Lj/k;

    iget-object v7, v2, Lj/k;->i:Lj/j;

    if-nez v7, :cond_17

    new-instance v7, Lj/j;

    invoke-direct {v7, v2}, Lj/j;-><init>(Lj/k;)V

    iput-object v7, v2, Lj/k;->i:Lj/j;

    :cond_17
    iget-object v2, v2, Lj/k;->i:Lj/j;

    invoke-virtual {v2}, Lj/j;->getCount()I

    move-result v2

    if-lez v2, :cond_18

    :goto_8
    move v2, v4

    goto :goto_a

    :cond_18
    :goto_9
    move v2, v3

    :goto_a
    if-nez v2, :cond_19

    goto :goto_c

    :cond_19
    iget-object v2, v1, Le/C;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1a

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_1a
    iget v7, v1, Le/C;->b:I

    iget-object v9, v1, Le/C;->e:Le/B;

    invoke-virtual {v9, v7}, Le/B;->setBackgroundResource(I)V

    iget-object v7, v1, Le/C;->f:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v9, v7, Landroid/view/ViewGroup;

    if-eqz v9, :cond_1b

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v9, v1, Le/C;->f:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1b
    iget-object v7, v1, Le/C;->e:Le/B;

    iget-object v9, v1, Le/C;->f:Landroid/view/View;

    invoke-virtual {v7, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v1, Le/C;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v1, Le/C;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_1c
    move v10, v8

    :goto_b
    iput-boolean v3, v1, Le/C;->l:Z

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3ea

    const/high16 v15, 0x820000

    const/16 v16, -0x3

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v3, v1, Le/C;->c:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, v1, Le/C;->d:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v3, v1, Le/C;->e:Le/B;

    invoke-interface {v6, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v4, v1, Le/C;->m:Z

    if-nez v5, :cond_1d

    invoke-virtual/range {p0 .. p0}, Le/D;->S()V

    :cond_1d
    return-void

    :cond_1e
    :goto_c
    iput-boolean v4, v1, Le/C;->n:Z

    :cond_1f
    :goto_d
    return-void
.end method

.method public final P(Le/C;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Le/C;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Le/D;->Q(Le/C;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, p1, Le/C;->h:Lj/o;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lj/o;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final Q(Le/C;Landroid/view/KeyEvent;)Z
    .locals 12

    iget-boolean v0, p0, Le/D;->S:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Le/C;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Le/D;->O:Le/C;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Le/D;->C(Le/C;Z)V

    :cond_2
    invoke-virtual {p0}, Le/D;->K()Landroid/view/Window$Callback;

    move-result-object v0

    iget v3, p1, Le/C;->a:I

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Le/C;->g:Landroid/view/View;

    :cond_3
    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v5, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_6

    iget-object v6, p0, Le/D;->s:Lk/m0;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lk/m0;->d()V

    :cond_6
    iget-object v6, p1, Le/C;->g:Landroid/view/View;

    if-nez v6, :cond_1d

    iget-object v6, p1, Le/C;->h:Lj/o;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    iget-boolean v8, p1, Le/C;->o:Z

    if-eqz v8, :cond_17

    :cond_7
    if-nez v6, :cond_10

    iget-object v6, p0, Le/D;->l:Landroid/content/Context;

    if-eqz v3, :cond_8

    if-ne v3, v4, :cond_c

    :cond_8
    iget-object v4, p0, Le/D;->s:Lk/m0;

    if-eqz v4, :cond_c

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f04000c

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    const v10, 0x7f04000d

    if-eqz v9, :cond_9

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v11, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v8, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v9, v7

    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_b

    if-nez v9, :cond_a

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v9, :cond_c

    new-instance v4, Li/d;

    invoke-direct {v4, v1, v6}, Li/d;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v4}, Li/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v4

    :cond_c
    new-instance v4, Lj/o;

    invoke-direct {v4, v6}, Lj/o;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Lj/o;->e:Lj/m;

    iget-object v6, p1, Le/C;->h:Lj/o;

    if-ne v4, v6, :cond_d

    goto :goto_3

    :cond_d
    if-eqz v6, :cond_e

    iget-object v8, p1, Le/C;->i:Lj/k;

    invoke-virtual {v6, v8}, Lj/o;->r(Lj/C;)V

    :cond_e
    iput-object v4, p1, Le/C;->h:Lj/o;

    iget-object v6, p1, Le/C;->i:Lj/k;

    if-eqz v6, :cond_f

    iget-object v8, v4, Lj/o;->a:Landroid/content/Context;

    invoke-virtual {v4, v6, v8}, Lj/o;->b(Lj/C;Landroid/content/Context;)V

    :cond_f
    :goto_3
    iget-object v4, p1, Le/C;->h:Lj/o;

    if-nez v4, :cond_10

    return v1

    :cond_10
    if-eqz v5, :cond_12

    iget-object v4, p0, Le/D;->s:Lk/m0;

    if-eqz v4, :cond_12

    iget-object v6, p0, Le/D;->t:Le/t;

    if-nez v6, :cond_11

    new-instance v6, Le/t;

    const/4 v8, 0x3

    invoke-direct {v6, p0, v8}, Le/t;-><init>(Le/D;I)V

    iput-object v6, p0, Le/D;->t:Le/t;

    :cond_11
    iget-object v6, p1, Le/C;->h:Lj/o;

    iget-object v8, p0, Le/D;->t:Le/t;

    invoke-interface {v4, v6, v8}, Lk/m0;->g(Lj/o;Le/t;)V

    :cond_12
    iget-object v4, p1, Le/C;->h:Lj/o;

    invoke-virtual {v4}, Lj/o;->w()V

    iget-object v4, p1, Le/C;->h:Lj/o;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object p2, p1, Le/C;->h:Lj/o;

    if-nez p2, :cond_13

    goto :goto_4

    :cond_13
    if-eqz p2, :cond_14

    iget-object v0, p1, Le/C;->i:Lj/k;

    invoke-virtual {p2, v0}, Lj/o;->r(Lj/C;)V

    :cond_14
    iput-object v7, p1, Le/C;->h:Lj/o;

    :goto_4
    if-eqz v5, :cond_15

    iget-object p1, p0, Le/D;->s:Lk/m0;

    if-eqz p1, :cond_15

    iget-object p0, p0, Le/D;->t:Le/t;

    invoke-interface {p1, v7, p0}, Lk/m0;->g(Lj/o;Le/t;)V

    :cond_15
    return v1

    :cond_16
    iput-boolean v1, p1, Le/C;->o:Z

    :cond_17
    iget-object v3, p1, Le/C;->h:Lj/o;

    invoke-virtual {v3}, Lj/o;->w()V

    iget-object v3, p1, Le/C;->p:Landroid/os/Bundle;

    if-eqz v3, :cond_18

    iget-object v4, p1, Le/C;->h:Lj/o;

    invoke-virtual {v4, v3}, Lj/o;->s(Landroid/os/Bundle;)V

    iput-object v7, p1, Le/C;->p:Landroid/os/Bundle;

    :cond_18
    iget-object v3, p1, Le/C;->g:Landroid/view/View;

    iget-object v4, p1, Le/C;->h:Lj/o;

    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz v5, :cond_19

    iget-object p2, p0, Le/D;->s:Lk/m0;

    if-eqz p2, :cond_19

    iget-object p0, p0, Le/D;->t:Le/t;

    invoke-interface {p2, v7, p0}, Lk/m0;->g(Lj/o;Le/t;)V

    :cond_19
    iget-object p0, p1, Le/C;->h:Lj/o;

    invoke-virtual {p0}, Lj/o;->v()V

    return v1

    :cond_1a
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_5

    :cond_1b
    const/4 p2, -0x1

    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_1c

    move p2, v2

    goto :goto_6

    :cond_1c
    move p2, v1

    :goto_6
    iget-object v0, p1, Le/C;->h:Lj/o;

    invoke-virtual {v0, p2}, Lj/o;->setQwertyMode(Z)V

    iget-object p2, p1, Le/C;->h:Lj/o;

    invoke-virtual {p2}, Lj/o;->v()V

    :cond_1d
    iput-boolean v2, p1, Le/C;->k:Z

    iput-boolean v1, p1, Le/C;->l:Z

    iput-object p1, p0, Le/D;->O:Le/C;

    return v2
.end method

.method public final R()V
    .locals 1

    iget-boolean p0, p0, Le/D;->B:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Window feature must be requested before adding content"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final S()V
    .locals 3

    iget-object v0, p0, Le/D;->h0:Landroid/window/OnBackInvokedDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Le/D;->J(I)Le/C;

    move-result-object v0

    iget-boolean v0, v0, Le/C;->m:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/D;->v:Li/b;

    if-eqz v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Le/D;->i0:Le/w;

    if-nez v0, :cond_3

    iget-object v0, p0, Le/D;->h0:Landroid/window/OnBackInvokedDispatcher;

    new-instance v1, Le/w;

    invoke-direct {v1, p0}, Le/w;-><init>(Le/D;)V

    const v2, 0xf4240

    invoke-interface {v0, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    iput-object v1, p0, Le/D;->i0:Le/w;

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Le/D;->i0:Le/w;

    if-eqz v0, :cond_4

    iget-object v1, p0, Le/D;->h0:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {v1, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Le/D;->i0:Le/w;

    :cond_4
    :goto_2
    return-void
.end method

.method public final T(Landroidx/core/view/c0;Landroid/graphics/Rect;)I
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/view/c0;->d()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v2, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_13

    iget-object v2, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_11

    iget-object v4, p0, Le/D;->e0:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Le/D;->e0:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Le/D;->f0:Landroid/graphics/Rect;

    :cond_2
    iget-object v4, p0, Le/D;->e0:Landroid/graphics/Rect;

    iget-object v6, p0, Le/D;->f0:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/core/view/c0;->b()I

    move-result p2

    invoke-virtual {p1}, Landroidx/core/view/c0;->d()I

    move-result v7

    invoke-virtual {p1}, Landroidx/core/view/c0;->c()I

    move-result v8

    invoke-virtual {p1}, Landroidx/core/view/c0;->a()I

    move-result p1

    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object p1, p0, Le/D;->C:Landroid/view/ViewGroup;

    sget-object p2, Lk/c1;->a:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_4

    :try_start_0
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "ViewUtils"

    const-string v6, "Could not invoke computeFitSystemWindows"

    invoke-static {p2, v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget p2, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Le/D;->C:Landroid/view/ViewGroup;

    sget-object v7, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v6}, Landroidx/core/view/E;->a(Landroid/view/View;)Landroidx/core/view/c0;

    move-result-object v6

    if-nez v6, :cond_5

    move v7, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Landroidx/core/view/c0;->b()I

    move-result v7

    :goto_3
    if-nez v6, :cond_6

    move v6, v0

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Landroidx/core/view/c0;->c()I

    move-result v6

    :goto_4
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p2, :cond_8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v4, :cond_7

    goto :goto_5

    :cond_7
    move p2, v0

    goto :goto_6

    :cond_8
    :goto_5
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move p2, v5

    :goto_6
    if-lez p1, :cond_9

    iget-object p1, p0, Le/D;->E:Landroid/view/View;

    if-nez p1, :cond_9

    new-instance p1, Landroid/view/View;

    iget-object v4, p0, Le/D;->l:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Le/D;->E:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v8, -0x1

    const/16 v9, 0x33

    invoke-direct {p1, v8, v4, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Le/D;->C:Landroid/view/ViewGroup;

    iget-object v6, p0, Le/D;->E:Landroid/view/View;

    invoke-virtual {v4, v6, v8, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_9
    iget-object p1, p0, Le/D;->E:Landroid/view/View;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v8, :cond_a

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v4, v7, :cond_a

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v4, v6, :cond_b

    :cond_a
    iput v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v4, p0, Le/D;->E:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_7
    iget-object p1, p0, Le/D;->E:Landroid/view/View;

    if-eqz p1, :cond_c

    move v4, v5

    goto :goto_8

    :cond_c
    move v4, v0

    :goto_8
    if-eqz v4, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Le/D;->E:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/x;->e(Landroid/view/View;)I

    move-result v6

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_d

    goto :goto_9

    :cond_d
    move v5, v0

    :goto_9
    if-eqz v5, :cond_e

    iget-object v5, p0, Le/D;->l:Landroid/content/Context;

    sget-object v6, LB/c;->a:Ljava/lang/Object;

    const v6, 0x7f060006

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    goto :goto_a

    :cond_e
    iget-object v5, p0, Le/D;->l:Landroid/content/Context;

    sget-object v6, LB/c;->a:Ljava/lang/Object;

    const v6, 0x7f060005

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    :goto_a
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_f
    iget-boolean p1, p0, Le/D;->J:Z

    if-nez p1, :cond_10

    if-eqz v4, :cond_10

    move v1, v0

    :cond_10
    move v5, p2

    goto :goto_b

    :cond_11
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_12

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v4, v0

    goto :goto_b

    :cond_12
    move v4, v0

    move v5, v4

    :goto_b
    if-eqz v5, :cond_14

    iget-object p1, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    :cond_13
    move v4, v0

    :cond_14
    :goto_c
    iget-object p0, p0, Le/D;->E:Landroid/view/View;

    if-eqz p0, :cond_16

    if-eqz v4, :cond_15

    goto :goto_d

    :cond_15
    move v0, v3

    :goto_d
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return v1
.end method

.method public final a(Lj/o;)V
    .locals 5

    iget-object p1, p0, Le/D;->s:Lk/m0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lk/m0;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/D;->l:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/D;->s:Lk/m0;

    invoke-interface {p1}, Lk/m0;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Le/D;->K()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Le/D;->s:Lk/m0;

    invoke-interface {v2}, Lk/m0;->b()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    iget-object v0, p0, Le/D;->s:Lk/m0;

    invoke-interface {v0}, Lk/m0;->f()Z

    iget-boolean v0, p0, Le/D;->S:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Le/D;->J(I)Le/C;

    move-result-object p0

    iget-object p0, p0, Le/C;->h:Lj/o;

    invoke-interface {p1, v3, p0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Le/D;->S:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Le/D;->a0:Z

    if-eqz v2, :cond_2

    iget v2, p0, Le/D;->b0:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Le/D;->c0:Le/s;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Le/D;->c0:Le/s;

    invoke-virtual {v0}, Le/s;->run()V

    :cond_2
    invoke-virtual {p0, v1}, Le/D;->J(I)Le/C;

    move-result-object v0

    iget-object v2, v0, Le/C;->h:Lj/o;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Le/C;->o:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Le/C;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Le/C;->h:Lj/o;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p0, p0, Le/D;->s:Lk/m0;

    invoke-interface {p0}, Lk/m0;->h()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Le/D;->J(I)Le/C;

    move-result-object p1

    iput-boolean v0, p1, Le/C;->n:Z

    invoke-virtual {p0, p1, v1}, Le/D;->C(Le/C;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Le/D;->O(Le/C;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final b(Lj/o;Landroid/view/MenuItem;)Z
    .locals 6

    invoke-virtual {p0}, Le/D;->K()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Le/D;->S:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lj/o;->k()Lj/o;

    move-result-object p1

    iget-object p0, p0, Le/D;->N:[Le/C;

    if-eqz p0, :cond_0

    array-length v2, p0

    move v3, v1

    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v2

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    iget-object v5, v4, Le/C;->h:Lj/o;

    if-ne v5, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    iget p0, v4, Le/C;->a:I

    invoke-interface {v0, p0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Le/D;->G()V

    iget-object v0, p0, Le/D;->C:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Le/D;->n:Le/x;

    iget-object p0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Le/x;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final d(Landroid/content/Context;)Landroid/content/Context;
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/D;->Q:Z

    iget v1, p0, Le/D;->U:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Le/r;->e:I

    :goto_0
    invoke-virtual {p0, v1, p1}, Le/D;->M(ILandroid/content/Context;)I

    move-result p0

    invoke-static {p1}, Le/r;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Le/r;->k(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-boolean v1, Le/r;->g:Z

    if-nez v1, :cond_2

    new-instance v1, Le/q;

    invoke-direct {v1, p1}, Le/q;-><init>(Landroid/content/Context;)V

    sget-object v2, Le/r;->d:Le/K;

    invoke-virtual {v2, v1}, Le/K;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    sget-boolean v1, Le/D;->m0:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    instance-of v1, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_3

    invoke-static {p1, p0, v3, v2}, Le/D;->D(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v1

    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v4, v1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_3
    instance-of v1, p1, Li/d;

    if-eqz v1, :cond_4

    invoke-static {p1, p0, v3, v2}, Le/D;->D(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v1

    :try_start_1
    move-object v4, p1

    check-cast v4, Li/d;

    invoke-virtual {v4, v1}, Li/d;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_4
    sget-boolean v1, Le/D;->l0:Z

    if-nez v1, :cond_5

    return-object p1

    :cond_5
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    const/4 v4, -0x1

    iput v4, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v4, 0x0

    iput v4, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    iput v6, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_1c

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_2

    :cond_6
    iget v4, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v6, v5, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_7

    iput v6, v3, Landroid/content/res/Configuration;->fontScale:F

    :cond_7
    iget v4, v1, Landroid/content/res/Configuration;->mcc:I

    iget v6, v5, Landroid/content/res/Configuration;->mcc:I

    if-eq v4, v6, :cond_8

    iput v6, v3, Landroid/content/res/Configuration;->mcc:I

    :cond_8
    iget v4, v1, Landroid/content/res/Configuration;->mnc:I

    iget v6, v5, Landroid/content/res/Configuration;->mnc:I

    if-eq v4, v6, :cond_9

    iput v6, v3, Landroid/content/res/Configuration;->mnc:I

    :cond_9
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_a
    iget v4, v1, Landroid/content/res/Configuration;->touchscreen:I

    iget v6, v5, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v4, v6, :cond_b

    iput v6, v3, Landroid/content/res/Configuration;->touchscreen:I

    :cond_b
    iget v4, v1, Landroid/content/res/Configuration;->keyboard:I

    iget v6, v5, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v6, :cond_c

    iput v6, v3, Landroid/content/res/Configuration;->keyboard:I

    :cond_c
    iget v4, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v6, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v4, v6, :cond_d

    iput v6, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_d
    iget v4, v1, Landroid/content/res/Configuration;->navigation:I

    iget v6, v5, Landroid/content/res/Configuration;->navigation:I

    if-eq v4, v6, :cond_e

    iput v6, v3, Landroid/content/res/Configuration;->navigation:I

    :cond_e
    iget v4, v1, Landroid/content/res/Configuration;->navigationHidden:I

    iget v6, v5, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v4, v6, :cond_f

    iput v6, v3, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_f
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    iget v6, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v6, :cond_10

    iput v6, v3, Landroid/content/res/Configuration;->orientation:I

    :cond_10
    iget v4, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    if-eq v4, v6, :cond_11

    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    iget v4, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0xc0

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0xc0

    if-eq v4, v6, :cond_12

    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    :cond_12
    iget v4, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0x30

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0x30

    if-eq v4, v6, :cond_13

    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    :cond_13
    iget v4, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0x300

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0x300

    if-eq v4, v6, :cond_14

    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    :cond_14
    iget v4, v1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0x3

    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0x3

    if-eq v4, v6, :cond_15

    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->colorMode:I

    :cond_15
    iget v4, v1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0xc

    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0xc

    if-eq v4, v6, :cond_16

    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->colorMode:I

    :cond_16
    iget v4, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    if-eq v4, v6, :cond_17

    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    :cond_17
    iget v4, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    if-eq v4, v6, :cond_18

    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    :cond_18
    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v6, :cond_19

    iput v6, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_19
    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v6, :cond_1a

    iput v6, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_1a
    iget v4, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v6, :cond_1b

    iput v6, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1b
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, v5, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v4, :cond_1c

    iput v4, v3, Landroid/content/res/Configuration;->densityDpi:I

    :cond_1c
    :goto_2
    invoke-static {p1, p0, v3, v0}, Le/D;->D(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object p0

    new-instance v1, Li/d;

    const v3, 0x7f140295

    invoke-direct {v1, v3, p1}, Li/d;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v1, p0}, Li/d;->a(Landroid/content/res/Configuration;)V

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p0, :cond_1d

    goto :goto_3

    :cond_1d
    move v0, v2

    :goto_3
    move v2, v0

    :catch_2
    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Li/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_1e
    return-object v1
.end method

.method public final e(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Le/D;->G()V

    iget-object p0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final f()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Le/D;->l:Landroid/content/Context;

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Le/D;->U:I

    return p0
.end method

.method public final h()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Le/D;->q:Li/j;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/D;->L()V

    new-instance v0, Li/j;

    iget-object v1, p0, Le/D;->p:Le/T;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Le/T;->c()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/D;->l:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Li/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/D;->q:Li/j;

    :cond_1
    iget-object p0, p0, Le/D;->q:Li/j;

    return-object p0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Le/D;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    instance-of p0, p0, Le/D;

    if-nez p0, :cond_1

    const-string p0, "AppCompatDelegate"

    const-string v0, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Le/D;->p:Le/T;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/D;->L()V

    iget-object v0, p0, Le/D;->p:Le/T;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Le/D;->b0:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Le/D;->b0:I

    iget-boolean v0, p0, Le/D;->a0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Le/D;->c0:Le/s;

    sget-object v3, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v2}, Landroidx/core/view/x;->j(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Le/D;->a0:Z

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 4

    iget-boolean v0, p0, Le/D;->H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/D;->B:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/D;->L()V

    iget-object v0, p0, Le/D;->p:Le/T;

    if-eqz v0, :cond_0

    iget-object v1, v0, Le/T;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f050000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Le/T;->f(Z)V

    :cond_0
    invoke-static {}, Lk/A;->a()Lk/A;

    move-result-object v0

    iget-object v1, p0, Le/D;->l:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lk/A;->a:Lk/H0;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Lk/H0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/j;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lq/j;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Le/D;->T:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Le/D;->y(ZZ)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final m()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/D;->Q:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Le/D;->y(ZZ)Z

    invoke-virtual {p0}, Le/D;->H()V

    iget-object v1, p0, Le/D;->k:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, LB/h;->c(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Le/D;->p:Le/T;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Le/D;->d0:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Le/T;->e(Z)V

    :cond_1
    :goto_1
    sget-object v1, Le/r;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Le/r;->r(Le/r;)V

    sget-object v2, Le/r;->h:Lq/h;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lq/h;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Le/D;->T:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Le/D;->R:Z

    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Le/D;->k:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Le/r;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Le/r;->r(Le/r;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Le/D;->a0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Le/D;->c0:Le/s;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/D;->S:Z

    iget v0, p0, Le/D;->U:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Le/D;->k:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Le/D;->j0:Lq/m;

    iget-object v1, p0, Le/D;->k:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Le/D;->U:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Le/D;->j0:Lq/m;

    iget-object v1, p0, Le/D;->k:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Le/D;->Y:Le/y;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Le/A;->a()V

    :cond_3
    iget-object p0, p0, Le/D;->Z:Le/y;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Le/A;->a()V

    :cond_4
    return-void
.end method

.method public final o()V
    .locals 1

    invoke-virtual {p0}, Le/D;->L()V

    iget-object p0, p0, Le/D;->p:Le/T;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/T;->u:Z

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6

    .line 1
    iget-object p1, p0, Le/D;->g0:Le/H;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Le/D;->l:Landroid/content/Context;

    sget-object v1, Ld/a;->j:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v1, 0x74

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Le/H;

    invoke-direct {p1}, Le/H;-><init>()V

    iput-object p1, p0, Le/D;->g0:Le/H;

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, p0, Le/D;->l:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/H;

    iput-object v1, p0, Le/D;->g0:Le/H;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Falling back to default."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    new-instance p1, Le/H;

    invoke-direct {p1}, Le/H;-><init>()V

    iput-object p1, p0, Le/D;->g0:Le/H;

    .line 11
    :cond_1
    :goto_0
    iget-object p0, p0, Le/D;->g0:Le/H;

    .line 12
    sget p1, Lk/b1;->a:I

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object p1, Ld/a;->y:[I

    invoke-virtual {p3, p4, p1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x4

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v3, "AppCompatViewInflater"

    const-string v4, "app:theme is now deprecated. Please move to using android:theme instead."

    .line 16
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_4

    .line 18
    instance-of p1, p3, Li/d;

    if-eqz p1, :cond_3

    move-object p1, p3

    check-cast p1, Li/d;

    .line 19
    iget p1, p1, Li/d;->a:I

    if-eq p1, v2, :cond_4

    .line 20
    :cond_3
    new-instance p1, Li/d;

    invoke-direct {p1, v2, p3}, Li/d;-><init>(ILandroid/content/Context;)V

    goto :goto_1

    :cond_4
    move-object p1, p3

    .line 21
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "Button"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "EditText"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v1, "CheckBox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v1, "AutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v1, "ImageView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v1, "ToggleButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v1, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v1, "RadioButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x7

    goto :goto_3

    :sswitch_7
    const-string v1, "Spinner"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    const/4 v1, 0x6

    goto :goto_3

    :sswitch_8
    const-string v1, "SeekBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    const/4 v1, 0x5

    goto :goto_3

    :sswitch_9
    const-string v2, "ImageButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_2

    :sswitch_a
    const-string v1, "TextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    move v1, v4

    goto :goto_3

    :sswitch_b
    const-string v1, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_c
    const-string v1, "CheckedTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    move v1, v3

    goto :goto_3

    :sswitch_d
    const-string v1, "RatingBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    move v1, v0

    goto :goto_3

    :goto_2
    move v1, v5

    :cond_12
    :goto_3
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    goto :goto_4

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p4}, Le/H;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lk/u;

    move-result-object v1

    .line 23
    invoke-virtual {p0, v1, p2}, Le/H;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 24
    :pswitch_1
    new-instance v1, Lk/C;

    invoke-direct {v1, p1, p4}, Lk/C;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 25
    :pswitch_2
    invoke-virtual {p0, p1, p4}, Le/H;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lk/v;

    move-result-object v1

    .line 26
    invoke-virtual {p0, v1, p2}, Le/H;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 27
    :pswitch_3
    invoke-virtual {p0, p1, p4}, Le/H;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lk/s;

    move-result-object v1

    .line 28
    invoke-virtual {p0, v1, p2}, Le/H;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 29
    :pswitch_4
    new-instance v1, Lk/I;

    invoke-direct {v1, p1, p4}, Lk/I;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 30
    :pswitch_5
    new-instance v1, Lk/l0;

    invoke-direct {v1, p1, p4}, Lk/l0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 31
    :pswitch_6
    invoke-virtual {p0, p1, p4}, Le/H;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Lk/M;

    move-result-object v1

    .line 32
    invoke-virtual {p0, v1, p2}, Le/H;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 33
    :pswitch_7
    new-instance v1, Lk/b0;

    invoke-direct {v1, p1, p4}, Lk/b0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 34
    :pswitch_8
    new-instance v1, Lk/O;

    invoke-direct {v1, p1, p4}, Lk/O;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 35
    :pswitch_9
    new-instance v1, Lk/G;

    invoke-direct {v1, p1, p4}, Lk/G;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 36
    :pswitch_a
    invoke-virtual {p0, p1, p4}, Le/H;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    .line 37
    invoke-virtual {p0, v1, p2}, Le/H;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 38
    :pswitch_b
    new-instance v1, Lk/J;

    invoke-direct {v1, p1, p4}, Lk/J;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 39
    :pswitch_c
    new-instance v1, Lk/w;

    invoke-direct {v1, p1, p4}, Lk/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 40
    :pswitch_d
    new-instance v1, Lk/N;

    invoke-direct {v1, p1, p4}, Lk/N;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v1, :cond_17

    if-eq p3, p1, :cond_17

    .line 41
    iget-object p3, p0, Le/H;->a:[Ljava/lang/Object;

    const-string v1, "view"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string p2, "class"

    .line 42
    invoke-interface {p4, v2, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43
    :cond_13
    :try_start_1
    aput-object p1, p3, v0

    .line 44
    aput-object p4, p3, v3

    const/16 v1, 0x2e

    .line 45
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v5, v1, :cond_16

    move v1, v0

    .line 46
    :goto_5
    sget-object v5, Le/H;->d:[Ljava/lang/String;

    if-ge v1, v4, :cond_15

    .line 47
    aget-object v5, v5, v1

    invoke-virtual {p0, p1, p2, v5}, Le/H;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_14

    .line 48
    aput-object v2, p3, v0

    .line 49
    aput-object v2, p3, v3

    move-object v2, v5

    goto :goto_6

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 50
    :cond_15
    aput-object v2, p3, v0

    .line 51
    aput-object v2, p3, v3

    goto :goto_6

    .line 52
    :cond_16
    :try_start_2
    invoke-virtual {p0, p1, p2, v2}, Le/H;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    aput-object v2, p3, v0

    .line 54
    aput-object v2, p3, v3

    move-object v2, p0

    goto :goto_6

    :catchall_1
    move-exception p0

    .line 55
    aput-object v2, p3, v0

    .line 56
    aput-object v2, p3, v3

    .line 57
    throw p0

    .line 58
    :catch_0
    aput-object v2, p3, v0

    .line 59
    aput-object v2, p3, v3

    :goto_6
    move-object v1, v2

    :cond_17
    if-eqz v1, :cond_1a

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 61
    instance-of p1, p0, Landroid/content/ContextWrapper;

    if-eqz p1, :cond_1a

    .line 62
    sget-object p1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    .line 63
    invoke-static {v1}, Landroidx/core/view/w;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_7

    .line 64
    :cond_18
    sget-object p1, Le/H;->c:[I

    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 66
    new-instance p2, Le/G;

    invoke-direct {p2, v1, p1}, Le/G;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1a
    :goto_7
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, p2, p3}, Le/D;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final p()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le/D;->y(ZZ)Z

    return-void
.end method

.method public final q()V
    .locals 1

    invoke-virtual {p0}, Le/D;->L()V

    iget-object p0, p0, Le/D;->p:Le/T;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/T;->u:Z

    iget-object p0, p0, Le/T;->t:Li/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li/l;->a()V

    :cond_0
    return-void
.end method

.method public final s(I)Z
    .locals 5

    const/16 v0, 0x6d

    const/16 v1, 0x6c

    const/16 v2, 0x8

    const-string v3, "AppCompatDelegate"

    if-ne p1, v2, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_1
    :goto_0
    iget-boolean v2, p0, Le/D;->L:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_2

    return v3

    :cond_2
    iget-boolean v2, p0, Le/D;->H:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v3, p0, Le/D;->H:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    iget-object p0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Le/D;->R()V

    iput-boolean v4, p0, Le/D;->I:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Le/D;->R()V

    iput-boolean v4, p0, Le/D;->H:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Le/D;->R()V

    iput-boolean v4, p0, Le/D;->J:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Le/D;->R()V

    iput-boolean v4, p0, Le/D;->G:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Le/D;->R()V

    iput-boolean v4, p0, Le/D;->F:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Le/D;->R()V

    iput-boolean v4, p0, Le/D;->L:Z

    return v4
.end method

.method public final t(I)V
    .locals 2

    invoke-virtual {p0}, Le/D;->G()V

    iget-object v0, p0, Le/D;->C:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Le/D;->l:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Le/D;->n:Le/x;

    iget-object p0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Le/x;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final u(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Le/D;->G()V

    iget-object v0, p0, Le/D;->C:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Le/D;->n:Le/x;

    iget-object p0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Le/x;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final v(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Le/D;->G()V

    iget-object v0, p0, Le/D;->C:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Le/D;->n:Le/x;

    iget-object p0, p0, Le/D;->m:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Le/x;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final w(I)V
    .locals 0

    iput p1, p0, Le/D;->V:I

    return-void
.end method

.method public final x(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Le/D;->r:Ljava/lang/CharSequence;

    iget-object v0, p0, Le/D;->s:Lk/m0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lk/m0;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/D;->p:Le/T;

    if-eqz v0, :cond_1

    iget-object p0, v0, Le/T;->e:Lk/n0;

    invoke-interface {p0, p1}, Lk/n0;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Le/D;->D:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final y(ZZ)Z
    .locals 13

    iget-boolean p2, p0, Le/D;->S:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget p2, p0, Le/D;->U:I

    const/16 v1, -0x64

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    sget p2, Le/r;->e:I

    :goto_0
    iget-object v1, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {p0, p2, v1}, Le/D;->M(ILandroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Le/D;->l:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Le/D;->D(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Le/D;->l:Landroid/content/Context;

    iget-boolean v4, p0, Le/D;->X:Z

    const/4 v5, 0x1

    if-nez v4, :cond_3

    iget-object v4, p0, Le/D;->k:Ljava/lang/Object;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    :try_start_0
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Le/D;->k:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x100c0000

    invoke-virtual {v4, v6, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v2, p0, Le/D;->W:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "AppCompatDelegate"

    const-string v6, "Exception while getting ActivityInfo"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v0, p0, Le/D;->W:I

    :cond_3
    :goto_1
    iput-boolean v5, p0, Le/D;->X:Z

    iget v2, p0, Le/D;->W:I

    :goto_2
    iget-object v4, p0, Le/D;->T:Landroid/content/res/Configuration;

    if-nez v4, :cond_4

    iget-object v4, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    :cond_4
    iget v6, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    iget v7, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    sget-object v8, LI/f;->b:LI/f;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    const-string v8, ","

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v8, v4

    new-array v9, v8, [Ljava/util/Locale;

    move v10, v0

    :goto_3
    if-ge v10, v8, :cond_6

    aget-object v11, v4, v10

    sget v12, LI/e;->a:I

    invoke-static {v11}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    new-instance v4, Landroid/os/LocaleList;

    invoke-direct {v4, v9}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    new-instance v4, LI/f;

    goto :goto_5

    :cond_7
    :goto_4
    sget-object v4, LI/f;->b:LI/f;

    :goto_5
    if-eq v6, v7, :cond_8

    const/16 v4, 0x200

    goto :goto_6

    :cond_8
    move v4, v0

    :goto_6
    not-int v6, v2

    and-int/2addr v6, v4

    if-eqz v6, :cond_b

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Le/D;->Q:Z

    if-eqz p1, :cond_b

    sget-boolean p1, Le/D;->l0:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Le/D;->R:Z

    if-eqz p1, :cond_b

    :cond_9
    iget-object p1, p0, Le/D;->k:Ljava/lang/Object;

    instance-of v6, p1, Landroid/app/Activity;

    if-eqz v6, :cond_b

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_b

    and-int/lit16 p1, v4, 0x2000

    if-eqz p1, :cond_a

    iget-object p1, p0, Le/D;->k:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_a
    iget-object p1, p0, Le/D;->k:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    sget-object v1, LB/c;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    move p1, v5

    goto :goto_7

    :cond_b
    move p1, v0

    :goto_7
    if-nez p1, :cond_10

    if-eqz v4, :cond_10

    and-int p1, v4, v2

    if-ne p1, v4, :cond_c

    move p1, v5

    goto :goto_8

    :cond_c
    move p1, v0

    :goto_8
    iget-object v1, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, -0x31

    or-int/2addr v6, v7

    iput v6, v2, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget v1, p0, Le/D;->V:I

    if-eqz v1, :cond_d

    iget-object v3, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->setTheme(I)V

    iget-object v1, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v3, p0, Le/D;->V:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_d
    if-eqz p1, :cond_11

    iget-object p1, p0, Le/D;->k:Ljava/lang/Object;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_11

    check-cast p1, Landroid/app/Activity;

    instance-of v1, p1, Landroidx/lifecycle/q;

    if-eqz v1, :cond_f

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/q;

    invoke-interface {v1}, Landroidx/lifecycle/q;->getLifecycle()Landroidx/lifecycle/m;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/m;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->f:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_e

    move v0, v5

    :cond_e
    if-eqz v0, :cond_11

    invoke-virtual {p1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_9

    :cond_f
    iget-boolean v0, p0, Le/D;->R:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Le/D;->S:Z

    if-nez v0, :cond_11

    invoke-virtual {p1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_9

    :cond_10
    move v5, p1

    :cond_11
    :goto_9
    if-eqz v5, :cond_13

    iget-object p1, p0, Le/D;->k:Ljava/lang/Object;

    instance-of v0, p1, Landroidx/appcompat/app/a;

    if-eqz v0, :cond_13

    and-int/lit16 v0, v4, 0x200

    if-eqz v0, :cond_12

    check-cast p1, Landroidx/appcompat/app/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_12
    and-int/lit8 p1, v4, 0x4

    if-eqz p1, :cond_13

    iget-object p1, p0, Le/D;->k:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/app/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_13
    if-nez p2, :cond_14

    iget-object p1, p0, Le/D;->l:Landroid/content/Context;

    invoke-virtual {p0, p1}, Le/D;->I(Landroid/content/Context;)Le/A;

    move-result-object p1

    invoke-virtual {p1}, Le/A;->c()V

    goto :goto_a

    :cond_14
    iget-object p1, p0, Le/D;->Y:Le/y;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Le/A;->a()V

    :cond_15
    :goto_a
    const/4 p1, 0x3

    if-ne p2, p1, :cond_17

    iget-object p1, p0, Le/D;->l:Landroid/content/Context;

    iget-object p2, p0, Le/D;->Z:Le/y;

    if-nez p2, :cond_16

    new-instance p2, Le/y;

    invoke-direct {p2, p0, p1}, Le/y;-><init>(Le/D;Landroid/content/Context;)V

    iput-object p2, p0, Le/D;->Z:Le/y;

    :cond_16
    iget-object p0, p0, Le/D;->Z:Le/y;

    invoke-virtual {p0}, Le/A;->c()V

    goto :goto_b

    :cond_17
    iget-object p0, p0, Le/D;->Z:Le/y;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Le/A;->a()V

    :cond_18
    :goto_b
    return v5
.end method

.method public final z(Landroid/view/Window;)V
    .locals 7

    iget-object v0, p0, Le/D;->m:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Le/x;

    if-nez v2, :cond_5

    new-instance v1, Le/x;

    invoke-direct {v1, p0, v0}, Le/x;-><init>(Le/D;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Le/D;->n:Le/x;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Le/D;->l:Landroid/content/Context;

    sget-object v1, Le/D;->k0:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lk/A;->a()Lk/A;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, v4, Lk/A;->a:Lk/H0;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6, v3}, Lk/H0;->f(Landroid/content/Context;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Le/D;->m:Landroid/view/Window;

    iget-object p1, p0, Le/D;->h0:Landroid/window/OnBackInvokedDispatcher;

    if-nez p1, :cond_4

    if-eqz p1, :cond_2

    iget-object v0, p0, Le/D;->i0:Le/w;

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    iput-object v2, p0, Le/D;->i0:Le/w;

    :cond_2
    iget-object p1, p0, Le/D;->k:Ljava/lang/Object;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/D;->k:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p0, Le/D;->h0:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Le/D;->h0:Landroid/window/OnBackInvokedDispatcher;

    :goto_1
    invoke-virtual {p0}, Le/D;->S()V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
