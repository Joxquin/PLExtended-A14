.class public final Lg0/d;
.super Lg0/y;
.source "SourceFile"


# instance fields
.field public d:Z

.field public final e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Lg0/y;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg0/d;->d:Z

    iput-object p1, p0, Lg0/d;->e:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object p0, p0, Lg0/d;->e:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object p0, p0, Lg0/d;->e:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    return-void
.end method

.method public final f(Lg0/x;)V
    .locals 1

    iget-object p1, p0, Lg0/d;->e:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg0/d;->d:Z

    return-void
.end method

.method public final g(Lg0/x;)V
    .locals 2

    iget-boolean v0, p0, Lg0/d;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg0/d;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_0
    invoke-virtual {p1, p0}, Lg0/x;->z(Lg0/u;)V

    return-void
.end method
