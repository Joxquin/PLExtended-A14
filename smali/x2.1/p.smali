.class public final Lx2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:Lx2/n;

.field public c:F

.field public d:Z

.field public e:Ljava/lang/ref/WeakReference;

.field public f:LA2/g;


# direct methods
.method public constructor <init>(Lx2/o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lx2/p;->a:Landroid/text/TextPaint;

    new-instance v0, Lx2/n;

    invoke-direct {v0, p0}, Lx2/n;-><init>(Lx2/p;)V

    iput-object v0, p0, Lx2/p;->b:Lx2/n;

    iput-boolean v1, p0, Lx2/p;->d:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lx2/p;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lx2/p;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method
