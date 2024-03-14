.class public final Lk/H0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Landroid/graphics/PorterDuff$Mode;

.field public static g:Lk/H0;

.field public static final h:Lk/G0;


# instance fields
.field public a:Ljava/util/WeakHashMap;

.field public final b:Ljava/util/WeakHashMap;

.field public c:Landroid/util/TypedValue;

.field public d:Z

.field public e:Lk/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lk/H0;->f:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Lk/G0;

    invoke-direct {v0}, Lk/G0;-><init>()V

    sput-object v0, Lk/H0;->h:Lk/G0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lk/H0;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static declared-synchronized c()Lk/H0;
    .locals 2

    const-class v0, Lk/H0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk/H0;->g:Lk/H0;

    if-nez v1, :cond_0

    new-instance v1, Lk/H0;

    invoke-direct {v1}, Lk/H0;-><init>()V

    sput-object v1, Lk/H0;->g:Lk/H0;

    :cond_0
    sget-object v1, Lk/H0;->g:Lk/H0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 4

    const-class v0, Lk/H0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk/H0;->h:Lk/G0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, p0, 0x1f

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lq/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuffColorFilter;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v3, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Lq/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object v0, p0, Lk/H0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/j;

    if-nez v0, :cond_0

    new-instance v0, Lq/j;

    invoke-direct {v0}, Lq/j;-><init>()V

    iget-object v1, p0, Lk/H0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Lq/j;->f(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Lk/H0;->c:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lk/H0;->c:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Lk/H0;->c:Landroid/util/TypedValue;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget v3, v0, Landroid/util/TypedValue;->data:I

    int-to-long v3, v3

    or-long/2addr v1, v3

    invoke-virtual {p0, p2, v1, v2}, Lk/H0;->d(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    iget-object v3, p0, Lk/H0;->e:Lk/z;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const v3, 0x7f0801b3

    if-ne p1, v3, :cond_3

    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0801b2

    invoke-virtual {p0, v3, p2}, Lk/H0;->e(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0801b4

    invoke-virtual {p0, v4, p2}, Lk/H0;->e(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    filled-new-array {v3, v4}, [Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    const v3, 0x7f0801d9

    if-ne p1, v3, :cond_4

    const p1, 0x7f070058

    invoke-static {p0, p2, p1}, Lk/z;->c(Lk/H0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    goto :goto_1

    :cond_4
    const v3, 0x7f0801d8

    if-ne p1, v3, :cond_5

    const p1, 0x7f070059

    invoke-static {p0, p2, p1}, Lk/z;->c(Lk/H0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    goto :goto_1

    :cond_5
    const v3, 0x7f0801da

    if-ne p1, v3, :cond_6

    const p1, 0x7f07005a

    invoke-static {p0, p2, p1}, Lk/z;->c(Lk/H0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_7

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {p0, p2, v1, v2, p1}, Lk/H0;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    :cond_7
    return-object p1
.end method

.method public final declared-synchronized d(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk/H0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lq/j;->c(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    iget-object p1, v0, Lq/j;->e:[J

    iget v2, v0, Lq/j;->g:I

    invoke-static {p1, v2, p2, p3}, Lr/a;->b([JIJ)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p2, v0, Lq/j;->f:[Ljava/lang/Object;

    aget-object p3, p2, p1

    sget-object v2, Lq/k;->a:Ljava/lang/Object;

    if-eq p3, v2, :cond_2

    aput-object v2, p2, p1

    const/4 p1, 0x1

    iput-boolean p1, v0, Lq/j;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v0, p1}, Lk/H0;->f(Landroid/content/Context;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Landroid/content/Context;ZI)Landroid/graphics/drawable/Drawable;
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lk/H0;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean v2, p0, Lk/H0;->d:Z

    const v0, 0x7f0801f8

    invoke-virtual {p0, v0, p1}, Lk/H0;->e(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v3, v0, Lh0/b;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_e

    :goto_2
    invoke-virtual {p0, p3, p1}, Lk/H0;->b(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, LB/c;->a:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_c

    invoke-virtual {p0, p3, p1}, Lk/H0;->h(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    sget-object p1, Lk/o0;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lk/H0;->e:Lk/z;

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    const p2, 0x7f0801eb

    if-ne p3, p2, :cond_5

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_6
    :goto_4
    move-object v0, p1

    goto/16 :goto_6

    :cond_7
    iget-object v3, p0, Lk/H0;->e:Lk/z;

    if-eqz v3, :cond_b

    const v3, 0x7f0801e2

    const v5, 0x102000d

    const v6, 0x102000f

    const/high16 v7, 0x1020000

    const v8, 0x7f040129

    const v9, 0x7f04012b

    if-ne p3, v3, :cond_8

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v9, p1}, Lk/M0;->c(ILandroid/content/Context;)I

    move-result v7

    sget-object v10, Lk/A;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v7, v10}, Lk/z;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v9, p1}, Lk/M0;->c(ILandroid/content/Context;)I

    move-result v6

    invoke-static {v3, v6, v10}, Lk/z;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v8, p1}, Lk/M0;->c(ILandroid/content/Context;)I

    move-result v3

    invoke-static {v1, v3, v10}, Lk/z;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_5

    :cond_8
    const v3, 0x7f0801d9

    if-eq p3, v3, :cond_9

    const v3, 0x7f0801d8

    if-eq p3, v3, :cond_9

    const v3, 0x7f0801da

    if-ne p3, v3, :cond_a

    :cond_9
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v9, p1}, Lk/M0;->b(ILandroid/content/Context;)I

    move-result v7

    sget-object v9, Lk/A;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v7, v9}, Lk/z;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v8, p1}, Lk/M0;->c(ILandroid/content/Context;)I

    move-result v6

    invoke-static {v3, v6, v9}, Lk/z;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v8, p1}, Lk/M0;->c(ILandroid/content/Context;)I

    move-result v3

    invoke-static {v1, v3, v9}, Lk/z;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    :goto_5
    move v1, v2

    :cond_a
    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p0, p1, p3, v0}, Lk/H0;->i(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz p2, :cond_c

    move-object v0, v4

    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    sget-object p1, Lk/o0;->a:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_1
    iput-boolean v1, p0, Lk/H0;->d:Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(ILandroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk/H0;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lq/n;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lk/H0;->e:Lk/z;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lk/z;->d(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lk/H0;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lk/H0;->a:Ljava/util/WeakHashMap;

    :cond_2
    iget-object v0, p0, Lk/H0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/n;

    if-nez v0, :cond_3

    new-instance v0, Lq/n;

    invoke-direct {v0}, Lq/n;-><init>()V

    iget-object v2, p0, Lk/H0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0, p1, v1}, Lq/n;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final i(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 5

    iget-object p0, p0, Lk/H0;->e:Lk/z;

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    sget-object v1, Lk/A;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object v2, p0, Lk/z;->a:[I

    invoke-static {v2, p2}, Lk/z;->a([II)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    const p0, 0x7f04012b

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lk/z;->c:[I

    invoke-static {v2, p2}, Lk/z;->a([II)Z

    move-result v2

    if-eqz v2, :cond_1

    const p0, 0x7f040129

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lk/z;->d:[I

    invoke-static {p0, p2}, Lk/z;->a([II)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    const p0, 0x7f0801cb

    if-ne p2, p0, :cond_3

    const p0, 0x42233333    # 40.8f

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const p2, 0x1010030

    move-object v2, v1

    move v1, p2

    move p2, p0

    move p0, v3

    goto :goto_3

    :cond_3
    const p0, 0x7f0801b6

    if-ne p2, p0, :cond_4

    :goto_0
    const p0, 0x1010031

    :goto_1
    move p2, p0

    move p0, v3

    goto :goto_2

    :cond_4
    move p0, v0

    move p2, p0

    :goto_2
    move-object v2, v1

    move v1, p2

    move p2, v4

    :goto_3
    if-eqz p0, :cond_6

    sget-object p0, Lk/o0;->a:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v1, p1}, Lk/M0;->c(ILandroid/content/Context;)I

    move-result p1

    invoke-static {p1, v2}, Lk/A;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq p2, v4, :cond_5

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    move p0, v3

    goto :goto_4

    :cond_6
    move p0, v0

    :goto_4
    if-eqz p0, :cond_7

    move v0, v3

    :cond_7
    return v0
.end method
