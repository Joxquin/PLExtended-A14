.class public final LJ/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LE/f;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(LE/f;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/c;->a:LE/f;

    iput-object p2, p0, LJ/c;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(LJ/i;)V
    .locals 3

    iget v0, p1, LJ/i;->b:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LJ/c;->b:Landroid/os/Handler;

    iget-object p0, p0, LJ/c;->a:LE/f;

    if-eqz v1, :cond_1

    new-instance v0, LJ/a;

    iget-object p1, p1, LJ/i;->a:Landroid/graphics/Typeface;

    invoke-direct {v0, p0, p1}, LJ/a;-><init>(LE/f;Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    new-instance p1, LJ/b;

    invoke-direct {p1, p0, v0}, LJ/b;-><init>(LE/f;I)V

    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
