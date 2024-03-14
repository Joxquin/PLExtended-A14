.class public final Lj0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget p0, p0, Lj0/b;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lj0/g;

    check-cast p2, Lj0/g;

    iget p0, p1, Lj0/g;->b:I

    iget p1, p2, Lj0/g;->b:I

    sub-int/2addr p0, p1

    return p0

    :goto_0
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lj0/h;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lj0/h;

    iget-boolean p2, p0, Lj0/h;->a:Z

    iget-boolean v0, p1, Lj0/h;->a:Z

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    iget p0, p0, Lj0/h;->e:I

    iget p1, p1, Lj0/h;->e:I

    sub-int/2addr p0, p1

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
