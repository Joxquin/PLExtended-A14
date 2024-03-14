.class public final Lx2/n;
.super LA2/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lx2/p;


# direct methods
.method public constructor <init>(Lx2/p;)V
    .locals 0

    iput-object p1, p0, Lx2/n;->a:Lx2/p;

    invoke-direct {p0}, LA2/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    const/4 p1, 0x1

    iget-object p0, p0, Lx2/n;->a:Lx2/p;

    iput-boolean p1, p0, Lx2/p;->d:Z

    iget-object p0, p0, Lx2/p;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx2/o;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lx2/o;->a()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iget-object p0, p0, Lx2/n;->a:Lx2/p;

    iput-boolean p1, p0, Lx2/p;->d:Z

    iget-object p0, p0, Lx2/p;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx2/o;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lx2/o;->a()V

    :cond_1
    return-void
.end method
