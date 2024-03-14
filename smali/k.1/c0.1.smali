.class public final Lk/c0;
.super LD/m;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/ref/WeakReference;

.field public final synthetic d:Lk/e0;


# direct methods
.method public constructor <init>(Lk/e0;IILjava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lk/c0;->d:Lk/e0;

    iput p2, p0, Lk/c0;->a:I

    iput p3, p0, Lk/c0;->b:I

    iput-object p4, p0, Lk/c0;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, LD/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 0

    return-void
.end method

.method public final d(Landroid/graphics/Typeface;)V
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lk/c0;->a:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Lk/c0;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lk/c0;->d:Lk/e0;

    iget-boolean v1, v0, Lk/e0;->l:Z

    if-eqz v1, :cond_3

    iput-object p1, v0, Lk/e0;->k:Landroid/graphics/Typeface;

    iget-object p0, p0, Lk/c0;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_3

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/A;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, v0, Lk/e0;->i:I

    new-instance v1, Lk/d0;

    invoke-direct {v1, p0, p1, v0}, Lk/d0;-><init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget v0, v0, Lk/e0;->i:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    :goto_1
    return-void
.end method
