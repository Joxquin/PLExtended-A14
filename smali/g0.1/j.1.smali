.class public final Lg0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/u;


# instance fields
.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lg0/j;->d:Landroid/view/View;

    iput-object p2, p0, Lg0/j;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg0/x;)V
    .locals 0

    invoke-virtual {p1, p0}, Lg0/x;->z(Lg0/u;)V

    invoke-virtual {p1, p0}, Lg0/x;->a(Lg0/u;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final f(Lg0/x;)V
    .locals 0

    return-void
.end method

.method public final g(Lg0/x;)V
    .locals 3

    invoke-virtual {p1, p0}, Lg0/x;->z(Lg0/u;)V

    iget-object p1, p0, Lg0/j;->d:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lg0/j;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
