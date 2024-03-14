.class public final LA2/b;
.super LA2/h;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:LA2/a;

.field public c:Z


# direct methods
.method public constructor <init>(Lx2/d;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, LA2/h;-><init>()V

    iput-object p2, p0, LA2/b;->a:Landroid/graphics/Typeface;

    iput-object p1, p0, LA2/b;->b:LA2/a;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget-object p1, p0, LA2/b;->a:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, LA2/b;->c(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 0

    invoke-virtual {p0, p1}, LA2/b;->c(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final c(Landroid/graphics/Typeface;)V
    .locals 2

    iget-boolean v0, p0, LA2/b;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, LA2/b;->b:LA2/a;

    check-cast p0, Lx2/d;

    iget v0, p0, Lx2/d;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Lx2/d;->b:Lcom/google/android/material/internal/a;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->l(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/a;->i(Z)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->n(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/a;->i(Z)V

    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
