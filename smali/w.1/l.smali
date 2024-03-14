.class public final Lw/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lv/f;Lt/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p1, Lv/f;->K:Lv/d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lt/f;->n(Lv/d;)I

    iget-object p0, p1, Lv/f;->L:Lv/d;

    invoke-static {p0}, Lt/f;->n(Lv/d;)I

    iget-object p0, p1, Lv/f;->M:Lv/d;

    invoke-static {p0}, Lt/f;->n(Lv/d;)I

    iget-object p0, p1, Lv/f;->N:Lv/d;

    invoke-static {p0}, Lt/f;->n(Lv/d;)I

    iget-object p0, p1, Lv/f;->O:Lv/d;

    invoke-static {p0}, Lt/f;->n(Lv/d;)I

    return-void
.end method
